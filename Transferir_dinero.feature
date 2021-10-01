#Autor : jenifer
#Idioma: Español
@MPV-AppMovil @Android @Iphome
Feature: Transferir Dinero
  Como Cliente del Banco IBK
  Quiero Transferir fondos entre mis cuentas
  Para Financiar mi tarjeta de credito
  #Uso de Background
  Background:
  Given El cliente esta en la pagina Transferir
  @SRT-2021-optimizacionAppMovil
  #Given Que cuenta bancaria tiene Dinero disponible
  #Primer Scenario (+)positivo
  Scenario: Cuando el Cliente tiene Dinero disponible
    #Given que la cuenta bancaria tiene disponible Dinero
    Given El cliente esta en la pagina Transferir
    And El Cliente tiene cuenta bancaria con tipo de moneda soles
    And El Cliente  tiene Dinero disponible en cuenta bancaria
    When El Cliente solicita Transferir Dinero entre sus cuentas
    Then El dinero es tranferido a la segunda cuenta bancaria
  #Segundo Scenario negativo
  Scenario: Cuando el Cliente no tiene Dinero disponible
    #Given que la cuenta bancaria tiene disponible Dinero
    Given El cliente esta en la pagina Transferir
    And El Cliente tiene cuenta bancaria con tipo de moneda soles
    And El Cliente no tiene Dinero disponible en cuenta bancaria
    When El Cliente solicita Transferir Dinero entre sus cuentas
    Then El Cliente no puede Transferir a la segunda cuenta bancaria
    And El mensaje deberia mostrar: No cuenta con monto disponible para realizar dicha operación
    #Scenario Outline
    Scenario Outline: Cuando el Cliente tiene Dinero disponible
      #Given que la cuenta bancaria tiene disponible Dinero
      Given La cuneta bancaria tiene <dineroDisponible>
      And El Cliente tiene cuenta bancaria con tipo de moneda soles <moneda>
      When El Cliente solicita Transferir Dinero <dineroTransferido>
      Then El dinero es tranferido a la segunda cuenta bancaria <mensaje>
Examples:
|dineroTransferidoPrimeraCuenta |moneda  |dineroTransferido   |Mensaje                          |
|1000.00                        |Soles   |100.00              |Transferencia realizada con exito|
