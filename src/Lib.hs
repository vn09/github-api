{-# LANGUAGE OverloadedStrings #-}
module Lib
    (
startApp
    ) where
-----------------------------------------
-- Get user information
-----------------------------------------

import qualified GitHub as GH

startApp = do
    possibleUser <- GH.executeRequest' $ GH.userInfoForR "torvalds"
    print possibleUser