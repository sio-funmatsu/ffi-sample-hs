module Calc where

import Foreign.C.Types

foreign import ccall "add" c_add :: CInt -> CInt -> CInt
foreign import ccall "sub" c_sub :: CInt -> CInt -> CInt
