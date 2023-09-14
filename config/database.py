from sqlalchemy import create_engine
from sqlalchemy.orm.session import sessionmaker
from sqlalchemy.ext.declarative import declarative_base


URL_DATABASE = 'mysql+mysqlconnector://root:@localhost:3306/db_test_api_movie'

engine = create_engine(URL_DATABASE)

Session = sessionmaker(autocommit=False, autoflush=False, bind=engine)

Base = declarative_base()
