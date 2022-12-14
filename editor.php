<?php
include("conexion.php");
?>
<!DOCTYPE html>
<html lang="es" dir="ltr">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Tipificación - Whatsapp Hogares</title>
  
    <link href="assets/dist/themes/Flaty/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
    <script src="//biblioteca.emtelco.co/_plugins/jquery/1.11.1/jquery-1.11.1.min.js"></script>
    <script src="//biblioteca.emtelco.co/_plugins/inputmask/js/inputmask.js"></script>
   
   
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <link href="//biblioteca.emtelco.co/_plugins/bootstrap/3.3.7/css/bootstrap.css" rel="stylesheet" />
    <script src="//biblioteca.emtelco.co/_plugins/jquery/3.3.1/jquery-3.3.1.min.js"></script>
    <script src="//biblioteca.emtelco.co/_plugins/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <link rel="stylesheet" type="text/css" href="assets/css/styles.css">
    <section class="header-border">
        <header class="header">
            <div class="">
                <image src="assets/images/whatsapp.jpeg"
                    style=" width:100%;" class="img-fluid"></image>
            </div>
        </header>
        <nav class="navbar navbar-expand-lg navbar-dark bg-primary"><span
                style="color:#1a2a68; font-size:20px;">&nbsp;Tipificación</span>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01"
                aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarColor01">
                <ul class="navbar-nav mr-auto">
                </ul>
                <form class="form-inline my-2 my-lg-0">
                  <!--  <input type="search" class="form-control" id="my-search" placeholder="¿Qué estás buscando?">-->


                    <input type="text" id="myInput" onkeyup="myFunction(this)" placeholder="¿Qué estás buscando?" style="color:black!important">

                   <button type="button" class="btn btn-primary" onclick="Limpiar()">Limpiar búsqueda</button>

                   <a href="#" data-toggle="modal" data-target="#Modal_nuevo">
                    <button type="button" class="btn btn-primary">Nuevo Registro</button>
                    </a>
                </form>
            </div>
        </nav>
    </section>

<body>

  <center>
    <!-- id="example-table"  -->
    <table class="tableizer-table table table-bordered table-striped " id="myTable" style="width:98%;margin-bottom: 60px;text-align: justify;">
      <thead>
        <tr class="tableizer-firstrow">
          <th>Opciones</th>
          <th>Nivel 1</th>
          <th>Nivel 2</th>
          <th>Nivel 3</th>
          <th>Documentación</th>


        </tr>
      </thead>
      <tbody>

        <?php
        $query = "SELECT * FROM `matriz`";
          
        $resultadoc = $conexion->query($query);

        $rowcount=mysqli_num_rows($resultadoc);

        echo "Total de registros: ".$rowcount;
        
        while ($rowc = $resultadoc->fetch_assoc()) {
        ?>
          <tr height=28 style='height:21.0pt'>
          <td>
          <a href="#" data-toggle="modal" data-target="#Modal_<?= utf8_encode($rowc["id_matriz"]); ?>"><i class="fa fa-pencil"></i></a>
          <a href="#" data-toggle="modal" data-target="#Modalelimin_<?= utf8_encode($rowc["id_matriz"]); ?>"><i class="fa fa-trash"></i></a>

        
              
          </td>
            <td height=28 style='height:21.0pt;border-top:none'><?= utf8_encode($rowc["nivel_1"]); ?></td>
            <td style='border-top:none;border-left:none'><?= utf8_encode($rowc["nivel_2"]); ?></td>
            <td style='border-top:none;border-left:none'><?= utf8_encode($rowc["nivel_3"]); ?></td>
            <td width=430 style='border-top:none;border-left:none;width:323pt'><?= $rowc["documentacion"]; ?></td>
      



            <!-- Modal -->
            <div class="modal fade" id="Modal_<?= utf8_encode($rowc["id_matriz"]); ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Editando Registro #<?= utf8_encode($rowc["id_matriz"]); ?></h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <form method=post action="actualizar_niveles.php">
                    <div class="modal-body">
                      <div class="row">
                        <div class="col-md-12">
                          <label>Nivel 1</label>
                          <input type="hidden" name="id_matriz" value="<?= utf8_encode($rowc["id_matriz"]); ?>">
                          <textarea class="form-control" name="nivel_1"><?= utf8_encode($rowc["nivel_1"]); ?></textarea>
                        </div>
                        <div class="col-md-12">
                          <label>Nivel 2</label>
                          <textarea class="form-control" name="nivel_2"><?= utf8_encode($rowc["nivel_2"]); ?></textarea>
                        </div>
                        <div class="col-md-12">
                          <label>Nivel 3</label>
                          <textarea class="form-control" name="nivel_3"><?= utf8_encode($rowc["nivel_3"]); ?></textarea>
                        </div>
                        <div class="col-md-12">
                          <label>Documentación</label>
                          <textarea class="form-control" name="documentacion" rows=5><?= utf8_encode($rowc["documentacion"]); ?></textarea>
                        </div>
                        <div class="col-md-12">
                          <label>Clave</label>
                          <input type=password class="form-control" name="clave">
                        </div>

                      </div>

                    </div>
                    <div class="modal-footer">
                      <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                      <button type="submit" class="btn btn-primary">Guardar Cambios</button>
                    </div>
                  </form>
                </div>
              </div>
            </div>


            <!-- Modal -->
            <div class="modal fade" id="Modalelimin_<?= utf8_encode($rowc["id_matriz"]); ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Editando Registro #<?= utf8_encode($rowc["id_matriz"]); ?></h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <form method=post action="eliminar_niveles.php">
                    <div class="modal-body">
                      <div class="row">
                        <div class="col-md-12">
                          <input type="hidden" name="id_matriz" value="<?= utf8_encode($rowc["id_matriz"]); ?>">


                          <div class="col-md-12">
                            <label>Clave</label>
                            <input type=password class="form-control" name="clave">
                          </div>

                        </div>

                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Guardar Cambios</button>
                      </div>
                  </form>


                </div>
              </div>
            </div>



          </tr>
        <?php
      
        }
        ?>

      </tbody>
    </table>
  </center>
  <footer class="footer">
    <div class="footer-copyright text-center py-3">Emtelco | Tigo</div>
  </footer>




  <!-- Modal -->
  <div class="modal fade" id="Modal_nuevo" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Nuevo Registro</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>

        <form method=post action="guardar_niveles.php">
          <div class="modal-body">
            <div class="row">
              <div class="col-md-12">
                <label>Nivel 1</label>
                <textarea class="form-control" name="nivel_1"></textarea>
              </div>
              <div class="col-md-12">
                <label>Nivel 2</label>
                <textarea class="form-control" name="nivel_2"></textarea>
              </div>
              <div class="col-md-12">
                <label>Nivel 3</label>
                <textarea class="form-control" name="nivel_3"></textarea>
              </div>
              <div class="col-md-12">
                <label>Documentación</label>
                <textarea class="form-control" name="documentacion" rows=5></textarea>
              </div>


              <div class="col-md-12">
                <label>Clave</label>
                <input type=text class="form-control" name="clave">
              </div>
            </div>



          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <button type="submit" class="btn btn-primary">Guardar Cambios</button>
          </div>
        </form>
      </div>
    </div>
  </div>

