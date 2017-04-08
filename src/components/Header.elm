module Header exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)


view : Html msg
view =
    div [ class "header" ]
        [ div [ class "logo" ]
            [ img [ src "http://package.elm-lang.org/assets/elm_logo.svg" ] []
            , span [] [ text "TodosBikinPakeElm" ]
            ]
        , nav [ class "main-nav" ]
            [ ul []
                [ a [ href "http://elm-lang.org/docs", target "_blank" ]
                    [ li [] [ text "Elm Documentation" ] ]
                , a [ href "https://github.com/adhywiranata", target "_blank" ]
                    [ li [] [ text "Repo" ] ]
                ]
            ]
        ]
