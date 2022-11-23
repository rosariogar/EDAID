xquery version "3.1";
<html>
    <head>
        <tittle>Medicamentos con Lacosamida </tittle>
    </head>
<body>
<table border="1">
<tr>
    <td>Numero de registro</td>
    <td>Nombre del medicamento</td>
</tr>
    {
    for $b in doc("medicamentos.xml")//record
    where contains(data($b//PRINCIPIOS_ACTIVOS),"LACOSAMIDA") and contains(data($b//DOSIS),"200")
    return 
        <tr><td>{data($b//NUMERO_DE_REGISTRO)}</td><td>{$b//MEDICAMENTO}</td></tr>
    }
</table>
</body>
</html>