---------------------------------------------------------------------
import Model

import qualified NYSE   as NYSE
import qualified NASDAQ as NASDAQ

main = do
        print "hi!"
        print $ NYSE.getPendingOrders
        print $ NASDAQ.sellAt 52 200
---------------------------------------------------------------------