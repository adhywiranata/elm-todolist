module Content exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onInput, onSubmit, targetValue)


type alias Model =
    { todoInput : String
    , todos : List String
    }


type Msg
    = UpdateTodoInput String
    | AddTodo String


init : ( Model, Cmd Msg )
init =
    ( Model
        ""
        []
    , Cmd.none
    )


renderTodo : String -> Html Msg
renderTodo todo =
    div [ class "todo-item" ] [ text todo ]


renderTodos : List String -> Html Msg
renderTodos todos =
    let
        todoItems =
            List.map renderTodo todos
    in
        div [ class "todo-list" ] todoItems


view : Model -> Html Msg
view model =
    div [ class "content" ]
        [ div [ class "todo-heading" ]
            [ h2 []
                [ text "ToDoApp" ]
            , h5 [] [ text "Just Another Todo" ]
            , Html.form [ onSubmit (AddTodo model.todoInput) ]
                [ input
                    [ value model.todoInput
                    , onInput UpdateTodoInput
                    , placeholder "Add a New Todo"
                    , class "todo-input"
                    ]
                    []
                ]
            , span [] [ text ("My Todos: " ++ toString (List.length model.todos)) ]
            ]
        , renderTodos model.todos
        ]


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        UpdateTodoInput todoUserInput ->
            ( { model | todoInput = todoUserInput }, Cmd.none )

        AddTodo newTodo ->
            ( { model | todos = newTodo :: model.todos, todoInput = "" }, Cmd.none )


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
