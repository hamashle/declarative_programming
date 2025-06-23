horse =
 [ ".......##..." ,
   ".....##..#.." ,
   "...##.....#." ,
   "..#.......#." ,
   "..#...#...#." ,
   "..#...###.#." ,
   ".#....#..##." ,
   "..#...#....." ,
   "...#...#...." ,
   "....#..#...." ,
   ".....#.#...." ,
   "......##...." ]


type Picture = [[Char]]

-- 6.4
superimposeChar :: Char -> Char -> Char
superimposeChar '.' '.' = '.'
superimposeChar a b = '#'

-- 6.5
superimposeLine :: [Char] -> [Char] -> [Char]
superimposeLine charL charR = [superimposeChar cr cl | (cr, cl) <- zip charL charR ]

superimpose :: Picture -> Picture -> Picture
superimpose picL picR = [superimposeLine cr cl | (cr, cl) <- zip picL picR ]

main = do
 putStr $ concat $ map (++"\n") $ superimpose horse (flipV horse)

flipV pic = [ reverse line | line <- pic ]