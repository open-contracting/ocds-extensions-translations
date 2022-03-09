��    ,      |              �  0   �       Q   '  "   y  8   �  !   �     �          -  "   E     h  (   v     �  	   �  C   �  k        t  `   |  �   �  �   �  r   S     �      �  M   �  C   <  C   �  �  �  $   y
  @   �
  /   �
  �     (   �     �  �   �  �   �  o   �  �   F  �     ,   �     �     �     �       �    7   �       X   7  (   �  =   �  %   �       &   9  $   `  '   �     �  C   �  '        *  C   >  r   �     �  �   �  �   �  �   {  �   2     �  ,   �  Q   �  H   K  R   �    �  '   �  J   !  G   l  �   �  /   z     �    �  &  �  �   �  �     �   J   1   !     I!     h!     o!     v!   A measure, from the `bidStatistics.csv` codelist A value for that measure Add 'lowestValidBidValue' and 'highestValidBidValue' codes to `bidStatistics.csv` Add `BidsStatistic.currency` field Add a 'foreignBidsFromNonEU' code to `bidStatistics.csv` Add descriptions to bidStatus.csv Add enum to `Bid.status` Add example to documentation Add tests and tidy code Allow `Bids.statistics` to be null An identifier Below is an example of a bids extension: Bid statistics and details Changelog Disallow `Bids.statistics` from having null in its array of objects Disallow required fields `BidsStatistic.id`, `BidsStatistic.measure`, `BidsStatistic.value` from being null Example Fix the merge behavior of `Bids.statistics` and `Bid.tenderers` to use identifier merge strategy Fix the title and description of the 'foreignBidsFromEU' code to refer to the European Economic Area (EEA). Previously, its title referred to the European Single Market, but its description listed the members of the EEA. For example, publishers may wish to add statistics on minority or women-owned businesses, or bids that meet certain environmental standards and targets. Information on bids submitted as part of a contracting process is important for many forms of analysis, including: Issues List codelists in extension.json Market analysis for understanding the competitiveness of a given marketplace; Move `BidsStatistic.requirementResponses` to requirements extension Red flag analysis for understanding potential corruption risks; and Regulatory regimes vary on the extent to which they allow information on bidding to be proactively published, and at what point in the procurement process. In some systems and processes, a list of invited bidders is published at the start of tendering, and full details and documents on the bids received are disclosed when evaluation is complete. In other systems, only summary statistics on the number of bids received is made public. Remove Sphinx directives from readme Remove invalid `required` property on array field `Bids.details` Remove type information from field descriptions Report issues for this extension in the [ocds-extensions repository](https://github.com/open-contracting/ocds-extensions/issues), putting the extension's name in the issue's title. Review normative and non-normative words Schema The OCDS bid extension introduces a new, flexible, top-level section to each contracting process to capture bidding information. Implementers will need to assess which fields are applicable to their local regulatory regime, and to local use-cases. The `bidStatistics.csv` codelist is an **open** codelist. Publishers can add their own codes to this list. When doing so, publishers are encouraged to engage with the open contracting community to agree upon definitions of each code. The `bids.details` array is used to provide one or more `Bid` objects, each representing a unique bid received. The `bids.statistics` array is used to represent key statistical information about the number of bids and bidders. Each entry in the array is a `BidsStatistic` object containing at least: The codelist's Category column indicates whether the statistic applies to bids or bidders or whether it is specified or required by a particular regulatory context (e.g. EU). Update extension.json for Extension Explorer Value for money analysis; v1.1.3 v1.1.4 v1.1.5 Project-Id-Version:  Python
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2022-03-07 18:41-0300
PO-Revision-Date: 2020-08-20 21:04+0000
Last-Translator: Maria Esther Cervantes <mcervantes@cds.com.py>, 2021
Language: es
Language-Team: Spanish (https://www.transifex.com/open-contracting-partnership-1/teams/112300/es/)
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 Una medida, de la lista de códigos `bidStatistics.csv` Un valor para esa medida Añada los códigos 'lowestValidBidValue' y 'highestValidBidValue' a `bidStatistics.csv` Añada el campo `BidsStatistic.currency` Añade el código `foreignBidsFromNonEU a `bidStatistics.csv` Agregar descripciones a bidStatus.csv Agregar enum a `Bid.status` Agregar un ejemplo a la documentación Agregar pruebas y ordenar el código Permitir que `Bids.statistics` sea null Un identificador A continuación se muestra un ejemplo de una extensión de ofertas: Estadísticas y detalles de las ofertas Registro de cambios No permitir que `Bids.statistics` tenga null en su lista de objetos No permitir que los campos requeridos `BidsStatistic.id`,` BidsStatistic.measure`, `BidsStatistic.value` sean null Ejemplo Arreglar el comportamiento de unión de  `Bids.statistics` a  `Bid.tenderers` para identificar la estrategia de unión de los identificadores Se corrige el título y la descripción del código 'foreignBidsFromEU' para referirse al Área Económica Europea (AEE). Anteriormente, el título se refería al Mercado Único Europeo, pero su descripción enlistaba los miembros del AEE. Por ejemplo, tal vez los publicadores deseen agregar estadísticas sobre negocios pertenecientes a minorías o mujeres, u ofertas que cumplan ciertos estándares y metas ambientales. La información sobre las ofertas presentadas como parte de un proceso de contratación es importante para muchas formas de análisis, incluyendo: Issues Enlista listas de códigos en extension.json Análisis de mercado para comprender la competitividad de un mercado determinado; Mover `BidsStatistic.requirementResponses` a la extensión de requisitos Análisis de banderas rojas para comprender los posibles riesgos de corrupción; y Los regímenes regulatorios varían en la medida en que permiten que la información sobre licitaciones se publique de forma proactiva y en qué momento del proceso de adquisición. En algunos sistemas y procesos, se publicará una lista de licitadores invitados al comienzo de la licitación, y todos los detalles y documentos sobre las ofertas recibidas podrán ser revelados cuando se complete la evaluación. En otros sistemas, sólo pueden hacerse públicas las estadísticas resumidas sobre el número de ofertas recibidas. Quita las directrices Sphinx del readme Quitar propiedad  `required` invalide a la matriz del campo `Bids.details` Quitar la información sobre el tipo de las descripciones de los campos Reporte issues para esta extensión en el [repositorio de extensiones ocds](https://github.com/open-contracting/ocds-extensions/issues), poniendo el nombre de la extensión en el título del issue. Revisar las palabras normativas y no-normativas Esquema La extensión de oferta de OCDS introduce una sección nueva, flexible y de alto nivel para cada proceso de contratación para capturar información de ofertas. Los ejecutores deberán evaluar qué campos son aplicables a su régimen regulatorio local y los casos de uso locales. La lista de códigos `bidStatistics.csv` es una lista de códigos **abierta**. Los publicadores pueden agregar sus propios códigos a esta lista. Al hacerlo, se alienta a los publicadores a comprometerse con la comunidad de contrataciones abiertas para acordar las definiciones de cada código. La lista `bids/details` se utiliza para proporcionar uno o más objetos ` Bid`, cada uno de los cuales representa una única oferta recibida. La matriz `bids/statistics` se usa para representar información estadística sobre el número de ofertas y licitadores. En cada entrada de la matriz hay un objeto `BidsStatistic` que contiene al menos: La lista de código en la columna Categoría muestra si la estadística aplica a las ofertas u ofertantes o si esta especificado o requerido por una categoría particular del contexto regulatorio (ej. UE) Añadir extension.json para el Extension Explorer Análisis de valor por dinero; v1.1.3 v1.1.4 v1.1.5 