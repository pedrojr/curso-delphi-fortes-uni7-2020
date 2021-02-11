unit EnumTypes;

interface

uses
  EnumAttribute;

type
  [TEnumAttribute('Teste 0;Teste 1;Teste 2;Teste 3')]
  EnumTeste1 = (opTeste0, opTeste1, opTeste2, opTeste3);

  [TEnumAttribute('1:Opção 1;2:Opção 2;3:Opção 3;4:Opção 4', True)]
  EnumTeste2 = (opOpcao1=1, opOpcao2, opOpcao3, opOpcao4);

implementation

end.
