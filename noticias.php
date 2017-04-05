<?php 
include 'templates/header.php';  
include 'templates/navegacion.php'; ?>
<main class="contenido-pagina">
    <div class="container">
            <h1 class="text-center">Últimas Noticias</h1>
            <ul class="listado-noticias ">
                <?php 
                  try {
                    require_once('funciones/db.php');
                    $sql = 'SELECT `id_noticia`, `titulo`, `imagen_miniatura`, `texto` ';
                    $sql .= 'FROM `noticias` ';
                    $resultado = $conn->query($sql);
                  } catch (Exception $e) {
                    $error = $e->getMessage();
                  }
                  while($noticias = $resultado->fetch_assoc() ) { ?>
                    <li class="row">
                        <div class="col-sm-4 col-xs-6">
                            <a href="ver_noticia.php?noticia_id=<?php echo $noticias['id_noticia']; ?>">
                                <img src="img/<?php echo $noticias['imagen_miniatura']; ?>" class="img-responsive polaroid">
                            </a>
                        </div>
                        
                        <div class="col-sm-8">
                            <h2><?php echo $noticias['titulo']; ?></h2>
                            <?php echo substr($noticias['texto'], 0, 300); ?> <br>
                            <a href="ver_noticia.php?noticia_id=<?php echo $noticias['id_noticia']; ?>" class="boton primario">Ver más</a>
                        </div>
                    </li>
                <?php } 
                      $conn->close();
                ?>
            </ul>

    </div>
</main>


<?php include 'templates/footer.php'; ?>