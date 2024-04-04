# WI State Parks RESTful Web Service Project

## Overview
- Many people travel to Wisconsin to experience the natural scenic beauty it has to offer. It can be difficult to
locate and then find information about the State Parks, Forests and Recreation Areas throughout the state. People may
be left searching through many different websites, or hoping to find a booklet at a small gas station when they get
close to their destination. Often times the Parks, Forests and Recreation areas are listed in different areas as well,
leading to only some places being found while other places nearby are overlooked. This web service will provide
developers with information about different State Forests, Parks, and Recreation Areas in a chosen county that they can 
query and present to park users.

## [User Guide](UserGuide.md)

## Resources

Park

| Field           | Description                       | Type/Format |
|-----------------|-----------------------------------|-------------|
| id              | unique identifier                 | number      |
| name            | park name                         | String      |
| county          | county park is in                 | String      |
| description     | park description                  | String      |
| GoogleMapsUrl   | url for google maps               | String      |
| address         | park address                      | String      |
| HasCamping      | does the park have a campground?  | Boolean     |
| HasFlushToilets | does the park have flush toilets? | Boolean     |
|HasPitToilets | does the park have pit toilets? | Boolean |
| HasHiking       | does the park have hiking?        | Boolean     |


- inspired by: https://gist.github.com/steinbring/b5c0bce701569f576059eaeeb2eeb742 (JSON Object containing State parks, forests, and recreation areas within Wisconsin)

- // Table with different parks???
- // Should it be normalized??? e.g. county table; natural area type??
- // Should a field be added in for park website?

## Service Calls

- GET /parks/json
- GET /parks/plain
- GET /parks/json/:name
- GET /parks/plain/:name
- GET /parks/json/:id
- GET /parks/plain/:id
- GET /parks/json/:county
- GET /parks/plain/:county
- GET /parks/camping/json
- GET /parks/camping/plain
- GET /parks/toilets/json
- GET /parks/toilets/plain

## Curl List
- TODO: update with link to text document with urls once application is functional

#### [Team Charter](TeamCharter.md)
#### [Team Resume](TeamResume.md)
#### [Time Log](TimeLog.md)

## Project Plan
### Week 9
- [ ] Team Resume
- [ ] Team Charter
- [ ] Problem Statement
### Week 10
- [ ] Incorporate feedback on Problem statement into project plan
- [ ] Build Database and Entity Classes with Hibernate annotations
- [ ] Build DAO and DAOTest classes

### Week 11
- [ ] Build Application class
- [ ] Build Park class for different URI responses
- [ ] Create user guide/demo service
- [ ] Deploy to AWS

### Week 12
- [ ] Presentation due Wed 4/10, 7pm