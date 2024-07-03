module Main where

import Control.Concurrent.Async.Pool (mapTasks, mapTasks_, withTaskGroup)
import Control.Monad (void)

main :: IO ()
main = do
    withTaskGroup 1 $ \tg -> mapTasks_ tg [putChar '1']
    void . withTaskGroup 1 $ \tg -> mapTasks tg [putChar '2']
    putChar '\n'
