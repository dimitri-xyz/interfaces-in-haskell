---------------------------------------------------------------------
import Model

import NYSE
import NASDAQ

main = do
        print "hi!"
        print $ getPendingOrders nyse
        print $ sellAt nasdaq 52 200
---------------------------------------------------------------------