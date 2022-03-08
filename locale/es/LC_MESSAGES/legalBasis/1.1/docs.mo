��          �               L  
   M  
   X  >   c  Y   �  �   �  	   �     �     �  $  �  �       �     �     �  �       �    �    �  �  �	  �  �  
   `  
   k  D   v  o   �  �   +          %     -  +  3  �  _     I  
   P     [  �   j  ,  0     ]    ~  �  �   2020-04-24 2021-01-19 Add `minProperties`, `minItems` and/or `minLength` properties. Add guidance on the choice of the classification scheme for country-specific legal basis. Adds fields to the tender object to describe the legal basis of the contracting process – that is, the laws and regulations that govern the contracting process and that grant legal authority to the procuring entity. Changelog Example Guidance If the legal basis is country-specific, it is recommended to prefix the [ISO 3166-1 alpha-2 code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) to the classification scheme: for example, "HN-ONCAE" for the Oficina Normativa de Contratación y Adquisiciones del Estado (ONCAE) in Honduras. In the European Union, this extension's fields correspond to [eForms BT-01 (Procedure Legal Basis), BT-09 (Cross Border Law)](https://github.com/eForms/eForms) and [Article 39, paragraph 5 of Directive 2014/24/EU](https://eur-lex.europa.eu/legal-content/EN/TXT/?qid=1585836130257&uri=CELEX:32014L0024#d1e4669-65-1).See [OCDS for the European Union](http://standard.open-contracting.org/profiles/eu/master/en/) for the correspondences to Tenders Electronic Daily (TED). Issues Legal basis Legal context Report issues for this extension in the [ocds-extensions repository](https://github.com/open-contracting/ocds-extensions/issues), putting the extension's name in the issue's title. The `tender.legalBasis` field is a `Classification` object. Example classification schemes are [LEX](https://en.wikipedia.org/wiki/Lex_(URN)), [CELEX](https://eur-lex.europa.eu/content/help/faq/intro.html#help8) and [ELI](https://en.wikipedia.org/wiki/European_Legislation_Identifier). This extension was originally discussed as part of the [OCDS for EU profile](https://github.com/open-contracting-extensions/european-union/issues) and in [pull requests](https://github.com/open-contracting-extensions/ocds_contractTerms_extension/pulls?q=is%3Apr+is%3Aclosed). To identify the procedure used, whether by formal name or by legal citation, use the [`tender.procurementMethodDetails`](https://standard.open-contracting.org/latest/en/schema/reference/#release-schema.json,/definitions/Tender,procurementMethodDetails) field. To indicate whether the contracting process is covered by a treaty, like the Agreement on Government Procurement (GPA), use the [coveredBy](https://extensions.open-contracting.org/en/extensions/coveredBy/) extension. To indicate whether the contracting process is accelerated, involves framework agreements, or has other modalities, [browse the extensions](https://extensions.open-contracting.org/). Project-Id-Version:  Python
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-07-31 13:34-0400
PO-Revision-Date: 2020-08-20 20:52+0000
Last-Translator: Maria Esther Cervantes <mcervantes@cds.com.py>, 2021
Language: es
Language-Team: Spanish (https://www.transifex.com/open-contracting-partnership-1/teams/112300/es/)
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 2020-04-24 2021-01-19 Agregar las propiedades `minProperties`, `minItems` y/o `minLength`. Agregar orientación sobre la elección del esquema de clasificación para la base legal específica del país. Agregar campos al objeto de licitación para describir la base legal del proceso de contratación – es decir, las leyes y reglamentos que rigen el proceso de contratación y que otorgan autoridad legal a la entidad contratante. Registro de cambios Ejemplo Guía Si la base legal es específica de un país, se recomienda anteponer el prefijo [ISO 3166-1 alpha-2 code](https://es.wikipedia.org/wiki/ISO_3166-1_alfa-2) al esquema de clasificación: por ejemplo, "HN-ONCAE" para la Oficina Normativa de Contratación y Adquisiciones del Estado (ONCAE) en Honduras. En la Unión Europea, los campos de esta extensión corresponden a [eForms BT-01 (Procedimiento de Base Legal), BT-09 (Ley transfronteriza)](https://github.com/eForms/eForms) y [Artículo 39, párrafo 5 de la Directiva 2014/24/EU](https://eur-lex.europa.eu/legal-content/EN/TXT/?qid=1585836130257&uri=CELEX:32014L0024#d1e4669-65-1). Ver [OCDS para la Unión Europea](http://standard.open-contracting.org/profiles/eu/master/es/) para ver lo correspondiente a Tenders Electronic Daily (TED). Issues Base legal Contexto legal Reporte issues para esta extensión en el [repositorio de extensiones ocds](https://github.com/open-contracting/ocds-extensions/issues), poniendo el nombre de la extensión en el título del issue. El campo `tender.legalBasis` es un objeto de `Classification`. Ejemplos de esquemas de clasificación son [LEX](https://en.wikipedia.org/wiki/Lex_(URN)), [CELEX](https://eur-lex.europa.eu/content/help/faq/intro.html#help8) y [ELI] (https://es.wikipedia.org/wiki/Identificador_Europeo_de_Legislación) Esta extensión se discutió originalmente como parte del [OCDS para el perfil de la UE] (https://github.com/open-contracting-extensions/european-union/issues), y en [pull resquests](https://github.com/open-contracting-extensions/ocds_contractTerms_extension/pulls?q=is%3Apr+is%3Aclosed). Para identificar el procedimiento utilizado, ya sea por nombre formal o por citación legal, utilice el campo [`tender.procurementMethodDetails`](https://standard.open-contracting.org/latest/es/schema/reference/#release-schema.json,/definitions/Tender,procurementMethodDetails). Para indicar si el proceso de contratación está cubierto por un tratado, como el Agreement on Government Procurement (GPA), usar la extensión [coveredBy](https://extensions.open-contracting.org/es/extensions/coveredBy/). Para indicar si el proceso de contratación es acelerado, involucra acuerdos marco o tiene otras modalidades, [echar un vistazo a las extensiones](https://extensions.open-contracting.org/). 