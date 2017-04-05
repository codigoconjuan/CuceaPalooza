<?php include 'templates/header.php'; ?>
      
<?php include 'templates/navegacion.php'; ?>

        <main class="contenido-principal">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 text-center cartel">
                          <img src="img/cartel.png" class="img-responsive">
                    </div>  
                    <div class="col-sm-6 ">
                          <div class="fechas avisos">
                              <div class="contenido-avisos">
                                    <p>Fechas y Horarios ya disponibles</p>
                                    <a href="artistas.php" class="boton blanco">Leer más</a>
                              </div>
                          </div>
                          <div class="boletos avisos">
                              <div class="contenido-avisos">
                                    <p>Gana  un Par de Boletos!</p>
                                    <a href="ganar_boletos.php" class="boton blanco">Leer más</a>
                              </div>
                          </div>
                    </div>  
                </div>
            </div>
        </main>
        
        <section class="ultimas-noticias">
              <h2 class="text-center">Últimas Noticias</h2>
              
              <div class="container">
                  <div class="row">
                    
                      <?php 
                        try {
                          require_once('funciones/db.php');
                          $sql = 'SELECT `id_noticia`, `titulo`, `imagen_miniatura`';
                          $sql .= 'FROM `noticias` LIMIT 3';
                          $resultado = $conn->query($sql);
                        } catch (Exception $e) {
                          $error = $e->getMessage();
                        }
                        
                        while($noticias = $resultado->fetch_assoc() ) { ?>
                          <div class="col-sm-4 col-xs-6">
                              <a href="ver_noticia.php?noticia_id=<?php echo $noticias['id_noticia']; ?>">
                                  <img src="img/<?php echo $noticias['imagen_miniatura']; ?>" class="img-responsive polaroid">
                                  <p><?php echo $noticias['titulo']; ?></p>
                              </a>
                          </div>
                      <?php } ?>
                      <?php
                          $conn->close();
                      ?>
                        
                  </div>
                  
                  <div class="row">
                      <a href="noticias.php" class="boton primario pull-right">Leer más</a>
                  </div>
              </div>
        </section>

        <section class="festival">
            <h2 class="text-center">Sobre el Festival</h2>
            <div class="container">
                <div class="row fondo">
                    <div class="col-md-8 col-md-offset-2">
                        <p class="text-center">Nam nec varius nisl. Sed ut imperdiet lorem, eu interdum magna. Aenean efficitur non diam maximus aliquam. Nullam semper eros sed tempor dictum. Quisque tincidunt vehicula libero, quis venenatis purus auctor a. Nunc at scelerisque neque. Nulla interdum tincidunt odio, tempus egestas nisl sollicitudin nec. Nam sollicitudin dignissim arcu sit amet aliquam. Quisque quis arcu sed felis tempor finibus.</p>

                        <p class="text-center">Nulla interdum tincidunt odio, tempus egestas nisl sollicitudin nec. Nam sollicitudin dignissim arcu sit amet aliquam. Quisque quis arcu sed felis tempor finibus. </p>
                    </div>
                </div>
            </div>
        </section>
        
  <?php include 'templates/footer.php'; ?>