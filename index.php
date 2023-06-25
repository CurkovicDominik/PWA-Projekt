<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>franceinfo</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header>
        <h1>franceinfo<span style="color: rgb(238, 179, 90);">:</span></h1>
        <nav>
            <ul>
                <li><a href="index.php">home</a></li>
                <li><a href="kategorija.php?id=sport">sport</a></li>
                <li><a href="kategorija.php?id=kultura">kultura</a></li>
                <li><a href="kategorija.php?id=politika">politika</a></li>
                <li><a href="kategorija.php?id=showbiz">showbiz</a></li>

                <li><a href="administracija.php">administracija</a></li>
                <li><a href="unos.html">unos</a></li>
            </ul>
        </nav>
    </header>
    <main class="content">
    <?php
        include 'connect.php';
        define('UPLPATH', 'img/');
    ?>
        <section class="sport">
        <h2>SPORT</h2>
        <div class="a-container">
    <?php
        $query = "SELECT * FROM vijesti WHERE arhiva=0 AND kategorija='sport' LIMIT 5";
        $result = mysqli_query($dbc, $query);
        while($row = mysqli_fetch_array($result)) {
        echo '<article>';
        echo '<img src="' . UPLPATH . $row['slika'] . '" alt="nema slike">';
       
        echo '<h4>';
        echo '<a href="clanak.php?id='.$row['id'].'">';
        echo $row['naslov'];
        echo '</a></h4>';
        echo '</article>';
        }
    ?> 
    </div>
</section>

        <section class="kultura">
        <h2>KULTURA</h2>
        <div class="b-container">
    <?php
        $query = "SELECT * FROM vijesti WHERE arhiva=0 AND kategorija='kultura' LIMIT 4";
        $result = mysqli_query($dbc, $query);
        while($row = mysqli_fetch_array($result)) {
        echo '<article>';
        echo'<div class="article">';
        echo '<img src="' . UPLPATH . $row['slika'] . '" alt="nema slike">';
      
        echo '<h4>';
        echo '<a href="clanak.php?id='.$row['id'].'" >';
        echo $row['naslov'];
        echo '</a></h4>';
        echo '</article>';
        }
    ?> 
    </div>
    </section>
    <section class="politika">
        <h2>POLITIKA</h2>
        <div class="b-container">
    <?php
        $query = "SELECT * FROM vijesti WHERE arhiva=0 AND kategorija='politika' LIMIT 4";
        $result = mysqli_query($dbc, $query);
        while($row = mysqli_fetch_array($result)) {
        echo '<article>';
        echo'<div class="article">';
        echo '<img src="' . UPLPATH . $row['slika'] . '" alt="nema slike">';
      
        echo '<h4>';
        echo '<a href="clanak.php?id='.$row['id'].'" >';
        echo $row['naslov'];
        echo '</a></h4>';
        echo '</article>';
        }
    ?> 
    </div>
    </section>
    <section class="politika">
        <h2>SHOWBIZ</h2>
        <div class="b-container">
    <?php
        $query = "SELECT * FROM vijesti WHERE arhiva=0 AND kategorija='showbiz' LIMIT 4";
        $result = mysqli_query($dbc, $query);
        while($row = mysqli_fetch_array($result)) {
        echo '<article>';
        echo'<div class="article">';
        echo '<img src="' . UPLPATH . $row['slika'] . '" alt="nema slike">';
      
        echo '<h4>';
        echo '<a href="clanak.php?id='.$row['id'].'" >';
        echo $row['naslov'];
        echo '</a></h4>';
        echo '</article>';
        }
    ?> 
    </div>
    </section>
    </main>
    <footer>
        <p>france.tv</p>
    </footer>
</body>
</html>