<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search</title>
</head>
<body>
        <!--- MovieTitle search --->

    <form action="results1.cfm" method="post">
        <table align="center" border="1">
            <tr>
                <td>
                    Movie:
                </td>
                <td>
                    <input type="text" name="MovieTitle" required>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Search">
                </td>
            </tr>
        </table>
    </form>
</body>
</html>