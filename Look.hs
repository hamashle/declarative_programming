
type Name = String
type Price = Int
type BarCode = Int
type Database = [ (BarCode,Name,Price) ]

codeIndex :: Database
codeIndex = [ (4719, "Fish Fingers" , 121),
 (5643, "Nappies" , 1010),
 (3814, "Orange Jelly", 56),
 (1111, "Hula Hoops", 21),
 (1112, "Hula Hoops (Giant)", 133),
 (1234, "Dry Sherry, 1lt", 540)]

look :: Database -> BarCode -> (Name, Price)
look db bc = if searched /= [] then head searched else ("Unknown Item", 0)
    where searched = [(name, price) | (barcode, name, price) <- db, barcode == bc]