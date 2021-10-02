#Autor : jenifer
#Idioma: Español

Feature: Apertura de cuenta de ahorros ExtraCash
  #Primer Scenario (+)positivo
  Scenario: Solicitud de Apertura de cuenta de ahorros del tipo cuenta simple en moneda en soles
    Given dadoel cliente selecciona productos
    When el cliente selecciona abre tu cuenta aqui
    And se habilita la nueva ventana te ofrecemos tipo de cuenta
    Then el cliente selecciona el tipo de producto cuneta simple
    And el cliente selecciona la opcion me interesa
    But  el cliente acepta los terminos y condiciones
  #Segundo Scenario (-)negativo
    Scenario: Solicitud de Apertura de cuenta de ahorros del tipo cuenta simple en moneda en soles
      Given dadoel cliente selecciona productos
      When el cliente selecciona abre tu cuenta aqui
      And se habilita la nueva ventana te ofrecemos tipo de cuenta
      Then el cliente selecciona el tipo de producto cuneta simple
      And el cliente selecciona la opcion me interesa
      But  el no puede continuar la operacion mostrando el mensaje
      ocurrio un problema de conexion
