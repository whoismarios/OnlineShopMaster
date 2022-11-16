<?php

    $vorname="";
    $nachname="";
    $email="";
    $password="";
    $lastLogin= date("r");
    $online=0;
    $street="";
    $plz="";
    $city="";
    $land="Deutschland";
    $hasNewPassword=0;

    try{

        include 'imports/dbSettings.php';

        if(isset($_POST['vorname']) && isset($_POST['nachname']) && isset($_POST['email']) && isset($_POST['street']) && isset($_POST['plz']) && isset($_POST['city'])){
            $vorname = $_POST['vorname'];
            $nachname = $_POST['nachname'];
            $email = $_POST['email'];
            $street = $_POST['street'];
            $plz = $_POST['plz'];
            $city = $_POST['city'];

            $bytes = openssl_random_pseudo_bytes(4);
            $password = bin2hex($bytes);

            $sql = "INSERT INTO kunde (vorname, nachname, email, password, lastLogin, online, street, plz, city, land, hasNewPassword) VALUES (?,?,?,?,?,?,?,?,?,?,?)";
            $stmt = $conn->prepare($sql);
            $stmt->execute([$vorname, $nachname, $email, $password, $lastLogin, $online, $street, $plz, $city, $land, $hasNewPassword]);

            $conn=null;

            header("Location: successfullRegistred.php");
        }else{
            echo "Eine oder mehrere der Variablen wurden nicht übermittelt.";
        }
    }catch(PDOException $e){
        echo "Fehler: ".$e;
    }

?>