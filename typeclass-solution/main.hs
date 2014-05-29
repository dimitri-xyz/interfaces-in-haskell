---------------------------------------------------------------------
import Model

import NYSE
import NASDAQ

main = do
        print "hi!"
        print $ getPendingOrders NYSE
        print $ sellAt NASDAQ 52 200
---------------------------------------------------------------------