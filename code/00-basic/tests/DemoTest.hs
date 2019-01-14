{-# LANGUAGE OverloadedStrings #-}
module DemoTest where

import           Control.Concurrent         (forkIO)
import           Network.HTTP.Client        (defaultManagerSettings, newManager)
import           Network.Wai.Handler.Warp   (run)
import           Servant.Client             (BaseUrl(..), Scheme(Http), mkClientEnv, runClientM)
import           Test.Tasty                 (TestTree)
import           Test.Tasty.HUnit           (testCase, (@?=))

import           Demo.Api
import           Demo.Server
import           Demo.Client

test_demo :: IO [TestTree]
test_demo = do
  manager <- newManager defaultManagerSettings
  _ <- forkIO (run 8080 app)
  let clientEnv = mkClientEnv manager (BaseUrl Http "localhost" 8080 "")
  pure
    [ testCase "hello" $ do
      res <- runClientM hello clientEnv
      res @?= Right "Hello world"
    , testCase "user" $ do
      res <- runClientM (user "Ben Kolera" 32) clientEnv
      res @?= Right (User "Ben Kolera" 32)
    ]
