<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<!DOCTYPE html>
<html lang="en">

    <head>
        <?php include('include/head.php'); ?>
     <link href="<?php echo base_url(); ?>assets/css/compiled.min.css" rel="stylesheet">
    <body class="light-green lighten-4">
   <!-- Navbar here-->
        <?php include('include/navbar.php'); ?>
        <br>
        <br>
        <div class="container">
          
            <div class="row" >
                <div class="col-md-2"></div>
                <div class="col-md-8 mb-r pb-5">

                    <div class="card">
                        <div class="card-body z-depth-4">

                            <!--Header
                            <div class="form-header cyan-darken-4-color">
                                <h3>
                                   Accueil</h3>
                            </div>-->

                            <!--Body-->
                            
                            <h2 class="text-center"> Bienvenu !</h2>
                            <br>
                            <br>

                            <div class="text-center">
                                <a href="#" class="btn light-green darken-3 waves-effect waves-light" >Commencer le questionnaire</a>
                            </div>

                        </div>

                        <!--Footer
                        <div class="modal-footer">
                            <div class="options">
                                <p>Not a member?
                                    <a href="#">Sign Up</a>
                                </p>
                                <p>Forgot
                                    <a href="#">Password?</a>
                                </p>
                            </div>
                        </div>-->
                    </div>

                </div>
                
                <div class="col-md-2"></div>
            </div>
            
        </div>
     <?php //include('include/footer.php'); ?>
        <!-- SCRIPTS here -->
        <?php include('include/scripts.php'); ?>
        
        
    </body>

</html>
