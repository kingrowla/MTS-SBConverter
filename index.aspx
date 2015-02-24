<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="noteStripper.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>

    <title>MTS Storyboard XML Converter</title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap-theme.css" rel="stylesheet" />
    <link href="Content/small-business.css" rel="stylesheet" />
    <link href="Content/prism.css" rel="stylesheet" />
      <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <form runat="server">
    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">
                    <img src="images/logo.png" alt="MTS Logo"/>
                </a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="#">About</a>
                    </li>
                    <li>
                        <a href="#">Coding Conventions</a>
                    </li>
                    <li>
                        <a href="#">Contact</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
    <!-- Page Content -->
    <div class="container">
        <!-- Heading Row -->
        <div class="row">
            <div class="col-md-4">
                <h1>Powerpoint Notes to XML Converter</h1>
                <p>This is a responsive web utility that strips out all 'notes' section of powerpoint and converts them to an XML document. It doesn't have too much fancy flare to it, but it makes life easier copy and pasting. Please note this converter is NOT PERFECT! Please review the XML afterwards for possible errors.</p> <br/>           
                <input type="file" class="filestyle" data-buttonName="btn-primary"/><br/>
               <%-- <a class="btn btn-default btn-lg" href="#" onclick="browseForFile()">Browse...</a>--%>
                <asp:LinkButton ID="btnConvert" runat="server" CssClass="btn btn-primary btn-lg" style="float:right;" OnClientClick="return fileToConvert();">Convert!</asp:LinkButton>
            </div>
            <!-- /.col-md-4 -->
            <div class="col-md-8">
                <pre style="max-height:350px; height:350px; overflow-y:auto;">
                <code id="box-content" class="language-markup">

                    Your converted XML will appear here. Copy and paste it.

                </code>
                </pre>
                <asp:Button ID="copy" runat="server" CssClass="btn btn-primary btn-sm" style="float:right;" Text="Copy to clipboard"></asp:Button>
                <%--<img class="img-responsive img-rounded" src="http://placehold.it/900x350" alt="">--%>
            </div>
            <!-- /.col-md-8 -->
        </div>
        <!-- /.row -->
        <hr>
        <!-- Call to Action Well -->
        <div class="row">
            <div class="col-lg-12">
                <div class="well text-center">
                    This is a well that is a great spot for a business tagline or phone number for easy access!
                </div>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; MTS Technologies, Inc. 2015</p>
                </div>
            </div>
        </footer>
    </div>
        </form>
    <!-- /.container -->
    <!-- jQuery -->
    <script src="Scripts/jquery-2.1.3.min.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="Scripts/bootstrap.js"></script>
    <script src="Scripts/fileStyle.min.js"></script>
    <script src="Scripts/prismJS/prism.js"></script>
    <script src="Scripts/ZeroClipboard/ZeroClipboard.js"></script>
     <script src="Scripts/mts.js"></script>
</body>
</html>
