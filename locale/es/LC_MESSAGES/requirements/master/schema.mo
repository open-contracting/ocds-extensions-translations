��    C      4              L  S   M  _   �  m     j   o  4   �  Z     �   j  Q   .  T   �  T   �  E   *  e   p     �  &   �  �   	  �   �	  �   e
     I  	   R     \     h  
   w  �   �               !     (     5     I     `     q     }     �     �     �     �     �     �     
           6     H     U     q  �   x  A   (  H   j  >   �    �    �        )  ;   7  �   s  A     %   H  p   n     �  &   �  r     b     I   �  b   ,     �  �   �  �   R  �  +  ]   !  c     v   �  u   Z  <   �  _     �   m  ]   I  W   �  Z   �  :   Z  h   �     �  ,     �   I  �      �   �   	   �!     �!     �!     �!     �!  �   �!     {"     �"     �"     �"     �"  !   �"     �"  	   #     #     #     4#     N#     i#     }#     �#     �#     �#     �#  
   �#  #   �#     "$  �   )$  J   �$  8   6%  B   o%  #  �%  6  �&  1  (  )  ?)  8   i*  �   �*  8   2+  &   k+  n   �+     ,  8   	,  �   B,  o   �,  [   F-  o   �-     .  �   .  �   �.   A criterion on which either bidders or items will be judged, evaluated or assessed. A description of this criterion. Structured information should be provided in its other fields. A description of this requirement group. Structured information should be provided in the requirements array. A description of this requirement response. Structured information should be provided in its other fields. A free text description for this atomic requirement. A list of criteria on which either bidders or items will be judged, evaluated or assessed. A list of requirement groups for this Criterion. A criterion is satisfied by one or more requirement groups being met. A requirement group is met when all requirements in the group are satisfied. A list of the detailed responses of this award to the requirements of the tender. A list of the detailed responses of this contract to the requirements of the tender. A list requirements which must all be satisfied for the requirement group to be met. A regular expression against which validate the requirement response. A requirement group is a set of requirements that must be fulfilled together to validate a criterion. A title for this criterion. A title for this requirement response. Adds a criteria section to the tender object and responses sections to bids, awards and contracts. Based on the EU's Core Criterion and Core Evidence Vocabulary (CCCEV). An assertion that responds to a single requirement. A requirement response provides the value for the requirement and may provide the period to which it applies. An atomic requirement. Requirements can specify the expected value that the response has to contain, or a range of threshold values within which the response has to fit in. The requirement may apply to a certain period of time. Criteria Criterion Description Expected value Identifier If the requirements extension is also in use, the detailed responses of this bid to the tender requirements can be specified here. Maximum value Minimum value Period Related item Related requirement Related schema element Related tenderer Requirement Requirement ID Requirement Response Requirement datatype Requirement description Requirement group Requirement groups Requirement identifier Requirement reference Requirement responses Requirement title Requirements Response validation pattern Source Source of response to the requirements specified in the criterion. For example, responses might be submitted by tenderers or by an assessment committee at the procuringEntity. The data type in which the requirement response must be provided. The id and title of the requirement which the response is applicable to. The id of the requirement which the response is applicable to. The identifier for this criterion. It must be unique and cannot change within the Open Contracting Process it is part of (defined by a single ocid). See the [identifier guidance](http://standard.open-contracting.org/latest/en/schema/identifiers/) for further details. The identifier for this requirement group. It must be unique and cannot change within the Open Contracting Process it is part of (defined by a single ocid). See the [identifier guidance](http://standard.open-contracting.org/latest/en/schema/identifiers/) for further details. The identifier for this requirement response. It must be unique and cannot change within the Open Contracting Process it is part of (defined by a single ocid). See the [identifier guidance](http://standard.open-contracting.org/latest/en/schema/identifiers/) for further details. The identifier for this requirement. It must be unique and cannot change within the Open Contracting Process it is part of (defined by a single ocid). See the [identifier guidance](http://standard.open-contracting.org/latest/en/schema/identifiers/) for further details. The period which the requirement response is applicable to. The schema element that the criterion judges, evaluates or assesses. For example, the criterion might be defined against items or against bidders. The title of the requirement which the response is applicable to. The title of this atomic requirement. The value of this requirement response. The value must be of the type defined in the requirement.dataType field. Title Used to cross reference a requirement. Used to specify a particular period the requirement applies to, for example the bidder's turnover in a given year. Used to state the lower bound of the requirement when the response must be within a certain range. Used to state the requirement when the response must be particular value. Used to state the upper bound of the requirement when the response must be within a certain range. Value Where relatesTo = "item" this field must be populated with the id of the item in this tender section which the criterion relates to. Where relatesTo <> "item" this field should be omitted. Where this requirement response relates to a tenderer and is provided by the buyer or procuring entity this field should be used to reference the entry in the parties section for the tenderer the response relates to. Project-Id-Version: PROJECT VERSION
Report-Msgid-Bugs-To: EMAIL@ADDRESS
POT-Creation-Date: 2022-03-07 18:41-0300
PO-Revision-Date: 2019-03-14 18:29+0000
Last-Translator: Dulce Jazmín Areco Maggereger <dulceareco@cds.com.py>, 2021
Language: es
Language-Team: Spanish (https://www.transifex.com/open-contracting-partnership-1/teams/112300/es/)
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 Un criterio sobre el cual se juzgarán, evaluarán o valorarán los licitadores o artículos. Una descripción de este criterio. La información estructurada se debe de dar en los otros campos. Una descripción de este grupo de requisitos. Se debe de proveer información estructurada en la  lista de requisitos. Una descripción de este grupo de requisitos. Se debe de proveer información estructurada en la lista de requisitos. Una descripción de texto libre para este requisito atómico Una lista de criterios en la cual se evaluarán o valorarán los licitadores o los artículos.  Una lista de grupos de requisitos para este Criterio. Un criterio se satisface cuando uno o más grupos de requisitos se cumplen. Un grupo de requisitos se cumple cuando todos los requerimientos del grupo se satisfacen. Una lista detallada de las respuestas a esta adjudicación a los requisitos de la licitación Una lista detallada de respuestas a este contrato con los requisitos de la licitación. Una lista de requisitos que deben ser cumplidos para que el grupo de requisitos se cumpla. Una expresión regular para validar la respuesta requerida Un grupo de requisitos es un conjunto de requisitos que deben cumplirse juntos para validar un criterio. Un título para este criterio Un título para la respuesta del requisito.  Agrega una sección de criterios a las secciones de objeto de licitación y respuestas a ofertas, adjudicaciones y contratos. Basado en el criterio principal y el vocabulario de evidencia central (CCCEV) de la UE. Una declaración que responde a un sólo requisito. Una respuesta de requisito provee el valor del requisito y puede proveer el periodo al cual aplica. Un requisito atómico. Los requisitos pueden especificar el valor esperado que la respuesta debe contener, o un rango de valores tope en los que la respuesta debe de entrar. El requisito puede aplicar a un período específico de tiempo. Criterios Criterio Descripción Valor esperado Identificador Si también se usa la extensión de requisitos, aquí se pueden especificar las respuestas detalladas de esta oferta a los requisitos de la licitación. Valor máximo Valor mínimo Periodo Artículo relacionado Requisito relacionado Elementos relacionados al esquema Licitador relacionado Requisito ID de requisito Respuesta de Requisito Tipo de dato de Requisito Descripción del requisito Grupo de requisitos Grupos de requisitos Identificador del requisito Referencia de requisito Respuestas de requisito Título de requisito Requisitos Patrón de validación de respuesta Fuente Origen de la respuesta a los requisitos especificados en el criterio, por ejemplo que las respuestas deben de enviarse por los licitadores o por un comité de evaluación en la procuringEntity. El tipo de dato en el que se debe proporcionar la respuesta del requisito. El id y título que aplica a la respuesta de requisitos. El identificador del requerimiento al cual se aplica la respuesta. El identificador para este criterio. Debe de ser único y no puede cambiar dentro del Proceso de Contratación Abierta del cual es parte (definido por un sólo ocid). Ver la [guía de identificadores](http://standard.open-contracting.org/latest/en/schema/identifiers/) para mayores detalles. El identificador para este grupo de requisitos. Debe ser único y no puede cambiar dentro del Proceso de Contratación Abierta del que forma parte (definido por un solo ocid). Consulte la [guía de identificadores](http://standard.open-contracting.org/latest/en/schema/identifiers/) para obtener más detalles. El identificador para este requisito de respuesta. Debe de ser único y no puede cambiar dentro del Proceso de Contratación Abierta del cual es parte (definido por un sólo ocid). Ver la [guía de identificadores](http://standard.open-contracting.org/latest/en/schema/identifiers/) para mayores detalles. El identificador de este requisito. Debe ser único y no puede cambiar dentro del Proceso de Contratación Abierta de que forma parte (definido por un solo ocid). Consulte la [guía de identificadores](http://standard.open-contracting.org/latest/en/schema/identifiers/) para obtener más detalles. El período en que se aplica la respuesta de requisitos. El elemento del esquema que el criterio juzga, evalúa o valora. Por ejemplo, criterio se puede definir contra artículos o contra licitadores. El título del requisito al cual se aplica la respuesta. El título de este requisito atómico. El valor de esta respuesta de requisito. El valor debe ser el tipo que se define en el campo requirement.data. Título Usado para hacer una referencia cruzada de un requisito. Usado para especificar un período particular al que el requisito aplica, por ejemplo, el volumen de negocio del licitante en un año específico.  Se usa para indicar el límite inferior del requisito cuando la respuesta debe estar dentro de un cierto rango. Usado para que se establezca el requisito cuando la respuesta debe ser un valor particular. Se usa para indicar el límite superior del requisito cuando la respuesta debe estar dentro de un cierto rango. Valor Donde relatesTo = "item" este campo debe de ser llenado con el id del artículo en esta sección de la licitación con el que se relaciona el criterio. Se debe omitir el campo cuando  relatesTo <> "item". Donde esta respuesta de requisito se relaciona con un licitador y es provista por el comprador o la entidad compradora, este campo debe usarse para referenciar la entrada en la sección de partes para el licitador al cual se relaciona la respuesta. 