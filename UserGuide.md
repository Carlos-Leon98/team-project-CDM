# User Guide

Welcome! Our State Parks API can be used for any project looking to display information for Wisconsin State Parks. You can use this service for displaying information about all parks in Wisconsin, parks in a given county, or for returning information about camping and hiking at different parks. Below we have listed the different service calls, and database schema information.

You can get the information returned as JSON data or as plain text data, just by modifying your service call. This allows you to use the returned information in many different ways. 

## Available Service Calls:

(Examples, replace each request / response)

### Get All Parks, returned in JSON:

#### Request:
```http request
[GET] /services/stateParks/
```

#### Response: 
```json
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
```


### Get All Parks, returned in Plain Text:

#### Request:
```http request
[GET] /services/stateParks/
```

#### Response:
```text

```


### Get All Parks by Name, in JSON:

#### Request:
```http request
[GET] /parks/json/:name
```

#### Response:
```text

```


### Get All Parks by Name, in Plain Text:

#### Request:
```http request
[GET] /services/stateParks/25
```

#### Response:
```text

```


### Get All Parks by ID, in JSON:

#### Request:
```http request
[GET] /services/stateParks/25
```

#### Response:
```json
id	25
name	"Big Bay State Park"
county	"Ashland"
description	"Big Bay State Park, located in Ashland County on Madeline Island, is famous for its long sandy beaches and majestic cliffs. This park offers a peaceful retreat with over 7 miles of hiking trails, stunning views of Lake Superior, and a variety of wildlife. Ideal for camping, swimming, and kayaking, it's a perfect getaway for those seeking a tranquil nature experience."
address	"2402 Hagen Rd, La Pointe, WI 54850"
hasCamping	true
googleMapsUrl	"https://www.google.com/maps/place/Big+Bay+State+Park/@46.7881132,-90.6763015,17z/data=!3m1!4b1!4m6!3m5!1s0x52a901b5ae27c23b:0x51fd1fc2d819ca2!8m2!3d46.7881132!4d-90.6737266!16zL20vMDloX3hy?entry=ttu"
hasHiking	true
```


### Get All Parks by ID, in Plain Text:

#### Request:
```http request
[GET] /services/stateParks/25
```

#### Response:
```text

```


### Get All Parks by County, in JSON:

#### Request:
```http request
[GET] /services/stateParks/county/Jefferson
```

#### Response:
```json

id	49
name	"Holzhueter Farm Conservation Park"
county	"Jefferson"
description	"Small conservation park."
address	"W7664 Island Rd, Waterloo, WI 53594"
hasCamping	false
googleMapsUrl	"https://www.google.com/maps/place/Holzhueter+Farm+State+Park/@43.1738617,-88.9348461,14.73z/data=!4m10!1m2!2m1!1sHolzhueter+Farm+Conservation+Park!3m6!1s0x8806875b19e9c1d7:0xfddf7373c29092f0!8m2!3d43.1762206!4d-88.909318!15sCiFIb2x6aHVldGVyIEZhcm0gQ29uc2VydmF0aW9uIFBhcmtaIyIhaG9semh1ZXRlciBmYXJtIGNvbnNlcnZhdGlvbiBwYXJrkgEKc3RhdGVfcGFya5oBJENoZERTVWhOTUc5blMwVkpRMEZuU1VSNE4zQnlSREZCUlJBQuABAA!16s%2Fg%2F11lqhsh7zf?entry=ttu"
hasHiking	false
```


### Get All Parks by County, in Plain Text:

#### Request:
```http request
[GET] /services/stateParks/county/Jefferson
```

#### Response:
```text

```


### Get if Parks have Camping, in JSON:

#### Request:
```http request
[GET] /services/stateParks/hasCamping
```

#### Response:
```json
0
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
```


### Get if Parks have Camping, in Plain Text:

#### Request:
```http request
[GET] /services/stateParks/hasCamping
```

#### Response:
```text

```

### Get if Parks have Hiking, in JSON:

#### Request:
```http request
[GET] /services/stateParks/hasHiking
```

#### Response:
```json

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
```


### Get if Parks have Hiking, in Plain Text:

#### Request:
```http request
[GET] /services/stateParks/hasHiking
```

#### Response:
```text

```


## Data Types: 

| Field           | Description                      | Type/Format |
|-----------------|----------------------------------|-------------|
| id              | Unique Identifier.               | number      |
| name            | Park Name.                       | String      |
| county          | County the Park is in.           | String      |
| description     | Park Description.                | String      |
| address         | Park Address.                    | String      |
| HasCamping      | Does the Park have a Campground? | Boolean     |
| GoogleMapsUrl   | URL for Google Maps.             | String      |
| HasHiking       | Does the Park have Hiking?       | Boolean     |
