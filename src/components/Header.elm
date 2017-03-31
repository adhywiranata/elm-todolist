module Header exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)

view : Html msg
view =
    div [ class "header" ]
        [ div [ class "logo" ] [ h1 [] [ text "BikinPakeElm.com" ] ]
        , nav [ class "main-nav" ]
            [ ul []
                [ a [ href "https://google.com" ]
                    [ li [] [ text "Home" ] ]
                , a [ href "https://google.com" ]
                    [ li [] [ text "About" ] ]
                , a [ href "https://google.com" ]
                    [ li [] [ text "Gallery" ] ]
                ]
            ]
        ]
