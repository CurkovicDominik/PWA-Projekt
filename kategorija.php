<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>franceinfo</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <?php
    include 'connect.php';
    $kategorija=$_GET['id'];
    $query = "SELECT * FROM vijesti WHERE kategorija='$kategorija' AND arhiva=0";
    $result = mysqli_query($dbc, $query);
     ?>
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
    <section>
        <h2><?php echo $kategorija; ?></h2>
        <div class="a-container">
    <?php
       
       
        while($row = mysqli_fetch_array($result)) {
        
        echo '<article>';
        echo '<img src="img/'. $row['slika'] . '" alt="nema slike">';
       
        echo '<h4>';
        echo '<a href="clanak.php?id='.$row['id'].'">';
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