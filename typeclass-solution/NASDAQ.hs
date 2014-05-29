---------------------------------------------------------------------
module NASDAQ where

import Model

data NASDAQ = NASDAQ

instance Exchange NASDAQ where

        sellAt = error "NASDAQ doesn't sell."
        getPendingOrders a = Nothing

        buyAt       = undefined
        cancelOrder = undefined
                               
---------------------------------------------------------------------
