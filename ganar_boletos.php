<?php 

include 'templates/header.php';  
include 'templates/navegacion.php'; ?>
<main class="contenido-pagina">
    <div class="container">
        <div class="row">
              <h1 class="text-center">Participa Para Ganar Boletos</h1>
            
              <div class="col-md-8 col-md-offset-2">
                
                  <form class="concurso" method="post" action="registrar.php"> 
                        <legend class="text-center"> Solo es necesario llenar el siguiente formulario</legend>
                        <div class="form-group">
                            <label for="nombre">Nombre:</label>
                            <input type="text" name="nombre" class="form-control" >
                        </div>
                        <div class="form-group">
                            <label for="email">Email:</label>
                            <input type="email" name="email" class="form-control" id="email">
                        </div>
                        <div class="form-group">
                            <label for="mensaje">Mensaje:</label>
                            <br>
                            <textarea class="form-control" name="mensaje" rows="8" ></textarea>
                        </div>
          
                        <button type="submit" class="boton primario btn">Enviar</button>
                  </form>
              </div>
        </div>
    </div>
</main>


<?php include 'templates/footer.php'; ?>