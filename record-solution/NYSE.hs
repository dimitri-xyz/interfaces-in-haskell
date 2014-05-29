---------------------------------------------------------------------
module NYSE where

import Model



nyse = Exchange {

        sellAt = error "NYSE doesn't sell.",

        getPendingOrders = Just [Order Buy  50 100 Nothing],

        buyAt       = undefined,
        cancelOrder = undefined
        }
---------------------------------------------------------------------
