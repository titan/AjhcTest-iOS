import Foreign
import Foreign.C

foreign export ccall "hello" helloC :: IO CString
helloC = newCString $ hello

hello :: String
hello = "Hello world from ajhc!"

main :: IO ()
main = return ()
