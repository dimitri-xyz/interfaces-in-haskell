---------------------------------------------------------------------
module Model where

import Data.Time.Clock.POSIX

-- Units
type Volume  = Double 
type Price   = Double

type OrderID   = Int
type Timestamp = POSIXTime

-- Orders
data OrderType = Buy | Sell deriving Show
data Order = Order { order::OrderType,
                     price  ::Price,
                     volume ::Volume,
                     confirmation :: Maybe (OrderID, Timestamp) }
              deriving Show

------ All versions identical until here ------

data Exchange = Exchange { 
        sellAt :: Price -> Volume -> Order,
        buyAt  :: Price -> Volume -> Order,
        getPendingOrders :: Maybe [Order]
        cancelOrder :: OrderID -> Order -> Maybe (Either Order Order), 
        } 


---------------------------------------------------------------------