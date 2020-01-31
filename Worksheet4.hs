
-- CO 2008 Functional Programming 
-- Created: March 2017, University of Leicester, UK 
-------------------------------------------------------------------- 
Student Name   DON'T FORGET YOUR NAME
-- Student Number 
--------------------------------------------------------------------
--
-- Call this Worksheet5.hs when you submit it to the handin system!
--

module Worksheet4 where 

---------------------------------------------------------------------
----- EXERCISE 1
---------------------------------------------------------------------
data Value = A|Two|Three|Four|Five|Six|Seven|Eight|Nine|Ten|J|Q|K
             deriving (Eq, Ord, Enum)
instance Show Value
--- Part a)
-- where show ??

data Suite = Hearts | Spades | Clubs | Diamonds
             deriving (Eq, Ord, Enum)
instance Show Suite
--- Part b)
-- where show ??

data Colour = Red | Black
              deriving (Eq, Ord,Enum, Show)

data Error a = Fail|Ok a
               deriving (Eq, Ord, Show)



type Card  = (Value, Suite)


--- Part c)

--pack :: [Card]


--- Part d)

--colour :: Card -> Colour


--- Part e)

--split :: Int -> [a] -> (Error ([a],[a]))


--interleave ::  [a] ->  [a] -> [a]


--- Part f)

--shuffle :: [Int] -> [a] -> Error [a]




---------------------------------------------------------------------
----- EXERCISE 2
---------------------------------------------------------------------


data Btree a = ND | Data a |  Branch (Btree a) (Btree a)
               deriving (Show,Eq)

data Dir = L | R 
           deriving (Show,Eq)

type Path =  [Dir] 
    
--- Part a)

--extract :: Path  -> Btree a -> Error a


--- Part b)

--add :: a -> Path -> Btree a -> Error (Btree a)


--- Part c)

--findpath :: Eq b => (a -> b) -> b -> Btree a -> [Path]


tree1 = Branch ND ND
tree2 = Branch ND (Data 3)
tree3 = Branch tree1 tree2
tree4 = Branch (Data 3) (Data 4)
tree5 = Branch tree3 tree4



---------------------------------------------------------------------
----- EXERCISE 3 Family tree question
---------------------------------------------------------------------



-- a

{-- write here your answer


--}

-- b
{-- write here your answer


--}

-- c
-- sort:: Ord a => (a -> a -> Bool) -> [a] -> [a]

-- d
data Tree a = U | F a (Tree a) (Tree a) deriving Show

term = F "Anna" (F "Fer-Jan" (F "Willem" U U) (F "Nettie" U U)) (F "Paula" (F "Mario" U U) (F "Martha" U U))
type Person = String

--genlabel :: (Tree Person) -> (Tree (Int,Person))

--e
--preprint ::  (Int,Person) -> String



type Tile = [String]

--flatten :: Tile -> String 


--printlist :: Tree Person -> IO()




tree = F "Anna" (F "Fer-Jan" (F "Willem" U U) (F "Nettie" U U)) (F "Paula" (F "Mario" U U) (F "Martha" U U))


--test1 = printlist tree

--f

--print2Dtree :: Tree Person -> IO()

--test2 = print2Dtree tree






--Don't forget your name

-- please take care that your solution compiles.
-- of course if things don't work, you can comment them out
-- and explain in the comment that that something is wrong with it.
