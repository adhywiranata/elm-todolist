import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing ( onInput, onClick, onSubmit, targetValue )
-- import Html.Signal exposing (..)

import Header
-- import Content
import Footer

type alias Model =
    { appTitle: String
    , appVersion: Int
    , appDescription: String
    , todoInput: String
    , todos: List String
    }

init : ( Model, Cmd Msg )
init =
    ( Model
        "TodoApp"
        1
        "Sample Description"
        "wow"
        ["beli bola", "mandi", "tidur"]
    , Cmd.none
    )

type Msg
    = NothingToDo
    | UpdateTodoInput String
    | AddTodo String

renderTodo : String -> Html Msg
renderTodo todo =
    div [ class "todo-item" ] [ text todo ]

renderTodos : List String -> Html Msg
renderTodos todos =
    let todoItems = List.map renderTodo todos
    in
        div [ class "todo-list" ] todoItems

view : Model -> Html Msg
view model =
    div [ class "container" ]
    [ Header.view
    , div [ class "content" ]
        [ div [ class "todo-heading" ]
            [ h2 [] [ text ( model.appTitle ++ " ver " ++ toString(model.appVersion) ) ]
            , h5 [] [ text model.appDescription ]
            , Html.form [ onSubmit (AddTodo "Makan") ]
                [ input [ value model.todoInput
                        , onInput UpdateTodoInput
                        , placeholder "Add a New Todo"
                        , class "todo-input"
                        ] []
                ]
            , span [] [ text ( "My Todos: " ++ toString(List.length model.todos) ) ]
            ]
        , renderTodos model.todos
        ]
    , Footer.view
    ]

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        -- return current state and command. This function actually do nothing!
        NothingToDo ->
            ( model, Cmd.none )
        -- changes new todo form
        UpdateTodoInput todoUserInput ->
            ( { model | todoInput = todoUserInput } , Cmd.none )
        -- add new todo
        AddTodo newTodo ->
            ( { model | todos = [newTodo, "beli bola", "mandi", "tidur"] }, Cmd.none )

subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none

main : Program Never Model Msg
main =
    program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
