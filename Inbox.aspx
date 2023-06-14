<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMasterPage.master" AutoEventWireup="true" CodeFile="Inbox.aspx.cs" Inherits="Inbox" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        @import url(http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,400,300,600,700);

        body {
            background-color: #F7F7F7;
            font-family: 'Open Sans', sans-serif;
        }
        /*Navbar*/
        .navbar-default {
            background-color: #fff;
            border-bottom-color: #E3E3E3;
        }

            .navbar-default .navbar-nav > .active > a,
            .navbar-default .navbar-nav > .active > a:hover,
            .navbar-default .navbar-nav > .active > a:focus {
                background-color: transparent !important;
            }

            .navbar-default .btn-compose {
                padding-right: 10px;
                border-right: 1px solid #F0F0F0;
            }
        /*Forms setup*/
        .form-control {
            border-radius: 0;
            box-shadow: none;
            height: auto;
        }

        .float-label {
            font-size: 10px;
        }

        input[type="text"].form-control,
        input[type="search"].form-control {
            border: none;
            border-bottom: 1px dotted #CFCFCF;
        }

        textarea {
            border: 1px dotted #CFCFCF !important;
            height: 130px !important;
        }
        /*Content Container*/
        .content-container {
            background-color: #fff;
            padding: 35px 20px;
            margin-bottom: 20px;
        }

        h1.content-title {
            font-size: 32px;
            font-weight: 300;
            text-align: center;
            margin-top: 0;
            margin-bottom: 20px;
            font-family: 'Open Sans', sans-serif !important;
        }
        /*Compose*/
        .btn-send {
            text-align: center;
            margin-top: 20px;
        }
        /*mail list*/

        ul.mail-list {
            padding: 0;
            margin: 0;
            list-style: none;
            margin-top: 30px;
        }

            ul.mail-list li a {
                display: block;
                border-bottom: 1px dotted #CFCFCF;
                padding: 20px;
                text-decoration: none;
            }

            ul.mail-list li:last-child a {
                border-bottom: none;
            }

            ul.mail-list li a:hover {
                background-color: #DBF9FF;
            }

            ul.mail-list li span {
                display: block;
            }

                ul.mail-list li span.mail-sender {
                    font-weight: 600;
                    color: #8F8F8F;
                }

                ul.mail-list li span.mail-subject {
                    color: #8C8C8C;
                }

                ul.mail-list li span.mail-message-preview {
                    display: block;
                    color: #A8A8A8;
                }

        .mail-search {
            border-bottom-color: #7FBCC9 !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <nav class="navbar navbar-default navbar-static-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>

                </button>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <div class="btn-compose pull-left">
                    <a type="button" class="btn btn-danger navbar-btn" href="#compose" role="tab" data-toggle="tab"><span class="glyphicon glyphicon-pencil"></span>Compose</a>
                </div>
                <ul class="nav navbar-nav">
                    <li>
                        <a href="#inbox" role="tab" data-toggle="tab">Inbox
                    </a>
                    </li>
                    <li><a href="#sent-mail" role="tab" data-toggle="tab">Sent mail</a>

                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#"><span class="glyphicon glyphicon-user"></span>Username</a>

                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
    <br />
    <div class="container">
        <div class="row">
            <div class="tab-content">
                <div class="tab-pane active" id="inbox">

                    <div class="container">
                        <div class="content-container clearfix">
                            <div class="col-md-6">
                                <h1 class="content-title">Inbox</h1>
                                <ul class="mail-list">
                                    <asp:Repeater ID="Repeater2" runat="server">
                                        <ItemTemplate>
                                            <li>
                                                <a>
                                                    <span class="mail-sender"><%#Eval("MailFrom")%></span>
                                                    <span class="mail-subject"><%#Eval("MailSubject")%></span>
                                                    <span class="mail-message-preview"><%#Eval("MailMessage")%></span>
                                                </a>
                                            </li>
                                        </ItemTemplate>
                                    </asp:Repeater>

                                </ul>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="tab-pane" id="compose">

                    <div class="container">
                        <div class="content-container clearfix">
                            <h1 class="content-title">Compose</h1>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <asp:TextBox ID="txtTo" runat="server" CssClass="form-control" placeholder="To" required></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:TextBox ID="txtSubject" runat="server" CssClass="form-control" placeholder="Subject" required></asp:TextBox>
                                </div>
                                <asp:TextBox ID="txtMessage" runat="server" CssClass="form-control" placeholder="message" TextMode="MultiLine" Rows="3" required></asp:TextBox>
                                <br />
                                <div class="form-group">
                                    <asp:Button ID="btnSend" runat="server" Text="Send" CssClass="btn btn-success btn-block" OnClick="btnSend_Click" />
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="tab-pane" id="sent-mail">

                    <div class="container">
                        <div class="content-container clearfix">
                            <div class="col-md-6">
                                <h1 class="content-title">Sent Mail</h1>
                                <ul class="mail-list">
                                    <asp:Repeater ID="Repeater1" runat="server">
                                        <ItemTemplate>
                                            <li>
                                                <a>
                                                    <span class="mail-sender"><%#Eval("MailTo")%></span>
                                                    <span class="mail-subject"><%#Eval("MailSubject")%></span>
                                                    <span class="mail-message-preview"><%#Eval("MailMessage")%></span>
                                                </a>
                                            </li>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </ul>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</asp:Content>

