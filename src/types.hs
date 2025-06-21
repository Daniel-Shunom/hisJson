module Types (JsonValue(..)) where

data JsonValue 
  = JsonNull
  | JsonBoolean Bool
  | JsonString [Char]
  | JsonNumber Integer --No float support
  | JsonArray [JsonValue]
  | JsonObject [(String, JsonValue)]
  deriving (Show, Eq)

-- Ideally we sould want to use a result type here and not `Maybe`

newtype Parser a = Parser{ 
  runParser :: String -> Maybe (String, a)
}

charP :: Char -> Parser Char
charP x = Parser f 
  where 
    f (h:tl)
      | h == x = Just (tl, x)
      | otherwise = Nothing
    f [] = Nothing

jsonValue :: Parser JsonValue
jsonValue = undefined
