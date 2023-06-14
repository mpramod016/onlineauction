<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMasterPage.master" AutoEventWireup="true" CodeFile="Sellingitems.aspx.cs" Inherits="Sellingitems" EnableEventValidation="false" ValidateRequest="false"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container">
                <h1 class="well">Selling For Auction</h1>
                <div class="col-md-6 well" >
                    <div class="row">
                        <form>
                            <div class="col-sm-12">
                                 <div class="form-group">
                                    <label>Name of item:-</label>
                                     <asp:TextBox ID="txtnameitem" runat="server" CssClass="form-control" Placeholder="Enter name of item"></asp:TextBox>
                                </div>
                                 <div class="form-group">
                                    <label>Name of manufactuer:-</label>
                                    <asp:TextBox ID="txtnamemanufactuer" runat="server" CssClass="form-control" placeholder="Enter name of manufactuer"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label>Item category :-</label>
                                     <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                                         <asp:ListItem>Antique</asp:ListItem>
                                         <asp:ListItem>Art</asp:ListItem>
                                     </asp:DropDownList>
                                </div>
                                <div class="form-group">
                                    <label>Upload image:-</label>
                                        <asp:FileUpload ID="FileUpload1" runat="server"  CssClass="form-control"/>
                                </div>
                                  <div class="form-group">
                                    <label>Starting Price of item:-</label>
                                    <asp:TextBox ID="txtprice" runat="server" CssClass="form-control" placeholder="Enter Price"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label>Last Date of item:-</label>
                                    <asp:TextBox ID="txtdate" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                                </div>
                                <asp:Button ID="btnSubmit" runat="server" Text="OK"  
                                     CssClass="btn btn-sm btn-success btn-block" onclick="btnSubmit_Click"/> 
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-md-6"  >
                    <div class="row">
                        <asp:Label ID="lblID1" runat="server" Text="" Visible="false"></asp:Label><asp:Label ID="lblItemID1"
                            runat="server" Text="" Visible="false"></asp:Label>
                         <asp:Label ID="lblID" runat="server" Text="" Visible="false"></asp:Label><asp:Label ID="lblItemID"
                            runat="server" Text="" Visible="false"></asp:Label>
                    </div>
                </div>
            </div>
</asp:Content>

