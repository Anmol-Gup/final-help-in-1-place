<?php
    require_once('../../PHP/dbcon.php');

    try {
      $stmt = $pdo->prepare("SELECT * FROM ngo_register where ngoid = :id");
  
      $id = $_SESSION['ngo_id'];
      $stmt->bindParam('id', $id, PDO::PARAM_INT);
  
      $stmt->execute();
  
      $count = $stmt->rowCount();
      $row = $stmt->fetch(PDO::FETCH_ASSOC);
      
    } catch (PDOException $e) {
      echo "Error: " . $e->getMessage();
    }
?>