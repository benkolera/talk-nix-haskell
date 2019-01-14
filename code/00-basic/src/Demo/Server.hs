{-# LANGUAGE OverloadedStrings #-}
module Demo.Server where

import           Network.Wai
import           Servant
import           Servant.API

import           Demo.Api

server :: Server HelloAPI
server = hello :<|> user
    where
        hello = return "Hello world"
        user n a = return $ User n a

app :: Application
app = serve helloApi server
