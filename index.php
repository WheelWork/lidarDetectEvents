<!DOCTYPE html>
<html class="no-js"
      lang="fr">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible"
          content="ie=edge">
    <title>Historique détection Lidar</title>
    <meta name="description"
          content="Réupération et visualisation des évènements transmises par le lidar">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
          integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M"
          crossorigin="anonymous">
    <link href="css/dashboard.css"
          rel="stylesheet">
    <link rel="apple-touch-icon"
          href="apple-touch-icon.png">
    <link rel="icon"
          type="image/png"
          href="logo.png"/>
</head>


<body>
<?php

//Connexion à la base de données
try {
    $bdd = new PDO('mysql:host=localhost;dbname=lidar;charset=utf8', 'lidar', 'IiGdt4sEPZS6609y', array
    (PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
} catch (Exception $e) {
    die('Erreur : ' . $e->getMessage());
}


//Va prendre en compte une requète avec les variables get 'zone' et 'type'. Ajoute l'heure de réception
if (isset($_GET['zone']) && isset($_GET['type'])) {
    $datetime = date('Y-m-d H:i:s');
    $zoneName = (string)$_GET['zone'];
    $detectionType = (string)$_GET['type'];
    echo 'Intrus détecté dans la zone ' . $zoneName . ', de type ' . $detectionType . ' à l\'heure suivante ' . $datetime;

    $req = $bdd->prepare('INSERT INTO detection_events(detection_time, direction, zone) VALUES
    (:detection_time, :direction, :zone)');
    $req->execute(array(
        'detection_time' => $datetime,
        'direction' => $detectionType,
        'zone' => $zoneName
    ));

    exit();
}
$recupListeEvents = $bdd->prepare('SELECT direction, zone FROM detection_events WHERE direction = ? ORDER BY 
                detection_time');
$recupListeEvents->execute(array('in'));
while ($donnees = $recupListeEvents->fetch()) {

    echo '<p>' . $donnees['zone'] . '</p><br\>';
}


?>

<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
    <a class="navbar-brand"
       href="index.php">LIDAR Dashboard</a>
    <button class="navbar-toggler d-lg-none"
            type="button"
            data-toggle="collapse"
            data-target="#navbarsExampleDefault"
            aria-controls="navbarsExampleDefault"
            aria-expanded="false"
            aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <!--      <div class="collapse navbar-collapse" id="navbarsExampleDefault">
            <ul class="navbar-nav mr-auto">
              <li class="nav-item active">
                <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Settings</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Profile</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Help</a>
              </li>
            </ul>
            <form class="form-inline mt-2 mt-md-0">
              <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
              <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
            </form>
          </div>-->
</nav>

<div class="container-fluid">
    <div class="row">
        <nav class="col-sm-3 col-md-2 d-none d-sm-block bg-light sidebar">
            <ul class="nav nav-pills flex-column">
                <li class="nav-item">
                    <a class="nav-link active"
                       href="views/24h.php">Dernières 24h<span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link"
                       href="views/48h.php">Dernières 48h</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link"
                       href="views/week.php">7 Jours</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link"
                       href="views/month.php">30 jours</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link"
                       href="views/all.php">Intégralité</a>
                </li>
            </ul>


        </nav>

        <main class="col-sm-9 ml-sm-auto col-md-10 pt-3"
              role="main">
            <h1>Comptage par zone</h1>

            <section class="row text-center placeholders">
                <table class="table table-bordered table-striped table-condensed">
                    <thead>
                    <tr>
                        <th>date</th>
                        <th>zone</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>une premier ligne</td>
                        <td>une deuxieme ligne</td>
                    </tr>
                    <tr>
                        <td>une premier ligne</td>
                        <td>une deuxieme ligne</td>
                    </tr>
                    </tbody>
                </table>
                <?php

                //boucle sur les différentes zones identifiés dans la base
                //boucle sur le nombre de ligne ayant la valeur "in" dans l'intervalle de date défini
                //SELECT COUNT(*) FROM detection_events WHERE zone = $zone;
                //
                ?>
                <div class="col-6 col-sm-3 placeholder">
                    <img src="data:image/gif;base64,R0lGODlhAQABAIABAAJ12AAAACwAAAAAAQABAAACAkQBADs="
                         width="200"
                         height="200"
                         class="img-fluid rounded-circle"
                         alt="Generic placeholder thumbnail">
                    <h4>Label</h4>
                    <div class="text-muted">Something else</div>
                </div>

                <div class="col-6 col-sm-3 placeholder">
                    <img src="data:image/gif;base64,R0lGODlhAQABAIABAADcgwAAACwAAAAAAQABAAACAkQBADs="
                         width="200"
                         height="200"
                         class="img-fluid rounded-circle"
                         alt="Generic placeholder thumbnail">
                    <h4>Label</h4>
                    <span class="text-muted">Something else</span>
                </div>
                <div class="col-6 col-sm-3 placeholder">
                    <img src="data:image/gif;base64,R0lGODlhAQABAIABAAJ12AAAACwAAAAAAQABAAACAkQBADs="
                         width="200"
                         height="200"
                         class="img-fluid rounded-circle"
                         alt="Generic placeholder thumbnail">
                    <h4>Label</h4>
                    <span class="text-muted">Something else</span>
                </div>
                <div class="col-6 col-sm-3 placeholder">
                    <img src="data:image/gif;base64,R0lGODlhAQABAIABAADcgwAAACwAAAAAAQABAAACAkQBADs="
                         width="200"
                         height="200"
                         class="img-fluid rounded-circle"
                         alt="Generic placeholder thumbnail">
                    <h4>Label</h4>
                    <span class="text-muted">Something else</span>
                </div>
            </section>

            <h2>Section title</h2>
            <div class="table-responsive">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th>#</th>
                        <th>Header</th>
                        <th>Header</th>
                        <th>Header</th>
                        <th>Header</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>1,001</td>
                        <td>Lorem</td>
                        <td>ipsum</td>
                        <td>dolor</td>
                        <td>sit</td>
                    </tr>
                    <tr>
                        <td>1,002</td>
                        <td>amet</td>
                        <td>consectetur</td>
                        <td>adipiscing</td>
                        <td>elit</td>
                    </tr>
                    <tr>
                        <td>1,003</td>
                        <td>Integer</td>
                        <td>nec</td>
                        <td>odio</td>
                        <td>Praesent</td>
                    </tr>
                    <tr>
                        <td>1,003</td>
                        <td>libero</td>
                        <td>Sed</td>
                        <td>cursus</td>
                        <td>ante</td>
                    </tr>
                    <tr>
                        <td>1,004</td>
                        <td>dapibus</td>
                        <td>diam</td>
                        <td>Sed</td>
                        <td>nisi</td>
                    </tr>
                    <tr>
                        <td>1,005</td>
                        <td>Nulla</td>
                        <td>quis</td>
                        <td>sem</td>
                        <td>at</td>
                    </tr>
                    <tr>
                        <td>1,006</td>
                        <td>nibh</td>
                        <td>elementum</td>
                        <td>imperdiet</td>
                        <td>Duis</td>
                    </tr>
                    <tr>
                        <td>1,007</td>
                        <td>sagittis</td>
                        <td>ipsum</td>
                        <td>Praesent</td>
                        <td>mauris</td>
                    </tr>
                    <tr>
                        <td>1,008</td>
                        <td>Fusce</td>
                        <td>nec</td>
                        <td>tellus</td>
                        <td>sed</td>
                    </tr>
                    <tr>
                        <td>1,009</td>
                        <td>augue</td>
                        <td>semper</td>
                        <td>porta</td>
                        <td>Mauris</td>
                    </tr>
                    <tr>
                        <td>1,010</td>
                        <td>massa</td>
                        <td>Vestibulum</td>
                        <td>lacinia</td>
                        <td>arcu</td>
                    </tr>
                    <tr>
                        <td>1,011</td>
                        <td>eget</td>
                        <td>nulla</td>
                        <td>Class</td>
                        <td>aptent</td>
                    </tr>
                    <tr>
                        <td>1,012</td>
                        <td>taciti</td>
                        <td>sociosqu</td>
                        <td>ad</td>
                        <td>litora</td>
                    </tr>
                    <tr>
                        <td>1,013</td>
                        <td>torquent</td>
                        <td>per</td>
                        <td>conubia</td>
                        <td>nostra</td>
                    </tr>
                    <tr>
                        <td>1,014</td>
                        <td>per</td>
                        <td>inceptos</td>
                        <td>himenaeos</td>
                        <td>Curabitur</td>
                    </tr>
                    <tr>
                        <td>1,015</td>
                        <td>sodales</td>
                        <td>ligula</td>
                        <td>in</td>
                        <td>libero</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </main>
    </div>
</div>


?>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
        integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
        crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"
        integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1"
        crossorigin="anonymous"></script>
</body>

</html>
