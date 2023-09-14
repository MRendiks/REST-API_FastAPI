from fastapi import FastAPI
from fastapi.responses import HTMLResponse
from routers.user import user_router
from routers.movie import movie_router
from config.database import engine, Base
from middlewares.error_handler import ErrorHandler



app = FastAPI()
app.title = "Application Movie IMBD Using FastAPI"
app.version = "0.0.1"

app.add_middleware(ErrorHandler) #error handler, runs when an error occurs
app.include_router(movie_router)
app.include_router(user_router)

Base.metadata.create_all(bind= engine)



movies = [
    {
		"movie_id": 1,
		"movie_name": "Avenger",
		"movie_year": 2022,
		"movie_runtime": 180,
		"imdb_ratings": 9.8,
		"metascore" : 100,
		"number_votes" : 980000,
		"us_gross_millions" : 100.93
	},
    {
		"movie_id": 1,
		"movie_name": "Avenger",
		"movie_year": 2022,
		"movie_runtime": 180,
		"imdb_ratings": 9.8,
		"metascore" : 100,
		"number_votes" : 980000,
		"us_gross_millions" : 100.93
	}
]

@app.get('/', tags=['home'])
def message():
    return HTMLResponse('<h1>Hello world</h1>')


