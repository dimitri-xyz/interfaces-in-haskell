---------------------------------------------------------------------
module NYSE where

import Model

data NYSE = NYSE

instance Exchange NYSE where

        sellAt = error "NYSE doesn't sell."

        getPendingOrders a = Just [Order Buy  50 100 Nothing]

        buyAt       = undefined
        cancelOrder = undefined
                               
---------------------------------------------------------------------
