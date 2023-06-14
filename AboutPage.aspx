<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AboutPage.aspx.cs" Inherits="AboutPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Online Auction</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
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
                            <li><a href="HomePage.aspx">Home</a></li>
                            <li class="active"><a href="AboutPage.aspx">About</a></li>
                            <li><a href="LoginPage.aspx">Login</a></li>
                            <li><a href="RegistrationPage.aspx">Registration</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
             <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">About Us
                    <small>It's Nice to Meet You!</small>
                </h1>
                <p>An online auction is an auction which is held over the internet. Online auctions come in many different formats, but most popularly they are ascending English auctions, descending Dutch auctions, first-price sealed-bid, Vickrey auctions, or sometimes even a combination of multiple auctions, taking elements of one and forging them with another. The scope and reach of these auctions have been propelled by the Internet to a level beyond what the initial purveyors had anticipated.[1] This is mainly because online auctions break down and remove the physical limitations of traditional auctions such as geography, presence, time, space, and a small target audience.
                    This influx in reachability has also made it easier to commit unlawful actions within an auction. In 2017, online auctions were projected to account for 30% of all online e-commerce due to the rapid expansion of the popularity of the form of electronic commerce.</p>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <h2 class="page-header">What Makes UAuction.com</h2>
            </div>
            <div class="col-lg-4 col-sm-6 text-center">
                <img class="img-circle img-responsive img-center" src="Pictures/customers.png" alt="">
                <h3><mark>Customers Matter:</mark></h3>
                <p>We are here because of and for you, our valuable customers. We realize that if there is anything we cannot afford to skimp on it's customer service. This "About Us" page should really be called "About You" because that's really what this site is all about. Many companies say this, but we live it!</p>
            </div>
            <div class="col-lg-4 col-sm-6 text-center">
                <img class="img-circle img-responsive img-center" src="Pictures/make.png" alt="">
                <h3><mark>Freedom:</mark></h3>
                <p>We encourage our customers to link their auctions to their own web site. We also allow emailing to promote your products, and we encourage you to contact previous customers. We don't want to control your business or dictate what you can or can't do.</p>
            </div>
            <div class="col-lg-4 col-sm-6 text-center">
                <img class="img-circle img-responsive img-center" src="Pictures/Quick.jpg" alt="">
                <h3><mark>Quick Bid</mark></h3>
                <p>The way most auction sites are designed makes it possible for bidders to be "sniped" out of a winning bid by someone who waits until the last second and quickly outbids them. Our site works more like a real auction in that as long as there is live bidding (within last minute) and at least two bidders then the auction is extended (1 minute 15 seconds) which gives bidders a chance to win an item back and helps sellers get the maximum amount for their goods.</p>
            </div>  
        </div>
        <hr>
            <footer class="container-fluid text-center">
                <p>
                    <h1>Online Auction</h1>
                </p>
            </footer>
        </div>
            </div>
    </form>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
