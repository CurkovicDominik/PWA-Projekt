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
    include 'unos.php';
        $title = $_POST['naslov'];
        $about = $_POST['about'];
        $content = $_POST['sadrzaj'];
        $category = $_POST['kategorija'];
        $slika  = $_FILES['slika']['name'];
        $submit = $_POST['submit'];
        $target_dir = 'img/'.$slika;
        move_uploaded_file($_FILES["slika"]["tmp_name"], $target_dir);
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
            <article class="novi">
                <?php if(isset($submit)):?>
                    <p><?php echo $category; ?></p>
                    <h2><?php echo $title; ?></h2>
                    <p>Autor:</p>
                    <p>Objavljeno:<?php echo date("d.m.Y"); ?></p>
                    <p style="padding:10px"><?php 
                    echo "<img  style='height:290px;width:520px;' src='img/$slika' alt='Nema slike'>"; 
                    ?></p>
                    <p class="about" style="padding:10px"><?php echo $about; ?></p>
                    <p class="sadrzaj" style="padding:10px"><?php echo $content; ?></p>
                    
                    
                <?php endif; ?>
            </article>
        </section>
    </main>
 <footer>
        <p>france.tv</p>
    </footer>
</body>
</html>