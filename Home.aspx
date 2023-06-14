<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container text-center">
            <h1>
                Welcome"<asp:Label ID="lbluser" runat="server" Text=""></asp:Label>"</h1>
            <br>
            <div class="row">
                <div class="col-sm-12">
                    <a href="#">
                        <center><img src="Pictures/user.png" class="img-responsive" style="width: 30%" alt="Image"></a></center>
                </div>
        </div>
    </div>
</asp:Content>

