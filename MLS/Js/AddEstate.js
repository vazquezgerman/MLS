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

function AntiquityConverter() {

    document.getElementById("time").value = CalculateAge(document.getElementById("antiquity").value);

}

function CalculateAge(year) {
    try {
        var now = new Date();
        var past = new Date(year);
        var nowYear = now.getFullYear();
        var pastYear = past.getFullYear();
        var age = nowYear - pastYear;

        if (age < 0) {
            return "Entrega en " + Math.abs(age) + " año/s";
        }
        else if (age == 0) {
            return "A estrenar"
        }
        else if (isNaN(age)) {
            return "Seleccione una fecha";
        }
        else {
            return age + " años";
        }
    }
    catch (err) {
        return "Seleccione una fecha";
    }

};

