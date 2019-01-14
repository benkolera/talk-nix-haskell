{-# LANGUAGE OverloadedStrings #-}
module Main where

import           Demo.Server
import           Network.Wai.Handler.Warp

main :: IO ()
main = do
    run 8080 app
