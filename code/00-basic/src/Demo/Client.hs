module Demo.Client where

import           Control.Monad.Trans.Except (ExceptT, runExceptT)
import           Data.Text                  (Text)
import qualified Data.Text                  as T
import           Network.HTTP.Client        (Manager, defaultManagerSettings,
                                             newManager)
import           Servant.API
import           Servant.Client

import           Demo.Api

hello :<|> user = client helloApi
