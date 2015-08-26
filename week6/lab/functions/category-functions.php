<?php

//categories
//category_id
    //category
function createCategory($value) {
    $db = dbconnect();
    $stmt = $db->prepare("INSERT INTO categories SET category = :category");

    $binds = array(
        ":category" => $value
    );

    if ($stmt->execute($binds) && $stmt->rowCount() > 0) {
        return true;
    }
     
    return false;
    
}