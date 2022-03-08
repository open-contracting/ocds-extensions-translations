��          �               �  
   �  
   �  �   �  >   �  G   �  .     	   <  i   F  
   �  z   �     6     >  �   G  �   �  I   �     1     8  �   F  �  �  �   �  v   �	  `   
  �   r
  �  d  
   E  
   P  �   [  D   K  ^   �  3   �     #  v   7     �  �   �     <     D  �   J      [   7     �     �  �   �  �  o      �   !  `   �  �      2020-04-24 2020-11-04 A treaty, like the Agreement on Government Procurement (GPA), can require a member to indicate that a contracting process is covered by it. The `tender.coveredBy` field should be used to meet such requirements. Add `minProperties`, `minItems` and/or `minLength` properties. Add guidance on the creation of new codes for the `coveredBy` codelist. Add this code to the `tender.coveredBy` array. Changelog Concatenate the code(s) to the acronym of the treaty, separating each part with a dash (e.g "CA-NT-BPI"). Covered By Document the new code (see [Extending open codelists](https://standard.open-contracting.org/latest/en/schema/codelists/)). Example Guidance If the treaty has a national or subnational scope, pick a relevant [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) (e.g "CA" for Canada). If the treaty has a subnational scope, pick a relevant [ISO 3166-2 region code](https://en.wikipedia.org/wiki/ISO_3166-2) (e.g "NT" for [Northern Territories](https://en.wikipedia.org/wiki/ISO_3166-2:CA#Current_codes), a province of Canada). If you need to refer to a treaty that is not in the `coveredBy` codelist: Issues Legal context Report issues for this extension in the [ocds-extensions repository](https://github.com/open-contracting/ocds-extensions/issues), putting the extension's name in the issue's title. The European Union is a [party](https://www.wto.org/english/tratop_e/gproc_e/memobs_e.htm) to the GPA, and as such its [Directive 2014/24/EU](https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=uriserv:OJ.L_.2014.094.01.0065.01.ENG) (Public contracts — setting out clear ground rules) includes: "Part C: Information to be included in contract notices … 29. Indication whether the contract is covered by the GPA." The [Revised Agreement on Government Procurement](https://www.wto.org/english/docs_e/legal_e/rev-gpr-94_01_e.htm) (GPA) includes: "each notice of intended procurement shall include … l. an indication that the procurement is covered by this Agreement." The `tender.coveredBy` field is an array of strings, whose values are selected from the `coveredBy.csv` open codelist. This extension adds a field to indicate the treaties that the contracting process is covered by. To disclose the laws or regulations that govern the contracting process and that grant legal authority to the procuring entity, use the [legalBasis extension](https://github.com/open-contracting-extensions/ocds_legalBasis_extension) instead. Project-Id-Version:  Python
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-07-31 13:34-0400
PO-Revision-Date: 2020-08-20 21:41+0000
Last-Translator: Dulce Jazmín Areco Maggereger <dulceareco@cds.com.py>, 2021
Language: es
Language-Team: Spanish (https://www.transifex.com/open-contracting-partnership-1/teams/112300/es/)
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 2020-04-24 2020-11-04 Un tratado, como el Agreement on Government Procurement (GPA), puede requerir que un miembro indique que un proceso de contratación está cubierto por el. El campo `tender.coveredBy` debería utilizarse para cumplir con dichos requisitos. Agregar las propiedades `minProperties`, `minItems` y/o `minLength`. Agregar guía acerca de la creación de nuevos códigos para la lista de códigos `coveredBy`. Agregar este código a la lista `tender.coveredBy`. Registro de cambios Concatenar el o los código(s) al acrónimo del tratado, separando cada parte con un guión (por ejemplo "CA-NT-BPI"). Cubierto por Documentar el nuevo código (ver [Extending open codelists](https://standard.open-contracting.org/latest/en/schema/codelists/)). Ejemplo Guía Si el tratado tiene un alcance nacional o subnacional, elegir un código de país relevante [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) (por ejemplo "CA" para Canadá). Si el tratado tiene un alcance subnacional, elegir un código de región relevante [ISO 3166-2 region code] (https://en.wikipedia.org/wiki/ISO_3166-2) (por ejemplo "NT" para [Northern Territories](https://en.wikipedia.org/wiki/ISO_3166-2:CA#Current_codes), una provincia de Canadá). Si necesita hacer referencia a un tratado que no está en el lista de códigos `coveredBy`: Issues Contexto legal Reporte issues para esta extensión en el [repositorio de extensiones ocds](https://github.com/open-contracting/ocds-extensions/issues), poniendo el nombre de la extensión en el título del issue. La Unión Europea es una [parte](https://www.wto.org/english/tratop_e/gproc_e/memobs_e.htm) al GPA, y como tal su [Directive 2014/24/EU](https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=uriserv:OJ.L_.2014.094.01.0065.01.ENG) (Contratos públicos - que establecen reglas básicas claras) incluye: "Parte C: Información que debe incluirse en los avisos de contrato ... 29. Indicación de si el contrato está cubierto por GPA". El [Revised Agreement on Government Procurement](https://www.wto.org/english/docs_e/legal_e/rev-gpr-94_01_e.htm) (GPA) incluye: "cada aviso de contratación prevista deberá incluir ... l. una indicación que la contratación está cubierta por este Acuerdo". El campo  `tender.coveredBy` es una lista de cadenas, cuyos valores son seleccionados desde la lista de códigos abierta `coveredBy.csv`. Esta extensión agrega un campo para indicar los tratados que cubre el proceso de contratación. Para revelar las leyes o reglamentos que rigen el proceso de contratación y que otorgan autoridad legal a la entidad contratante, utilice la [extensión legalBasis](https://github.com/open-contracting-extensions/ocds_legalBasis_extension) en vez. 