<!--- Get Movie List --->
<cfinvoke component="movies" method="ListMovies" returnvariable="movieList">

<!--- HTML Page --->
<!DOCTYPE html>
<html>
<head>
    <title>Movie List</title>
</head>

<body>
    <h1>Movie List</h1>
    <table>
         <tr> 
            <th colspan="2">
                <font size="2">
                    <cfoutput>
                        Movie List (#movieList.RecordCount# movies)
                    </cfoutput>
                </font>
            </th>
        </tr>
        <tr>
            <cfoutput query="movieList">
                <tr bgcolor="##cccccc">
                    <td>
                        <strong>
                            #CurrentRow#:<a href="details.cfm?FilmID=
                            #URLEncodedFormat(Trim(FilmID))#">#MovieTitle#</a>
                        </strong>
                        <br>
                        #PitchText#
                    </td>
                    <td>
                        #DateFormat(DateInTheaters)#
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <font size="2">
                            #Summary#
                        </font>
                    </td>
                </tr>
            </cfoutput>
        </tr>
    </table>           
</body>

</html>
