<!DOCTYPE html>
<html lang="hr">
<head>
	<meta charset="utf-8">
	<title>PWA projekt</title>
	<link rel="stylesheet" type="text/css" href="style.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<header class="header">
	<h1>TVZ</h1>
</header>
<nav class="topnav" id="myTopnav">
  <a href="index.php">Home</a>
  <a href="login.php" class="active">Administracija</a>
  <a href="unos.php">Unos</a>
  <a href="registracija.php">Registracija</a>
  <div class="dropdown">
    <button class="dropbtn">Kategorija 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="sport.php">Sport</a>
      <a href="politika.php">Politika</a>
      <a href="glazba.php">Glazba</a>
    </div>
  </div> 
  <a href="javascript:void(0);" class="icon" onclick="myFunction()">
    <i class="fa fa-bars"></i>
  </a>
</nav>
<content class="index-content">
   <form action="login.php" method="post">
  <div class="container2">
    <h1>Prijava</h1>
    <hr>

    <label for="kime"><b>Korisnicko ime</b></label>
    <input class="register-text" type="text" placeholder="Upisite korisnicko ime" name="kime" id="kime">

    <label for="password"><b>Lozinka</b></label>
    <input class="register-text" type="password" placeholder="Upisite lozinku" name="password" id="password">

    <hr>

    <button type="submit" class="registerbtn" name="submit" id="submit">Prijavi se</button>
  </div>
  
  <div class="container2 signin">
    <p>Nemate racun?<a class="register-anchor" href="registracija.php">Registriraj se</a>.</p>
  </div>
</form>

</content>
 <?php
    session_start();
  	$dbc = mysqli_connect('localhost', 'root', '', 'projekt') or
  	die('Error connecting to MySQL server.'.mysqli_connect_error());

   
        if (isset($_POST["submit"])) {
		    $kime = '';
		    if( isset( $_POST['kime'])) {
		      $kime = $_POST['kime']; 
		    }

		    $password = '';
		    if( isset( $_POST['password'])) {
		      $password = $_POST['password']; 
		    }

		    $hashed_password = password_hash($password, CRYPT_BLOWFISH);


            $query = "SELECT korisnicko_ime, lozinka, razina FROM korisnik WHERE korisnicko_ime = ?";
            $stmt = mysqli_stmt_init($dbc);

            if (mysqli_stmt_prepare($stmt, $query)) {
                mysqli_stmt_bind_param($stmt, 's', $kime);
                mysqli_stmt_execute($stmt);
                mysqli_stmt_store_result($stmt);

                }
                mysqli_stmt_bind_result($stmt, $imeKorisnika, $lozinkaKorisnika, 
                $levelKorisnika);
                mysqli_stmt_fetch($stmt);

                if (password_verify($_POST['password'], $lozinkaKorisnika) && 
                mysqli_stmt_num_rows($stmt) > 0) {
                 $uspjesnaPrijava = true;
                  echo "<a class='login-success' href='administracija.php'><h1>Dobro dosli</h1></a>";

               
                 // Provjera da li je admin
                 if($levelKorisnika == 1) {
                 $admin = true;

                 }
                 else {
                 $admin = false;
                 }
                 //postavljanje session varijabli
                 $_SESSION['ime'] = $imeKorisnika;
                 $_SESSION['level'] = $levelKorisnika;
                 } else {
                 $uspjesnaPrijava = false;
                 }
                 
                }

    
?>
<footer class="footer">
  <p>Ivan Budimir (ibudimir@tvz.hr) - 2022.</p>
</footer>

<script>
function myFunction() {
  var x = document.getElementById("myTopnav");
  if (x.className === "topnav") {
    x.className += " responsive";
  } else {
    x.className = "topnav";
  }
}
</script>

</body>
</html>