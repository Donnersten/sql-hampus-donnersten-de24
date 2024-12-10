from pathlib import Path 

#__file__ = dunder file 
# vart constant.py filen ligger
# / --> concationate med "data"
# / operator funkar för att operator overloading och polymorphism
DATA_PATH = Path(__file__).parent/"data"
DATABASE_PATH = Path(__file__).parent / "goteborg_stad.db"

print(DATA_PATH)