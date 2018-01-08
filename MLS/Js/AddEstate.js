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

function populateSelect() {
    // THE JSON ARRAY.
    var elements = JSON.parse(Get("../Members/Save/GetPropertytype.ashx"));

    var control = document.getElementById('propertytype');

    for (var i = 0; i < elements.length; i++) {
        var option = document.createElement("OPTION");

        //Set Customer Name in Text part.
        option.innerHTML = elements[i].Name;

        //Set CustomerId in Value part.
        option.value = elements[i].ID;

        //Add the Option element to DropDownList.
        control.options.add(option);
    }
}

function Get(yourUrl) {
    var Httpreq = new XMLHttpRequest(); // a new request
    Httpreq.open("GET", yourUrl, false);
    Httpreq.send(null);
    return Httpreq.responseText;
}

window.onload = populateSelect();