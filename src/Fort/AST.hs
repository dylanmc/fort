{-# LANGUAGE PatternSynonyms #-}

module Fort.AST
  ( module Fort.AST
  , module Fort.FunctorAST
  )

where

import qualified Fort.FunctorAST as F
import Fort.Errors

import Fort.FunctorAST hiding (Exp, ADouble, InfixOp, PrefixOp, LIdent, UIdent, Module, Binding, Decl, ExpDecl, Pat, TailRecDecl, Fixity, Stmt, AltPat, QualLIdent, InfixInfo, FieldDecl, UInt, CaseAlt, Type, Scalar, TField, TSum, TailRecDecls, TailRecDecl, AString)

import Fort.FunctorAST (pattern ADouble, pattern Binding, pattern Module, pattern LIdent, pattern ExpDecl, pattern InfixOp, pattern UIdent, pattern PrefixOp, pattern TailRecDecl, pattern Stmt, pattern InfixInfo, pattern FieldDecl, pattern UInt, pattern CaseAlt, pattern Scalar, pattern TField, pattern TSum, pattern TailRecDecls, pattern AString)

type TailRecDecls = F.TailRecDecls Position
type Type = F.Type Position
type Scalar = F.Scalar Position
type Exp = F.Exp Position
type UInt = F.UInt Position
type TSum = F.TSum Position
type TField = F.TField Position
type CaseAlt = F.CaseAlt Position
type FieldDecl = F.FieldDecl Position
type QualLIdent = F.QualLIdent Position
type InfixInfo = F.InfixInfo Position
type Stmt = F.Stmt Position
type ADouble = F.ADouble Position
type AString = F.AString Position
type InfixOp = F.InfixOp Position
type PrefixOp = F.PrefixOp Position
type LIdent = F.LIdent Position
type UIdent = F.UIdent Position
type Binding = F.Binding Position
type Module = F.Module Position
type Decl = F.Decl Position
type ExpDecl = F.ExpDecl Position
type TailRecDecl = F.TailRecDecl Position
type Pat = F.Pat Position
type AltPat = F.AltPat Position
type Fixity = F.Fixity Position
