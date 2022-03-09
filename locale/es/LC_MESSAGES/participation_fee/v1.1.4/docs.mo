��    '      T              �     �  %   �  A   �       5   -  /   c  
   �  	   �  I   �     �     �       �     �        �     �  Q   �  �     �   �  A   �  P   �  �   4  y   �  X   5	  �   �	  <   
  ,   S
     �
  �   �
  �   9  Y     ,   ^  =   �  8   �  D        G     N  )   U  �    &   8  )   _  V   �  $   �  9     4   ?     t     �  L   �     �      �       !     �   B     �     �  b       i  �   �  3   I  I   }  �   �  }   s  l   �  �   ^  K   �  1   /     a  �   n  �   ?  _   4  *   �  H   �  J     N   S     �     �  &   �   Add `ParticipationFee.id` field Add description to `ParticipationFee` Add participationFeeType.csv codelist for `ParticipationFee.type` Add tests and tidy code Add title and description to `ParticipationFee.value` Allow `ParticipationFee.description` to be null Background Changelog Disallow `ParticipationFee.type` from having null in its array of strings Example Extension codelists Extension fields In some cases, a fee may be levied for 'official copies' of procurement documents (although copies may also be available freely online), and bidders required to prove they have paid for an official copy of the documents as part of their submission. In this case, the fee should be modelled as a **submission** fee, as submission is only possible when this document access fee has been paid. Issues Participation fees Potential bidders will want to be aware of the fees that a process might involve. Procurement monitors may wish to ensure that participation fees are within legal parameters (often set as a fixed maximum, or a percentage of total contract value), or to monitor how participation fees are being used. Report issues for this extension in the [ocds-extensions repository](https://github.com/open-contracting/ocds-extensions/issues), putting the extension's name in the issue's title. The `participationFee` building block is made up of three fields: The `participationFees` field is an array of `participationFee` building blocks. The following JSON snippet models a contracting process where fees are applicable for both access to documents and submission of bids: There are a number of cases where there may be costs to access documents for, or to participate within, a tender process. This extension adds **closed** `participationFeeType` codelist with the following codes: This extension adds a `participationFees` field to the `tender` section of OCDS and introduces a new `participationFee` building block. Update `mergeStrategy` property to `wholeListMerge` property Update extension.json for Extension Explorer Usage notes `description` - an optional field with more information on the fee requirements. For example, sometimes a document fee is only applicable to the hard copy of the documents. `methodOfPayment` - an optional field providing information on methods of payment accepted for the documentation. This is currently an array of strings, but an open codelist may be introduced in future. `type` - a value from the `participationFeeType` codelist, describing the type of the fee `value` - the amount and currency of the fee deposit - a refundable fee payable for the submission of bids document - a fee payable for access to bidding documents submission - a non-refundable fee payable for the submission of bids v1.1.3 v1.1.4 win - a fee payable by the winning bidder Project-Id-Version:  Python
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2022-03-07 18:41-0300
PO-Revision-Date: 2019-03-14 18:26+0000
Last-Translator: James McKinney, 2021
Language: es
Language-Team: Spanish (https://www.transifex.com/open-contracting-partnership-1/teams/112300/es/)
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 Agregar el campo `ParticipationFee.id` Agregar descripción a `ParticipationFee` Agregar la lista de códigos de participaciónFeeType.csv para `ParticipationFee.type` Agregar pruebas y ordenar el código Agregar título y descripción a `ParticipationFee.value` Permitir que `ParticipationFee.description` sea null Antecedentes Registro de cambios No permitir que `ParticipationFee.type` tenga null en su conjunto de strings Ejemplo Listas de códigos de extensión Campos de extensión En algunos casos, se puede cobrar una cuota por las "copias oficiales" de los documentos de adquisición (aunque también se pueden obtener copias en línea de forma gratuita) y los licitadores deben probar que han pagado una copia oficial de los documentos como parte de su presentación. En este caso, la cuota debe ser modelada como un cargo de **oferta**, ya que la presentación sólo es posible cuando se ha pagado la cuota de acceso al documento. Issues Cuotas de participación Los licitadores potenciales desearán estar enterados de los costos que un proceso puede implicar. Los monitores de adquisiciones tal vez deseen asegurarse de que los costos de participación estén dentro de los parámetros legales (a menudo fijados como un máximo fijo, o un porcentaje del valor total del contrato), o para controlar cómo se usan las cuotas de participación. Reporte issues para esta extensión en el [repositorio de extensiones ocds](https://github.com/open-contracting/ocds-extensions/issues), poniendo el nombre de la extensión en el título del issue. El bloque `participationFee` consta de tres campos: El campo `participationFees` es una lista de bloques ` participationFee`. El siguiente fragmento de JSON modela un proceso de contratación donde las tarifas son aplicables tanto para el acceso a documentos como para la presentación de ofertas: Hay una serie de casos en los que puede haber costos para acceder a los documentos o participar en un proceso de licitación. Esta extensión agrega una lista de códigos **cerrada** `participationFeeType` con los siguientes códigos: Esta extensión agrega un campo `participationFees` a la sección ` tender` del OCDS e introduce un nuevo bloque `participationFee`. Actualizar la propiedad `mergeStrategy` para la propiedad `wholeListMerge`  Añadir extension.json para el Extension Explorer Notas de uso `description` - un campo opcional con más información sobre los requisitos del costo de participación. Por ejemplo, a veces un costo de un documento sólo es aplicable a la copia impresa de los documentos. `methodOfPayment` - un campo opcional que proporciona información sobre los métodos de pago aceptados para la documentación. Actualmente se trata de una serie de cadenas, pero se podría introducir una lista de códigos abierta en el futuro. `type` - un valor de la lista de códigos `participationFeeType`, que describe el tipo de costo `value` - el importe y la moneda del costo deposit - una cuota reembolsable a pagar por la presentación de ofertas document - una cuota a pagar por el acceso a los documentos de licitación submission - una cuota no reembolsable a pagar por la presentación de ofertas v1.1.3 v1.1.4 win - una cuota a pagar por el ganador 