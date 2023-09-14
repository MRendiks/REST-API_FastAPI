from pydantic import BaseModel, Field
from typing import Optional

class Movie(BaseModel):
    movie_id: Optional[int] = None
    movie_name: str = Field(min_length=5, max_length=255)
    movie_year: int = Field(le=2023)
    movie_runtime: int = Field(le=999)
    imdb_ratings: float = Field(le=10.0)
    metascore: int = Field(le=100)
    number_votes: int = Field(le=10000000000)
    us_gross_millions: float = Field(le=10000.0)
    
    class Config:
        schema_extra = {
            "example": {
                "movie_id": 1,
                "movie_name": "Avenger",
                "movie_year": 2022,
                "movie_runtime": 180,
                "imdb_ratings": 9.8,
                "metascore" : 100,
                "number_votes" : 980000,
                "us_gross_millions" : 100.93
            }
        }