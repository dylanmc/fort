-- File generated by the BNF Converter (bnfc 2.9.4.1).

{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DeriveTraversable #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE PatternSynonyms #-}

-- | The abstract syntax of language Fort.

module Fort.Abs where

import qualified Prelude as C
  ( Eq, Ord, Show, Read
  , Functor, Foldable, Traversable
  , Int, Maybe(..)
  )
import qualified Data.String

import qualified Data.Text
import qualified Data.Data    as C (Data, Typeable)
import qualified GHC.Generics as C (Generic)

type Module = Module' BNFC'Position
data Module' a = Module a [Decl' a]
  deriving (C.Eq, C.Ord, C.Show, C.Read, C.Functor, C.Foldable, C.Traversable, C.Data, C.Typeable, C.Generic)

type TupleElemExp = TupleElemExp' BNFC'Position
data TupleElemExp' a = TupleElemExp a (Exp' a)
  deriving (C.Eq, C.Ord, C.Show, C.Read, C.Functor, C.Foldable, C.Traversable, C.Data, C.Typeable, C.Generic)

type TupleElemPat = TupleElemPat' BNFC'Position
data TupleElemPat' a = TupleElemPat a (Pat' a)
  deriving (C.Eq, C.Ord, C.Show, C.Read, C.Functor, C.Foldable, C.Traversable, C.Data, C.Typeable, C.Generic)

type TupleElemType = TupleElemType' BNFC'Position
data TupleElemType' a = TupleElemType a (Type' a)
  deriving (C.Eq, C.Ord, C.Show, C.Read, C.Functor, C.Foldable, C.Traversable, C.Data, C.Typeable, C.Generic)

type LayoutElemTField = LayoutElemTField' BNFC'Position
data LayoutElemTField' a = LayoutElemTField a (TField' a)
  deriving (C.Eq, C.Ord, C.Show, C.Read, C.Functor, C.Foldable, C.Traversable, C.Data, C.Typeable, C.Generic)

type LayoutElemTSum = LayoutElemTSum' BNFC'Position
data LayoutElemTSum' a = LayoutElemTSum a (TSum' a)
  deriving (C.Eq, C.Ord, C.Show, C.Read, C.Functor, C.Foldable, C.Traversable, C.Data, C.Typeable, C.Generic)

type LayoutElemExp = LayoutElemExp' BNFC'Position
data LayoutElemExp' a = LayoutElemExp a (Exp' a)
  deriving (C.Eq, C.Ord, C.Show, C.Read, C.Functor, C.Foldable, C.Traversable, C.Data, C.Typeable, C.Generic)

type LayoutElemStmt = LayoutElemStmt' BNFC'Position
data LayoutElemStmt' a = LayoutElemStmt a (Stmt' a)
  deriving (C.Eq, C.Ord, C.Show, C.Read, C.Functor, C.Foldable, C.Traversable, C.Data, C.Typeable, C.Generic)

type LayoutElemIfBranch = LayoutElemIfBranch' BNFC'Position
data LayoutElemIfBranch' a = LayoutElemIfBranch a (IfBranch' a)
  deriving (C.Eq, C.Ord, C.Show, C.Read, C.Functor, C.Foldable, C.Traversable, C.Data, C.Typeable, C.Generic)

type LayoutElemCaseAlt = LayoutElemCaseAlt' BNFC'Position
data LayoutElemCaseAlt' a = LayoutElemCaseAlt a (CaseAlt' a)
  deriving (C.Eq, C.Ord, C.Show, C.Read, C.Functor, C.Foldable, C.Traversable, C.Data, C.Typeable, C.Generic)

type LayoutElemFieldDecl = LayoutElemFieldDecl' BNFC'Position
data LayoutElemFieldDecl' a = LayoutElemFieldDecl a (FieldDecl' a)
  deriving (C.Eq, C.Ord, C.Show, C.Read, C.Functor, C.Foldable, C.Traversable, C.Data, C.Typeable, C.Generic)

