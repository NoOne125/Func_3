module Main where

import Prelude

import Effect (Effect)
import Effect.Console (log)
import Data.List (List(..), (:))
import Data.Maybe (fromMaybe,Maybe(..))
import Data.Foldable (foldr)

singleton :: forall argument. argument -> List argument
singleton argument = argument : Nil

null :: forall argument. List argument -> Boolean
null Nil = true
null _ = false


snoc :: forall argument. List argument -> argument -> List argument
snoc array element = foldr (:) (element : Nil) array

tail :: forall argument. List argument -> Maybe (List argument)
tail Nil = Nothing
tail (_ : list) = Just list

length :: forall argument. List argument -> Int
length list =
  if null list
    then 0
    else 1 + (length ( fromMaybe Nil (tail list)))

first :: String
first = "Cat"

second :: List String
second = "Cat" : "Dog" : Nil

third :: List String
third = "Cat" : "Dog" : "Rat" : Nil

insert :: String
insert = "are a Pets"

fourth :: List Int
fourth = 1123 : 4512 : 14 : 145678 : 9247 : Nil

main :: Effect Unit
main = do
  log ("Task 1: " <> show (singleton first))
  log ("Task 2: " <> show (null second))
  log ("Task 3: " <> show (snoc third insert))
  log ("Task 4: " <> show (length fourth))