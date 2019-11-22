��          �               �  �   �  �   Q  �   �  z   �  K   Q     �     �     �     �  	   �     �     �     �       p     �   �  n   <  �   �  	  �  �  �     6
     ;
  �  ?
  �    �   �  �   �  �   �  �   �  `   T     �     �     �     �     �  "     
   5     @  
   P  t   [  '  �  }   �  	  v    �  �  �     `     e    i   A URI to a further description of the activity location. This may be a human readable document with information on the location, or a machine-readable description of the location. A gazetteer is a geographical index or directory. The specific gazetteer used should be specified in scheme, and one or more codes from that gazetteer used in identifier. A name or description of this location. This might include the name(s) of the location(s), or might provide a human readable description of the location to be covered. This description may be used in a user-interface. Allows the point of delivery or site of works for a given line item to be indicated in tender, award and contract objects. An array of one or more codes drawn from the gazetteer indicated in scheme. Coordinates Delivery Address Delivery Location Description Gazetteer Gazetteer scheme Geometry Identifiers Location The address to which, or where, goods or services related to this tender, contract or license will be delivered. The entry of the selected gazetteer in the gazetteers codelist. The codelist provides details of services, where available, that can resolve a gazetteer entry to provide location names. The location where activity related to this tender, contract or license will be delivered, or will take place. The location where activity related to this tender, contract or license will be delivered, or will take place. A location can be described by either a geometry (point location, line or polygon), or a gazetteer entry, or both. The relevant array of points, e.g. [longitude, latitude] or [longitude, latitude, elevation], or a nested array of points, for the GeoJSON geometry being described. The longitude and latitude MUST be expressed in decimal degrees in the WGS84 (EPSG:4326) projection. The type of [GeoJSON Geometry Objects](http://geojson.org/geojson-spec.html#geometry-objects) being provided. To provide longitude, latitude, and (optionally) elevation, use 'Point', and enter an array of [longitude, latitude] or [longitude, latitude, elevation] as the value of the coordinates field: e.g. [-122.085, 37.42]. Note the capitalization of type values, in order to maintain compatibility with GeoJSON. Type URI We follow the [GeoJSON standard](http://geojson.org/) to express basic location information, using longitude, latitude, and (optionally) elevation values in the [WGS84](https://en.wikipedia.org/wiki/World_Geodetic_System) (EPSG:4326) projection. A point location can be identified by geocoding a delivery address. For concession licenses, or other contracts covering a polygon location which is not contained in a known gazetteer, polygon and multi-polygon can be used. Project-Id-Version: PROJECT VERSION
Report-Msgid-Bugs-To: EMAIL@ADDRESS
POT-Creation-Date: 2019-06-27 17:45-0400
PO-Revision-Date: 2019-03-14 18:28+0000
Last-Translator: Yohanna Lisnichuk <ylisnichuk@idatosabiertos.org>, 2019
Language: es
Language-Team: Spanish (https://www.transifex.com/OpenDataServices/teams/95084/es/)
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.7.0
 Un URI para una descripción más detallada de la ubicación de la actividad. Esto puede ser un documento legible por el usuario con información sobre la ubicación o una descripción legible por computadora de la ubicación. Un diccionario geográfico es un índice o directorio geográfico. El diccionario específico utilizado debe especificarse en el esquema, y ​​se deben utilizar uno o más códigos de ese diccionario en el identificador. Un nombre o descripción de esta ubicación. Esto podría incluir el nombre de la(s) ubicación(es), o podría proporcionar una descripción legible por el usuario de la ubicación a cubrir. Esta descripción se puede utilizar en una interfaz de usuario. Permite indicar el punto de entrega o el sitio de las obras para una línea de pedido determinada en los objetos de licitación, adjudicación y contrato. Una matriz de uno o más códigos extraídos del diccionario geográfico indicado en el esquema. Coordenadas Dirección de Entrega Ubicación de Entrega Descripción Diccionario Geográfico Esquema de diccionario geográfico Geometría Identificadores Ubicación La dirección en la que bienes y servicios relacionados con esta licitación, contrato o licencia serán entregados. La entrada del diccionario geográfico seleccionado en la lista de códigos de diccionarios geográficos. La lista de códigos proporciona detalles de los servicios, cuando están disponibles, que pueden resolver una entrada de un diccionario geográfico para proporcionar nombres de ubicación. La ubicación donde la actividad relacionada con esta licitación, contrato o licencia será entregada o se llevará a cabo.  El lugar donde la actividad relacionada con esta licitación, contrato o licencia será entregada, o tendrá lugar. Una ubicación puede ser descrita por una geometría (ubicación de punto, línea o polígono), o una entrada de un diccionario geográfico, o ambas. El conjunto relevante de puntos, por ejemplo,  [longitude, latitude] o [longitude, latitude, elevation], o una matriz anidada de puntos, para la geometría GeoJSON que se describe. La longitud y la latitud DEBEN expresarse en grados decimales en la proyección WGS84 (EPSG: 4326). El tipo de  [GeoJSON Geometry Objects] (http://geojson.org/geojson-spec.html#geometry-objects) que se proporciona. Para proporcionar longitud, latitud y (opcionalmente) elevación, use 'Point', e ingrese una matriz de [longitude, latitude] o [longitude, latitude, elevation] como el valor del campo de coordenadas: por ejemplo, [-122.085, 37.42]. Tenga en cuenta la capitalización de los valores de tipo, a fin de mantener la compatibilidad con GeoJSON. Tipo URI Seguimos el estándar  [GeoJSON] (http://geojson.org/) para expresar información básica de ubicación, usando los valores de longitud, latitud y (opcionalmente) elevación en [WGS84] (https://en.wikipedia.org/wiki/World_Geodetic_System) (EPSG: 4326). Una ubicación de punto se puede identificar geocodificando una dirección de entrega. Para licencias de concesión, u otros contratos que cubran una ubicación de polígono que no esté contenida en un diccionario geográfico conocido, se pueden usar polígonos y polígonos múltiples. 