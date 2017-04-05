<?php 

include 'templates/header.php';  
include 'templates/navegacion.php'; 
?>
<main class="contenido-pagina">
    <div class="container">
        <div class="row">
              <h1 class="text-center">Gracias por participar</h1>
            
              <div class="col-md-8 col-md-offset-2">
                
                <?php  
                    $nombre = filter_var($_POST['nombre'], FILTER_SANITIZE_STRING);
                    $email = filter_var($_POST['email'], FILTER_SANITIZE_EMAIL);
                    $mensaje = filter_var($_POST['mensaje'], FILTER_SANITIZE_STRING);
                  
                    require_once('funciones/db.php');
                    $stmt = $conn->prepare("INSERT INTO concurso (nombre, email, mensaje) VALUES (?,?,?)");
                    $stmt->bind_param("sss", $nombre, $email, $mensaje);
                    $stmt->execute();
                    if($stmt->error):
                        echo "<div class='mensaje'>";
                        echo "Hubo un error";
                        echo "</div>";
                    else:
                      echo "<div class='mensaje correcto'>";
                      echo "<h2 class='text-center'>Te has inscrito correctamente {$nombre}</h2>";
                      echo "</div>";
                    endif;
                    $stmt->close();
                    $conn->close();
                ?>
                
                  
  
              </div>
        </div>
    </div>
</main>


<?php include 'templates/footer.php'; ?>