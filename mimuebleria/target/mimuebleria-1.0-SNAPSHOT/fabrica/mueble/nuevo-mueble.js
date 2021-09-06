/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(document).ready(function () {
    let lista;
    piezas.addEventListener('change', (e) => {
        //console.log(event.target.value);
        var options = e.target.options;
        var value = [];
        for (var i = 0, l = options.length; i < l; i++) {
            if (options[i].selected) {
                value.push(options[i].value);
            }
        }
        let piezas = document.getElementsByName("piezas")[0];
        piezas.value = value;
    });

    function guardarPiezas(data) {
        var ruta = '../../nuevoMuebleServlet';
        var config = {
            headers: {
                "Content-Type": "application/json; charset=UTF-8",
            },
            method: 'POST',
            body: {data: data}
        }
        // fetch hace la peticion http y devuelve una promesa.
        const resp = fetch(ruta, config).then(data => data.json()).then(data => {
            console.log(data);
            lista = data;
            var piezas = document.getElementById("piezas");
            for (value in data) {
                $("#piezas").append("<option value='" + data[value].id_p + "'>" + data[value].nombre + "</option>");
            }
            $('#piezas').selectpicker('refresh');
        }).catch(error => {
            console.error(error);
        });
        return resp;
    }


    function retornarData() {
        var ruta = '../../nuevoMuebleServlet';
        var config = {
            headers: {
                "Content-Type": "application/json; charset=UTF-8",
            },
            method: 'GET'
        }
        // fetch hace la peticion http y devuelve una promesa.
        const resp = fetch(ruta, config).then(data => data.json()).then(data => {
            console.log(data);
            lista = data;
            var piezas = document.getElementById("piezas");
            for (value in data) {
                $("#piezas").append("<option value='" + data[value].id_p + "'>" + data[value].nombre + "</option>");
            }
            $('#piezas').selectpicker('refresh');
        }).catch(error => {
            console.error(error);
        });
        return resp;
    }
    retornarData();
});
