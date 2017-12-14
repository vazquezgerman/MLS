<%@ Page Title="" Language="C#" MasterPageFile="~/Members/MLS.master" AutoEventWireup="true" CodeFile="AddState.aspx.cs" Inherits="Members_AddState" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script type="text/javascript" src="../Js/AddState.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <label for="street">Calle:</label>
                <input type="text" name="street" class="form-control" id="street">
            </div>
            <div class="col-lg-3">
                <label for="number">Numero:</label>
                <input type="number" name="number" class="form-control" id="number">
            </div>
            <div class="col-lg-3">
                <label for="floor">Piso:</label>
                <input type="text" name="floor" class="form-control" id="floor">
            </div>
        </div>
        <hr />
        <div class="row">
            <div class="col-lg-3">
                <label for="squaremeters">Metros cuadrados cubiertos:</label>
                <input type="number" class="form-control" id="squaremeters">
            </div>
            <div class="col-lg-3">
                <label for="totalsquaremeters">Metros cuadrados totales:</label>
                <input type="number" class="form-control" id="totalsquaremeters">
            </div>
        </div>

        <div class="row">
            <div class="col-lg-3">
                <label>Antiguedad:</label>

            </div>
        </div>
        <hr />


        <button type="button" class="btn btn-primary btn-lg" onclick="AltaMimapa()">Aceptar</button>
        <button type="button" class="btn btn-secondary btn-lg">Cancelar</button>
    </div>

    <!-- modalOK -->
    <div class="modal fade" id="modalOK" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">MLS</h4>
                </div>
                <div class="modal-body">
                    <p>Inmueble Cargado Correctamente</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
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
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">MLS</h4>
                </div>
                <div class="modal-body">
                    <p>Error al cargar el inmueble</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>

</asp:Content>

