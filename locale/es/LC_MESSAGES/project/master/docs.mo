��          �               �  
   �  
   �  
   �  
   �  
   �  >     R   C  3   �     �  	   �     �  &  �          %  @   -  }   n  Z   �  *   G  6   r  �   �  6   ^     �  D   �  H   �  @   :  >  {  �  �  
   �
  
   �
  
   �
  
   �
  
   �
  D   �
  \   
  :   g     �     �     �  G  �     "     )  Y   2  }   �  b   
  /   m  9   �  �   �  :   �     �  T   �  L   G  @   �  r  �   2017-07-08 2017-12-29 2018-05-03 2020-04-16 2020-04-24 Add `minProperties`, `minItems` and/or `minLength` properties. Add additional guidance on the use of OCDS fields in the context of this extension Add multilingual support for `Project.title` fields Additional classifications Changelog Example In OCDS, project information is nested under the [`planning.budget`](https://standard.open-contracting.org/latest/en/schema/reference/#budget) object. However, in some cases, budget management systems and project management systems are separate, and it might be important to separately specify: Issues Project Project locations, with options for gazetteer or point locations Remove guidance related to the `planning.budget` object. See [#701](https://github.com/open-contracting/standard/issues/701). Remove multilingual support for non-existent `Project.source` and `Project.project` fields Remove obsolete `mergeStrategy` properties Remove the repetition of OCDS fields in this extension Report issues for this extension in the [ocds-extensions repository](https://github.com/open-contracting/ocds-extensions/issues), putting the extension's name in the issue's title. Restore `Budget.project` and `Budget.projectID` fields Sector classifications The amount reserved in the budget for a specific contracting process The project the contract relates to, and the total value of that project This extension adds a `project` object to the `planning` object. This is particularly important in cases of Public-Private Partnerships and large infrastructure projects, where users might want to track all the contracting processes related to the large-scale project, and to understand the individual contracts in the context of their contracting process and overall project values. Project-Id-Version:  Python
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-03-05 17:31-0500
PO-Revision-Date: 2019-03-14 18:32+0000
Last-Translator: Natalia Valdez <nataliavaldez@cds.com.py>, 2021
Language: es
Language-Team: Spanish (https://www.transifex.com/open-contracting-partnership-1/teams/112300/es/)
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.0
 2017-07-08 2017-12-29 2018-05-03 2020-04-16 2020-04-24 Agregar las propiedades `minProperties`, `minItems` y/o `minLength`. Agregar guía adicional sobre el uso de los campos de OCDS en el contexto de esta extensión Agregar soporte multilingüe para el campo `Project.title` Clasificaciones adicionales Registro de cambios Ejemplo En OCDS, la información del proyecto está anidada bajo el objeto [`planning.budget`](https://standard.open-contracting.org/latest/es/schema/reference/#budget). Sin embargo, en algunos casos, los sistemas de gestión presupuestaria y de gestión de proyecto están separados, y podría ser importante especificar por separado: Issues Proyecto Ubicaciones del proyecto, con opciones de diccionario geográfico o ubicaciones puntuales Eliminar guía relacionada al objeto `planning.budget`. Ver [#701](https://github.com/open-contracting/standard/issues/701).  Eliminar el soporte multilingüe para los campos inexistentes `Project.source` y `Project.project` Eliminar la propiedad obsoleta `mergeStrategy`. Eliminar la repetición de campos OCDS en esta extensión Reporte issues para esta extensión en el [repositorio de extensiones ocds](https://github.com/open-contracting/ocds-extensions/issues), poniendo el nombre de la extensión en el título del issue. Restaurar los campos `Budget.project` y `Budget.projectID` Clasificaciones de sector La cantidad reservada en el presupuesto para un proceso de contratación específico El proyecto al que se refiere el contrato y el valor total de dicho proyecto Esta extensión agrega un objeto `project` al objeto `planning`. Esto es particularmente importante en casos de alianzas público-privadas y grandes proyectos de infraestructura, donde los usuarios pueden querer hacer un seguimiento de todos los procesos de contratación relacionados con el proyecto a gran escala y comprender los contratos individuales en el contexto de su proceso de contratación y el proyecto en general. valores. 