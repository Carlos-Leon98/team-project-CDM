<!--
This is the Data Types page for the State Parks RESTful web Application.
Watchmen Team Project
@author Darin Wellons
@version 1.0
@since 1.0
-->

<html>
<head>
    <!-- highlight.js code blocks source: https://highlightjs.org/#usage -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/11.9.0/styles/default.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/11.9.0/highlight.min.js"></script>
    <!-- and it's easy to individually load additional languages -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/11.9.0/languages/go.min.js"></script>
    <script>hljs.highlightAll();</script>

    <link rel="stylesheet" href="css/styles.css">

    <title>WI State Parks RESTfulService</title>
</head>

<body>

<h1>Welcome to the Wisconsin State Parks RESTful Web Service</h1>

<!-- Nav Bar -->
<nav>
    <ul>
        <li><a href="index.jsp">Home</a></li>
        <li><a href="ServiceCalls.jsp">Service Calls</a></li>
        <li><a href="DataTypes.jsp">Data Types</a></li>
    </ul>
</nav>

<h3>
    Data Types:
</h3>

<!-- Data Types Table -->
<table>
    <thead>
    <tr>
        <th>Field</th>
        <th>Description</th>
        <th>Type/Format</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>id</td>
        <td>Unique Identifier.</td>
        <td>number</td>
    </tr>
    <tr>
        <td>name</td>
        <td>Park Name.</td>
        <td>String</td>
    </tr>
    <tr>
        <td>county</td>
        <td>County the Park is in.</td>
        <td>String</td>
    </tr>
    <tr>
        <td>description</td>
        <td>Park Description.</td>
        <td>String</td>
    </tr>
    <tr>
        <td>address</td>
        <td>Park Address.</td>
        <td>String</td>
    </tr>
    <tr>
        <td>HasCamping</td>
        <td>Does the Park have a Campground?</td>
        <td>Boolean</td>
    </tr>
    <tr>
        <td>GoogleMapsUrl</td>
        <td>URL for Google Maps.</td>
        <td>String</td>
    </tr>
    <tr>
        <td>HasHiking</td>
        <td>Does the Park have Hiking?</td>
        <td>Boolean</td>
    </tr>
    </tbody>
</table>

</body>
</html>