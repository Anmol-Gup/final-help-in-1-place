<?php
    
    session_start();
    unset($_SESSION["ngo_id"]);
    session_destroy();
    setcookie("ngoId", "");
    header("Location:../../PHP/index.php");    

?>