#Autor : jenifer
#Idioma: Español
@MPV-AppMovil @Android @Iphome
Feature: Login
  Como Cliente,
  Quiero ingresar al AppMovil con credenciales de usuario & password
  para asi poder utilizar el appMovil

  Rule: El Cliente debe ser Mayor de edad o igual a 18 Años
    #Uso de Background
  Background:
    Given Yo estoy en la página Login del AppMovil
  @SRT-2021-optimizacionAppMovil
  Scenario:  Cuando realizo Login con credenciales validos
    #Given Yo estoy en la página Login del AppMovil
    When Yo  Registro la cuenta de email textbox con el valor "jcoral@canvia.com"
    And Yo Registro el Password textbox con el valor "123456"
    And Yo doy Click en el botón Login
    Then Yo deberia estar en la página principal de nombre Home Page del AppMovil
    And El titulo de la página de Home Page es "Bienvenida"
    But El boton Login no deberia estar presente en la pagina de Home Page
    """
    nombre: Jenifer
    MontoDisponibleCienta:1000
    LineaDisponible:1000
    """


#Segundo Scenario negativo
  Scenario: Cuando realizo Login con credenciales no Validos
  #Given  Yo estoy en la página Login del AppMovil
    When Yo  Registro la cuenta de email textbox con el valor "emaol.no.valido@canvia.com"
    And Yo Registro el Password textbox con el valor "clave.errada"
    And Yo doy Click en el botón Login
    Then Yo no puedo acceder a la pagina Home Page del AppMovil
    And El Mensaje deberia mostrar: Usuario y Password no valido
    #Primer Scenario Outline
  Scenario Outline:  Cuando realizo Login con credenciales validos
    #Given Yo estoy en la página Login del AppMovil
    When Yo  Registro la cuenta de email con el valor <email>
    And Yo Registro el Password textbox con el valor <password>
    And Yo doy Click en el botón Login
    Then Yo deberia estar en la página principal de nombre Home Page del AppMovil
    And El titulo de la página de Home Page es "Bienvenida"
    But El boton Login no deberia estar presente en la pagina de Home Page
Examples:
|email                     |password|
|jcoral@canvia.com         |123456  |
