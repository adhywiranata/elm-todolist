import Html exposing (..)
import Html.Attributes exposing (..)

import Header
import Footer

main : Html msg
main =
    div [ class "container" ]
    [ Header.view
    , div [ class "content" ]
        [ text "this is the content" ]
    , Footer.view
    ]
