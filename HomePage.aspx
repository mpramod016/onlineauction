<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Online Auction</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
        .navbar {
            margin-bottom: 0;
            border-radius: 0;
        }

        footer {
            background-color: #f2f2f2;
            padding: 25px;
        }

        .carousel-inner img {
            width: 100%;
            margin: auto;
            min-height: 200px;
        }

        @media (max-width: 600px) {
            .carousel-caption {
                display: none;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <nav class="navbar navbar-inverse">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="#">Online Auction</a>
                    </div>
                    <div class="collapse navbar-collapse" id="myNavbar">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="HomePage.aspx">Home</a></li>
                            <li><a href="AboutPage.aspx">About</a></li>
                             <li><a href="LoginPage.aspx">Login</a></li>
                            <li><a href="RegistrationPage.aspx">Registration</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                </ol>
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <img src="Pictures/Auction2.png" alt="Image">
                        <div class="carousel-caption">
                        </div>
                    </div>
                    <div class="item">
                        <img src="Pictures/Auction1.jpg" alt="Image">
                        <div class="carousel-caption">
                        </div>
                    </div>
                </div>
                <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
            <div class="container text-center">
                <h3>"An Online Auction is service in which auction users can sell or bid for antique products & Art product through the internet."</h3>
                <br>
                <div class="row">
                    <div class="col-sm-4">
                        <img src="Pictures/Antiques.jpg" class="img-responsive" style="width: 100%" alt="Image">
                        <p>Antique Collection</p>
                    </div>
                    <div class="col-sm-4">
                        <img src="Pictures/Art.jpg" class="img-responsive" style="width: 100%" alt="Image">
                        <p>Art collection</p>
                    </div>
                    <div class="col-sm-4">
                        <div class="well">
                            <h3>Seller</h3>
                            <p>The seller or the provider of the goods or services completes a sale in response to an acquisition, appropriation,requisition or a direct interaction with the buyer at the point of sale. There is a passing of title (property or ownership) of the item, and the settlement of a price, in which agreement is reached on a price for which transfer of ownership of the item will occur. </p>
                        </div>
                        <div class="well">
                            <h3>Buyer</h3>
                            <p>A buyer is any person who contracts to acquire an asset in return for some form of consideration.
                               When someone gets characterized by their role as a buyer of certain assets, the term "buyer" gets new meaning. For example, a "buyer" is a person who purchases finished goods, typically for resale, for a firm, government, or organization. </p>
                        </div>
                    </div>
                </div>
            </div>
            <br>
            <footer class="container-fluid text-center">
                <p><h1>Online Auction</h1></p>
            </footer>
        </div>
    </form>
     <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
