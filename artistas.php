
<?php 
include 'templates/header.php'; 
include 'templates/navegacion.php'; ?>


<main class="contenido-pagina">
    <div class="container">
        <div class="row calendario">
              <h1 class="text-center">Artistas / Horarios</h1>
          
                <?php
                      try {
                          require_once('funciones/db.php');
                          $sql = "SELECT *  ";
                          $sql .= "FROM `artistas` ";
                          $sql .= "INNER JOIN `escenario` ";
                          $sql .= "ON artistas.escenario_id=escenario.id_escenario ";
                          $sql .= "INNER JOIN `fecha` ";
                          $sql .= "ON artistas.fecha_id=fecha.id_fecha ";
                          $sql .= 'WHERE `id_fecha`= 1 ';
                          $sql .= 'AND `id_escenario` = 1 ';
                          $sql .= "ORDER BY fecha_evento, id_escenario ";
                          $resultado = $conn->query($sql);
                      } catch (Exception $e) {
                          $error = $e->getMessage();
                      }
                      echo "<div id='miercoles' class='col-md-6 col-md-offset-3 calendario_dia'>";
                      echo "<h2 class='text-center'>MainStage</h2>";
                      echo "<ul>";
                      while($artistas = $resultado->fetch_assoc() ) { 
                          echo "<li>";
                          echo $artistas['nombre_artista'];
                          echo "<span>";
                          echo " Hora: " . $artistas['hora_inicio'] . ' - ' . $artistas['hora_fin'];
                          echo "</span>";
                          echo "</li>";
                      } 
                      echo "</ul>";
                      echo "</div>";        
                  ?>
                       
              <?php
                  $conn->close();
              ?>
        </div>
    </div>
</main>


<?php include 'templates/footer.php'; ?>