��          �               �  B   �  :         ;  1   S  =   �  )   �  	   �  t   �  K   l  d   �  %     R   C  U   �     �     �      �       �   *  �   �  S   �  �   �  �   �  �        �     �  �  �  F   �
  J   �
  $     5   >  A   t  C   �     �  �     \   �  x      ,   y  R   �  U   �     O     W  ,   ^     �  �   �  �   e  [   ?  �   �  �   J  �   �     �     �   Add description to `Item.deliveryLocation`, `Item.deliveryAddress` Add geometryType.csv codelist for `Location.geometry.type` Add tests and tidy code Add title and description to `Location.gazetteer` Allow `Location.geometry` and `Location.gazetteer` to be null Below is an example of a geolocated item: Changelog Communicating the location of proposed or executed contract delivery is important to many users of contracting data. Correct name of locationGazetteers.csv codelist (was locationGazeteers.csv) Correct the order of longitude and latitude in field descriptions to match the GeoJSON specification Describe elevation or altitude values Disallow `Location.gazetteer.identifiers` from having null in its array of strings Disallow `Location.geometry.coordinates` from having null in its array of coordinates Example Issues List codelists in extension.json Location Data Report issues for this extension in the [ocds-extensions repository](https://github.com/open-contracting/ocds-extensions/issues), putting the extension's name in the issue's title. The `locationGazetteers.csv` codelist's `Category` column indicates whether the gazetteer has identifiers for the whole world ('Universal') or only some subset ('Nationa' or 'Sub-National'). This extension introduces two properties at the `items` level to describe location: You can take the contents of the geometry object, excluding the `geometry` keyword, and plug this into any GeoJSON tool to see the shape that is described. `deliveryAddress` - a standard `Address` block which can be used to provide a postal address where services should be delivered. `deliveryLocation` - a new block consisting of GeoJSON and Gazetteer entries to describe a wider range of locations to which the contract line item relates. v1.1.3 v1.1.4 Project-Id-Version:  Python
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2019-01-09 11:10-0500
PO-Revision-Date: 2019-03-14 18:28+0000
Last-Translator: Yohanna Lisnichuk <ylisnichuk@idatosabiertos.org>, 2019
Language: es
Language-Team: Spanish (https://www.transifex.com/OpenDataServices/teams/95084/es/)
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.7.0
 Agregar descripción a `Item.deliveryLocation`,` Item.deliveryAddress` Agregar la lista de código geometryType.csv para `Location.geometry.type` Agregar pruebas y ordenar el código Agregar título y descripción a `Location.gazetteer` Permitir que `Location.geometry` y` Location.gazetteer` sean null A continuación se muestra un ejemplo de un elemento geolocalizado: Registro de cambios La comunicación de la ubicación de la entrega del contrato propuesto o ejecutado es importante para muchos usuarios de los datos de contratación. Corregir el nombre de la lista de código locationGazetteers.csv (era locationGazeteers.csv) Corregir el orden de longitud y latitud en los campos de descripción para que sean iguales a la especificación GeoJSON Describe los valores de elevación o altitud No permitir que `Location.gazetteer.identifiers` tenga null en su lista de strings No permitir que `Location.geometry.coordinates` tenga null en su lista de coordenadas Ejemplo Issues Enlista listas de códigos en extension.json Datos de ubicación Reporte issues para esta extensión en el [repositorio de extensiones ocds](https://github.com/open-contracting/ocds-extensions/issues), poniendo el nombre de la extensión en el título del issue. La columna `Category`  de la lista de código `locationGazetteers.csv` indica si el diccionario geográfico contiene identificadores para todo el mundo  ('Universal') or solo una parte ('National' or 'Sub-National'). Esta extensión introduce dos propiedades en el nivel `items` para describir la ubicación: Puede tomar el contenido del objeto geométrico, excluyendo la palabra clave `geometry`, y conectarlo a cualquier herramienta de GeoJSON para ver la forma en que se describe. `deliveryAddress` - un bloque estándar `Address` que puede usarse para proporcionar una dirección postal donde deben entregarse los servicios. `deliveryLocation` - un nuevo bloque que consta de entradas GeoJSON y de diccionario geográfico para describir una gama más amplia de ubicaciones a las que se refiere la partida del contrato. v1.1.3 v1.1.4 