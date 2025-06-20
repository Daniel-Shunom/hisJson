module Types (JsonValue(..)) where

data JsonValue 
  = JsonNull
  | JsonBoolean
  | JsonString
  | JsonNumber
  | JsonArray [JsonValue]
  | JsonObject [(String, JsonValue)]
  | JsonEnum [String]
  deriving (Show, Eq)
