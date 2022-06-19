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
  <a href="login.php">Administracija</a>
  <a href="unos.php">Unos</a>
  <a href="registracija.php" class="active">Registracija</a>
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
<content>
 <form action="registracija.php" method="post">
  <div class="container2">
    <h1>Registracija</h1>
    <hr>

    <label for="ime"><b>Ime</b></label>
    <input class="register-text" type="text" placeholder="Upisite ime" name="ime" id="ime">

    <label for="prezime"><b>Prezime</b></label>
    <input class="register-text" type="text" placeholder="Upisite prezime" name="prezime" id="prezime">

    <label for="kime"><b>Korisnicko ime</b></label>
    <input class="register-text" type="text" placeholder="Upisite korisnicko ime" name="kime" id="kime">

    <label for="password"><b>Lozinka</b></label>
    <input class="register-text" type="password" placeholder="Upisite lozinku" name="password" id="password">

    <label for="psw-repeat"><b>Ponovite Lozinku</b></label>
    <input class="register-text" type="password" placeholder="Ponovo upisite lozinku" name="psw-repeat" id="psw-repeat">
    <hr>

    <button type="submit" class="registerbtn" name="submit" id="submit">Registriraj se</button>
  </div>
  
  <div class="container2 signin">
    <p>Vec imate korisnicki racun?<a class="register-anchor" href="login.php">Prijava</a>.</p>
  </div>
</form>

</content>
 <?php


  	$dbc = mysqli_connect('localhost', 'root', '', 'projekt') or
  	die('Error connecting to MySQL server.'.mysqli_connect_error());
if (isset($_POST["submit"])) { 
	$ime = '';
    if( isset( $_POST['ime'])) {
      $ime = $_POST['ime']; 
    }
	$prezime = '';
    if( isset( $_POST['prezime'])) {
      $prezime = $_POST['prezime']; 
    }

	$kime = '';
    if( isset( $_POST['kime'])) {
      $kime = $_POST['kime']; 
    }

    $password = '';
    if( isset( $_POST['password'])) {
      $password = $_POST['password']; 
    }

    $ppassword = '';
    if( isset( $_POST['psw-repeat'])) {
      $ppassword = $_POST['psw-repeat']; 
    }

	$hashed_password = password_hash($password, CRYPT_BLOWFISH);
	$razina = 0;
	$registriranKorisnik = '';
	//	Provjera postoji li u bazi već korisnik s tim korisničkim imenom
	$sql = "SELECT korisnicko_ime FROM korisnik WHERE korisnicko_ime = ?";
	$stmt = mysqli_stmt_init($dbc);
	if (mysqli_stmt_prepare($stmt, $sql)) {
	 mysqli_stmt_bind_param($stmt, 's', $kime);
	 mysqli_stmt_execute($stmt);
	 mysqli_stmt_store_result($stmt);
	 }
	if(mysqli_stmt_num_rows($stmt) > 0){
	 echo 'Korisničko ime već postoji!';
	}else{
	 // Ako ne postoji korisnik s tim korisničkim imenom - Registracija korisnika 

	 $sql = "INSERT INTO korisnik (ime, prezime,korisnicko_ime, lozinka, 
	razina)VALUES (?, ?, ?, ?, ?)";
	 $stmt = mysqli_stmt_init($dbc);
	 if (mysqli_stmt_prepare($stmt, $sql)) {
	 mysqli_stmt_bind_param($stmt, 'ssssd', $ime, $prezime, $kime, 
	$hashed_password, $razina);
	 mysqli_stmt_execute($stmt);
	 $registriranKorisnik = true;
	 }
	}
	mysqli_close($dbc);

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