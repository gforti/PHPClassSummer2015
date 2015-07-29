<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
    </head>
    <body>
        <?php
            include './dbconnect.php';
            
            $db = getDatabase();
            
            $stmt = $db->prepare("INSERT INTO test SET dataone = :dataone, datatwo = :datatwo");
        
            $dataone = filter_input(INPUT_POST, '');
            $datatwo = filter_input(INPUT_POST, '');
        
            $binds = array( 
                ":dataone" => $dataone,
                ":datatwo" => $datatwo
                    );
            
            $results = array();
            if ( $stmt->execute($binds) && $stmt->rowCount() > 0 ) {
                $results = $stmt->fetch(PDO::FETCH_ASSOC);                       
            }
            
            
        ?>
        
         
 

        
        <?php foreach($results as $row): ?>
            
        <?php endforeach; ?>
        
         
        
        
        
        <form method="post" action="#">            
            Data one <input type="text" value="" name="dataone" />
            <br />
            Data two <input type="text" value="" name="datatwo" />
            <br />            
            <input type="submit" value="Submit" />
        </form>
    </body>
</html>
