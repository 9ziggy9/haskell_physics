module Main(main) where
import Graphics.Gloss

window :: Display
window = InWindow "Nice Window" (200, 200) (10, 10)

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
main = display window background drawing
