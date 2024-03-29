<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>Xibo narrowcasting-Control Panel</title>

<link rel="stylesheet" href="ShamceyMetroStyleAdminTemplate1.4/Shamcey/1.4/css/style.default.css" type="text/css" />

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<script src="js/respond.min.js"></script>
<![endif]-->

<script src="ShamceyMetroStyleAdminTemplate1.4/Shamcey/1.4/js/jquery-1.10.2.min.js"></script>
<script src="ShamceyMetroStyleAdminTemplate1.4/Shamcey/1.4/js/jquery-migrate-1.2.1.min.js"></script>
<script src="ShamceyMetroStyleAdminTemplate1.4/Shamcey/1.4/js/jquery-ui-1.10.3.min.js"></script>

<script src="ShamceyMetroStyleAdminTemplate1.4/Shamcey/1.4/js/bootstrap.min.js"></script>

<script src="ShamceyMetroStyleAdminTemplate1.4/Shamcey/1.4/js/modernizr.min.js"></script>
<script src="ShamceyMetroStyleAdminTemplate1.4/Shamcey/1.4/js/jquery.cookies.js"></script>

<script src="ShamceyMetroStyleAdminTemplate1.4/Shamcey/1.4/js/custom.js"></script>

<script>
    jQuery(document).ready(function(){
        jQuery('#login').submit(function(){
            var u = jQuery('#username').val();
            var p = jQuery('#password').val();
            if(u == '' && p == '') {
                jQuery('.login-alert').fadeIn();
                return false;
            }
        });
    });
</script>

</head>

<body class="loginpage">



<div class="loginpanel">
    <div class="loginpanelinner">
        
        <div class="logo animate0 bounceIn"><img src="images/logo.png" alt="" /></div>
        <form id="login" action="inizio.php" method="post">
            
            <div class="inputwrapper login-alert">
                <div class="alert alert-error">Invalid username or password</div>
            </div>
            <div class="inputwrapper animate1 bounceIn">
                <input type="text" name="username" id="username" placeholder="Enter any username" />
            </div>
            <div class="inputwrapper animate2 bounceIn">
                <input type="password" name="password" id="password" placeholder="Enter any password" />
            </div>
            <div class="inputwrapper animate3 bounceIn">
                <button name="submit">Sign In</button>
            </div>
            <div class="inputwrapper animate4 bounceIn">
                <div class="pull-right">Not a member? <a href="registration.html">Sign Up</a></div>
                <label><input type="checkbox" class="remember" name="signin" /> Keep me sign in</label>
            </div>
            
        </form>
        
    </div><!--loginpanelinner-->
</div><!--loginpanel-->

<div class="loginfooter">
    <p>&copy; 2013. Xibo narrowcasting All Rights Reserved.</p>
</div>

</body>
</html>
