-- Point.hs

module Point where

import Foreign
import Foreign.Ptr ()
import Foreign.C.Types ( CInt(..) )

data Point = Point

createPoint :: CInt -> CInt -> IO ()
createPoint a b = do
    p <- c_createPoint a b
    x <- c_getPointX p
    y <- c_getPointY p
    c_destroyPoint p
    print x
    print y

foreign import ccall "createPoint" c_createPoint :: CInt -> CInt -> IO (Ptr Point)
foreign import ccall "getPointX" c_getPointX :: Ptr Point -> IO CInt
foreign import ccall "getPointY" c_getPointY :: Ptr Point -> IO CInt
foreign import ccall "destroyPoint" c_destroyPoint :: Ptr Point -> IO ()