</body>
<style>
  mark,
  .mark {
    padding: .2em;
    background-color: #e8d156 !important;
  }

  .table>thead>tr>th {
    vertical-align: bottom;
    border-bottom: 4px solid #5191cc;
    background-color: #28428d;
    color: white;
    padding: 15px;
    text-align: center;
  }

  .btn-primary {
    color: #fff;
    background-color: #14326b;
    border-color: #14326b;
    margin-left: 15px;
  }
</style>

<script src="assets/js/app.js"></script>
<script>
  /*
    $(function () {
        $("#my-search").on("keyup", function () {
            var value = $(this).val().toLowerCase();
            $("#example-table > tbody > tr").filter(function () {
                $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
            });
        });
    });
 function Limpiar() {
        $('#my-search').val('');
    }
   
*/




  function Limpiar() {
    location.reload();
  }
  function createTagAndAppendTo(tag, txt, elem) {
    let customTag = document.createElement(tag);
    customTag.textContent = txt;
    elem.append(customTag);
  }

  function myFunction(evt) {
    // Declare variables
    let input, filter, table, tr, td,i, txtValue;
    let displayTr = [];
    filter = evt.value;
    table = document.getElementById("myTable");
    tr = table.getElementsByTagName("tr");
    let regExp = new RegExp(filter);
    if (!filter) {
      for (let i = 0; i < tr.length; i++) {
        tr[i].style.display = '';
      }
      return;
    }

    // Loop through all table rows, and hide those who don't match the search query
    for (let i = 0; i < tr.length; i++) {
      let trStyle = tr[i].style.display;
      td = tr[i].getElementsByTagName("td");
      for (let j = 0; j < td.length; j++) {

        txtValue = td[j].textContent.toLowerCase();
        txtValue2 = td[j].textContent;

        let count = (txtValue.match(regExp) || []).length;
        displayTr[i] = displayTr[i] ? displayTr[i] : count;
        if (count !== 0) {

          td[j].innerText = '';
          let strArray = txtValue.split(filter);
          let loopLength = strArray.length - 1;

          for (let i = 0; i < loopLength; i++) {
            createTagAndAppendTo('span', strArray[i], td[j]);
            createTagAndAppendTo('mark', filter, td[j]);
          }
          createTagAndAppendTo('span', strArray[loopLength], td[j]);

        } else {
          let tdStr = td[j].textContent;
          td[j].innerText = '';
          td[j].textContent = tdStr;

        }
      }

      if (displayTr[i] !== 0) {
        tr[i].style.display = '';
      } else {
        tr[i].style.display = 'none';
      }
    }
  }
</script>