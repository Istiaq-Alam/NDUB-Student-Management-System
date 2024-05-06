<?php
session_start();
error_reporting(0);
include('includes/config.php');
if(strlen($_SESSION['alogin'])=="")
    {   
    header("Location: index.php"); 
    }
    else{
if(isset($_POST['submit']))
{
$classname=$_POST['classname'];
$classnamenumeric=$_POST['classnamenumeric']; 
$section=$_POST['section'];
$sql="INSERT INTO  tblclasses(ClassName,ClassNameNumeric,Section) VALUES(:classname,:classnamenumeric,:section)";
$query = $dbh->prepare($sql);
$query->bindParam(':classname',$classname,PDO::PARAM_STR);
$query->bindParam(':classnamenumeric',$classnamenumeric,PDO::PARAM_STR);
$query->bindParam(':section',$section,PDO::PARAM_STR);
$query->execute();
$lastInsertId = $dbh->lastInsertId();
if($lastInsertId)
{
$msg="Semester Created successfully";
}
else 
{
$error="Something went wrong. Please try again";
}

}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title> Admin Create Semester</title>
    <link rel="stylesheet" href="css/bootstrap.css" media="screen">
    <link rel="stylesheet" href="css/font-awesome.min.css" media="screen">
    <link rel="stylesheet" href="css/animate-css/animate.min.css" media="screen">
    <link rel="stylesheet" href="css/lobipanel/lobipanel.min.css" media="screen">
    <link rel="stylesheet" href="css/prism/prism.css" media="screen"> <!-- USED FOR DEMO HELP - YOU CAN REMOVE IT -->
    <link rel="stylesheet" href="css/main.css" media="screen">
    <script src="js/modernizr/modernizr.min.js"></script>
    <style>
    body {
        font-family: Arial, sans-serif;
        background: url(./back6.jpg) no-repeat;
        //background-position: center;
        background-size: cover;
        background-color: #6055c7;
        margin: 0;
        padding: 0;
    }

    .container {
        max-width: 700px;
        margin: 50px auto;
        padding: 5px;
        background-color: #ffffff;
        background: ;
        border: #91e0ff solid rgba(255, 255, 255, 0.2);
        backdrop-filter: blur(10px);
        border-radius: 10px;
        box-shadow: 0 10px 10px rgba(0, 0, 0, 1);
        text-align: left;
        animation: fadeInOut 2s;
    }

    h1 {
        margin-top: 0;
        color: #ffffff;
    }

    @keyframes fadeInOut {
        0% {
            opacity: 0;
            transform: scale(0.9);
        }

        100% {
            opacity: 1;
            transform: scale(1);
        }
    }
    .errorWrap {
        padding: 10px;
        margin: 0 0 20px 0;
        background: #fff;
        border-left: 4px solid #dd3d36;
        -webkit-box-shadow: 0 1px 1px 0 rgba(0, 0, 0, .1);
        box-shadow: 0 1px 1px 0 rgba(0, 0, 0, .1);
    }

    .succWrap {
        padding: 10px;
        margin: 0 0 20px 0;
        background: #fff;
        border-left: 4px solid #5cb85c;
        -webkit-box-shadow: 0 1px 1px 0 rgba(0, 0, 0, .1);
        box-shadow: 0 1px 1px 0 rgba(0, 0, 0, .1);
    }
    </style>
</head>

<body class="top-navbar-fixed">
    <div class="main-wrapper">

        <!-- ========== TOP NAVBAR ========== -->
        <?php include('includes/topbar.php');?>
        <!-----End Top bar>
            <!-- ========== WRAPPER FOR BOTH SIDEBARS & MAIN CONTENT ========== -->
        <div class="content-wrapper">
            <div class="content-container">

                <!-- ========== LEFT SIDEBAR ========== -->
                <?php include('includes/leftbar.php');?>
                <!-- /.left-sidebar -->

                <div class="main-page">
                    <div class="container-fluid">
                        <div class="row page-title-div">
                            <div class="col-md-6">
                                <h2 class="title">Create Semester</h2>
                            </div>

                        </div>
                        <!-- /.row -->
                        <div class="row breadcrumb-div">
                            <div class="col-md-6">
                                <ul class="breadcrumb">
                                    <li><a href="dashboard.php"><i class="fa fa-home"></i> Home</a></li>
                                    <li><a href="#">Semester</a></li>
                                    <li class="active">Create Semester</li>
                                </ul>
                            </div>

                        </div>
                        <!-- /.row -->
                    </div>
                    <!-- /.container-fluid -->

                    <section class="section">
                        <div class="container-fluid">
                            <div class="panal">
                                <div class="col-md-8 col-md-offset-2">
                                    <div class="container">
                                        <div class="panel-heading">
                                            <div align="center" class="panel-title">
                                                <h2>Create a New Semester</h2>
                                            </div>
                                        </div>
                                        <?php if($msg){?>
                                        <div class="alert alert-success left-icon-alert" role="alert">
                                            <strong>Well done!</strong><?php echo htmlentities($msg); ?>
                                        </div><?php } 
else if($error){?>
                                        <div class="alert alert-danger left-icon-alert" role="alert">
                                            <strong>Oh snap!</strong> <?php echo htmlentities($error); ?>
                                        </div>
                                        <?php } ?>

                                        <div class="panel-body">

                                            <form method="post">
                                                <div class="form-group has-success">
                                                    <label for="success" class="control-label">Semester Name</label>
                                                    <div class="">
                                                        <input type="text" name="classname" class="form-control"
                                                            required="required" id="success">
                                                        <span class="help-block">Eg- Spring-24, Fall-24 etc</span>
                                                    </div>
                                                </div>
                                                <div class="form-group has-success">
                                                    <label for="success" class="control-label">Semester Number</label>
                                                    <div class="">
                                                        <input type="number" name="classnamenumeric" required="required"
                                                            class="form-control" id="success">
                                                        <span class="help-block">Eg- 1,2,4,5 etc</span>
                                                    </div>
                                                </div>
                                                <div class="form-group has-success">
                                                    <label for="success" class="control-label">Batch</label>
                                                    <div class="">
                                                        <input type="text" name="section" class="form-control"
                                                            required="required" id="success">
                                                        <span class="help-block">Eg- CSE20,CSE19 etc</span>
                                                    </div>
                                                </div>
                                                <div class="form-group has-success">

                                                    <div class="">
                                                        <button type="submit" name="submit"
                                                            class="btn btn-success btn-labeled">Submit<span
                                                                class="btn-label btn-label-right"><i
                                                                    class="fa fa-check"></i></span></button>
                                                    </div>



                                            </form>


                                        </div>
                                    </div>
                                </div>
                                <!-- /.col-md-8 col-md-offset-2 -->
                            </div>
                            <!-- /.row -->




                        </div>
                        <!-- /.container-fluid -->
                    </section>
                    <!-- /.section -->
                    <rssapp-carousel id="6vqEeswtmez1iGJk"></rssapp-carousel><script src="https://widget.rss.app/v1/carousel.js" type="text/javascript" async></script>
                    <rssapp-ticker id="6vqEeswtmez1iGJk"></rssapp-ticker><script src="https://widget.rss.app/v1/ticker.js" type="text/javascript" async></script>
                </div>
                <!-- /.main-page -->

            </div>
            <!-- /.content-container -->
        </div>
        <!-- /.content-wrapper -->

    </div>
    <!-- /.main-wrapper -->

    <!-- ========== COMMON JS FILES ========== -->
    <script src="js/jquery/jquery-2.2.4.min.js"></script>
    <script src="js/jquery-ui/jquery-ui.min.js"></script>
    <script src="js/bootstrap/bootstrap.min.js"></script>
    <script src="js/pace/pace.min.js"></script>
    <script src="js/lobipanel/lobipanel.min.js"></script>
    <script src="js/iscroll/iscroll.js"></script>

    <!-- ========== PAGE JS FILES ========== -->
    <script src="js/prism/prism.js"></script>

    <!-- ========== THEME JS ========== -->
    <script src="js/main.js"></script>



    <!-- ========== ADD custom.js FILE BELOW WITH YOUR CHANGES ========== -->
</body>

</html>
<?php  } ?>