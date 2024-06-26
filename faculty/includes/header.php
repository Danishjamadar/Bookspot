<div class="navbar navbar-inverse set-radius-zero">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand">
                <!-- Bookspot -->
                <img src="assets/img/logo.png" alt="Logo" />

            </a>

        </div>
        <?php if ($_SESSION['login']) {
            ?>
        <div class="right-div">
            <a href="logout.php" class="btn btn-danger pull-right">LOG ME OUT</a>
        </div>
        <?php } ?>
    </div>
</div>
<!-- LOGO HEADER END-->
<?php if ($_SESSION['login']) {
    ?>
<section class="menu-section">
    <div class="container">
        <div class="row ">
            <div class="col-md-12">
                <div class="navbar-collapse collapse ">
                    <ul id="menu-top" class="nav navbar-nav navbar-right">
                        <li><a href="dashboard.php" class="menu-top">DASHBOARD</a></li>
                        <li>
                            <a href="#" class="dropdown-toggle" id="ddlmenuItem" data-toggle="dropdown"> Account <i
                                    class="fa fa-angle-down"></i></a>
                            <ul class="dropdown-menu" role="menu" aria-labelledby="ddlmenuItem">
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="my-profile.php">My
                                        Profile</a></li>
                                <li role="presentation"><a role="menuitem" tabindex="-1"
                                        href="change-password.php">Change Password</a></li>
                            </ul>
                        </li>
                        <li><a href="issued-books.php">Issued Books</a></li>
                        <li><a href="request-a-book.php">Books</a></li>
                        <li><a href="journal.php">Journals</a></li>

                    </ul>
                </div>
            </div>

        </div>
    </div>
</section>
<?php } else { ?>
<section class="menu-section">
    <div class="container">
        <div class="row ">
            <div class="col-md-12">
                <div class="navbar-collapse collapse ">
                    <ul id="menu-top" class="nav navbar-nav navbar-right">

                        <li><a href="adminlogin.php">Admin Login</a></li>
                        <li><a href="signup.php">Student Signup</a></li>
                        <li><a href="index.php">Student Login</a></li>
                        <li><a href="facultysignup.php">Faculty Signup</a></li>
                        <li><a href="facultylogin.php">Faculty Login</a></li>

                    </ul>
                </div>
            </div>

        </div>
    </div>
</section>

<?php } ?>