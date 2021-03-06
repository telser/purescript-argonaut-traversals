module Data.Argonaut.Prisms where

import Data.Argonaut.Core
import Data.Lens (PrismP(), prism')

_Null :: PrismP Json JNull
_Null = prism' fromNull toNull

_Boolean :: PrismP Json JBoolean
_Boolean = prism' fromBoolean toBoolean

_Number :: PrismP Json JNumber
_Number = prism' fromNumber toNumber

_String :: PrismP Json JString
_String = prism' fromString toString

_Array :: PrismP Json JArray
_Array = prism' fromArray toArray

_Object :: PrismP Json JObject
_Object = prism' fromObject toObject
