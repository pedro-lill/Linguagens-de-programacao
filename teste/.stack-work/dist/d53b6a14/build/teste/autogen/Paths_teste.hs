{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -Wno-missing-safe-haskell-mode #-}
module Paths_teste (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "C:\\computacao\\Linguagens-de-programacao\\teste\\.stack-work\\install\\3039f9a0\\bin"
libdir     = "C:\\computacao\\Linguagens-de-programacao\\teste\\.stack-work\\install\\3039f9a0\\lib\\x86_64-windows-ghc-9.0.2\\teste-0.1.0.0-3Ua4QYwBWJr2DxyagkdcWf-teste"
dynlibdir  = "C:\\computacao\\Linguagens-de-programacao\\teste\\.stack-work\\install\\3039f9a0\\lib\\x86_64-windows-ghc-9.0.2"
datadir    = "C:\\computacao\\Linguagens-de-programacao\\teste\\.stack-work\\install\\3039f9a0\\share\\x86_64-windows-ghc-9.0.2\\teste-0.1.0.0"
libexecdir = "C:\\computacao\\Linguagens-de-programacao\\teste\\.stack-work\\install\\3039f9a0\\libexec\\x86_64-windows-ghc-9.0.2\\teste-0.1.0.0"
sysconfdir = "C:\\computacao\\Linguagens-de-programacao\\teste\\.stack-work\\install\\3039f9a0\\etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "teste_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "teste_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "teste_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "teste_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "teste_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "teste_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "\\" ++ name)
