import Html exposing (Html, Attribute, text, toElement, div, input)
import Html.Attributes exposing (..)
import Html.Events exposing (on, targetValue)
import Signal exposing (Address)
import StartApp.Simple as StartApp
import Dict exposing(Dict)

main =
  StartApp.start { model = "", view = view, update = update }

isEven: Int -> Bool
isEven num =
  num % 2 == 0

funnyFunction: Int -> Bool
funnyFunction =
    (+) 1 >> isEven >> not

view : Address String -> String -> Html
view address string =
  div []
    [ div [] [ text (if funnyFunction 3 then "1" else "0") ]]

update newStr oldStr =
  newStr


--
-- view : Address String -> String -> Html
-- view address string =
--   div []
--     [ div [] (renderGrid initialGrid) ]
--
--
--
-- type Mark = O | X
--
-- type alias Grid = Dict (Int, Int) Mark
--
--
-- initialGrid : Grid
-- initialGrid = Dict.empty
--
-- markToText mark =
--   case mark of
--     O -> "o"
--     X -> "x"
--
-- renderGrid : Grid -> List Html
-- renderGrid grid =
--   (Dict.toList grid) |> List.map (\((x, y), value) -> div [] [text (markToText value)])
