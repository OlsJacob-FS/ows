<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forms 6</title>
</head>
<body>
    <!--- Comments form --->
    <form action="form6_action.cfm" method="POST">
    Please enter your comments in the box provided and click submit.
    <p>
        <textarea name="Comments" rows="6" cols="40" wrap="virtual" placeholder="Enter your comments here..."></textarea>
    </p>
    <p>
        <input type="submit" value="Submit">   
    </p>
    </form>

</body>
</html>