# README
Tech stack:
- Ruby on Rails
- Postgresql

Code
https://github.com/Jolo510/reports

This API is currently hosted on Heroku. Here's the URL.
https://safe-taiga-87768.herokuapp.com/


Here are some examples of the Requests and Responses.

Returns all Reports
REQUEST
    GET https://safe-taiga-87768.herokuapp.com/reports

RESPONSE
    [
        {
            "id": 1,
            "title": "Application Report",
            "description": "Report",
            "created_by": "John",
            "created_at": "2019-10-04T14:17:23.748Z",
            "updated_at": "2019-10-04T14:17:23.748Z"
        },
        {
            "id": 3,
            "title": "Application Reports",
            "description": "Reports",
            "created_by": "Johnnie Lo",
            "created_at": "2019-10-04T14:17:37.840Z",
            "updated_at": "2019-10-04T14:18:12.009Z"
        }
    ]



Returns a single Report with a particular id
REQUEST
    GET https://safe-taiga-87768.herokuapp.com/reports/1

REPONSE
    {
        "id": 1,
        "title": "Application Report",
        "description": "Report",
        "created_by": "John",
        "created_at": "2019-10-04T14:17:23.748Z",
        "updated_at": "2019-10-04T14:17:23.748Z"
    }



Creates a Report
REQUEST
    POST https://safe-taiga-87768.herokuapp.com/reports
    {
        "title": "Application Report",
        "description": "Report",
        "created_by": "John"
    }

RESPONSE
    {
        "id": 4,
        "title": "Application Report #2",
        "description": "Application is secure.",
        "created_by": "Jake",
        "created_at": "2019-10-04T14:35:57.477Z",
        "updated_at": "2019-10-04T14:35:57.477Z"
    }



Updates a single Report with a particular id
REQUEST
    PUT https://safe-taiga-87768.herokuapp.com/reports/`
    {
        "title": "Application Report #1",
        "description": "Application is insecure.",
        "created_by": "Johnnie Lo"
    }

RESPONSE
    Status: 204 no content



Deletes a Report
REQUEST
    DEL https://safe-taiga-87768.herokuapp.com/reports/5

RESPONSE
    Status: 204 no content