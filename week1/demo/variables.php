<!DOCTYPE html>
<?php
/*
 * http://php.net/manual/en/language.variables.basics.php
 * Variables in PHP are represented by a dollar sign followed by
 * the name of the variable. The variable name is case-sensitive.
 * 
 * A valid variable name starts with a letter or underscore, 
 * followed by any number of letters, numbers, or underscores.
 */

    $myvar = 'hello';
?>
<html>
    <head>
        <meta charset="UTF-8">
        <title>My page Title <?php echo $myvar; ?></title>
    </head>
    <body>
        
        <h1> my number is
        <?php  
            $randNumber = rand(1,10);
            echo $randNumber;
        ?>
        </h1>
    </body>
</html>
