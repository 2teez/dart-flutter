-- file: enhancedEnum.hs
data TrafficLight = Red | Orange | RedAndOrange | Green
  deriving (Show, Eq, Bounded, Ord, Enum)

showLight :: TrafficLight -> String
showLight Red = "red - Stop"
showLight Orange = "orange - Slow"
showLight RedAndOrange = "red and orange - Ready to Go"
showLight Green = "green - Go"

tellTraffic :: String -> TrafficLight
tellTraffic "red" = Red
tellTraffic "orange" = Orange
tellTraffic "ro" = RedAndOrange
tellTraffic "green" = Green
tellTraffic _ = error "Invalid color"

main :: IO ()
main = do
  putStrLn "Enter a Traffic Light Color: "
  color <- getLine
  print . showLight . tellTraffic $ color
