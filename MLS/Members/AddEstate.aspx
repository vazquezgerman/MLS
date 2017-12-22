<%@ Page Title="" Language="C#" MasterPageFile="~/Members/MLS.master" AutoEventWireup="true" CodeFile="AddEstate.aspx.cs" Inherits="Members_AddState" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    


    <div class="container">
        
        <div class="row">
            <div class="col-md-3">
                <div class="form-group">
                    <label for="counrty">Pais</label>
                    <fieldset disabled>
                        <select class="form-control" id="counrty">
                            <option selected="selected">Argentina</option>
                        </select>
                    </fieldset>
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-group">
                    <label for="state">Provincia</label>
                    <fieldset disabled>
                        <select class="form-control" id="state">
                            <option selected="selected">Santa Fe</option>
                        </select>
                    </fieldset>
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-group">
                    <label for="city">Ciudad</label>
                    <select class="form-control" id="city">
                        <option selected="selected">Rosario</option>
                    </select>
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-group">
                    <label for="district">Zona</label>
                    <select class="form-control" id="district">
                        <option selected="selected">Norte</option>
                    </select>
                </div>
            </div>
        </div>

        <hr />


        <div class="row">
            <div class="col-md-3">
                <label for="street">Calle</label>
                <input type="text" name="street" class="form-control" id="street" placeholder="San Lorenzo">
            </div>
            <div class="col-md-3">
                <label for="number">Numero</label>
                <input type="number" name="number" class="form-control" id="number" placeholder="2729">
            </div>
            <div class="col-md-3">
                <label for="floor">Piso</label>
                <input type="text" name="floor" class="form-control" id="floor" placeholder="9">
            </div>
        </div>
        <hr />
        <div class="row">
            <div class="col-md-3">
                <div class="form-group">
                    <label for="orientation">Orientación</label>
                    <select class="form-control" id="orientation">
                        <option>Norte</option>
                        <option>Sur</option>
                        <option>Este</option>
                        <option>Oeste</option>
                    </select>
                </div>
            </div>
            <div class="col-md-3">
                <label for="squaremeters">Metros cuadrados cubiertos</label>
                <input type="number" class="form-control" id="squaremeters" placeholder="100">
            </div>
            <div class="col-md-3">
                <label for="totalsquaremeters">Metros cuadrados totales</label>
                <input type="number" class="form-control" id="totalsquaremeters" placeholder="10">
            </div>
        </div>
        <hr />
        <div class="row">
            <div class="col-md-3">
                <label>Fecha fin Construcción</label>
                <input class="form-control" type="date" id="antiquity" onchange="AntiquityConverter()">
            </div>
            <div class="col-md-3">
                <fieldset disabled>
                    <label>Años Antiguedad</label>
                    <input class="form-control" type="text" id="time">
                </fieldset>
            </div>
        </div>
        <hr />
        <div class="row">
            <div class="col-md-3">
                <label>Cantidad Ambientes</label>
                <input type="number" class="form-control" id="environments" placeholder="4">
                <p id="environmentsHelpBlock" class="form-text text-muted">
                    Debe ser mayor a la cantidad de dormitorios
                </p>
            </div>
            <div class="col-md-3">
                <label>Cantidad Dormitorios</label>
                <input type="number" class="form-control" id="bedrooms" placeholder="2">
                <p id="bedroomsHelpBlock" class="form-text text-muted">
                    Debe ser menor a la cantidad de ambientes
                </p>
            </div>
            <div class="col-md-3">
                <label>Cantidad Baños</label>
                <input type="number" class="form-control" id="bathrooms" placeholder="2">
            </div>
            <div class="col-md-3">
                <label>Cantidad Cocheras</label>
                <input type="number" class="form-control" id="garage" placeholder="1">
            </div>
        </div>
        <hr />



        <div class="row">
            <div class="col-md-3">
                <div class="form-group">
                    <label for="expenses" class="control-label">
                        Expensas
                    </label>
                    <div class="input-group">
                        <span class="input-group-addon">ARS</span>
                        <input name="ctl00$ContentPlaceHolder1$txtExpensas" type="text" maxlength="10" id="expenses" class="form-control" onkeypress="return isNumberKeyComa(event)" onpaste="return false">
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="form-group">
                    <label for="api" class="control-label">
                        API
                    </label>
                    <div class="input-group">
                        <span class="input-group-addon">ARS</span>
                        <input name="ctl00$ContentPlaceHolder1$txtExpensas" type="text" maxlength="10" id="api" class="form-control" onkeypress="return isNumberKeyComa(event)" onpaste="return false">
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="form-group">
                    <label for="tgi" class="control-label">
                        TGI
                    </label>
                    <div class="input-group">
                        <span class="input-group-addon">ARS</span>
                        <input name="ctl00$ContentPlaceHolder1$txtExpensas" type="text" maxlength="10" id="tgi" class="form-control" onkeypress="return isNumberKeyComa(event)" onpaste="return false">
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="form-group">
                    <label for="aguas" class="control-label">
                        Aguas
                    </label>
                    <div class="input-group">
                        <span class="input-group-addon">ARS</span>
                        <input name="ctl00$ContentPlaceHolder1$txtExpensas" type="text" maxlength="10" id="aguas" class="form-control" onkeypress="return isNumberKeyComa(event)" onpaste="return false">
                    </div>
                </div>
            </div>
        </div>



        <hr />
        <div class="row">
            <div class="col-md-3">



                <div class="form-group">
                    <label for="exampleSelect1">Estado del inmueble</label>
                    <select class="form-control" id="esatatestate">
                        <option>Malo</option>
                        <option>Regular</option>
                        <option selected="selected">Bueno</option>
                        <option>Muy Bueno</option>
                        <option>Excelente</option>
                    </select>
                </div>


            </div>

            <div class="col-md-3">
                <div class="btn-group" style="margin-top: 30px;" data-toggle="buttons">
                    <label class="btn btn-primary">
                        <input type="radio" name="options" id="escriturable" autocomplete="off">
                        Escriturable
                    </label>
                    <label class="btn btn-primary">
                        <input type="radio" name="options" id="noescriturable" autocomplete="off">
                        No Escriturable
                    </label>
                </div>
            </div>

            <div class="col-md-3">
                <div class="btn-group" style="margin-top: 30px;" data-toggle="buttons">
                    <label class="btn btn-primary">
                        <input type="radio" name="options" id="aptocredito" autocomplete="off">
                        Apto Crédito
                    </label>
                    <label class="btn btn-primary">
                        <input type="radio" name="options" id="noaptocredito" autocomplete="off">
                        No Apto Crédito
                    </label>
                </div>
            </div>

        </div>
        <hr />

        <div class="form-group">
            <label for="exampleTextarea">Descripción</label>
            <textarea class="form-control" id="description" rows="10" placeholder="EXCELENTE UBICACIÓN A 150 MTS. DEL SHOPPING ALTO PALERMO AL FRENTE CON BALCÓN, MUY LUMINOSO. DEPARTAMENTO EN EXCELENTE ESTADO DE CONSERVACIÓN, RENOVADO HACE 4 AÑOS CON MUY BUEN GUSTO. LIVING COMEDOR, 3 DORMITORIOS CON PLACARES, AMPLIA COCINA CON LAVADERO INCORPORADO Y TOILETTE. BAULERA INDIVIDUAL Y COCHERA FIJA EN PLANTA BAJA DE FÁCIL ACCESO. DETALLES DE CATEGORÍA: VENTANAS DE ALUMINIO CON DOBLE VIDRIO Y PERSIANAS DEL FRENTE CON MOTOR ELÉCTRICO, PISOS DE MADERA ROSBACO, BAÑADERA CON HIDROMASAJE, GRIFERÍA DE CALIDAD. INSTALACIÓN ELÉCTRICA Y CAÑERÍA DE AGUA TERMOFUSIÓN, RENOVADA HACE 4 AÑOS, 2 EQUIPOS DE AIRE ACONDICIONADO SPLIT. ESTA VENTA ESTÁ CONDICIONADA A LA COMPRA DE OTRA PROPIEDAD POR PARTE DE LOS VENDEDORES. LA SUPERFICIE DE LA PROPIEDAD ES EXACTA EXTRAÍDA DEL TÍTULO DE PROPIEDAD. LAS MEDIDAS DE LOS AMBIENTES SON APROXIMADAS CON CARACTER ORIENTATIVO. EL MONTO CONSIGNADO DE EXPENSAS ESTÁ SUJETO A VARIACIÓN Y/O AJUSTE. "></textarea>
        </div>
        <hr />

        <button type="button" class="btn btn-primary" onclick="AltaMimapa()">Aceptar</button>
        <button type="button" class="btn btn-danger">Cancelar</button>

    </div>

    <!-- modalOK -->
    <div class="modal fade" id="modalOK" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">MLS Argentina</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <p>Inmueble Cargado Correctamente</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
    <!-- modalError -->
    <div class="modal fade" id="modalError" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">MLS Argentina</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <p>Error al cargar el inmueble</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>

    <script type="text/javascript" src="../Js/AddEstate.js"></script>

</asp:Content>

