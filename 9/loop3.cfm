<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Loops</title>
</head>
<body>

<cfset hex = "00,33,66,99,CC,FF">
    <!--- Create table --->
    <table>
      <!--- Start RR Loop --->
      <cfloop index="red" list="#hex#">
       <!--- Start GG loop --->
        <cfloop index="green" list="#hex#">
        <tr>
         <!--- Start BB loop --->
          <cfloop index="blue" list="#hex#">
           <!--- Create a cell with the color --->
           <cfset rgb=red&green&blue>
           <cfoutput>
           <td bgcolor="###rgb#" width="100" align="center">#rgb#</td>
            </cfoutput>
            </cfloop>
            </tr>
            </cfloop>  
            </cfloop>
            </table>
    

</body>
</html>