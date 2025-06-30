import Distribution.TestSuite (TestInstance(name))
import Language.Haskell.TH (prim)
type Price = Int
type Name = String


codeIndex :: [(Name, Price)]
codeIndex = [("Dry Sherry, 1lt",540),("Fish Fingers",121),
 ("Orange Jelly",56),("Hula Hoops (Giant)",133),
 ("Unknown Item",0),("Dry Sherry, 1lt",540)]  

formatPence :: Price -> String
formatPence price =
 show (price `div` 100) ++ "." ++ padding ++ show frac
 where
   frac = price `mod` 100
   padding
     | frac < 10  = "0"
     | otherwise  = ""

lineLength :: Int
lineLength = 30

formatLine :: (Name, Price) -> String
formatLine (name, price) = name ++ replicate dotCount '.' ++ priceFm ++ "\n"
  where
    priceFm = formatPence price
    dotCount = lineLength - length name - length priceFm


  --  | length formatSt == lineLength = formatSt ++ "\n"
  --  | otherwise = formatLine(name ++ ".", price) 
  --    where formatSt = name ++ formatPence price



formatLines :: [(Name, Price)] -> String
formatLines items = concat [formatLine item | item <- items]