-- file: EnhancedEnum2.hs

data Day
  = Monday
  | Tuesday
  | Wednesday
  | Thursday
  | Friday
  | Saturday
  | Sunday
  deriving (Show, Eq, Enum, Ord, Bounded)

nextDay :: Day -> Day
nextDay day
  | day == Sunday = Monday
  | otherwise = succ day

main :: IO ()
main = do
  let today = Saturday
  print $ "Today is " ++ show today
  let yesterday = pred today
  print $ "Yesterday was " ++ show yesterday
  let tomorrow = nextDay today
  print $ "Tomorrow will be " ++ show tomorrow
  let in4Days = foldr (const nextDay) today [1 .. 4]
  print $ "In 4 days it will be " ++ show in4Days
