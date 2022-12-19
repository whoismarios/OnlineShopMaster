<nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header" style="width: 100%;">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>                        
                </button>
                <a id="navbar-brand" class="navbar-brand" href="../index.php">softdrinks.com</a>
            </div>
            <div class="collapse navbar-collapse" id="myNavbar">
                <ul class="nav navbar-nav">
                    <li><a href="../index.php">Home</a></li>
                    <li><a href="alleArtikel.php">Alle Artikel</a></li>
                    <li><a href="meinProfil.php">
                        <?php 

                        if(isset($_SESSION['id'])){
                            echo $_SESSION['vorname'];
                        }else{
                                echo "Mein Profil";
                            }
                        ?></a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">

                    <?php

                    if(!isset($_SESSION['id'])){
                        echo ' <li>
                                    <a href="signUp.php">
                                        <span class="glyphicon glyphicon-user"></span> Sign Up
                                    </a>
                                </li>';
                    }else{
                            echo "";
                        }

                    ?>

                    <?php

                   

                    ?>

                    <li>

                        <?php
                            if(!isset($_SESSION['id'])){
                                echo '  <a href="login.php">
                                            <span class="glyphicon glyphicon-log-in"></span> Login
                                        </a>';
                            }else {
                                echo '  <a href="logout.php">
                                            <span class="glyphicon glyphicon-log-out"></span> Logout
                                        </a>';
                            }   
                        ?>

                        
                    </li>
                </ul>
            </div>
        </div>
    </nav>