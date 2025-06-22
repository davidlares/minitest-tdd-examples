## DavidRubyTests

Ejemplos de Pruebas Unitarias y TDD en ejemplos sencillos con Ruby 2.6, MiniTest Gem y Factory Girl

## Pruebas Unitarias

Es un proceso de desarrollo de Software que contempla los siguientes aspectos.

 - Se inspeccionan las partes mas pequenas e independientes del programa (unidades)
 - Se inspeccionan para dar seguridad de que todo funcione as expected
 - Son independientes, modificarlas sin afectarse
 - Promueve que separes tu codigo en el que cada parte del codigo tenga funcionalidades unicas
    * Si no puedes separar el codigo en unidades (se debe modificar)
 - Unidades como funciones o metodos de un sistema (siempre y cuando tus funciones no hagan de todo)

## TDD

Desarrollo basado en pruebas

  Se realizan pruebas antes del codigo mismo (escribir pruebas para un codigo inexistente)

    1. Escribir pruebas (que fallen) codigo que no existe
    2. Escribir codigo minimo requerido (hacer que pase la prueba)
    3. Hacer refactor del codigo (expresabilidad, modularidad) y que logicamente pase las pruebas

  Se maneja un principio denominado: RED - GREEN - REFACTOR

## Uso

  ruby test.rb

## Créditos
[David E Lares S](https://davidlares.com)

## Licencia
[MIT](https://opensource.org/licenses/MIT)
