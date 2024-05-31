��          �               �  �   �  �   S  z   �  W   v     �     �     �     �  	   	          $     -  R   9     �  p   �  �     n   �  �   )  	    A       W	     \	  �  `	  \  2  �   �  �   o  �   /  c   �     .     :     P     f     s  "   �  
   �     �  g   �  
   1  t   <  �   �  }   �  	       *  W  7     �     �  *  �   A URI to a further description of the activity location. This might be a human-readable document with information on the location, or a machine-readable description of the location. A name or description of this location. This might include the name(s) of the location(s), or might provide a human-readable description of the location to be covered. Allows the point of delivery or site of works for a given line item to be indicated in tender, award and contract objects. An array of one or more codes drawn from the gazetteer indicated by the `scheme` field. Coordinates Delivery Address Delivery Location Description Gazetteer Gazetteer scheme Geometry Identifiers Identifiers from a gazetteer (a geographical index or directory) for the location. Location The address to which, or where, goods or services related to this tender, contract or license will be delivered. The identifier of the gazetteer. The `locationGazetteers.csv` codelist provides details of services, where available, that can resolve a gazetteer entry to provide location names. The location where activity related to this tender, contract or license will be delivered, or will take place. The location where activity related to this tender, contract or license will be delivered, or will take place. A location can be described by either a geometry (point location, line or polygon), or a gazetteer entry, or both. The relevant array of points, e.g. [longitude, latitude] or [longitude, latitude, elevation], or a nested array of points, for the GeoJSON geometry being described. The longitude and latitude must be expressed in decimal degrees in the WGS84 (EPSG:4326) projection. The type of [GeoJSON Geometry Objects](http://geojson.org/geojson-spec.html#geometry-objects) being provided. To provide longitude, latitude, and optional elevation, use 'Point', and enter an array of [longitude, latitude] or [longitude, latitude, elevation] as the value of the coordinates field: e.g. [-122.085, 37.42]. Type URI We follow the [GeoJSON standard](http://geojson.org/) to express basic location information, using longitude, latitude, and optional elevation values in the [WGS84](https://en.wikipedia.org/wiki/World_Geodetic_System) (EPSG:4326) projection. A point location can be identified by geocoding a delivery address. For concession licenses, or other contracts covering a polygon location which is not contained in a known gazetteer, polygon and multi-polygon can be used. Project-Id-Version: PROJECT VERSION
Report-Msgid-Bugs-To: EMAIL@ADDRESS
POT-Creation-Date: 2023-05-15 16:00-0400
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language-Team: LANGUAGE <LL@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 Un URI a una descripción más detallada de la ubicación de la actividad. Esto puede ser un documento legible por el usuario con información sobre la ubicación o una descripción legible por computadora de la ubicación. Un nombre o descripción para esta ubicación. Esto puede incluir el(los) nombre(s) de la ubicación (o ubicaciones), o puede incluir una descripción legible de la ubicación a ser cubierta. Permite indicar el punto de entrega o el sitio de las obras para una línea de pedido determinada en los objetos de licitación, adjudicación y contrato. Una lista de uno o más códigos tomados del diccionario geográfico indicado en el campo `scheme`. Coordenadas Dirección de Entrega Ubicación de Entrega Descripción Diccionario Geográfico Esquema de diccionario geográfico Geometría Identificadores Identificadores de un diccionario geográfico (un índice o directorio geográfico) para la ubicación. Ubicación La dirección en la que bienes y servicios relacionados con esta licitación, contrato o licencia serán entregados. El identificador del diccionario geográfico. La lista de códigos `locationGazetteers.csv` provee detalles de servicios, si están disponibles, que pueden resolver una entrada del diccionario geográfico para proveer nombres de ubicación. La ubicación donde la actividad relacionada con esta licitación, contrato o licencia será entregada o se llevará a cabo.  El lugar donde la actividad relacionada con esta licitación, contrato o licencia será entregada, o tendrá lugar. Una ubicación puede ser descrita por una geometría (ubicación de punto, línea o polígono), o una entrada de un diccionario geográfico, o ambas. La lista de puntos, ej. [longitud, latitud] o [longitud, latitud, elevación], o una lista anidada de puntos, para el objeto geométrico JSON que está siendo descrito. La longitud y latitud deben ser expresadas en grados decimales en la proyección WGS84 (EPSG:4326). El tipo de [Objeto Geométrico GeoJSON] (http://geojson.org/geojson-spec.html#geometry-objects) que se proporciona. Para proporcionar longitud, latitud y (opcionalmente) elevación, use 'Point', e ingrese una lista de [longitud, latitud] o [longitud, latitud, elevación] como el valor del campo de coordenadas: por ejemplo, [-122.085, 37.42]. Tipo URI Seguimos el  [estándar GeoJSON] (http://geojson.org/) para expresar información básica de ubicación, usando los valores de longitud, latitud y (opcionalmente) elevación en la proyección [WGS84] (https://en.wikipedia.org/wiki/World_Geodetic_System) (EPSG: 4326). Un punto de ubicación se puede identificar geocodificando una dirección de entrega. Para licencias de concesión, u otros contratos que cubran una ubicación en polígono que no esté contenida en un diccionario geográfico conocido, se pueden usar polígonos y polígonos múltiples. 