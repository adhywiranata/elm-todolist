module Content exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)

view : Html msg
view =
    div [ class "content" ]
        [ text "this is the content" ]
