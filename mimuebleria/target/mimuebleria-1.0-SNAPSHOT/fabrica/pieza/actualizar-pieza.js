/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function () {
    let lista;
    let piezas = document.getElementById("piezas");
    piezas.addEventListener('change', (event) => {
        let id = document.getElementsByName("id_p")[0];
        let nombre = document.getElementsByName("nombre")[0];
        let precio = document.getElementsByName("precio")[0];
        let stock = document.getElementsByName("stock")[0];
        const found = lista.find(element => element.id_p == event.target.value);
        id.value = found.id_p;
        nombre.value = found.nombre;
        precio.value = found.costo;
        stock.value = found.stock;
    });

    function retornarData() {
        var ruta = '../../actualizarPiezaServlet';
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
