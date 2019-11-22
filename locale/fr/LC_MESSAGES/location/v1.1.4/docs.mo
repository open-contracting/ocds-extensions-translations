��          �               l  B   m  :   �     �  1     =   5  )   s  	   �  K   �  R   �  U   F     �     �      �     �  �   �  S   �  �   �  �     �         �  �  �  I   m  N   �  #   	  :   *	  \   e	  7   �	     �	  W   
  t   l
  j   �
     L  
   T  +   _     �  �   �  [   n  �   �  �   �  �   +     �   Add description to `Item.deliveryLocation`, `Item.deliveryAddress` Add geometryType.csv codelist for `Location.geometry.type` Add tests and tidy code Add title and description to `Location.gazetteer` Allow `Location.geometry` and `Location.gazetteer` to be null Below is an example of a geolocated item: Changelog Correct name of locationGazetteers.csv codelist (was locationGazeteers.csv) Disallow `Location.gazetteer.identifiers` from having null in its array of strings Disallow `Location.geometry.coordinates` from having null in its array of coordinates Example Issues List codelists in extension.json Location Data Report issues for this extension in the [ocds-extensions repository](https://github.com/open-contracting/ocds-extensions/issues), putting the extension's name in the issue's title. This extension introduces two properties at the `items` level to describe location: You can take the contents of the geometry object, excluding the `geometry` keyword, and plug this into any GeoJSON tool to see the shape that is described. `deliveryAddress` - a standard `Address` block which can be used to provide a postal address where services should be delivered. `deliveryLocation` - a new block consisting of GeoJSON and Gazetteer entries to describe a wider range of locations to which the contract line item relates. v1.1.3 Project-Id-Version:  Python
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2019-06-27 17:45-0400
PO-Revision-Date: 2019-03-14 18:28+0000
Last-Translator: James McKinney <jmckinney@open-contracting.org>, 2019
Language: fr
Language-Team: French (https://www.transifex.com/OpenDataServices/teams/95084/fr/)
Plural-Forms: nplurals=2; plural=(n > 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.7.0
 Ajoute une description à `Item.deliveryLocation`, `Item.deliveryAddress` Ajoute la nomenclature geometryType.csv pour le champ `Location.geometry.type` Ajoute des tests et nettoie le code Ajoute un titre et une description à `Location.gazetteer` Autorise les champs `Location.geometry` and `Location.gazetteer` à prendre la valeur `null` Voici ci-dessous un exemple d'élément géolocalisé : Journal des modifications Corrige le nom de la nomenclature locationGazetteers.csv (était locationGazeteers.csv) Interdit au champ `Location.gazetteer.identifiers` d'avoir une valeur `null` dans sa liste de chaînes de caractère Interdit au champ `Location.geometry.coordinates` d'avoir des valeurs `null` dans sa liste de coordonnées Exemple Problèmes Liste les nomenclatures dans extension.json Données de localisation Signalez les problèmes concernant cette extension dans le [répertoire ocds](https://github.com/open-contracting/ocds-extensions/issues), en mettant le nom de l'extension dans le titre du signalement. Cette extension ajoute deux propriétés au niveau ` items` pour décrire la localisation : Vous pouvez prendre le contenu de l'objet de géométrie, enlever le mot-clé `geometry` et le donner à n'importe quel outil utilisant du GeoJSON pour visualiser la forme qui est décrite. `deliveryAddress` - une composante `Address` standard qui peut être utilisée pour fournir une adresse postale à laquelle les services devraient être livrés.  `deliveryLocation` - une nouvelle composante constituée de GeoJSON et d'entrées Gazetteer (index géographique) pour décrire un ensemble plus large de lieux auxquels l'élément du marché se rapporte. v1.1.3 