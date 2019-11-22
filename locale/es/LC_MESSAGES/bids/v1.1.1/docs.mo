��          �               |  +   }     �     �     �     �     �          #     /     J  �   R  r   �  M   ^  C   �  �  �  �   �  �   �  w   t  �   �     �     �  �  �  2   �
     �
     �
       .     #   M  '   q     �  '   �     �  �   �  �   �  Q   )  R   {    �    �  �   �  �   �    l     o     t   A measure, from the bidStatistics codelist; A value for that measure; An identifier; Bid Statistics Bid Statistics Codelist Bid Statistics Schema Bid Status Codelist Bid details Bid statistics and details Example For example, publishers may wish to add statistics on minority or women owned businesses, or bids that meet certain environmental standards and targets. Information on bids submitted as part of a contracting process is important for many forms of analysis, including: Market analysis for understanding the competitiveness of a given marketplace; Red flag analysis for understanding potential corruption risks; and Regulatory regimes vary on the extent to which they allow information on bidding to be proactively published, and at what point in the procurement process. In some systems and processes, a list of invited bidders will be published at the start of tendering, and full details and documents on the bids received may be disclosed when evaluation is complete. In other systems, only summary statistics on the number of bids received may be made public. The OCDS bid extension introduces a new, flexible, top-level section to each contracting process to capture bidding information. Implementers will need to assess which fields are applicable to their local regulatory regime, and to local use-cases. The ```bids/bidStatistics``` array can be used to represent key statistical information about the number of bids and bidders. Each entry in the array is a ```BidsStatistic``` object containing at least: The ```bids/details``` array is used to provide one or more ```Bid``` objects, each representing a unique bid received. This is an **open** codelist. Publishers can add their own codes to this list. When doing so, publishers are encouraged to engage with the open contracting community to agree upon definitions of each code. ToDo Value for money analysis; Project-Id-Version:  Python
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2019-01-09 11:10-0500
PO-Revision-Date: 2019-03-14 18:27+0000
Last-Translator: Yohanna Lisnichuk <ylisnichuk@idatosabiertos.org>, 2019
Language: es
Language-Team: Spanish (https://www.transifex.com/OpenDataServices/teams/95084/es/)
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.7.0
 Una medida, de la lista de códigos bidStatistics; Un valor para esa medida; Un identificador; Estadísticas de ofertas Listas de Códigos de Estadísitcas de Ofertas Esquema de Estadísticas de Ofertas Listas de Códigos de Estado de Ofertas Detalles de la oferta Estadísticas y detalles de las ofertas Ejemplo Por ejemplo, tal vez los publicadores deseen agregar estadísticas sobre negocios pertenecientes a minorías o mujeres, u ofertas que cumplan ciertos estándares y metas ambientales. La información sobre las ofertas presentadas como parte de un proceso de contratación es importante para muchas formas de análisis, incluyendo: Análisis de mercado para comprender la competitividad de un mercado determinado; Análisis de banderas rojas para comprender los posibles riesgos de corrupción; y Los regímenes regulatorios varían en la medida en que permiten que la información sobre licitaciones se publique de forma proactiva y en qué momento del proceso de adquisición. En algunos sistemas y procesos, se publicará una lista de licitadores invitados al comienzo de la licitación, y todos los detalles y documentos sobre las ofertas recibidas podrán ser revelados cuando se complete la evaluación. En otros sistemas, sólo pueden hacerse públicas las estadísticas resumidas sobre el número de ofertas recibidas. La extensión de oferta de OCDS introduce una sección nueva, flexible y de alto nivel para cada proceso de contratación para capturar información de ofertas. Los ejecutores deberán evaluar qué campos son aplicables a su régimen regulatorio local y los casos de uso locales. La matriz ```bids/bidStatistics``` puede usarse para representar información estadística clave sobre el número de ofertas y licitadores. Cada entrada en la matriz es un objeto ```BidsStatistic``` que contiene al menos: La lista ```bids/details``` se utiliza para proporcionar uno o más objetos ``` Bid```, cada uno de los cuales representa una única oferta recibida. Esta es una lista de códigos **abierta**. Los publicadores pueden agregar sus propios códigos a esta lista. Al hacerlo, se alienta a los publicadores a comprometerse con la comunidad de contrataciones abiertas para acordar las definiciones de cada código. ToDo Análisis de valor por dinero; 