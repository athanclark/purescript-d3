module Graphics.D3.Time (
	TimeScale(),
	timeScale, getTicksTime
  ) where
import Data.JSDate (JSDate)
import Data.Maybe (Maybe)
import Graphics.D3.Base (D3Eff)
import Graphics.D3.Scale (class Scale)
import Graphics.D3.Unsafe
import Data.Foreign.EasyFFI (unsafeForeignFunction)
import Data.Nullable (Nullable, toNullable)
import Control.Monad.Eff.Uncurried (EffFn2, runEffFn2)

foreign import data TimeScale :: Type -> Type -> Type
foreign import timeScale :: forall r. D3Eff (TimeScale JSDate r)

instance scaleTime :: Scale TimeScale where
  domain = unsafeDomain
  range = unsafeRange
  copy = unsafeCopy
  toFunction = unsafeToFunction


foreign import getTicksTimeImpl :: forall eff d r. EffFn2 eff (Nullable Number) (TimeScale d r) (Array d)

getTicksTime :: forall d r. Maybe Number -> TimeScale d r -> D3Eff (Array d)
getTicksTime count scale = runEffFn2 getTicksTimeImpl (toNullable count) scale
