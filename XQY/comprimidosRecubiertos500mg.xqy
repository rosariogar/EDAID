xquery version "3.1";
<html>
    <head>
        <tittle> Medicamentos con forma farmeceutica "Comprimido recubierto con pelicula" y dosis de 500mg ordenados alfabéticamente </tittle>
    </head>
    
    <body>
        <table border="1">
        <tr>
            <td>Numero de Registro</td>
            <td>Nombre del medicamento</td>
        </tr>
        
        {
            for $med in doc("medicamentos.xml")//record
            where contains(data($med//FORMA_FARMACEUTICA), "COMPRIMIDO RECUBIERTO CON PELICULA") and contains(data($med//DOSIS), "500 mg")
            order by $med//MEDICAMENTO
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
