<?php
session_start();
error_reporting(0);
include('includes/config.php');
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Student Result Sheet</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" media="screen">
    <link rel="stylesheet" href="css/font-awesome.min.css" media="screen">
    <link rel="stylesheet" href="css/animate-css/animate.min.css" media="screen">
    <link rel="stylesheet" href="css/lobipanel/lobipanel.min.css" media="screen">
    <link rel="stylesheet" href="css/prism/prism.css" media="screen">
    <link rel="stylesheet" href="css/main.css" media="screen">
    <script src="js/modernizr/modernizr.min.js"></script>
</head>
<style>
body {
    font-family: Arial, sans-serif;
    background: url(./logobg.png) no-repeat;
    //background-position: center;
    background-size: cover;
    background-color: #6055c7;
    margin: 0;
    padding: 0;
}

.mak {
    max-width: ;
    max-height: 100px;
    background-color: #021b3c;
    background: ;
    border: #ffffff solid rgba(255, 255, 255, 0.2);
    backdrop-filter: blur(10px);
    border-radius: 5px;
    box-shadow: 0 10px 10px rgba(0, 0, 0, 1);
    text-align: left;
    animation: fadeInOut 2s;
}

.container {
    max-width: 1000px;
    margin: 60px auto;
    padding: 20px;
    background-color: white;
    background: ;
    border: #ffffff solid rgba(255, 255, 255, 0.2);
    backdrop-filter: blur(10px);
    border-radius: 10px;
    box-shadow: 0 10px 10px rgba(0, 0, 0, 1);
    text-align: left;
    animation: fadeInOut 2s;
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

<body>
    <div class="main-wrapper">
        <div style="background-color:#afa014;height:4px; width:; margin: 0px 0px 0px 0px"></div>
        <div style="background-color:#021b3c;height:4px; width:; margin: 0px 0px 0px 0px"></div>
        <div style="background-color:#021b3c;height:4px; width:; margin: 0px 0px 0px 0px"></div>
        <div style="background-color:#021b3c;height:72px; width:; margin: 0px 0px 0px 0px">
            <img src="https://ndub.edu.bd/wp-content/uploads/2023/06/NDUB-Logo-1.png" alt="logo" width="270"
                height="60">
            </img>
        </div>
        <div class="content-wrapper">
            <div class="content-container">


                <!-- /.left-sidebar -->


                <div class="container-fluid">




                    <!-- /.row -->

                    <!-- /.row -->
                </div>
                <!-- /.container-fluid -->

                <section class="section">
                    <div class="container-fluid">

                        <div class="row">



                            <div class="col-md-8 col-md-offset-2">
                                <div class="container">
                                    <div class="panel-heading">
                                        <div class="panel-title">
                                            <div class="col-md-12">
                                                <img src="https://ndub.edu.bd/wp-content/uploads/2023/06/NDUB-Logo-1.png"
                                                    alt="logo" width="270" height="60">
                                                </img>
                                                <h1 class="title" align="center">Notre Dame University Bangladesh
                                                </h1>
                                                <h2 align="center">Student Result Card</h2>
                                            </div>
                                            <?php

$rollid=$_POST['rollid'];
$classid=$_POST['class'];
$_SESSION['rollid']=$rollid;
$_SESSION['classid']=$classid;
$qery = "SELECT  tblstudents.StudentName,tblstudents.RollId,tblstudents.RegDate,tblstudents.StudentId,tblstudents.Status,tblclasses.ClassName,tblclasses.Section from tblstudents join tblclasses on tblclasses.id=tblstudents.ClassId where tblstudents.RollId=:rollid and tblstudents.ClassId=:classid ";
$stmt = $dbh->prepare($qery);
$stmt->bindParam(':rollid',$rollid,PDO::PARAM_STR);
$stmt->bindParam(':classid',$classid,PDO::PARAM_STR);
$stmt->execute();
$resultss=$stmt->fetchAll(PDO::FETCH_OBJ);
$cnt=1;
if($stmt->rowCount() > 0)
{
foreach($resultss as $row)
{   ?>
                                            <p><b>Student Name :</b> <?php echo htmlentities($row->StudentName);?>
                                            </p>
                                            <p><b>Student ID :</b> <?php echo htmlentities($row->RollId);?>
                                            <p><b>Batch :</b> <?php echo htmlentities($row->Section);?>
                                            <p><b>Semester :</b>
                                                <?php echo htmlentities($row->ClassName);?>
                                                <?php }

    ?>
                                            <h3 class="title" align="center"><u>Mark sheet</u></h3>
                                        </div>
                                        <div class="panel-body p-20">

                                            <table class="table table-hover table-bordered">
                                                <thead>
                                                    <tr>
                                                        <th>
                                                            <h5 align="center">Course Code</h5>
                                                        </th>
                                                        <th>
                                                            <h5 align="center">Course</h5>
                                                        </th>
                                                        <th>
                                                            <h5 align="center">Marks</h5>
                                                        </th>
                                                        <th>
                                                            <h5 align="center">Grade point</h5>
                                                        </th>
                                                        <th>
                                                            <h5 align="center">GPA</h5>
                                                        </th>
                                                    </tr>
                                                </thead>




                                                <tbody>
                                                    <?php                                              
// Code for result

$query ="select t.StudentName,t.RollId,t.ClassId,t.marks,SubjectId,tblsubjects.SubjectName, tblsubjects.SubjectCode from (select sts.StudentName,sts.RollId,sts.ClassId,tr.marks,SubjectId from tblstudents as sts join  tblresult as tr on tr.StudentId=sts.StudentId) as t join tblsubjects on tblsubjects.id=t.SubjectId where (t.RollId=:rollid and t.ClassId=:classid)";
$query= $dbh -> prepare($query);
$query->bindParam(':rollid',$rollid,PDO::PARAM_STR);
$query->bindParam(':classid',$classid,PDO::PARAM_STR);
$query-> execute();  
$results = $query -> fetchAll(PDO::FETCH_OBJ);
$cnt=1; //row counter 
$fail=0;
if($countrow=$query->rowCount()>0)
{ 

foreach($results as $result){

    ?>

                                                    <tr>

                                                        <td align="center">
                                                            <?php echo htmlentities($result->SubjectCode);?></td>
                                                        <td><?php echo htmlentities($result->SubjectName);?></td>
                                                        <td align="center">
                                                            <?php echo htmlentities($totalmarks=$result->marks);?></td>
                                                        <td align="center">
                                                            <?php 
                                                        if($result->marks>=80)
                                                        echo htmlentities("A+");
                                                        
                                                        else if($result->marks >= 75 && $result->marks < 80)
                                                        echo htmlentities("A");
                                                    
                                                        else if($result->marks >= 70 && $result->marks < 75)
                                                        echo htmlentities("A-");

                                                        else if($result->marks >= 65 && $result->marks < 70)
                                                        echo htmlentities("B+");
                                                        
                                                        else if($result->marks >= 60 && $result->marks < 65)
                                                        echo htmlentities("B");

                                                        else if($result->marks >= 55 && $result->marks < 60)
                                                        echo htmlentities("B-");

                                                        else if($result->marks >= 50 && $result->marks < 55)
                                                        echo htmlentities("C+");

                                                        else if($result->marks >= 45 && $result->marks < 50)
                                                        echo htmlentities("C");

                                                        else if($result->marks >= 40 && $result->marks < 45)
                                                        echo htmlentities("D");

                                                        else if($result->marks < 40){
                                                        echo htmlentities("F");
                                                        $fail=1;
                                                    }

                                                        ?></td>

                                                        <td align="center">
                                                            <?php 
                                                            
                                                            if($result->marks>=80)
                                                        echo htmlentities("4.00");
                                                        
                                                        else if($result->marks >= 75 && $result->marks < 80)
                                                        echo htmlentities("3.75");
                                                    
                                                        else if($result->marks >= 70 && $result->marks < 75)
                                                        echo htmlentities("3.50");

                                                        else if($result->marks >= 65 && $result->marks < 70)
                                                        echo htmlentities("3.25");
                                                        
                                                        else if($result->marks >= 60 && $result->marks < 65)
                                                        echo htmlentities("3.00");

                                                        else if($result->marks >= 55 && $result->marks < 60)
                                                        echo htmlentities("2.75");

                                                        else if($result->marks >= 50 && $result->marks < 55)
                                                        echo htmlentities("2.50");

                                                        else if($result->marks >= 45 && $result->marks < 50)
                                                        echo htmlentities("2.25");

                                                        else if($result->marks >= 40 && $result->marks < 45)
                                                        echo htmlentities("2.00");

                                                        else if($result->marks < 40){
                                                        echo htmlentities("0.00");
                                                    }

                                                        ?></td>
                                                    </tr>
                                                    <?php 

$totlcount+=$totalmarks;
$cnt++;}


?>
                                                    <tr>
                                                        <th scope="row" colspan="2">Total Marks</th>
                                                        <td align="center">
                                                            <b><?php echo htmlentities($totlcount); ?></b> out of
                                                            <b><?php echo htmlentities($outof=($cnt-1)*100); ?></b>
                                                        </td>
                                                        <th scope="row" colspan="1">Total Grade</th>
                                                        <td align="center"> <b> <?php
                                                           $grade = $totlcount / ($cnt-1);

                                                           if($grade>=80)
                                                           echo htmlentities("A+");
                                                           
                                                           else if($grade >= 75 && $grade < 80)
                                                           echo htmlentities("A");
                                                       
                                                           else if($grade >= 70 && $grade < 75)
                                                           echo htmlentities("A-");
   
                                                           else if($grade >= 65 && $grade < 70)
                                                           echo htmlentities("B+");
                                                           
                                                           else if($grade >= 60 && $grade < 55)
                                                           echo htmlentities("B");
   
                                                           else if($grade >= 55 && $grade < 60)
                                                           echo htmlentities("B-");
   
                                                           else if($grade >= 50 && $grade < 55)
                                                           echo htmlentities("C+");

                                                           else if($grade >= 45 && $grade < 50)
                                                           echo htmlentities("C");

                                                           else if($grade >= 40 && $grade < 55)
                                                           echo htmlentities("D");
   
                                                           else if($grade < 40)
                                                           echo htmlentities("F");

                                                         ?> </b> </td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row" colspan="2">Percntage</th>
                                                        <td align="center">
                                                            <b><?php echo  htmlentities($totlcount*(100)/$outof); ?>
                                                                %</b>
                                                        </td>
                                                        <th scope="row" colspan="1">Total CGPA</th>
                                                        <td align="center"> <b> <?php 
                                                        
                                                        if($grade>=80)
                                                        echo htmlentities("4.00");
                                                        
                                                        else if($grade >= 75 && $grade < 80)
                                                        echo htmlentities("3.75");
                                                    
                                                        else if($grade >= 70 && $grade < 75)
                                                        echo htmlentities("3.50");

                                                        else if($grade >= 65 && $grade < 70)
                                                        echo htmlentities("3.25");
                                                        
                                                        else if($grade >= 60 && $grade < 65)
                                                        echo htmlentities("3.00");

                                                        else if($grade >= 55 && $grade < 60)
                                                        echo htmlentities("2.75");

                                                        else if($grade >= 50 && $grade < 55)
                                                        echo htmlentities("2.50");

                                                        else if($grade >= 45 && $grade < 50)
                                                        echo htmlentities("2.25");

                                                        else if($grade >= 40 && $grade < 45)
                                                        echo htmlentities("2.00");

                                                        else if($grade < 40)
                                                        echo htmlentities("0.00");
                                                        
                                                        ?> </b>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row" colspan="4">Print Result</th>
                                                        <td><b><button id="printBtn">Print as PDF</button></b></td>
                                                        <script>
                                                        document.getElementById("printBtn").addEventListener("click",
                                                            function() {
                                                                window.print(); // Trigger browser print dialog
                                                            });
                                                        </script>
                                                    </tr>

                                                    <?php } else { ?>
                                                    <div class="alert alert-warning left-icon-alert" role="alert">
                                                        <strong>Notice!</strong> Your result not declare yet
                                                        <?php }?>
                                                    </div>
                                                    <?php } else {?>

                                                    <div class="alert alert-danger left-icon-alert" role="alert">
                                                        strong>Oh snap!</strong>
                                                        <?php
echo htmlentities("Invalid Student ID Or Semester");
 }
?>
                                                    </div>
                                                </tbody>
                                            </table>

                                        </div>
                                    </div>
                                    <!-- /.panel -->
                                </div>
                                <!-- /.col-md-6 -->
                            </div>
                            <!-- /.row -->

                        </div>
                        <!-- /.container-fluid -->
                </section>
                <!-- /.section -->

            </div>
            <!-- /.main-page -->


        </div>
        <!-- /.content-container -->
    </div>
    <!-- /.content-wrapper -->

    </div>
    <!-- /.main-wrapper -->




    <div class="foot">

        <footer>
            <div class="mak">
                <marquee direction="left" scrollamount="20">
                    <h2 style="font-size: 25px; color: #ffffff"> Developed By Istiaq Alam</h2>
                </marquee>
                <div style="background-color:#afa014;height:4px; width:1920px; margin: 0px 0px 0px 0px"></div>
            </div>
        </footer>
    </div>


    <!-- ========== COMMON JS FILES ========== -->
    <script src="js/jquery/jquery-2.2.4.min.js"></script>
    <script src="js/bootstrap/bootstrap.min.js"></script>
    <script src="js/pace/pace.min.js"></script>
    <script src="js/lobipanel/lobipanel.min.js"></script>
    <script src="js/iscroll/iscroll.js"></script>

    <!-- ========== PAGE JS FILES ========== -->
    <script src="js/prism/prism.js"></script>

    <!-- ========== THEME JS ========== -->
    <script src="js/main.js"></script>
    <script>
    $(function($) {

    });
    </script>

    <!-- ========== ADD custom.js FILE BELOW WITH YOUR CHANGES ========== -->

</body>

</html>
