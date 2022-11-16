<?php

    $loginSucess = false;

    $email = "";
    $password = "";
    $newLastLogin = date("r");

    if(isset($_POST['email']) && isset($_POST['password'])){
        $email = $_POST['email'];
        $passwordF = $_POST['password'];

        $password = hash('sha512', $passwordF);
    }

    include 'imports/dbSettings.php';

    try{
        $sql = "SELECT * FROM kunde WHERE email='".$email."' and password='".$password."'";
    
        foreach($conn-> query($sql) as $row){
            
            $dbEmail = $row['email'];
            $dbPassword = $row['password'];

            session_start();

            $_SESSION['id'] = $row['id'];
            $_SESSION['vorname'] = $row['vorname'];
            $_SESSION['nachname'] = $row['nachname'];
            $_SESSION['email'] = $row['email'];
            $_SESSION['lastLogin'] = $row['lastLogin'];
     
            if($email == $dbEmail && $password == $dbPassword){
                $loginSucess = true;
            }else{
                $loginSucess=false;
            }

        }

        if($loginSucess){
            try{
                $sql2 = "UPDATE kunde SET lastLogin='".$newLastLogin."' WHERE email='".$email."'";   
                $stmt2 = $conn->prepare($sql2);
                $stmt2->execute();

                $conn = null;
                header("Location: ../index.php");
            }catch(PDOException $e){
                echo "Fehler: ".$e;
            }
        }else{
            $conn = null;
            header("Location: login.php");
            /*echo $sql;
            echo "<br>";
            echo $sql2;
            echo "<br>";
            echo $dbEmail;
            echo "<br>";
            echo $dbPassword;
            echo "<br>";
            echo $password;
            echo "<br>";
            echo $email;
            echo "<br>";*/
        }

    }catch(PDOException $e){
        echo "Fehler: ".$e;
    }

?>