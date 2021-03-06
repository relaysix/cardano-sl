module Pos.Core.Update.BlockVersion
       ( BlockVersion (..)
       ) where

import           Universum

import qualified Data.Text.Buildable as Buildable
import           Formatting (bprint, shown)
import qualified Prelude

-- | Communication protocol version.
data BlockVersion = BlockVersion
    { bvMajor :: !Word16
    , bvMinor :: !Word16
    , bvAlt   :: !Word8
    } deriving (Eq, Generic, Ord, Typeable)

instance Show BlockVersion where
    show BlockVersion {..} =
        intercalate "." [show bvMajor, show bvMinor, show bvAlt]

instance Buildable BlockVersion where
    build = bprint shown

instance Hashable BlockVersion

instance NFData BlockVersion
