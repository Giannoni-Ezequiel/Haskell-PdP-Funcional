module Spec where
import PdePreludat
import Library
import Test.Hspec

correrTests :: IO ()
correrTests = hspec $ do
  describe "Test de ejemplo" $ do
    it "El pdepreludat se instaló correctamente" $ do
      doble 1 `shouldBe` 2

main = hspec $ do
  describe "Test funcion definida por partes" $ do
    it "f 6" $ do
      (f 6) `shouldBe` 6