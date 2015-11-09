module colors

import pair
import bool

data colors = red | green | blue | yellow | magenta | cyan

complement: colors -> colors
complement red = cyan
complement green = magenta
complement blue = yellow
complement yellow = blue
complement magenta = green
complement cyan = red

additive: colors -> bool
additive red = true
additive green = true
additive blue = true
additive _ = false

subtractive: colors -> bool
subtractive yellow = true
subtractive magenta = true
subtractive cyan = true
subtractive _ = false

complements: pair colors colors -> bool
complements (mkPair red cyan) = true
complements (mkPair cyan red) = true
complements (mkPair blue yellow) = true
complements (mkPair yellow blue) = true
complements (mkPair magenta green) = true
complements (mkPair green magenta) = true
complements (mkPair b a) = false

mixink: pair colors colors -> colors
mixink (mkPair yellow magenta) = red
mixink (mkPair magenta yellow) = red
mixink (mkPair yellow cyan) = green
mixink (mkPair cyan yellow) = green
mixink (mkPair magenta cyan) = blue
mixink (mkPair cyan magenta) = blue


 
