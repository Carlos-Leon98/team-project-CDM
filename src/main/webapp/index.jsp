<!--
This is the homepage for the State Parks RESTful web Application.
Watchmen Team Project
@author Darin Wellons
@version 1.0
@since 1.0
-->

<html>
<head>
    <!-- highlight.js source: https://highlightjs.org/#usage -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/11.9.0/styles/default.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/11.9.0/highlight.min.js"></script>
    <!-- and it's easy to individually load additional languages -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/11.9.0/languages/go.min.js"></script>
    <script>hljs.highlightAll();</script>

    <link rel="stylesheet" href="styles.css">

    <title>WI State Parks RESTfulService</title>
</head>

<body>

<h1>Welcome to the Wisconsin State Parks RESTful Web Service</h1>

<p>
Welcome! Our State Parks API can be used for any project looking to display information for Wisconsin State Parks. You can use this service for displaying information about all parks in Wisconsin, parks in a given county, or for returning information about camping and hiking at different parks. Below we have listed the different service calls, and database schema information.
</p>

<p>
You can get the information returned as JSON data or as plain text data, just by modifying your service call. This allows you to use the returned information in many different ways.
</p>

<h3>
Available Service Calls:
</h3>

<h4>
Get All Parks, returned in JSON:
</h4>

<h5>
    Request:
</h5>

<pre><code class="language-html">
[GET] /services/stateParks/
</code></pre>

<h5>Response:
</h5>

<pre><code class="language-json">
id	22
name	"Amnicon Falls State Park"
county	"Douglas County"
description	"Nestled in Douglas County, Amnicon Falls State Park is renowned for its stunning waterfalls and scenic river gorge. Hiking trails wind through rich forests, offering spectacular views of the Amnicon River as it cascades over a series of beautiful waterfalls. This park is a haven for nature lovers and photographers alike, with picnic areas and a campground enhancing its allure."
address	"4279 County Rd U, South Range, WI 54874"
hasCamping	true
googleMapsUrl	"https://www.google.com/maps/place/Amnicon+Falls+State+Park/@46.6081889,-91.894753,17z/data=!3m1!4b1!4m6!3m5!1s0x52aef6ff8cdd4e1f:0x6086c97d6cf2df57!8m2!3d46.6081889!4d-91.8921781!16s%2Fm%2F0260p51?entry=ttu"
hasHiking	true

id	23
name	"Aztalan State Park"

... (will list all State Parks)
</code></pre>

<h4>
Get All Parks, returned in Plain Text:
</h4>

<h5>
Request:
</h5>

<pre><code class="language-html">
[GET] /services/stateParks/
</code></pre>

<h5>
Response:
</h5>

<pre><code class="language-html">

</code></pre>

<h4>
Get All Parks by Name, in JSON:
</h4>

<h5>
Request:
</h5>

<pre><code class="language-html">
[GET] /parks/json/:name
</code></pre>

<h5>
Response:
</h5>

<pre><code class="language-json">

</code></pre>

<h4>
Get All Parks by Name, in Plain Text:
</h4>

<h5>
Request:
    </h5>

<pre><code class="language-html">
[GET] /services/stateParks/25
</code></pre>

<h5>
Response:
</h5>

<pre><code class="language-html">

</code></pre>

<h4>
Get All Parks by ID, in JSON:
</h4>

<h5>
Request:
</h5>

<pre><code class="language-html">
[GET] /services/stateParks/25
</code></pre>

<h5>
Response:
</h5>

<pre><code class="language-json">
id	25
name	"Big Bay State Park"
county	"Ashland"
description	"Big Bay State Park, located in Ashland County on Madeline Island, is famous for its long sandy beaches and majestic cliffs. This park offers a peaceful retreat with over 7 miles of hiking trails, stunning views of Lake Superior, and a variety of wildlife. Ideal for camping, swimming, and kayaking, it's a perfect getaway for those seeking a tranquil nature experience."
address	"2402 Hagen Rd, La Pointe, WI 54850"
hasCamping	true
googleMapsUrl	"https://www.google.com/maps/place/Big+Bay+State+Park/@46.7881132,-90.6763015,17z/data=!3m1!4b1!4m6!3m5!1s0x52a901b5ae27c23b:0x51fd1fc2d819ca2!8m2!3d46.7881132!4d-90.6737266!16zL20vMDloX3hy?entry=ttu"
hasHiking	true
</code></pre>

<h4>
Get All Parks by ID, in Plain Text:
</h4>

<h5>
Request:
</h5>

<pre><code class="language-html">
[GET] /services/stateParks/25
</code></pre>

<h5>
Response:
</h5>

<pre><code class="language-html">

</code></pre>

<h4>
Get All Parks by County, in JSON:
</h4>

<h5>
Request:
</h5>

<pre><code class="language-html">
[GET] /services/stateParks/county/Jefferson
</code></pre>

<h5>
Response:
</h5>

<pre><code class="language-json">
id	49
name	"Holzhueter Farm Conservation Park"
county	"Jefferson"
description	"Small conservation park."
address	"W7664 Island Rd, Waterloo, WI 53594"
hasCamping	false
googleMapsUrl	"https://www.google.com/maps/place/Holzhueter+Farm+State+Park/@43.1738617,-88.9348461,14.73z/data=!4m10!1m2!2m1!1sHolzhueter+Farm+Conservation+Park!3m6!1s0x8806875b19e9c1d7:0xfddf7373c29092f0!8m2!3d43.1762206!4d-88.909318!15sCiFIb2x6aHVldGVyIEZhcm0gQ29uc2VydmF0aW9uIFBhcmtaIyIhaG9semh1ZXRlciBmYXJtIGNvbnNlcnZhdGlvbiBwYXJrkgEKc3RhdGVfcGFya5oBJENoZERTVWhOTUc5blMwVkpRMEZuU1VSNE4zQnlSREZCUlJBQuABAA!16s%2Fg%2F11lqhsh7zf?entry=ttu"
hasHiking	false
</code></pre>

