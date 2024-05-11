<?php
session_start();
error_reporting(0);
include('includes/config.php');?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>NDUB Student Management System</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" media="screen">
    <link rel="stylesheet" href="css/font-awesome.min.css" media="screen">
    <link rel="stylesheet" href="css/animate-css/animate.min.css" media="screen">
    <link rel="stylesheet" href="css/icheck/skins/flat/blue.css">
    <link rel="stylesheet" href="css/main.css" media="screen">
    <script src="js/modernizr/modernizr.min.js"></script>
    <style>
    body {
        font-family: Arial, sans-serif;
        background: url(./back5.jpg) no-repeat;
        //background-position: center;
        background-size: cover;
        background-color: #6055c7;
        margin: 0;
        padding: 0;
    }

    .container {
        max-width: 1000px;
        margin: 100px auto;
        padding: 20px;
        background-color: #ffffff;
        background: transparent;
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
    </style>
</head>

<body class="">
    <div class="main-wrapper">
        <!--#021b3c-->
        <div style="background-color:#afa014;height:4px; width:; margin: 0px 0px 0px 0px"></div>
        <div style="background-color:#021b3c;height:4px; width:; margin: 0px 0px 0px 0px"></div>
        <div style="background-color:#021b3c;height:4px; width:; margin: 0px 0px 0px 0px"></div>
        <div style="background-color:#021b3c;height:72px; width:; margin: 0px 0px 0px 0px">..
            <img src="https://ndub.edu.bd/wp-content/uploads/2023/06/NDUB-Logo-1.png" alt="logo" width="270"
                height="60">
            </img>
        </div>
        </head>

        <body class="">
            <div class="main-wrapper">

                <div class="">
                    <div class="row">
                        <div class="container">
                            <div class="panel login-box">
                                <div class="panel-heading">
                                    <div class="panel-title text-center">
                                        <h3>Find your result here</h3>
                                    </div>
                                </div>
                                <div class="panel-body p-20">



                                    <form action="result.php" method="post">
                                        <div class="form-group">
                                            <label for="rollid">Student Id</label>
                                            <input type="text" class="form-control" id="rollid"
                                                placeholder="Enter Your Student Id" autocomplete="off" name="rollid">
                                            <span class="help-block">Enter Last 4 digit only</span>
                                        </div>

                                        <div class="form-group">
                                            <label for="default" class="col-sm-2 control-label">Semester</label>
                                            <select name="class" class="form-control" id="default" required="required">
                                                <option value="">Select Semester</option>
                                                <?php $sql = "SELECT * from tblclasses";
$query = $dbh->prepare($sql);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
if($query->rowCount() > 0)
{
foreach($results as $result)
{   ?>
                                                <option value="<?php echo htmlentities($result->id); ?>">
                                                    <?php echo htmlentities($result->ClassName); ?>&nbsp;
                                                    Batch-<?php echo htmlentities($result->Section); ?></option>
                                                <?php }} ?>
                                            </select>
                                        </div>

                                        

                                            </select>
                                        </div>
                                        <div class="form-group mt-20">
                                            <div class="">

                                                <button type="submit"
                                                    class="btn btn-success btn-labeled pull-right">Search Result<span
                                                        class="btn-label btn-label-right"><i
                                                            class="fa fa-check"></i></span></button>
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>

                                        <div class="col-sm-6">
                                            <a href="index.php">Back to Home</a>
                                        </div>
                                    </form>

                                    <hr>

                                </div>
                            </div>
                            <!-- /.panel -->
                            <p class="text-muted text-center"><small>Istiaq Alam</small></p>
                        </div>
                        <!-- /.col-md-6 col-md-offset-3 -->
                    </div>

                    <!-- /.row -->
                </div>
                <!-- /. -->
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
            <script src="js/icheck/icheck.min.js"></script>

            <!-- ========== THEME JS ========== -->
            <script src="js/main.js"></script>
            <script>
            $(function() {
                $('input.flat-blue-style').iCheck({
                    checkboxClass: 'icheckbox_flat-blue'
                });
            });
            </script>

            <!-- ========== ADD custom.js FILE BELOW WITH YOUR CHANGES ========== -->
        </body>

</html>
