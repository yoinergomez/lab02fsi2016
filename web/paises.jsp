<%-- 
    Document   : paises
    Created on : 03-sep-2016, 15:40:40
    Author     : yoinergomez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="http://code.jquery.com/jquery-latest.min.js"></script>
        <script>
            $(document).ready(function () {
                $('#mostrar_tabla').click(function () {
                    $.get('PaisServlet', function (responseJson) {
                        var $select = $('#tabla_paises');
                        console.log(responseJson);
                        $.each(responseJson, function (key, value) {
                            var $columna = $('<tr>');
                            
                            $('<td>').val(key).text(value.code).appendTo($columna);
                            $('<td>').val(key).text(value.continent).appendTo($columna);
                            $('<td>').val(key).text(value.name).appendTo($columna);
                            $('<td>').val(key).text(value.population).appendTo($columna);
                            $('<td>').val(key).text(value.region).appendTo($columna);
                            
                            $columna.appendTo($select);
                            /*
                            var $columna = $('<tr>');
                            $.each(value, function (key1, value1) {
                                $('<td>').val(key1).text(value1).appendTo($columna);
                            });
                            $columna.appendTo($select);
                            */
                        });
                    });
                });


            });
        </script>
    </head>
    <body>
        <h1>Clientes</h1>

        <input id="mostrar_tabla" type="button" name="Mostrar_tabla" value="Mostrar_tabla"/>
        <table id="tabla_paises">
            <tr>
                <th>Codigo</th>
                <th>Nombre</th>
                <th>Continente</th>
                <th>Region</th>
                <th>Poblacion</th>
            </tr>

        </table>
    </body>
</html>
