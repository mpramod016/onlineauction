<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMasterPage.master" AutoEventWireup="true" CodeFile="Items.aspx.cs" Inherits="Items" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style>
.card-product .img-wrap {
    border-radius: 3px 3px 0 0;
    overflow: hidden;
    position: relative;
    height: 220px;
    text-align: center;
}
.card-product .img-wrap img {
    max-height: 100%;
    max-width: 100%;
    object-fit: cover;
}
.card-product .info-wrap {
    overflow: hidden;
    padding: 15px;
    border-top: 1px solid #eee;
}
.card-product .bottom-wrap {
    padding: 15px;
    border-top: 1px solid #eee;
}

.label-rating { margin-right:10px;
    color: #333;
    display: inline-block;
    vertical-align: middle;
}

.card-product .price-old {
    color: #999;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container">
<br>  <p class="text-center">Auction Items</p>
<hr>
    <asp:Label ID="LblDate" runat="server" Text="" Visible="false"></asp:Label>
<div class="row">
<asp:Repeater ID="Repeater1" runat="server">
<ItemTemplate>
<div class="col-md-4">
	<figure class="card card-product">
		<div class="img-wrap"><img src="Images/Service/<%#Eval("ImageId") %>/<%#Eval("ImageName") %><%#Eval("Extention") %>"></div>
		<figcaption class="info-wrap">
				<h4 class="title"><%#Eval("Itemname")%></h4>
				<p class="desc">  <%#Eval("Itemmanufactor")%></p>
				<div class="rating-wrap">
					<div class="label-rating"> <%#Eval("Itemcategory")%></div>
				</div> <!-- rating-wrap.// -->
		</figcaption>
		<div class="bottom-wrap">
			<a href="Bidding.aspx?ItemId=<%#Eval("ItemId") %>" class="btn btn-sm btn-primary float-right">Bid Now</a>	
			<div class="price-wrap h5">
				<span class="price-new"><%#Eval("Itemprice")%></span>
			</div> <!-- price-wrap.// -->
		</div> <!-- bottom-wrap.// -->
	</figure>
</div> 
</ItemTemplate>
</asp:Repeater>
</div> <!-- row.// -->
</div> 
</asp:Content>

