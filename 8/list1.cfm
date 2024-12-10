<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hello</title>
</head>
<body>
    <cfset FirstName = "Jake">
    <cfset LastName = "Ols">
    <cfset FullName = FirstName & " " & LastName>

    <cfset fruitList = "Apples, Bananas, Mango, Grapes">

    <cfoutput> 
        <p>Hello, #FullName#, and welcome to ColdFusion!</p><br>
        <p>Here is a list of fruits: #fruitList#</p><br>
        <p>Number of fruits in the list: #ListLen(fruitList)#</p><br>
        <p>First Fruit: #ListFirst(fruitList)#</p><br>
        <p>Last Fruit: #ListLast(fruitList)#</p><br>
        <cfset fruitList=ListAppend(fruitList, " Pineapple")>
        Complete list: #fruitList#<br>
        Number of fruits in the new list: #ListLen(fruitList)#<br>



    </cfoutput>
</body>
</html>