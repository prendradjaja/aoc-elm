module Main exposing (..)

import Browser
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)

import Year2020Day01

-- MAIN

main =
  Browser.sandbox { init = init, update = update, view = view }

-- MODEL

type alias Model = String

init : Model
init =
  "Hello!"

-- UPDATE

type Msg
  = SetText String

update : Msg -> Model -> Model
update msg model =
  case msg of
    SetText myText -> myText

-- VIEW

view : Model -> Html Msg
view model =
  div []
    [ div [] [ text model ]
    , button [ onClick (SetText (Debug.toString (Year2020Day01.solve Year2020Day01.myPuzzleInput))) ] [ text "2020.01" ]
    ]

-- ???
