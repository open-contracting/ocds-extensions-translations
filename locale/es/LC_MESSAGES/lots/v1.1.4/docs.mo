��    '      T              �  m   �     �       0   ,  %   ]  �   �  ?        X     x  	   �     �  N   �  I     �   N     �     �  �   �     �  $   �  �   �  "   �  6   �  �   �  w  �  i  
  ,   z     �  �   �  F   K  S   �     �  H   �     >  	   E     O  
   U     `     g  �  n     '     �  $   �  4   �  /     �   M  Z   �  *   R     }     �  !   �  W   �  M   #  �   q     !     (  �   .     �  '   �  �     '   �  ;   
     F  �  G  �  �  1   �       �   *  U   �  r        �  J   �     �  	   �       
                A tender is issued for consultancy in the development of a new public building. This might include items for: Add enum to `Lot.status` Add tests and tidy code Add title and description to `Tender.lotDetails` Allow `relatedLots` fields to be null Although part of the same tender, the buyer is willing to award these different items to different firms, and so divides the tender into three lots. An array of `relatedLots` (plural) can be provided for each of: Architectural advisory services Architectural design Changelog Civil engineering consultancy Disallow `Tender.lotDetails` from being null (bug introduced in first release) Disallow `relatedLots` fields from having null in their arrays of strings Documents and milestones can optionally have a `relatedLots` property. Those without this property should be interpreted as applicable to the tender as a whole. Issues Lots Optional `lotDetails` and `lotGroups` section allow more complex conditions around the award of lots to be expressed, such as the maximum value of a group of lots. Related Lot Remove Sphinx directives from readme Report issues for this extension in the [ocds-extensions repository](https://github.com/open-contracting/ocds-extensions/issues), putting the extension's name in the issue's title. Structural engineering consultancy The `relatedLot` (singular) property is available for: The items within an award should each have a `relatedLot` property, but publishers may choose to also reference all the lots an award relates to at the award level using `relatedLots`. The lots extension maintains the overall structure of an OCDS release, with items, documents and milestones nested immediately within `tender`, `award` and `contract` items, but it introduces an array of Lots in the `tender` section, and the ability to cross-reference a specific `relatedLot` for each item, and an array of `relatedLots` for documents, milestones and awards. This means that systems which are not 'lot aware' can still understand the overall value of contracting taking place, key events, and relationships between buyers and suppliers. At the same time, 'lot aware' systems can make use of the cross-referenced information to present a lot-centric view on the information to users, or to analyze contracting lot by lot. Update extension.json for Extension Explorer Use Apache 2.0 License When a single tender is broken down into parts that can be bid upon, and awarded, separately, this is modelled using the **lots extension**. When lots are used, **all** items should have a `relatedLot` property. Where the bid extension is also in use, each bid can also declare its related lots. Worked example `Tender.lotDetails` no longer uses a `$ref` to a `LotDetails` definition awards documents items milestones v1.1.3 v1.1.4 Project-Id-Version:  Python
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-07-31 13:34-0400
PO-Revision-Date: 2019-03-14 18:29+0000
Last-Translator: James McKinney, 2021
Language: es
Language-Team: Spanish (https://www.transifex.com/open-contracting-partnership-1/teams/112300/es/)
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 Se emite una licitación para consultoría en el desarrollo de un nuevo edificio público. Esto podría incluir elementos para: Agregar enum a `Lot.status` Agregar pruebas y ordenar el código Agregar título y descripción a `Tender.lotDetails` Permitir que los campos `relatedLots` sean null Aunque forma parte de la misma oferta, el comprador está dispuesto a adjudicar estos diferentes artículos a diferentes empresas, y así divide la oferta en tres lotes. Se puede proporcionar una lista de `relatedLots` (plural) para cada uno de los siguientes: Servicios de asesoramiento arquitectónico Diseño arquitectónico Registro de cambios Consultoría de ingeniería civil No permitir que `Tender.lotDetails` sea nulo (error introducido en la primera versión) No permitir que los campos `relatedLots` tengan null en sus listas de cadenas Los documentos e hitos pueden tener opcionalmente una propiedad `relatedLots`. Aquellos sin esta propiedad deben interpretarse como aplicables a la licitación en su conjunto. Issues Lotes La sección opcional `lotDetails` y `lotGroups` permite que se expresen condiciones más complejas en torno a la adjudicación de lotes, como el valor máximo de un grupo de lotes. Lote Relacionado Quita las directrices Sphinx del readme Reporte issues para esta extensión en el [repositorio de extensiones ocds](https://github.com/open-contracting/ocds-extensions/issues), poniendo el nombre de la extensión en el título del issue. Consultoría en ingeniería estructural La propiedad `relatedLot` (singular) está disponible para: Los artículos dentro de una adjudicación deben tener cada uno una propiedad `relatedLot`, pero los publicadores pueden también hacer referencia a todos los lotes en los que se relaciona una adjudicación en el nivel de adjudicación usando `relatedLots` La extensión de lotes mantiene la estructura general de una entrega de OCDS, con artículos, documentos e hitos incluidos inmediatamente dentro de los elementos `tender`, `award` y `contract`, pero introduce una lista de lotes en la sección `tender`, y la capacidad de hacer referencia cruzada a un `relatedLot` específico para cada elemento, y una lista de `relatedLots` para documentos, hitos y adjudicaciones Esto significa que los sistemas que no conocen la 'existencia de lotes' de igual forma pueden entender el valor global de la contratación que se esta llevando a cabo, los acontecimientos clave y las relaciones entre los compradores y los proveedores. Al mismo tiempo, los sistemas que sí conocen de la 'existencia de lotes' pueden hacer uso de la información referenciada para presentar una visión centrada-en-lotes en la información a los usuarios, o para analizar la contratación lote por lote. Añadir extension.json para el Extension Explorer Usa la licencia Apache 2.0 Cuando se desglosa una sola licitación en partes que pueden ofertarse y se adjudican separadamente, esto se presenta utilizando la **extensión de lotes**. Cuando se usan lotes, **todos los elementos** deben tener una propiedad `relatedLot`. Cuando la extensión de ofertas también está en uso, cada oferta también puede declarar sus lotes relacionados. Ejemplo desarrollado `Tender.lotDetails` ya no usa `$ref` para una definición de `LotDetails`  awards documents items milestones v1.1.3 v1.1.4 