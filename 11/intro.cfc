<!--- Thius is the intro for the cfcomponent tage --->
<cfcomponent>

<!--- Get Todays Date --->
<cffunction name="today" returntype="date">
    <cfreturn Now()>
</cffunction>

<!--- Get Tommorows Date --->
<cffunction name="tomorrow" returntype="date">
    <cfreturn DateAdd("d", 1, Now())>
</cffunction>

<!--- Get yesterday's date --->
<cffunction name="yesterday" returntype="date">
    <cfreturn DateAdd("d", -1, Now())>
</cffunction>

<!--- Perform geometric calculatons --->

<<cffunction name = "geometry" returnType = "struct">
<!--- Need a radius --->
   <cfargument name="radius" type="numeric" required="yes">
    <!--- Define result variables --->
    <cfset var result = StructNew()>
    <!--- Save Redius --->
    <cfset result.radius = radius>
    <!--- First circle --->
    <cfset result.circle = StructNew()>
    <!--- Calculate circle circumference --->
    <cfset result.circle.circumference = 2 * Pi() * radius>
    <!--- Calculate circle area --->
    <cfset result.circle.area = Pi() * (radius^2)>
    <!--- Now Sphere --->
    <cfset result.sphere = StructNew()>
    <!--- Calculate sphere volume --->
    <cfset result.sphere.volume = (4/3) * Pi() * (radius^3)>
    <!--- Calculate sphere surface area --->
    <cfset result.sphere.surface_area = 4 * Pi() * (radius^2)>
    <!--- Return the result --->
    <cfreturn result>
    
</cffunction>

</cfcomponent>