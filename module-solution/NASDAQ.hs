---------------------------------------------------------------------
module NASDAQ where

import Model

-- This defines the interface for this module

sellAt :: Price -> Volume -> Order
sellAt = error "NASDAQ doesn't sell."

buyAt  :: Price -> Volume -> Order
buyAt = undefined

cancelOrder :: OrderID -> Order -> Maybe (Either Order Order) -- returns cancelled order (right) or
cancelOrder = undefined                                       -- what was still pending if already executed (left)
                                                              -- or Nothing, if has no connectivity (or other error).

getPendingOrders :: Maybe [Order] -- returns [Order] or Nothing if can't get that information
getPendingOrders = Nothing
---------------------------------------------------------------------
