---------------------------------------------------------------------
module NASDAQ where

import Model



nasdaq = Exchange {

        sellAt = error "NASDAQ doesn't sell." ,
        getPendingOrders = Nothing,

        buyAt       = undefined,
        cancelOrder = undefined
        }
---------------------------------------------------------------------
