��    !      $              ,  B   -  :   p     �  1   �  =   �  A   3  	   u  t     K   �  d   @  %   �  R   �  U     `   t     �  y   �     W      ^       $   �  /   �  �   �  (   �  �   �  S   �  ,   �  �   	  �   �	  �   
     �
     �
     �
  �  �
  F   �  J   �  $   ;  5   `  A   �  [   �     4  |   H  \   �  u   "  ,   �  R   �  V     b   o     �  �   �     |  ,   �     �  '   �  G   �  �   4  /   �  �   *  [     1   _  �   �  �   @  �   �     �     �     �   Add description to `Item.deliveryLocation`, `Item.deliveryAddress` Add geometryType.csv codelist for `Location.geometry.type` Add tests and tidy code Add title and description to `Location.gazetteer` Allow `Location.geometry` and `Location.gazetteer` to be null Below is an example of a geolocated item in the `tender` section: Changelog Communicating the location of proposed or executed contract delivery is important to many users of contracting data. Correct name of locationGazetteers.csv codelist (was locationGazeteers.csv) Correct the order of longitude and latitude in field descriptions to match the GeoJSON specification Describe elevation or altitude values Disallow `Location.gazetteer.identifiers` from having null in its array of strings Disallow `Location.geometry.coordinates` from having null in its array of coordinates Disallow `Location.geometry` and `Location.gazetteer` from being null (bug introduced in v1.1.3) Example If the procurement related to the rebuilding of a road, then the item could also specify more complex geometries such as: Issues List codelists in extension.json Location Data Remove Sphinx directives from readme Remove type information from field descriptions Report issues for this extension in the [ocds-extensions repository](https://github.com/open-contracting/ocds-extensions/issues), putting the extension's name in the issue's title. Review normative and non-normative words The `locationGazetteers.csv` codelist's `Category` column indicates whether the gazetteer has identifiers for the whole world ('Universal') or only some subset ('National' or 'Sub-National'). This extension introduces two properties at the `items` level to describe location: Update extension.json for Extension Explorer You can take the contents of the geometry object, excluding the `geometry` keyword, and plug this into any GeoJSON tool to see the shape that is described. `deliveryAddress` - a standard `Address` block which can be used to provide a postal address where services should be delivered. `deliveryLocation` - a new block consisting of GeoJSON and Gazetteer entries to describe a wider range of locations to which the contract line item relates. v1.1.3 v1.1.4 v1.1.5 Project-Id-Version:  Python
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
 Agregar descripción a `Item.deliveryLocation`,` Item.deliveryAddress` Agregar la lista de código geometryType.csv para `Location.geometry.type` Agregar pruebas y ordenar el código Agregar título y descripción a `Location.gazetteer` Permitir que `Location.geometry` y` Location.gazetteer` sean null A continuación se muestra un ejemplo de un elemento geolocalizado en la sección `tender`: Registro de cambios Comunicar la ubicación del contrato propuesto o ejecutad es importante para muchos usuarios de los datos de contrataciones. Corregir el nombre de la lista de código locationGazetteers.csv (era locationGazeteers.csv) Corregir el orden de longitud y latitud en los campos de descripción deben ser iguales a la especificación GeoJSON. Describe los valores de elevación o altitud No permitir que `Location.gazetteer.identifiers` tenga null en su lista de strings No permitir que `Location.geometry.coordinates` tenga null en su matriz de coordenadas No permitir que `Location.geometry` y ` Location.gazetteer` sean null (bug se introdujo en v1.1.3) Ejemplo Si la adquisición relacionada con la reconstrucción de una carretera, entonces el elemento también podría especificar geometrías más complejas, tales como: Issues Enlista listas de códigos en extension.json Datos de ubicación Quita las directrices Sphinx del readme Quitar la información sobre el tipo de las descripciones de los campos Reporte issues para esta extensión en el [repositorio de extensiones ocds](https://github.com/open-contracting/ocds-extensions/issues), poniendo el nombre de la extensión en el título del issue. Revisar las palabras normativas y no-normativas La columna `Category`  en la lista de código  `locationGazetteers.csv` indica si el diccionario geográfico tiene identificadores para todo el mundo ('Universal') o solo un subconjunto ('National' o 'Sub-National'). Esta extensión introduce dos propiedades en el nivel `items` para describir la ubicación: Añadir extension.json para el Extension Explorer Puede tomar el contenido del objeto geométrico, excluyendo la palabra clave `geometry`, y conectarlo a cualquier herramienta de GeoJSON para ver la forma en que se describe. `deliveryAddress` - un bloque estándar `Address` que puede usarse para proporcionar una dirección postal donde deben entregarse los servicios. `deliveryLocation` - un nuevo bloque que consta de entradas GeoJSON y de diccionario geográfico para describir una gama más amplia de ubicaciones a las que se refiere la partida del contrato. v1.1.3 v1.1.4 v1.1.5 