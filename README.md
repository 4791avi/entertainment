# README
ruby 2.5.1p57 (2018-03-29 revision 63029) [x86_64-linux]
Rails 5.2.3
----------------------------------------------------------------------
List all the movies in the database:-

Request:-  GET :  http://localhost:3000/api/v1/movies
Method:- GET
Url:- http://localhost:3000/api/v1/movies
Response:-
{
    "status": "SUCCESS",
    "message": "Loaded Movies",
    "data": [
        {
            "id": 1,
            "title": "Transfoer",
            "year": "2019-07-12T10:22:37.456Z",
            "director": "Ashu",
            "genre_id": 4,
            "created_at": "2019-07-12T10:23:14.939Z",
            "updated_at": "2019-07-12T10:23:14.939Z"
        }
    ]
}
----------------------------------------------------------------------
Create movie 

Method:- POST
Url:- http://localhost:3000/api/v1/movies

Request:- 
 {
	"title" : "Bazzagiagr",
	"year" : "22/07/2019",
	 "director": "Avinash",
	 "genre_id": 1
}

Response:-
{
    "status": "SUCCESS",
    "message": "Movie Saved",
    "data": {
        "id": 3,
        "title": "Bazzagiagr",
        "year": "2019-07-22T00:00:00.000Z",
        "director": "Avinash",
        "genre_id": 1,
        "created_at": "2019-07-12T10:56:20.025Z",
        "updated_at": "2019-07-12T10:56:20.025Z"
    }
}
----------------------------------------------------------------------

Update Movie

Method:- PUT
url:- http://localhost:3000/api/v1/movies/:id
Request:- 
 {
	"title" : "Fast and furious",
	"year" : "22/07/2019",
	 "director": "Johanathan",
	 "genre_id": 5
}

Response:-
{
    "status": "SUCCESS",
    "message": "Movie Updated",
    "data": {
        "id": 2,
        "title": "Fast and furious",
        "year": "2019-07-22T00:00:00.000Z",
        "director": "Johanathan",
        "genre_id": 5,
        "created_at": "2019-07-12T10:55:37.654Z",
        "updated_at": "2019-07-12T11:01:29.078Z"
    }
}
----------------------------------------------------------------------

Delete Movie

Method:- DELETE
url:- http://localhost:3000/api/v1/movies/:id

Response:-
{
    "status": "SUCCESS",
    "message": "Movie deleted succesfully",
    "data": {
        "id": 2,
        "title": "Fast and furious",
        "year": "2019-07-22T00:00:00.000Z",
        "director": "Johanathan",
        "genre_id": 5,
        "created_at": "2019-07-12T10:55:37.654Z",
        "updated_at": "2019-07-12T11:01:29.078Z"
    }
}
----------------------------------------------------------------------
list of movies matching a specific genre.

Method:- POST
Url:- http://localhost:3000/api/v1/load_movies
Request:- 
{ "genre_id" : 1 }

Response:-
{
    "status": "SUCCESS",
    "message": "Loaded Movies",
    "data": [
        {
            "id": 3,
            "title": "Bazzagiagr",
            "year": "2019-07-22T00:00:00.000Z",
            "director": "Avinash",
            "genre_id": 1,
            "created_at": "2019-07-12T10:56:20.025Z",
            "updated_at": "2019-07-12T10:56:20.025Z"
        },
        {
            "id": 4,
            "title": "Final Destination",
            "year": "2019-07-22T00:00:00.000Z",
            "director": "Johanathan",
            "genre_id": 1,
            "created_at": "2019-07-12T11:18:31.212Z",
            "updated_at": "2019-07-12T11:18:31.212Z"
        }
    ]
}

# For the Genre below are trhe details:-

List all the Genre:

Method:- GET
Url:- http://localhost:3000/api/v1/genres

Create Genre

Method:- POST
Url:- http://localhost:3000/api/v1/genres

Update Genre

Method:- PUT
url:- http://localhost:3000/api/v1/genres/:id

Delete Genre

Method:- DELETE
url:- http://localhost:3000/api/v1/genres/:id