xquery version "3.1";
<html>
    <head>
        <tittle> Medicamentos con vía de administración oral y cuyo nombre empiece por aripiprazol </tittle>
    </head>
    
    <body>
        <table border="1">
        <tr>
            <td>Numero de Registro</td>
            <td>Nombre del medicamento</td>
        </tr>
        {
            for $med in doc("medicamentos.xml")//record
            where contains(data($med//VIAS_DE_ADMINISTRACION), "VIA ORAL") and starts-with(data($med//MEDICAMENTO),"ARIPIPRAZOL")
            return 
                <tr> 
                    <td> 
                        {data($med//NUMERO_DE_REGISTRO)}
                    </td>
                    <td>
                        {data($med//MEDICAMENTO)}
                    </td>
                </tr>
        }
        </table>
</body>

</html>
