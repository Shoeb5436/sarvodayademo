<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Sarvodaya.WebForm1"  %> 

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" >
    <link href="Styles/bootstrap.css" rel="stylesheet">
    <link href="Styles/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">

    <div class="row">
    <div class="col-md-2"></div>
    <div class="col-md-8">
     
     <h1>Welcome to app!</h1>
     
        <asp:GridView  ID="GridView1" Width="100%" runat="server" BackColor="White" 
            BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" 
            GridLines="Horizontal"    >
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
        </asp:GridView>
    
    
    <br />
        <asp:Button ID="Button1" runat="server" class="btn btn-success" onclick="Button1_Click" Text="Remove Selected" />
    
    <br />
    <br />
    <h2>Add Target</h2>
    <div class="row">    
    <div class="col-md-6">
    Company Name:
    <asp:TextBox ID="TextBox1" Width="100%" class="form-control" runat="server"></asp:TextBox>
    </div>
    <div class="col-md-6">
    Current Status:
    <asp:DropDownList ID="DropDownList1" Width="100%" class="btn btn-default dropdown-toggle" BackColor="#CCCCCC" runat="server">
        <asp:ListItem Value="Approval"></asp:ListItem>
        <asp:ListItem Value="Approved"></asp:ListItem>
        <asp:ListItem Value="Pending"></asp:ListItem>
        <asp:ListItem></asp:ListItem>
    </asp:DropDownList>
    </div>
    </div>
    <br />
    <br />
    
    <div class="row">    
    <div class="col-md-6">
    Key Contact:
    <asp:TextBox ID="TextBox2" Width="100%" class="form-control" runat="server"></asp:TextBox>
    </div>
    <div class="col-md-6">
    Financial Performance:
    <asp:DropDownList ID="DropDownList2"  Width="100%" runat="server" class="btn btn-default dropdown-toggle" BackColor="#CCCCCC">
        <asp:ListItem Value="Average"></asp:ListItem>
        <asp:ListItem Value="Good"></asp:ListItem>
        <asp:ListItem Value="Outstanding"></asp:ListItem>
    </asp:DropDownList>
</div>    
    </div>
    
    <br />
    <asp:Button ID="Button2" runat="server" class="btn btn-success" Text="save" onclick="Button2_Click" />
    </div>
    
    <div class="col-md-2"></div>
        </div>
   
    </form>
</body>
</html>
