<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>franceinfo</title>
    <link rel="stylesheet" href="style.css"/>
</head>
<body>
    <?php
    include 'connect.php';
    $id=$_GET['id'];
    $query = "SELECT * FROM vijesti WHERE id='$id'";
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
        <?php while($row = mysqli_fetch_array($result)): ?>
    <div class="hero">
        <h2><?php echo $row['kategorija'];?></h2>
        <h1><?php echo $row['naslov'];?></h1>
        <p>AUTOR:</p>
        <p><?php echo "OBJAVLJENO: ".$row['datum'];?></p>
        
    </div>
    <div class="slika">
        <?php echo "<img src= 'img/".$row['slika']."' alt='Nema slike'>";?>
    </div>
    <p><?php echo $row['sazetak'];?></p>
    <div class="text">
        <p><?php echo $row['tekst'];?></p>
    </div>
    <?php endwhile; ?>
    </main>
  
    <footer class="footer-clanak" >
        <h1>franceinfo<span style="color: rgb(238, 179, 90);">:</span></h1>
    
    </footer>
</body>