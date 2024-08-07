��          �               �  
   �  
   �  >   �  	   �     �          )     2     F  *   e     �  ]   �  d   �  d   \     �     �  �   �  
   �  �   �  N  t  C   �  +     &   3    Z  
   b	  
   m	  D   x	     �	     �	     �	     
     
     
  &   4
     [
  d   a
  k   �
  l   2     �     �  �   �  	   {  �   �  Z  v  F   �  +     *   D   2020-04-24 2020-10-05 Add `minProperties`, `minItems` and/or `minLength` properties. Changelog Dynamic purchasing system Electronic auction Examples Framework agreement Framework agreement's `method` Framework agreement's `value` and `period` Guidance Here are the possible values for a framework agreement's `method` field, and common synonyms: If a procurement is divided into lots, use the `value` and `contractPeriod` fields of `Lot` objects. If a procurement isn't divided into lots, use the `tender.value` and `tender.contractPeriod` fields. Issues Legal context Report issues for this extension in the [ocds-extensions repository](https://github.com/open-contracting/ocds-extensions/issues), putting the extension's name in the issue's title. Techniques The `value` and `period` fields of `FrameworkAgreement` objects should only be used if a data source provides values and periods for both the contract/lot and the framework agreement, like TED XML Schema R2.08. Otherwise: This extension was originally discussed as part of the [OCDS for EU profile](https://github.com/open-contracting-extensions/european-union/issues), in [pull requests](https://github.com/open-contracting-extensions/ocds_techniques_extension/pulls?q=is%3Apr+is%3Aclosed) and in <https://github.com/open-contracting/standard/issues/695>. withAndWithoutReopeningCompetition: call-offs and mini-competitions withReopeningCompetition: mini-competitions withoutReopeningCompetition: call-offs Project-Id-Version:  Python
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2024-05-30 00:39-0400
PO-Revision-Date: 2020-08-20 21:57+0000
Last-Translator: Dulce Jazmín Areco Maggereger <dulceareco@cds.com.py>, 2021
Language: es
Language-Team: Spanish (https://app.transifex.com/open-contracting-partnership-1/teams/112300/es/)
Plural-Forms: nplurals=3; plural=n == 1 ? 0 : n != 0 && n % 1000000 == 0 ? 1 : 2
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 2020-04-24 2020-10-05 Agregar las propiedades `minProperties`, `minItems` y/o `minLength`. Registro de cambios Sistema de compra dinámica Subasta electrónica Ejemplos Acuerdo marco `method` del acuerdo marco  `value` y  `period` del acuerdo marco Guía Estos son los posibles valores del campo `method` de un acuerdo marco y sus sinónimos más comunes: Si una adquisición se divide en lotes, utilice los campos `value` y` contractPeriod` de los objetos `Lot`. Si una adquisición no está dividida en lotes, utilice los campos `tender.value` y` tender.contractPeriod`. Issues Contexto legal Reporte issues para esta extensión en el [repositorio de extensiones ocds](https://github.com/open-contracting/ocds-extensions/issues), poniendo el nombre de la extensión en el título del issue. Técnicas Los campos `value` y` period` de los objetos `FrameworkAgreement` solo deben usarse si una fuente de datos proporciona valores y períodos tanto para el contrato / lote como para el acuerdo marco, como TED XML Schema R2.08. De lo contrario: Esta extensión se discutió originalmente como parte del [OCDS para el perfil de la UE] (https://github.com/open-contracting-extensions/european-union/issues), en [pull requests] (https://github.com/open-contracting-extensions/ocds_techniques_extension/pulls?q=is%3Apr+is%3Aclosed) y en <https://github.com/open-contracting/standard/issues/695>. withAndWithoutReopeningCompetition: cancelaciones y mini-competencias  withReopeningCompetition: mini-competencias withoutReopeningCompetition: cancelaciones 