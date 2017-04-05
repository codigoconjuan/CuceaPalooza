<?php 
$id_noticia = $_GET['noticia_id'];
if(!is_numeric($id_noticia)) {
  die("No se puede hacer eso");
}
include 'templates/header.php';  
include 'templates/navegacion.php'; ?>
<main class="contenido-pagina">
    <div class="container">
        <div class="row">
              <?php 
                try {
                    require_once('funciones/db.php');
                    $sql = "SELECT `titulo`, `imagen_grande`, `texto` ";
                    $sql .= "FROM `noticias` " ;
                    $sql .= "WHERE id_noticia = {$id_noticia}";
                    $resultado = $conn->query($sql);
                } catch (Exception $e) {
                    $error = $e->getMessage();
                }
                while($noticia = $resultado->fetch_assoc()) {  ?>
                    <h1 class="text-center"><?php echo $noticia['titulo']; ?></h1>
                    
                    <img src="img/<?php echo $noticia['imagen_grande']; ?>" class="img-responsive">
                    <article class="noticia text-center col-md-8 col-md-offset-2">
                        <?php echo $noticia['texto']; ?>
                    </article>
              <?php } $conn->close(); ?>
        </div>
    </div>
</main>


<?php include 'templates/footer.php'; ?>