type LayoutElemTailRecDecl = LayoutElemTailRecDecl' BNFC'Position
data LayoutElemTailRecDecl' a
    = LayoutElemTailRecDecl a (TailRecDecl' a)
  deriving (C.Eq, C.Ord, C.Show, C.Read, C.Functor, C.Foldable, C.Traversable, C.Data, C.Typeable, C.Generic)

type LayoutElemExpDecl = LayoutElemExpDecl' BNFC'Position
data LayoutElemExpDecl' a = LayoutElemExpDecl a (ExpDecl' a)
  deriving (C.Eq, C.Ord, C.Show, C.Read, C.Functor, C.Foldable, C.Traversable, C.Data, C.Typeable, C.Generic)

type ADouble = ADouble' BNFC'Position
data ADouble' a = ADouble a ADoubleTok
  deriving (C.Eq, C.Ord, C.Show, C.Read, C.Functor, C.Foldable, C.Traversable, C.Data, C.Typeable, C.Generic)

type AString = AString' BNFC'Position
data AString' a = AString a AStringTok
  deriving (C.Eq, C.Ord, C.Show, C.Read, C.Functor, C.Foldable, C.Traversable, C.Data, C.Typeable, C.Generic)

type AltPat = AltPat' BNFC'Position
data AltPat' a
    = PCon a (UIdent' a) (Pat' a)
    | PDefault a (LIdent' a)
    | PEnum a (UIdent' a)
    | PScalar a (Scalar' a)
  deriving (C.Eq, C.Ord, C.Show, C.Read, C.Functor, C.Foldable, C.Traversable, C.Data, C.Typeable, C.Generic)

type Binding = Binding' BNFC'Position
data Binding' a = Delayed a (LIdent' a) | Immediate a (Pat' a)
  deriving (C.Eq, C.Ord, C.Show, C.Read, C.Functor, C.Foldable, C.Traversable, C.Data, C.Typeable, C.Generic)

type CaseAlt = CaseAlt' BNFC'Position
data CaseAlt' a = CaseAlt a (AltPat' a) (Exp' a)
  deriving (C.Eq, C.Ord, C.Show, C.Read, C.Functor, C.Foldable, C.Traversable, C.Data, C.Typeable, C.Generic)

type Decl = Decl' BNFC'Position
data Decl' a
    = ExpDecl a (ExpDecl' a)
    | ExportDecl a (AString' a) (QualLIdent' a) (Type' a)
    | InfixDecl a (InfixOp' a) (InfixInfo' a)
    | PrefixDecl a (PrefixOp' a) (QualLIdent' a)
    | QualDecl a (UIdent' a) (AString' a)
    | TypeDecl a (UIdent' a) (Type' a)
  deriving (C.Eq, C.Ord, C.Show, C.Read, C.Functor, C.Foldable, C.Traversable, C.Data, C.Typeable, C.Generic)

type Exp = Exp' BNFC'Position
data Exp' a
    = Lam a [Binding' a] (Exp' a)
    | Where a (Exp' a) [LayoutElemExpDecl' a]
    | Typed a (Exp' a) (Type' a)
    | With a (Exp' a) [LayoutElemFieldDecl' a]
    | InfixOper a (Exp' a) (InfixOp' a) (Exp' a)
    | App a (Exp' a) (Exp' a)
    | PrefixOper a (PrefixOp' a) (Exp' a)
    | Array a [Exp' a]
    | Case a (Exp' a) [LayoutElemCaseAlt' a]
    | Con a (UIdent' a)
    | Do a [LayoutElemStmt' a]
    | EType a (Type' a)
    | Extern a (AString' a) (Type' a)
    | If a [LayoutElemIfBranch' a]
    | Parens a (Exp' a)
    | Qualified a (UIdent' a) (LIdent' a)
    | Record a [FieldDecl' a]
    | Scalar a (Scalar' a)
    | Select a (Exp' a) (LIdent' a)
    | Tuple a (TupleElemExp' a) [TupleElemExp' a]
    | Unit a
    | Var a (LIdent' a)
    | XArray a [LayoutElemExp' a]
    | XDot a (Exp' a) (LIdent' a)
    | XRecord a [LayoutElemFieldDecl' a]
  deriving (C.Eq, C.Ord, C.Show, C.Read, C.Functor, C.Foldable, C.Traversable, C.Data, C.Typeable, C.Generic)

type ExpDecl = ExpDecl' BNFC'Position
data ExpDecl' a
    = Binding a (Binding' a) (Exp' a) | TailRec a (TailRecDecls' a)
  deriving (C.Eq, C.Ord, C.Show, C.Read, C.Functor, C.Foldable, C.Traversable, C.Data, C.Typeable, C.Generic)

type FieldDecl = FieldDecl' BNFC'Position
data FieldDecl' a = FieldDecl a (LIdent' a) (Exp' a)
  deriving (C.Eq, C.Ord, C.Show, C.Read, C.Functor, C.Foldable, C.Traversable, C.Data, C.Typeable, C.Generic)

type Fixity = Fixity' BNFC'Position
data Fixity' a = InfixL a | InfixN a | InfixR a
  deriving (C.Eq, C.Ord, C.Show, C.Read, C.Functor, C.Foldable, C.Traversable, C.Data, C.Typeable, C.Generic)

type IfBranch = IfBranch' BNFC'Position
data IfBranch' a = IfBranch a (Exp' a) (Exp' a)
  deriving (C.Eq, C.Ord, C.Show, C.Read, C.Functor, C.Foldable, C.Traversable, C.Data, C.Typeable, C.Generic)

type InfixInfo = InfixInfo' BNFC'Position
data InfixInfo' a
    = InfixInfo a (QualLIdent' a) (Fixity' a) (ADouble' a)
  deriving (C.Eq, C.Ord, C.Show, C.Read, C.Functor, C.Foldable, C.Traversable, C.Data, C.Typeable, C.Generic)

type InfixOp = InfixOp' BNFC'Position
data InfixOp' a = InfixOp a InfixOpTok
  deriving (C.Eq, C.Ord, C.Show, C.Read, C.Functor, C.Foldable, C.Traversable, C.Data, C.Typeable, C.Generic)

type LIdent = LIdent' BNFC'Position
data LIdent' a = LIdent a LIdentTok
  deriving (C.Eq, C.Ord, C.Show, C.Read, C.Functor, C.Foldable, C.Traversable, C.Data, C.Typeable, C.Generic)

type Pat = Pat' BNFC'Position
data Pat' a
    = PParens a (Pat' a)
    | PTuple a (TupleElemPat' a) [TupleElemPat' a]
    | PTyped a (Pat' a) (Type' a)
    | PUnit a
    | PVar a (LIdent' a)
  deriving (C.Eq, C.Ord, C.Show, C.Read, C.Functor, C.Foldable, C.Traversable, C.Data, C.Typeable, C.Generic)

type PrefixOp = PrefixOp' BNFC'Position
data PrefixOp' a = PrefixOp a PrefixOpTok
  deriving (C.Eq, C.Ord, C.Show, C.Read, C.Functor, C.Foldable, C.Traversable, C.Data, C.Typeable, C.Generic)

type QualLIdent = QualLIdent' BNFC'Position
data QualLIdent' a
    = Qual a (UIdent' a) (LIdent' a) | UnQual a (LIdent' a)
  deriving (C.Eq, C.Ord, C.Show, C.Read, C.Functor, C.Foldable, C.Traversable, C.Data, C.Typeable, C.Generic)

type Scalar = Scalar' BNFC'Position
data Scalar' a
    = AFalse a
    | ATrue a
    | Char a CharTok
    | Double a (ADouble' a)
    | Int a IntTok
    | String a (AString' a)
    | UInt a (UInt' a)
  deriving (C.Eq, C.Ord, C.Show, C.Read, C.Functor, C.Foldable, C.Traversable, C.Data, C.Typeable, C.Generic)

type Size = Size' BNFC'Position
data Size' a = SzNat a (UInt' a) | SzVar a (LIdent' a)
  deriving (C.Eq, C.Ord, C.Show, C.Read, C.Functor, C.Foldable, C.Traversable, C.Data, C.Typeable, C.Generic)

type Stmt = Stmt' BNFC'Position
data Stmt' a
    = Let a (Pat' a) (Exp' a)
    | Stmt a (Exp' a)
    | TailRecLet a (TailRecDecls' a)
    | XLet a (Exp' a) (Exp' a)
  deriving (C.Eq, C.Ord, C.Show, C.Read, C.Functor, C.Foldable, C.Traversable, C.Data, C.Typeable, C.Generic)

type TField = TField' BNFC'Position
data TField' a = TField a (LIdent' a) (Type' a)
  deriving (C.Eq, C.Ord, C.Show, C.Read, C.Functor, C.Foldable, C.Traversable, C.Data, C.Typeable, C.Generic)

type TSum = TSum' BNFC'Position
data TSum' a = TCon a (UIdent' a) (Type' a) | TEnum a (UIdent' a)
  deriving (C.Eq, C.Ord, C.Show, C.Read, C.Functor, C.Foldable, C.Traversable, C.Data, C.Typeable, C.Generic)

type TailRecDecl = TailRecDecl' BNFC'Position
data TailRecDecl' a
    = TailRecDecl a (LIdent' a) (LIdent' a) (Exp' a)
  deriving (C.Eq, C.Ord, C.Show, C.Read, C.Functor, C.Foldable, C.Traversable, C.Data, C.Typeable, C.Generic)

type TailRecDecls = TailRecDecls' BNFC'Position
data TailRecDecls' a = TailRecDecls a [LayoutElemTailRecDecl' a]
  deriving (C.Eq, C.Ord, C.Show, C.Read, C.Functor, C.Foldable, C.Traversable, C.Data, C.Typeable, C.Generic)

type Type = Type' BNFC'Position
data Type' a
    = TLam a [LIdent' a] (Type' a)
    | TFun a (Type' a) (Type' a)
    | TApp a (Type' a) (Type' a)
    | TArray a
    | TBool a
    | TChar a
    | TFloat a
    | TInt a
    | TName a (UIdent' a)
    | TOpaque a (AString' a)
    | TParens a (Type' a)
    | TPointer a
    | TQualName a (UIdent' a) (UIdent' a)
    | TRecord a [LayoutElemTField' a]
    | TSize a (UInt' a)
    | TSizes a [Size' a]
    | TString a
    | TSum a [LayoutElemTSum' a]
    | TTuple a (TupleElemType' a) [TupleElemType' a]
    | TUInt a
    | TUnit a
    | TVar a (LIdent' a)
  deriving (C.Eq, C.Ord, C.Show, C.Read, C.Functor, C.Foldable, C.Traversable, C.Data, C.Typeable, C.Generic)

type UIdent = UIdent' BNFC'Position
data UIdent' a = UIdent a UIdentTok
  deriving (C.Eq, C.Ord, C.Show, C.Read, C.Functor, C.Foldable, C.Traversable, C.Data, C.Typeable, C.Generic)

type UInt = UInt' BNFC'Position
data UInt' a
    = Bin a BinTok | Dec a DecTok | Hex a HexTok | Oct a OctTok
  deriving (C.Eq, C.Ord, C.Show, C.Read, C.Functor, C.Foldable, C.Traversable, C.Data, C.Typeable, C.Generic)

newtype ADoubleTok = ADoubleTok Data.Text.Text
  deriving (C.Eq, C.Ord, C.Show, C.Read, C.Data, C.Typeable, C.Generic, Data.String.IsString)

newtype AStringTok = AStringTok Data.Text.Text
  deriving (C.Eq, C.Ord, C.Show, C.Read, C.Data, C.Typeable, C.Generic, Data.String.IsString)

newtype BinTok = BinTok Data.Text.Text
  deriving (C.Eq, C.Ord, C.Show, C.Read, C.Data, C.Typeable, C.Generic, Data.String.IsString)

newtype CharTok = CharTok Data.Text.Text
  deriving (C.Eq, C.Ord, C.Show, C.Read, C.Data, C.Typeable, C.Generic, Data.String.IsString)

newtype DecTok = DecTok Data.Text.Text
  deriving (C.Eq, C.Ord, C.Show, C.Read, C.Data, C.Typeable, C.Generic, Data.String.IsString)

newtype HexTok = HexTok Data.Text.Text
  deriving (C.Eq, C.Ord, C.Show, C.Read, C.Data, C.Typeable, C.Generic, Data.String.IsString)

newtype InfixOpTok = InfixOpTok Data.Text.Text
  deriving (C.Eq, C.Ord, C.Show, C.Read, C.Data, C.Typeable, C.Generic, Data.String.IsString)

newtype IntTok = IntTok Data.Text.Text
  deriving (C.Eq, C.Ord, C.Show, C.Read, C.Data, C.Typeable, C.Generic, Data.String.IsString)

newtype LIdentTok = LIdentTok Data.Text.Text
  deriving (C.Eq, C.Ord, C.Show, C.Read, C.Data, C.Typeable, C.Generic, Data.String.IsString)

newtype OctTok = OctTok Data.Text.Text
  deriving (C.Eq, C.Ord, C.Show, C.Read, C.Data, C.Typeable, C.Generic, Data.String.IsString)

newtype PrefixOpTok = PrefixOpTok Data.Text.Text
  deriving (C.Eq, C.Ord, C.Show, C.Read, C.Data, C.Typeable, C.Generic, Data.String.IsString)

newtype UIdentTok = UIdentTok Data.Text.Text
  deriving (C.Eq, C.Ord, C.Show, C.Read, C.Data, C.Typeable, C.Generic, Data.String.IsString)

-- | Start position (line, column) of something.

type BNFC'Position = C.Maybe (C.Int, C.Int)

pattern BNFC'NoPosition :: BNFC'Position
pattern BNFC'NoPosition = C.Nothing

pattern BNFC'Position :: C.Int -> C.Int -> BNFC'Position
pattern BNFC'Position line col = C.Just (line, col)

-- | Get the start position of something.

class HasPosition a where
  hasPosition :: a -> BNFC'Position

instance HasPosition Module where
  hasPosition = \case
    Module p _ -> p

instance HasPosition TupleElemExp where
  hasPosition = \case
    TupleElemExp p _ -> p

instance HasPosition TupleElemPat where
  hasPosition = \case
    TupleElemPat p _ -> p

instance HasPosition TupleElemType where
  hasPosition = \case
    TupleElemType p _ -> p

instance HasPosition LayoutElemTField where
  hasPosition = \case
    LayoutElemTField p _ -> p

instance HasPosition LayoutElemTSum where
  hasPosition = \case
    LayoutElemTSum p _ -> p

instance HasPosition LayoutElemExp where
  hasPosition = \case
    LayoutElemExp p _ -> p

instance HasPosition LayoutElemStmt where
  hasPosition = \case
    LayoutElemStmt p _ -> p

instance HasPosition LayoutElemIfBranch where
  hasPosition = \case
    LayoutElemIfBranch p _ -> p

instance HasPosition LayoutElemCaseAlt where
  hasPosition = \case
    LayoutElemCaseAlt p _ -> p

instance HasPosition LayoutElemFieldDecl where
  hasPosition = \case
    LayoutElemFieldDecl p _ -> p

instance HasPosition LayoutElemTailRecDecl where
  hasPosition = \case
    LayoutElemTailRecDecl p _ -> p

instance HasPosition LayoutElemExpDecl where
  hasPosition = \case
    LayoutElemExpDecl p _ -> p

instance HasPosition ADouble where
  hasPosition = \case
    ADouble p _ -> p

instance HasPosition AString where
  hasPosition = \case
    AString p _ -> p

instance HasPosition AltPat where
  hasPosition = \case
    PCon p _ _ -> p
    PDefault p _ -> p
    PEnum p _ -> p
    PScalar p _ -> p

instance HasPosition Binding where
  hasPosition = \case
    Delayed p _ -> p
    Immediate p _ -> p

instance HasPosition CaseAlt where
  hasPosition = \case
    CaseAlt p _ _ -> p

instance HasPosition Decl where
  hasPosition = \case
    ExpDecl p _ -> p
    ExportDecl p _ _ _ -> p
    InfixDecl p _ _ -> p
    PrefixDecl p _ _ -> p
    QualDecl p _ _ -> p
    TypeDecl p _ _ -> p

instance HasPosition Exp where
  hasPosition = \case
    Lam p _ _ -> p
    Where p _ _ -> p
    Typed p _ _ -> p
    With p _ _ -> p
    InfixOper p _ _ _ -> p
    App p _ _ -> p
    PrefixOper p _ _ -> p
    Array p _ -> p
    Case p _ _ -> p
    Con p _ -> p
    Do p _ -> p
    EType p _ -> p
    Extern p _ _ -> p
    If p _ -> p
    Parens p _ -> p
    Qualified p _ _ -> p
    Record p _ -> p
    Scalar p _ -> p
    Select p _ _ -> p
    Tuple p _ _ -> p
    Unit p -> p
    Var p _ -> p
    XArray p _ -> p
    XDot p _ _ -> p
    XRecord p _ -> p

instance HasPosition ExpDecl where
  hasPosition = \case
    Binding p _ _ -> p
    TailRec p _ -> p

instance HasPosition FieldDecl where
  hasPosition = \case
    FieldDecl p _ _ -> p

instance HasPosition Fixity where
  hasPosition = \case
    InfixL p -> p
    InfixN p -> p
    InfixR p -> p

instance HasPosition IfBranch where
  hasPosition = \case
    IfBranch p _ _ -> p

instance HasPosition InfixInfo where
  hasPosition = \case
    InfixInfo p _ _ _ -> p

instance HasPosition InfixOp where
  hasPosition = \case
    InfixOp p _ -> p

instance HasPosition LIdent where
  hasPosition = \case
    LIdent p _ -> p

instance HasPosition Pat where
  hasPosition = \case
    PParens p _ -> p
    PTuple p _ _ -> p
    PTyped p _ _ -> p
    PUnit p -> p
    PVar p _ -> p

instance HasPosition PrefixOp where
  hasPosition = \case
    PrefixOp p _ -> p

instance HasPosition QualLIdent where
  hasPosition = \case
    Qual p _ _ -> p
    UnQual p _ -> p

instance HasPosition Scalar where
  hasPosition = \case
    AFalse p -> p
    ATrue p -> p
    Char p _ -> p
    Double p _ -> p
    Int p _ -> p
    String p _ -> p
    UInt p _ -> p

instance HasPosition Size where
  hasPosition = \case
    SzNat p _ -> p
    SzVar p _ -> p

instance HasPosition Stmt where
  hasPosition = \case
    Let p _ _ -> p
    Stmt p _ -> p
    TailRecLet p _ -> p
    XLet p _ _ -> p

instance HasPosition TField where
  hasPosition = \case
    TField p _ _ -> p

instance HasPosition TSum where
  hasPosition = \case
    TCon p _ _ -> p
    TEnum p _ -> p

instance HasPosition TailRecDecl where
  hasPosition = \case
    TailRecDecl p _ _ _ -> p

instance HasPosition TailRecDecls where
  hasPosition = \case
    TailRecDecls p _ -> p

instance HasPosition Type where
  hasPosition = \case
    TLam p _ _ -> p
    TFun p _ _ -> p
    TApp p _ _ -> p
    TArray p -> p
    TBool p -> p
    TChar p -> p
    TFloat p -> p
    TInt p -> p
    TName p _ -> p
    TOpaque p _ -> p
    TParens p _ -> p
    TPointer p -> p
    TQualName p _ _ -> p
    TRecord p _ -> p
    TSize p _ -> p
    TSizes p _ -> p
    TString p -> p
    TSum p _ -> p
    TTuple p _ _ -> p
    TUInt p -> p
    TUnit p -> p
    TVar p _ -> p

instance HasPosition UIdent where
  hasPosition = \case
    UIdent p _ -> p

instance HasPosition UInt where
  hasPosition = \case
    Bin p _ -> p
    Dec p _ -> p
    Hex p _ -> p
    Oct p _ -> p

