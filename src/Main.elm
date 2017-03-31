import Html exposing (..)
import Html.Attributes exposing (..)

import Header
import Content
import Footer

main : Html msg
main =
    div [ class "container" ]
    [ Header.view
    , Content.view
    , Footer.view
    ]
