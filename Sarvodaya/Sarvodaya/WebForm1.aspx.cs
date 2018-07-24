using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;
using System.Drawing;

namespace Sarvodaya
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        public void Fill_Data()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from demo", con);
            SqlDataReader rdr = cmd.ExecuteReader();
            GridView1.DataSource = rdr;
            GridView1.DataBind();
            con.Close();
        }

    
        protected override void Render(HtmlTextWriter writer)
        {
            foreach (GridViewRow r in GridView1.Rows)
            {
                if (r.RowType == DataControlRowType.DataRow)
                {
                    r.Attributes["onmouseover"] = "this.style.cursor='pointer';this.style.textDecoration='underline';";
                    r.Attributes["onmouseout"] = "this.style.textDecoration='none';";
                    r.ToolTip = "Click to select row";
                    r.Attributes["onclick"] = this.Page.ClientScript.GetPostBackClientHyperlink(this.GridView1, "Select$" + r.RowIndex, true);

                }
            }

            base.Render(writer);
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Fill_Data();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            GridViewRow row = GridView1.SelectedRow;
            string strcmd = "delete from demo where sn='" + row.Cells[0].Text + "'";
            SqlCommand cmd1 = new SqlCommand(strcmd,con);
            cmd1.ExecuteNonQuery();
            con.Close();
            Fill_Data();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd3 = new SqlCommand("insert into demo (status,company,contact,perform) values (@a,@b,@c,@d) ", con);
                cmd3.Parameters.AddWithValue("@a", TextBox1.Text);
                cmd3.Parameters.AddWithValue("@b", DropDownList1.Text);
                cmd3.Parameters.AddWithValue("@c", TextBox2.Text);
                cmd3.Parameters.AddWithValue("@d", DropDownList2.Text);
                cmd3.ExecuteNonQuery();
                con.Close();
                Fill_Data();
        }



      
       
    }
}