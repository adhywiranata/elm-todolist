module Header exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)


view : Html msg
view =
    div [ class "header" ]
        [ div [ class "logo" ]
            [ img [ src "http://package.elm-lang.org/assets/elm_logo.svg" ] []
            , span [] [ text "TodosBikinPakeElm.net" ]
            ]
        , nav [ class "main-nav" ]
            [ ul []
                [ a [ href "https://google.com" ]
                    [ li [] [ text "Home" ] ]
                , a [ href "https://google.com" ]
                    [ li [] [ text "About" ] ]
                ]
            ]
        ]
