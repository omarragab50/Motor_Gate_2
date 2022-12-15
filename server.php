<?php 
session_start();
//------ User registration ---
$error = "";
if (array_key_exists("signUp", $_POST)) {
 
     // connect
    include('connect.php');  
 
    //Taking HTML Form Data from User
    $name = mysqli_real_escape_string($motorgate, $_POST['name']);
    $email = mysqli_real_escape_string($motorgate, $_POST['email']);
    $password = mysqli_real_escape_string($motorgate,  $_POST['password']); 
    $confirmpassword = mysqli_real_escape_string($motorgate,  $_POST['confirmpassword']); 
     
    // PHP form validation PHP code
    if (!$name) {
      $error .= "Name is required <br>";
     }
    if (!$email) {
        $error .= "Email is required <br>";
     }
    if (!$password) {
        $error .= "Password is required <br>";
     } 
     if ($password !== $confirmpassword) {
        $error .= "Password does not match <br>";
     }
     if ($error) {
        $error = "<b>There were error(s) in your form!</b> <br>".$error;
     }  else {
       
        //Check if email is already exist in the Database
 
        $query = "SELECT id FROM users WHERE email = '$email'";
        $result = mysqli_query($motorgate, $query);
        if (mysqli_num_rows($result) > 0) {
            $error .="<p>Your email has taken already!</p>";
        } else {
 
            //Password encryption or Password Hashing
            $hashedPassword = password_hash($password, PASSWORD_DEFAULT); 
            $query = "INSERT INTO users (name, email, password) VALUES ('$name', '$email', '$hashedPassword')";
             
            if (!mysqli_query($motorgate, $query)){
                $error ="<p>Could not sign you up - please try again.</p>";
                } else {
 
                    //session variables to keep user logged in
                $_SESSION['id'] = mysqli_insert_id($motorgate);  
                $_SESSION['name'] = $name;
 
                //Setcookie function to keep user logged in for long time
                if ($_POST['stayLoggedIn'] == '1') {
                setcookie('id', mysqli_insert_id($motorgate), time() + 60*60*365);
                //echo "<p>The cookie id is :". $_COOKIE['id']."</P>";
                }
                  
                //Redirecting user to home page after successfully logged in 
                header("Location: loggedInPage.php");  
             
                }
             
            }
 
        }  
    }
 
      //------- User Login ------------
 
if (array_key_exists("logIn", $_POST)) {
     
    // Database Link
    include('motorgate.php'); 
 
      //Taking form Data From User
      $email = mysqli_real_escape_string($motorgate, $_POST['email']);
      $password = mysqli_real_escape_string($motorgate,  $_POST['password']); 
       
      //Check if input Field are empty
      if (!$email) {
          $error2 .= "Email is required <br>";
       }
      if (!$password) {
          $error2 .= "Password is required <br>";
       } 
       if ($error2) {
          $error2 = "<b>There were error(s) in your form!</b><br>".$error2;
       }
        
      else {        
          //matching email and password
 
            $query = "SELECT * FROM users WHERE email='$email'";
            $result = mysqli_query($motorgate, $query);
            $row = mysqli_fetch_array($result);
         
            if (isset($row)) {
                 
                if (password_verify($password, $row['password'])) {
 
                    //session variables to keep user logged in
                    $_SESSION['id'] = $row['id'];  
 
                      //Logged in for long time untill user didn't log out
                    if ($_POST['stayLoggedIn'] == '1') {
                    setcookie('id', $row['id'], time() + 60*60*24); //Logged in permanently
                    }
 
                    header("Location: loggedInPage.php");
 
                } else {
                    $error2 = "Combination of email/password does not match!";
                     }
   
            }  else {
                $error2 = "Combination of email/password does not match!";
                 }
        }
}
?>
