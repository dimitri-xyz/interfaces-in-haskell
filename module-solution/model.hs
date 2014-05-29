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

     -- *nothing here for this version*







---------------------------------------------------------------------