type Person = String
type Book = String
type Database = [(Person, Book)]

exampleBase :: Database
exampleBase = [ ("Alice" , "Tintin") , ("Anna" , "Little Women") , ("Alice" , "Asterix") , ("Rory" , "Tintin") ]

borrowers :: Database -> Book -> [Person]
borrowers db findBook = [person | (person, book) <- db, book == findBook]

borrowed :: Database -> Book -> Bool
borrowed db findBook 
   | checkedDatabase == [] = False 
   | otherwise = True
    where
     checkedDatabase = [(person, book) | (person, book) <- db, book == findBook]

numBorrowed :: Database -> Person -> Int
numBorrowed db findPerson = length [(person, book) | (person, book) <- db, person == findPerson] 
