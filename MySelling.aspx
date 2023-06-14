<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMasterPage.master" AutoEventWireup="true" CodeFile="MySelling.aspx.cs" Inherits="MySelling" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <br>
        <p class="text-center">My Selling</p>
        <hr>
        <div class="row col-md-12  custyle">
            <asp:Repeater ID="Repeater1" runat="server">
                <HeaderTemplate>
                    <table class="table table-striped custab">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Itemname</th>
                                <th>Itemmanufactor</th>
                                <th>Itemcategory</th>
                                <th>Itemdate</th>
                                <th>Itemprice</th>
                            </tr>
                        </thead>
                        <tbody>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("ItemID")%></td>
                        <td><%#Eval("Itemname")%></td>
                        <td><%#Eval("Itemmanufactor")%></td>
                             <td><%#Eval("Itemcategory")%></td>
                             <td><%#Eval("Itemdate")%></td>
                        <td><%#Eval("Itemprice")%></td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </tbody>
                    </table>
                </FooterTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>

