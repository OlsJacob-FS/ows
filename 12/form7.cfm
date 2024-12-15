<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <!--- Movie Search Form --->
    <form action="form7_action.cfm" method="post">

          Please enter in the movie name and click <strong>Submit</strong>
            <br>
            Movie Name: <input type="text" name="MovieTitle">
            <br>
            <!--- Submit button --->
            <input type="submit" name="Operation" value="Update">
            <input type="submit" name="Operation" value="Delete">
            <br>
            <!--- Reset button --->
            <input type="reset" value="Clear">
    </form>
</body>
</html>