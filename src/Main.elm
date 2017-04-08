module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onInput, onClick, onSubmit, targetValue)
import Header
import Footer


type alias Todo =
    { id : Int
    , task : String
    , completed : Bool
    }


type alias Model =
    { appTitle : String
    , appVersion : Int
    , appDescription : String
    , todoInput : String
    , todos : List Todo
    }


init : ( Model, Cmd Msg )
init =
    ( Model
        "TodoApp"
        1
        "Super Simple Todo App"
        ""
        []
    , Cmd.none
    )


type Msg
    = NothingToDo
    | UpdateTodoInput String
    | AddTodo String
    | DeleteTodo String
    | UpdateTodo String


renderTodo : Todo -> Html Msg
renderTodo todo =
    div [ class "todo-item" ]
        [ span [] [ text todo.task ]
        , span [ class "complete-status" ] [ text (toString todo.completed) ]
        ]


renderTodos : List Todo -> Html Msg
renderTodos todos =
    let
        todoItems =
            List.map renderTodo todos
    in
        div [ class "todo-list" ] todoItems


view : Model -> Html Msg
view model =
    div [ class "container" ]
        [ Header.view
        , div [ class "content" ]
            [ div [ class "todo-heading" ]
                [ h2 [] [ text (model.appTitle ++ " ver " ++ toString (model.appVersion)) ]
                , h5 [] [ text model.appDescription ]
                , Html.form [ onSubmit (AddTodo model.todoInput) ]
                    [ input
                        [ value model.todoInput
                        , onInput UpdateTodoInput
                        , placeholder "Add a New Todo"
                        , class "todo-input"
                        ]
                        []
                    ]
                , div
                    [ class "todo-list-heading" ]
                    [ text ("My Todos: " ++ toString (List.length model.todos)) ]
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
            ( { model | todoInput = todoUserInput }, Cmd.none )

        -- add new todo
        AddTodo newTodo ->
            ( { model
                | todos =
                    { id = 1
                    , task = newTodo
                    , completed = False
                    }
                        :: model.todos
                , todoInput = ""
              }
            , Cmd.none
            )

        -- update todo by name
        UpdateTodo todoToUpdate ->
            ( model, Cmd.none )

        -- delete todo by name
        DeleteTodo todoToDelete ->
            ( model, Cmd.none )


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
