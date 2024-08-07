��          �               �  
   �  
   �  
   �  
   �  
   	  
     
     +   *  2   V  =   �  3   �  <   �  	   8     B     W  8   _  �   �  �   :     �     �  $   �  �     �   �  �   G  �   �  x   �  p       x  
   �
  
   �
  
   �
  
   �
  
   �
  
   �
  
   �
  4   �
  7     D   :  ?     M   �          !     @  4   H  �   }  �   9     �     �  *   �  �     �   �  �   |  �   9  �   �  l   |   2018-01-09 2018-05-21 2018-05-22 2020-03-10 2020-03-11 2020-04-24 2020-05-20 Add 'selfEmployed' code to `partyScale.csv` Add 'small' and 'medium' codes to `partyScale.csv` Add `minProperties`, `minItems` and/or `minLength` properties Add description to 'large' code in `partyScale.csv` Add partyScale.csv codelist for `Organization.details.scale` Changelog Clarify use of codes Example For enterprises without employees, use the 'micro' code. For self-employed individuals and sole traders, if you can distinguish them from micro enterprises, use the 'selfEmployed' code. Otherwise, use the 'micro' code. For small and medium-sized enterprises, if you can distinguish between the two sizes, use the 'small' and 'medium' codes. Otherwise, use the 'sme' code. Guidance Issues Remove '' code from `partyScale.csv` Report issues for this extension in the [ocds-extensions repository](https://github.com/open-contracting/ocds-extensions/issues), putting the extension's name in the issue's title. The codes in the `partyScale.csv` codelist do not have precise definitions, and instead defer to local laws and regulations, for example: This extension adds a `scale` field to the `parties.details` object, to indicate the size or scale of an organization, in particular commercial enterprises or economic operators. This information can be used to calculate procurement statistics, like the share of contracts awarded to micro, small and medium-sized enterprises. [European Commission: What is an SME?](https://ec.europa.eu/growth/smes/business-friendly-environment/sme-definition_en) [OECD: Small and Medium-Sized Enterprises (SMEs) definition](https://stats.oecd.org/glossary/detail.asp?ID=3123) Project-Id-Version:  Python
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2024-05-30 00:39-0400
PO-Revision-Date: 2019-03-14 18:27+0000
Last-Translator: Dulce Jazmín Areco Maggereger <dulceareco@cds.com.py>, 2021
Language: es
Language-Team: Spanish (https://app.transifex.com/open-contracting-partnership-1/teams/112300/es/)
Plural-Forms: nplurals=3; plural=n == 1 ? 0 : n != 0 && n % 1000000 == 0 ? 1 : 2
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 2018-01-09 2018-05-21 2018-05-22 2020-03-10 2020-03-11 2020-04-24 2020-05-20 Agregue el código 'selfEmployed' a `partyScale.csv` Agregue códigos 'small' y 'medium'  a `partyScale.csv` Agregar las propiedades `minProperties`, `minItems` y/o `minLength`. Agregue una descripción al código 'large' en `partyScale.csv` Agregue la lista de códigos partyScale.csv para `Organization.details.scale` Registro de cambios Aclarar el uso de los códigos Ejemplo Para empresas sin empleados, use el código 'micro'. Para los trabajadores autónomos y los comerciantes individuales, si puede distinguirlos de las microempresas, utilice el código  'selfEmployed'. De lo contrario, use el código 'micro'. Para las pequeñas y medianas empresas, si puede distinguir entre los dos tamaños, utilice los códigos 'small' y 'medium'.  De lo contrario, use el código 'sme'. Guía Issues Eliminar el código '' de `partyScale.csv` Reporte issues para esta extensión en el [repositorio de extensiones ocds](https://github.com/open-contracting/ocds-extensions/issues), poniendo el nombre de la extensión en el título del issue. Los códigos de la lista de códigos `partyScale.csv` no tienen definiciones precisas y, en cambio, se rigen por las leyes y regulaciones locales, por ejemplo: Esta extensión añade un campo `scale` al objeto`parties.details` para indicar el tamaño o la escala de una organización, en particular de empresas comerciales u operadores económicos. Esta información se puede utilizar para calcular estadísticas de contrataciones, como la proporción de contratos adjudicados a micro, pequeñas y medianas empresas. [Comisión Europea: ¿Qué son las pequeñas y medianas empresas (SME)?](https://ec.europa.eu/growth/smes/business-friendly-environment/sme-definition_en) [OECD: Pequeñas y medianas empresas definición (SMEs)](https://stats.oecd.org/glossary/detail.asp?ID=3123) 