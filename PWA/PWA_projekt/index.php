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
  <a href="index.php" class="active">Home</a>
  <a href="login.php">Administracija</a>
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
<content>
	<section class="body-width">
		<h1 class="naslov-topic">Sekcija 1.</h1>
			<?php
			 	$dbc = mysqli_connect('localhost', 'root', '', 'projekt') or
	  			die('Error connecting to MySQL server.'.mysqli_connect_error());
				define('UPLPATH', 'img/');
				$query = "SELECT * FROM clanak WHERE arhiva=1 AND kategorija='Sport' LIMIT 4";
				$result = mysqli_query($dbc, $query);
				$i=0;
			 	while($row = mysqli_fetch_array($result)) {
					echo "<div class='section'>";
					echo "<article class='card'>";
					echo '<img class= "product-img" src="' . UPLPATH . $row['slika'] . '"';
					echo '<h4>';
					echo '<a href="clanak.php?id='.$row['id'].'">';
					echo $row['naslov'];
					echo '</a></h4>';
					echo '<p>' . $row['sazetak'] . '</p>
							<p class="date">' . $row['datum'] .'</p> </article>';

			}?> 
	</section>

	<section class="body-width" id="body-width2">
		<h1 class="naslov-topic">Sekcija 2.</h1>
		<?php
			 $dbc = mysqli_connect('localhost', 'root', '', 'projekt') or
  			die('Error connecting to MySQL server.'.mysqli_connect_error());
			$query = "SELECT * FROM clanak WHERE arhiva=1 AND kategorija='Glazba' LIMIT 4";
			$result = mysqli_query($dbc, $query);
			 $i=0;
			 while($row = mysqli_fetch_array($result)) {
			echo "<div class='section'>";
			echo "<article class='card'>";
			echo '<img class= "product-img" src="' . UPLPATH . $row['slika'] . '"';
			echo '<h4>';
			echo '<a href="clanak.php?id='.$row['id'].'">';
			echo $row['naslov'];
			echo '</a></h4>';
			echo '<p>' . $row['sazetak'] . '</p>
					<p class="date">' . $row['datum'] .'</p>
						</article>';

		}?>
	</section>
</content>

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