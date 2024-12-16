<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search</title>
</head>
<body>
        <!--- MovieTitle search --->

    <form action="results3.cfm" method="post">
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
                    <select name="RatingID">
                    <option value="">Select Rating</option>
                    <option value="1">General</option>
                    <option value="2">Kids</option>
                    <option value="3">Accompanied Minors</option>
                    <option value="4">Teens</option>
                    <option value="5">Adults</option>
                    <option value="6">Mature</option>
                    </select>
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