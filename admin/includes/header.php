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

        <div class=" right-div">
            <a href="logout.php" class="btn btn-danger pull-right">LOG ME OUT</a>
        </div>
    </div>
</div>
<!-- LOGO HEADER END-->
<section class="menu-section">
    <div class="container" style="left:0">
        <div class="row">
            <div class="col-md-15">
                <div class="navbar-collapse collapse ">
                    <ul id="menu-top" class="nav navbar-nav navbar-right">
                        <li><a href="dashboard.php" class="menu-top">DASHBOARD</a></li>

                        <li>
                            <a href="#" class="dropdown-toggle " style="" id="ddlmenuItem" data-toggle="dropdown">
                                Categories <i class="fa fa-angle-down"></i></a>
                            <ul class="dropdown-menu" role="menu" aria-labelledby="ddlmenuItem">
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="add-category.php">Add
                                        Category</a></li>
                                <li role="presentation"><a role="menuitem" tabindex="-1"
                                        href="manage-categories.php">Manage Categories</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="#" class="dropdown-toggle" id="ddlmenuItem" data-toggle="dropdown"> Publications <i
                                    class="fa fa-angle-down"></i></a>
                            <ul class="dropdown-menu" role="menu" aria-labelledby="ddlmenuItem">
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="add-publications.php">Add
                                        Publications</a></li>
                                <li role="presentation"><a role="menuitem" tabindex="-1"
                                        href="manage-publications.php">Manage Publications</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="#" class="dropdown-toggle" id="ddlmenuItem" data-toggle="dropdown"> Books <i
                                    class="fa fa-angle-down"></i></a>
                            <ul class="dropdown-menu" role="menu" aria-labelledby="ddlmenuItem">
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="add-book.php">Add
                                        Book</a></li>
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="manage-books.php">Manage
                                        Books</a></li>
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="set-fine.php">Update
                                        Fine</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="#" class="dropdown-toggle" id="ddlmenuItem" data-toggle="dropdown">Journals
                                <i class="fa fa-angle-down"></i></a>
                            <ul class="dropdown-menu" role="menu" aria-labelledby="ddlmenuItem">
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="add-journals.php">Add
                                        Journal</a></li>
                                <li role="presentation"><a role="menuitem" tabindex="-1"
                                        href="manage-journals.php">Manage Journals</a></li>
                            </ul>
                        </li>

                        <li>
                            <a href="#" class="dropdown-toggle" id="ddlmenuItem" data-toggle="dropdown"> Issued Books <i
                                    class="fa fa-angle-down"></i></a>
                            <ul class="dropdown-menu" role="menu" aria-labelledby="ddlmenuItem">
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="issue-book.php">Issue New
                                        Book</a></li>
                                <li role="presentation"><a role="menuitem" tabindex="-1"
                                        href="manage-issued-books.php">Student Issued Books</a></li>
                                <li role="presentation"><a role="menuitem" tabindex="-1"
                                        href="faculty-issued-books.php">Faculty Issued Books</a></li>
                            </ul>
                        </li>

                        <li><a href="manage-requested-books.php" class="menu-top">Requested Books</a></li>
                        <li><a href="report.php" class="menu-top">Report</a></li>


                        <li>
                            <a href="#" class="dropdown-toggle" id="ddlmenuItem" data-toggle="dropdown"> Users<i
                                    class="fa fa-angle-down"></i></a>
                            <ul class="dropdown-menu" role="menu" aria-labelledby="ddlmenuItem">
                                <li role="presentation"><a role="menuitem" tabindex="-1"
                                        href="reg-faculties.php">Registered
                                        Faculties</a></li>
                                <li role="presentation"><a role="menuitem" tabindex="-1"
                                        href="reg-students.php">Registered Students</a></li>
                            </ul>
                        </li>

                        <!-- <li><a href="reg-students.php">Reg Students</a></li>
                        <li><a href="reg-faculties.php">Reg Faculties</a></li> -->

                        <li><a href="change-password.php">Change Password</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>