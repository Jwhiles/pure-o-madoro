module Main where

import Prelude


import Control.Monad.Eff.Uncurried (mkEffFn1)
import React.Basic (ReactComponent, react)
import React.Basic.DOM as R

type ExampleProps =
  { label :: String }



counter :: ReactComponent ExampleProps
counter = react
  { displayName: "example"
  , initialState: { counter: 0 }
  , receiveProps: \_ _ _ -> pure unit
  , render: \{ label } { counter } setState ->
      R.button { onClick: mkEffFn1 \_ -> do
                            setState \s -> { counter: s.counter + 1 }
               , children: [ R.text (label <> ": " <> show counter) ]
               }
  }
