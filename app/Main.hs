module Main(main) where
import Graphics.Gloss
import System.Random

window :: Display
window = InWindow "HaskellPhysics" (200, 200) (10, 10)

background :: Color
background = black

drawing :: Picture
drawing = pictures
  [
    color red $ circle 80,
    color green $ circle 60,
    color blue $ circle 40
  ]

main :: IO ()
main = do
  g <- getStdGen
  print $ take 10 (randomRs ('a', 'z') g)
  display window background drawing
