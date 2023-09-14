from models.movie import Movie as MovieModel
from schemas.movie import Movie


class MovieService():

    def __init__(self,db) -> None:
        self.db=db

    def get_movies(self):
        result=self.db.query(MovieModel).all()
        return result
    
    def get_movie(self,id):
        result=self.db.query(MovieModel).filter(MovieModel.movie_id==id).first()
        return result
    
    def get_movie_by_year(self,year: int):
        result=self.db.query(MovieModel).filter(MovieModel.movie_year==year).all()
        return result
    
    def create_movie(self, movie:Movie):
        new_movie=MovieModel(**movie.dict())
        self.db.add(new_movie)
        self.db.commit()
        return
    
    def update_movie(self,id:int, data:Movie):
        movie = self.db.query(MovieModel).filter(MovieModel.movie_id==id).first()
        movie.movie_name = data.movie_name
        movie.movie_year = data.movie_year
        movie.movie_runtime = data.movie_runtime
        movie.imdb_ratings = data.imdb_ratings
        movie.metascore = data.metascore
        movie.number_votes = data.number_votes
        movie.us_gross_millions = data.us_gross_millions
        self.db.commit()
        return
    
    def delete_movie(self, id:int):
        self.db.query(MovieModel).filter(MovieModel.movie_id==id).delete()
        self.db.commit()
        return