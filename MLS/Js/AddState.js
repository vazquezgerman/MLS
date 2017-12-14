function AltaMimapa() {
    url = "../Members/Save/AddState.ashx?calle=" + document.getElementById("street").value +
        "&numero=" + document.getElementById("number").value +
        "&piso=" + document.getElementById("floor").value;
    //"&localidad=" + document.getElementById("localidad") +
    //"&metrosCuadradosCubiertos=" + document.getElementById("squaremeters") +
    //"&MetrosCuadradosTotales=" + document.getElementById("totalsquaremeters") +
    //"&operacion=" + document.getElementById("operation");

    if (Get(url) == "OK!") {
        $("#modalOK").modal("show");
    }
    else {
        $("#modalError").modal("show");
    };
}