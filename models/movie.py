from config.database import Base
from sqlalchemy import Column, Integer,String, Float

class Movie(Base):

    __tablename__="movie"

    movie_id=Column(Integer, primary_key=True)
    movie_name=Column(String(255))
    movie_year=Column(Integer)
    movie_runtime=Column(Integer)
    imdb_ratings=Column(Float)
    metascore=Column(Integer)
    number_votes=Column(Integer)
    us_gross_millions=Column(Float)