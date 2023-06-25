<?php
    session_start();
    include 'update.php';
    include 'connect.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>franceinfo</title>
    <link rel="stylesheet" href="style.css"/>
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
    <main class="container">
     
    <?php
    $uspjesnaPrijava = false;
    if(isset($_POST['prijava']))
    {
        $prijavaImeKorisnika = $_POST['username'];
        $prijavaLozinkaKorisnika = $_POST['lozinka'];
       
        $sql = "SELECT korisnicko_ime, lozinka, razina FROM korisnik WHERE korisnicko_ime = ?";
        $stmt = mysqli_stmt_init($dbc);
        if (mysqli_stmt_prepare($stmt, $sql)) 
        {
            mysqli_stmt_bind_param($stmt, 's', $prijavaImeKorisnika);
            mysqli_stmt_execute($stmt);
            mysqli_stmt_store_result($stmt);
        }
        mysqli_stmt_bind_result($stmt, $imeKorisnika, $lozinkaKorisnika,$levelKorisnika);
        mysqli_stmt_fetch($stmt);
        
        if(password_verify($_POST['lozinka'], $lozinkaKorisnika) && mysqli_stmt_num_rows($stmt) > 0)
        {
            $uspjesnaPrijava = true;
            if($levelKorisnika == 1)
            {
                $admin = true;
            }
            else
            {
                $admin = false;
            }
            $_SESSION['$username'] = $imeKorisnika;
            $_SESSION['$level'] = $levelKorisnika;
        }
        else
        {
            $uspjesnaPrijava = false;
        }
    }
    ?>

<?php
if(($uspjesnaPrijava == true && $admin == true) || (isset($_SESSION['$username']) && $_SESSION['$level'] == 1))
{

    echo '<form method = "POST"><input type="submit" name="logout" value="Odjava"></form>';
    $selectedSport = "";
    $selectedKultura = "";
    $selectedPolitika = "";
    $selectedShowbiz = "";
    $query = "SELECT * FROM vijesti";
    $result = mysqli_query($dbc, $query);
    echo "<div class='content-admini'>";
    while($row = mysqli_fetch_array($result))
    {
        echo "<form enctype='multipart/form-data' class='adminforma' action='' method='POST'>";

           
            echo "<input type='hidden' name='id' value='".$row['id']."'>";

            echo "<label for='naslov'>Naslov vijesti</label>";
            echo "<input type='text' name='naslov' value='".$row['naslov']."'>";

            echo "<label for='about'>Kratki sadržaj vijesti</label>";
            echo "<textarea name='about' cols='30' rows='10'>".$row['sazetak']."</textarea>";

            echo "<label for='sadrzaj'>Sadržaj vijesti</label>";
            echo "<textarea name='sadrzaj' cols='30' rows='10'>".$row['tekst']."</textarea>";

            echo "<label for='slika'>Slika: </label>";
           echo "<div class='form-item'>";
                echo "<input type='file' id='slika' name='slika' accept='image/jpg,image/gif,image/png'/>";
                echo "<img src='img/".$row['slika']."' width='100px' height='100px'>";
           echo "</div>";
            

            if($row['kategorija']=='sport')
            {
                $selectedSport="selected";
            }
            else
            {
                $selectedSport="";
            }
            if($row['kategorija']=='kultura')
            {
                $selectedKultura="selected";
            }
            else
            {
                $selectedKultura="";
            }
            if($row['kategorija']=='politika')
            {
                $selectedPolitika="selected";
            }
            else
            {
                $selectedPolitika="";
            }
        
            if($row['kategorija']=='showbiz')
            {
                $selectedShowbiz="selected";
            }else
            {
                $selectedShowbiz="";
            }

            echo "<select name='kategorija' value='".$row['kategorija']."'>";
                echo "<option value='sport'".$selectedSport.">sport</option>";
                echo "<option value='kultura' ".$selectedKultura.">kultura</option>";
                echo "<option value='politika' ".$selectedPolitika.">politika</option>";
                echo "<option value='showbiz' ".$selectedShowbiz.">showbiz</option>";
            echo "</select>";

            if($row['arhiva']==0)
            {
                echo "<label><input id='' type='checkbox' name='arhiva' >Arhiviraj?</label>";
            }
            else
            {
                echo "<label><input type='checkbox' name='arhiva'  checked>Arhiviraj?</label>";
            }

            echo "<input type='submit' name='update' value='Ažuriraj'>";
            echo "<input type='submit' name='delete' value='Izbriši'>";
            echo "<input type='reset' name='reset' value='Resetiraj'>";
        echo "</form>";
    }
    echo "</div>";
    if(isset($_POST['delete'])){
        $id=$_POST['id'];
        $query = "DELETE FROM vijesti WHERE id=$id ";
        $result = mysqli_query($dbc, $query);
       }
    }
    else if($uspjesnaPrijava == true && $admin == false)
    {
        echo '<form method = "POST"><input type="submit" name="logout" value="Odjava"></form>';
        echo "<p>Bok ".$imeKorisnika."! Uspješno ste prijavljeni, ali niste administrator.</p>";
    }
    else if(isset($_SESSION['$username']) && $_SESSION['$level'] == 0)
    {
        echo '<form method = "POST"><input type="submit" name="logout" value="Odjava"></form>';
        echo "<p>Bok ".$_SESSION['$username']."! Uspješno ste prijavljeni, ali niste administrator.</p>";
    }
    else if($uspjesnaPrijava == false)
    {
        ?>
       <form class='prijavaforma' method='POST'>
        <h4 style="text-align:center;margin-bottom:10px;">Prijavite se ispravnim korisničkim imenom i lozinkom</h2>
                <label for='username'>Korisničko ime</label>
                <input type='text' id='username' name='username' placeholder='Korisničko ime'>
                <label for='password'>Lozinka</label>
                <input type='password' id='lozinka' name='lozinka' placeholder='Lozinka'>
                <input type='submit' value='Prijavi se' name='prijava'>
                <a href="registracija.html">Nemate račun?<a>
        </form>
           
   <?php }?>
       
        <?php
        if(isset($_POST['logout']))
        {
            session_unset();
            session_destroy();
            header("Location: index.php");
        }
        ?>
    </main>
    <footer>
        <p>france.tv</p>
    </footer>
</body>