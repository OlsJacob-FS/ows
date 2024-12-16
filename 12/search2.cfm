<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search</title>
</head>
<body>
        <!--- MovieTitle search --->

    <form action="results2.cfm" method="post">
        <table align="center" border="1">
            <tr>
                <td>
                    Movie:
                </td>
                <td>
                    <input type="text" name="MovieTitle">
                </td>
            </tr>
            <tr>
                <td>
                    Tag Line:
                </td>
                <td>
                    <input type="text" name="PitchText">
                </td>
            </tr>
            <tr>
                <td>
                    Rating:
                </td>
                <td>
                    <input type="number" name="RatingID" min="1" max="6">(1-6)
                </td>
            </tr>
            <tr>
                <td colspan = "2">
                    <input type="submit" value="Search">
                </td>
            </tr>

        </table>
    </form>
</body>
</html>