��          �               l  
   m  
   x  
   �  
   �  /   �  >   �      �   #       	   !     +  N  3     �  K   �  1   �  �     �   �  !   Q  t   s  k   �  �  T  
   (
  
   3
  
   >
  
   I
  >   T
  D   �
  2  �
         #     ;     O  c  W     �  L   �  <     �   L  �   �  )   �  �   �  �   ~   2018-01-29 2018-05-08 2019-03-20 2020-04-24 Add `"minLength": 1` on required string fields. Add `minProperties`, `minItems` and/or `minLength` properties. At present this includes space for free-text description of ownership and control structures, but this may be further extended with structured beneficial ownership information drawing on the draft [Beneficial Ownership Data Standard](https://github.com/openownership/data-standard). Because each owner mentioned in the shareholders array should also gain an entry in the `parties` array, it is possible to use this extension to build up information on corporate ownership networks involved in a contracting process. Beneficial ownership Changelog Example For example, in Public Private Partnerships processes, companies are often required to disclose information on their ownership structures when bidding, and when the contract is awarded, information on the ownership of a Special Purpose Vehicle (SPV) operating the contract may need to be kept up to date during project implementation. Issues Make `Organization.beneficialOwnership` non-nullable (undo earlier change). Make `Organization.beneficialOwnership` nullable. Make `Shareholder.id` required to support revision tracking and [list merging](http://standard.open-contracting.org/latest/en/schema/merging/#lists) Report issues for this extension in the [ocds-extensions repository](https://github.com/open-contracting/ocds-extensions/issues), putting the extension's name in the issue's title. Shareholder and ownership details The shareholder extension can be used to provide details of the owners of parties involved in a contracting process. This extension also includes a "stub" entry for recording beneficial ownership information against a party. Project-Id-Version:  Python
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-03-05 17:31-0500
PO-Revision-Date: 2019-03-14 18:31+0000
Last-Translator: Natalia Valdez <nataliavaldez@cds.com.py>, 2021
Language: es
Language-Team: Spanish (https://www.transifex.com/open-contracting-partnership-1/teams/112300/es/)
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.0
 2018-01-29 2018-05-08 2019-03-20 2020-04-24 Agregar `"minLength": 1` en los campos de cadena obligatorios. Agregar las propiedades `minProperties`, `minItems` y/o `minLength`. En la actualidad, esto incluye espacio para la descripción en texto libre de las estructuras de propiedad y control, pero podría ampliarse con información estructurada sobre la propiedad efectiva basada en el borrador [Beneficial Ownership Data Standard](https://github.com/openownership/data-standard). Debido a que cada propietario mencionado en la matriz de accionistas también debería obtener una entrada en la matriz `parties`, es posible utilizar esta extensión para acumular información sobre las redes de propiedad corporativa involucradas en un proceso de contratación. Propiedad beneficiaria  Registro de cambios Ejemplo Por ejemplo, en los procesos de Asociaciones Público-Privadas, a menudo se requiere que las compañías divulguen información sobre sus estructuras de propiedad al licitar y cuando se adjudique el contrato, es necesario mantener información sobre la propiedad de una Sociedad con Fines Específicos (SPV) actualizada durante la ejecución del proyecto. Issues Hacer `Organization.beneficialOwnership` no nulo (deshacer cambio anterior). Hacer que `Organization.beneficialOwnership` pueda ser nulo. Hacer `Shareholder.id` obligatorio para soportar el seguimiento de revisiones y [fusión de listas](http://standard.open-contracting.org/latest/es/schema/merging/#lists) Reporte issues para esta extensión en el [repositorio de extensiones ocds](https://github.com/open-contracting/ocds-extensions/issues), poniendo el nombre de la extensión en el título del issue. Detalles del accionista y de la propiedad La extensión de accionista se puede utilizar para proporcionar detalles de los propietarios de las partes involucradas en un proceso de contratación. Esta extensión también incluye una entrada "stub" para registrar información del beneficiario final contra una de las partes. 