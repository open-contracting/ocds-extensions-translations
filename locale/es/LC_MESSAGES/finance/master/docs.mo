��                        �  
   �  
     
     
     
   )  
   4  
   ?  >   J  $   �  6   �  X   �  	   >  	   H     R     [  %   m  2  �     �     �  �   �  7   }     �     �  -   �  �     )   �  ^   �  �   ]  �   J  �  	  
   �
  
      
     
     
   !  
   ,  
   7  D   B  +   �  :   �  ]   �     L     `     s     |  .   �  1  �     �       �     ;   �  '   �  +     ;   I  �   �  0   K  w   |    �  �   �   2018-01-29 2018-05-01 2018-05-08 2019-03-20 2020-04-17 2020-04-24 2020-06-04 Add `minProperties`, `minItems` and/or `minLength` properties. Add `planning.budget.finance` field. Add title and description to `Finance.financingParty`. Adds fields to disclose the financing of the whole process and its individual contracts. Changelog Codelists Examples Finance extension Fix description of `financeCategory`. In the European Union, this extension's fields correspond to [eForms BG-611 (Contract EU funds) and BG-61 (EU funds)](https://github.com/eForms/eForms). See [OCDS for the European Union](http://standard.open-contracting.org/profiles/eu/master/en/) for the correspondences to Tenders Electronic Daily (TED). Issues Legal context Make `Finance.id` required and non-nullable to support revision tracking and [list merging](http://standard.open-contracting.org/latest/en/schema/merging/#lists) Make `interestRate` non-nullable (undo earlier change). Make `interestRate` nullable. Procurement process financing Public-private partnership contract financing Report issues for this extension in the [ocds-extensions repository](https://github.com/open-contracting/ocds-extensions/issues), putting the extension's name in the issue's title. Review normative and non-normative words. Set `"uniqueItems": true` on array fields, and add `"minLength": 1` on required string fields. Sometimes, particularly in the case of Public Private Partnerships, contracts are financed using a range of instruments, including loans, grants, share issues and so-on. This information can be updated over the lifetime of the contract. The `financeType.csv` codelist is based on the list on [Page 57 of the World Bank PPP Disclosure Framework](http://pubdocs.worldbank.org/en/143671469558797229/FrameworkPPPDisclosure-071416.pdf#page=57) Project-Id-Version:  Python
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2022-03-07 18:41-0300
PO-Revision-Date: 2019-03-14 18:30+0000
Last-Translator: Dulce Jazmín Areco Maggereger <dulceareco@cds.com.py>, 2021
Language: es
Language-Team: Spanish (https://www.transifex.com/open-contracting-partnership-1/teams/112300/es/)
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 2018-01-29 2018-05-01 2018-05-08 2019-03-20 2020-04-17 2020-04-24 2020-06-04 Agregar las propiedades `minProperties`, `minItems` y/o `minLength`. Agregar el campo `planning.budget.finance`. Agregar título y descripción a `Finance.financingParty`. Agregar campos para revelar la financiación de todo el proceso y sus contratos individuales. Registro de cambios Listas de códigos Ejemplos Extensión de financiamiento Arreglar la descripción de `financeCategory`. En la Union Europea, los campos de esta extensión corresponden [eForms BG-611 (Contract EU funds) y BG-61 (EU funds)](https://github.com/eForms/eForms). Vea [OCDS para la Union Europea](http://standard.open-contracting.org/profiles/eu/master/en/) para lo correspondiente a Tenders Electronic Daily (TED). Issues Contexto legal Hacer `Finance.id` requerido y no nulo para soportar el seguimiento de revisiones y [list merging](http://standard.open-contracting.org/latest/es/schema/merging/#lists) Hacer `interestRate` no nulo (deshacer el cambio anterior). Se permite que `interestRate` sea nulo. Financiamiento del proceso de contratación Financiamiento de contratos de Asociación público-privada Reporte issues para esta extensión en el [repositorio de extensiones ocds](https://github.com/open-contracting/ocds-extensions/issues), poniendo el nombre de la extensión en el título del issue. Revisar las palabras normativas y no normativas. Establecer `"uniqueItems ": true` en los campos matriz y agregar `"minLength": 1` en los campos de cadena obligatorios. A veces, sobre todo en el caso de las asociaciones público-privadas, los contratos se financian con una serie de instrumentos, como préstamos, subvenciones, emisión de acciones, etc. Esta información puede actualizarse a lo largo de la vida del contrato. La lista de códigos `financeType.csv` se basa en la lista de [Página 57 del Marco de divulgación de APP del Banco Mundial](http://pubdocs.worldbank.org/en/143671469558797229/FrameworkPPPDisclosure-071416.pdf#page=57) 