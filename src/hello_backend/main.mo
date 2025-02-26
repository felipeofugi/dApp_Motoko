import Int "mo:base/Int";
import Text "mo:base/Text";
import Buffer "mo:base/Buffer";
import Array "mo:base/Array";
actor {
  //Variaveis Exercicio 2
  var numero1 : Nat = 10;
  var numero2 : Int = 20;
  var texto : Text = "Meu primeiro Dapp";

  //Variaveis Exercicio 3
  var pessoas = Buffer.Buffer<Text>(3);

  public query func greet(name : Text) : async Text {
    return "Hello, " # name # "!";
  };


  //Exercicio 2
  public func somar(numero1 : Nat, numero2 : Nat) : async Nat {
    var resultado : Nat = numero1 + numero2; //variável com escopo de função que armazena a operação
    return resultado; //retorna o resultado
  };

  public func subtrair(numero1 : Nat, numero2 : Nat) : async Nat {
    var resultado : Nat = numero1 - numero2; //variável com escopo de função que armazena a operação
    return resultado; //retorna o resultado (OBS: se o resultado for negativo vai dar erro, isso pode ser corrigido usando Int ao invés de Nat)
  };

  public func multiplicar(numero1 : Nat, numero2 : Nat) : async Nat {
    var resultado : Nat = numero1 * numero2; //variável com escopo de função que armazena a operação
    return resultado; //retorna o resultado
  };

  //Exercicio 3
  public func adicionarPessoas(nomePessoa : Text) {
    pessoas.add(nomePessoa);
  };

  public func listarPessoas() : async [Text] {
    return Buffer.toArray(pessoas);
  }

};
