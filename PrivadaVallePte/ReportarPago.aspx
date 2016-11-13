<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReportarPago.aspx.cs" Inherits="PrivadaVallePte.ReportarPago" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <title>Reporte de Pagos</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>   
    <link href="css/bootstrap-datepicker.min.css" rel="stylesheet" />

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <style>
        .rowspacer{padding:10px 10px 10px 10px;}
    </style>
</head>
<body>
    <div class="container-fluid">
        <div id="row1" class="row rowspacer">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <img class="img-responsive hidden-xs" alt="Privada Valle Poniente" src="img/FullSizeRender1.jpg" />
            </div>      
        </div>
    </div>
    <div class="container-fluid">
        <h2>Registro de Pagos<br /><small><em>Privada Valle Poniente</em></small></h2>
    </div>    
    <div class="container" >
        <form id="form1" role="form" class="form-horizontal" runat="server" >

            <div class="form-group">
                <label for="Email" class="control-label col-sm-3 hidden-xs">Email:</label>
                <div class="col-sm-6">
                    <input type="email" class="form-control" id="txtemail" placeholder="Correo Electronico"/>
                </div>
            </div>

            <div class="form-group">
                <label for="Departamento" class="control-label col-sm-3 hidden-xs">Departamento:</label>
                <div class="col-sm-6">
                    <input type="text" class="form-control" id="txtDepto" placeholder="Letra y Numero de Departamento"/>
                </div>
            </div>

            <div class="form-group">
                <label for="TipoPago" class="control-label col-sm-3 hidden-xs">Tipo de Pago:</label>
                <div class="col-sm-6 selectCcontainer">
                    <select class="form-control" name="size">
                        <option value="">--Seleccionar el Tipo de Pago--</option>
                        <option value="1">Pago de Mantenimiento</option>
                        <option value="2">Pago de Impermeabilizacion 2016</option>
                        <option value="3">Otros</option>
                    </select>
                </div>
            </div>
            
            <div class="form-group">
                <label for="FechaPago" class="control-label col-sm-3 hidden-xs">Fecha de Pago:</label>
                <div class="col-sm-6">
                    <input type="text" class="form-control" id="dpFecha"/>
                    <input type="text" id="fecha" name="fecha" />
                </div>
            </div>

        </form>
    </div>
</body>

 
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery-3.1.1.min.js"></script>
     <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>

  <!-- Bootstrap datetimepicker -->
    <script src="js/bootstrap-datepicker.min.js"></script>

    <script>
        $( document ).ready(function() {
            $('#fecha').datepicker();
        });
    </script>

</html>