<h4>
Get All Parks by County, in Plain Text:
</h4>

<h5>
Request:
</h5>

<pre><code class="language-html">
[GET] /services/stateParks/county/Jefferson
</code></pre>

<h5>
Response:
</h5>

<pre><code class="language-html">

</code></pre>

<h4>
Get if Parks have Camping, in JSON:
</h4>

<h5>
Request:
    </h5>

<pre><code class="language-html">
[GET] /services/stateParks/hasCamping
</code></pre>

<h5>
#### Response:
</h5>

<pre><code class="language-json">
id	22
name	"Amnicon Falls State Park"
county	"Douglas County"
description	"Nestled in Douglas County, Amnicon Falls State Park is renowned for its stunning waterfalls and scenic river gorge. Hiking trails wind through rich forests, offering spectacular views of the Amnicon River as it cascades over a series of beautiful waterfalls. This park is a haven for nature lovers and photographers alike, with picnic areas and a campground enhancing its allure."
address	"4279 County Rd U, South Range, WI 54874"
hasCamping	true
googleMapsUrl	"https://www.google.com/maps/place/Amnicon+Falls+State+Park/@46.6081889,-91.894753,17z/data=!3m1!4b1!4m6!3m5!1s0x52aef6ff8cdd4e1f:0x6086c97d6cf2df57!8m2!3d46.6081889!4d-91.8921781!16s%2Fm%2F0260p51?entry=ttu"
hasHiking	true

id	25
name	"Big Bay State Park"
county	"Ashland"
description	"Big Bay State Park, located in Ashland County on Madeline Island, is famous for its long sandy beaches and majestic cliffs. This park offers a peaceful retreat with over 7 miles of hiking trails, stunning views of Lake Superior, and a variety of wildlife. Ideal for camping, swimming, and kayaking, it's a perfect getaway for those seeking a tranquil nature experience."
address	"2402 Hagen Rd, La Pointe, WI 54850"
hasCamping	true
googleMapsUrl	"https://www.google.com/maps/place/Big+Bay+State+Park/@46.7881132,-90.6763015,17z/data=!3m1!4b1!4m6!3m5!1s0x52a901b5ae27c23b:0x51fd1fc2d819ca2!8m2!3d46.7881132!4d-90.6737266!16zL20vMDloX3hy?entry=ttu"
hasHiking	true

... (Returns all State Parks that have Camping available)
</code></pre>

<h4>
Get if Parks have Camping, in Plain Text:
</h4>

<h5>
Request:
</h5>

    <pre><code class="language-html">
[GET] /services/stateParks/hasCamping
    </code></pre>

#### Response:
    <pre><code class="language-html">

</code></pre>

<h4>
Get if Parks have Hiking, in JSON:
</h4>

<h5>
Request:
</h5>

    <pre><code class="language-html">
[GET] /services/stateParks/hasHiking
   </code></pre>

<h5>
Response:
</h5>
    <pre><code class="language-json">
id	22
name	"Amnicon Falls State Park"
county	"Douglas County"
description	"Nestled in Douglas County, Amnicon Falls State Park is renowned for its stunning waterfalls and scenic river gorge. Hiking trails wind through rich forests, offering spectacular views of the Amnicon River as it cascades over a series of beautiful waterfalls. This park is a haven for nature lovers and photographers alike, with picnic areas and a campground enhancing its allure."
address	"4279 County Rd U, South Range, WI 54874"
hasCamping	true
googleMapsUrl	"https://www.google.com/maps/place/Amnicon+Falls+State+Park/@46.6081889,-91.894753,17z/data=!3m1!4b1!4m6!3m5!1s0x52aef6ff8cdd4e1f:0x6086c97d6cf2df57!8m2!3d46.6081889!4d-91.8921781!16s%2Fm%2F0260p51?entry=ttu"
hasHiking	true

id	23
name	"Aztalan State Park"
county	"Jefferson County"
description	"Aztalan State Park, located in Jefferson County, is a historical treasure, featuring one of Wisconsin's most significant archaeological sites. It showcases an ancient Middle-Mississippian village that thrived between AD 1000 and 1300. Visitors can explore reconstructed ceremonial mounds, stockade, and platform mounds, offering a unique glimpse into the region's prehistoric past."
address	"N6200 County Rd Q, Jefferson, WI 53549"
hasCamping	false
googleMapsUrl	"https://www.google.com/maps/place/Aztalan+State+Park/@43.0694396,-88.8646045,16.87z/data=!4m6!3m5!1s0x88067963ef40391b:0x30c207d957a860cf!8m2!3d43.0687467!4d-88.8631605!16zL20vMDFreGxy?entry=ttu"
hasHiking	true

... (Returns all State Parks that have Hiking available)
    </code></pre>

<h4>
Get if Parks have Hiking, in Plain Text:
</h4>

<h5>
Request:
</h5>
    <pre><code class="language-html">
[GET] /services/stateParks/hasHiking
   </code></pre>

<h5>
Response:
</h5>

<pre><code class="language-html">

   </code></pre>

<h2>
Data Types:
</h2>

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
