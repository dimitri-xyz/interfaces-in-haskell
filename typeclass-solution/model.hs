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

class Exchange a where
        sellAt :: a -> Price -> Volume -> Order
        buyAt  :: a -> Price -> Volume -> Order
        getPendingOrders :: a -> Maybe [Order] -- returns [Order] or Nothing if can't get that information
        cancelOrder :: a -> OrderID -> Order -> Maybe (Either Order Order) -- returns cancelled order (right) or
                                                                      -- what was still pending if already executed (left)
                                                                      -- or Nothing, if has no connectivity (or other error).

---------------------------------------------------------------------