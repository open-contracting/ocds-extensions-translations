��                                #   =  �   a  %     A   )     k  5   �  /   �  	   �     �  I   �     E  0   M  �  ~       H        c  )   v  /   �  �   �  (   �  D   �  ~   �  �  r  �   ,
  <   �
  ,   �
          '     .     5  �  <  &   �  +     �   H  )   �  V   '  $   ~  9   �  4   �          &  L   /     |  :   �  �  �     �  Y   �       ,     G   K  �   �  /   Y  I   �  �   �  �  r  �   S  K   �  1   K     }     �     �     �   Add `ParticipationFee.id` field Add `id` field to example in readme Add `methodOfPayment` codelist from [paymentMethod extension](https://github.com/INAImexico/ocds_paymentMethod_extension/blob/master/codelists/paymentMethod.csv) Add description to `ParticipationFee` Add participationFeeType.csv codelist for `ParticipationFee.type` Add tests and tidy code Add title and description to `ParticipationFee.value` Allow `ParticipationFee.description` to be null Changelog Context Disallow `ParticipationFee.type` from having null in its array of strings Example Fix description of `ParticipationFee.type` field In some cases, a fee can be levied for 'official copies' of procurement documents (although copies can also be available freely online), and bidders might be required to prove that they have paid for an official copy of the documents as part of their submission. In this case, the fee should be modelled as a **submission** fee, as submission is only possible when this document access fee has been paid. Issues Merge and reconcile field and code descriptions with schema and codelist Participation fees Remove indication of fields as "optional" Remove type information from field descriptions Report issues for this extension in the [ocds-extensions repository](https://github.com/open-contracting/ocds-extensions/issues), putting the extension's name in the issue's title. Review normative and non-normative words The `id` field will be required in future versions of the extension. The following JSON snippet models a contracting process where fees are applied to access bidding documents and to submit bids: There are sometimes costs involved in accessing bidding documents relating to a contracting process, or in otherwise participating in a contracting process. Potential bidders want to know about such fees. Procurement monitors might also want to ensure that participation fees are within legal parameters (often set as a fixed maximum value, or as a percentage of the total contract value) or to monitor how participation fees are being used. This extension adds a participation fees array to the tender object, to disclose any participation fees for the contracting process. Update `mergeStrategy` property to `wholeListMerge` property Update extension.json for Extension Explorer Usage notes v1.1.3 v1.1.4 v1.1.5 Project-Id-Version:  Python
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2022-03-07 18:41-0300
PO-Revision-Date: 2020-08-20 21:03+0000
Last-Translator: James McKinney, 2021
Language: es
Language-Team: Spanish (https://www.transifex.com/open-contracting-partnership-1/teams/112300/es/)
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 Agregar el campo `ParticipationFee.id` Añadir el campo  `id` al ejemplo en readme Añadir la lista de código `methodOfPayment`  de la [extensión paymentMethod] (https://github.com/INAImexico/ocds_paymentMethod_extension/blob/master/codelists/paymentMethod.csv) Agregar descripción a `ParticipationFee` Agregar la lista de códigos de participaciónFeeType.csv para `ParticipationFee.type` Agregar pruebas y ordenar el código Agregar título y descripción a `ParticipationFee.value` Permitir que `ParticipationFee.description` sea null Registro de cambios Contexto No permitir que `ParticipationFee.type` tenga null en su conjunto de strings Ejemplo Corregir la descripción del campo `ParticipationFee.type` En algunos casos, se puede cobrar una cuota por las "copias oficiales" de los documentos de adquisición (aunque también se pueden obtener copias en línea de forma gratuita) y los licitadores deben probar que han pagado una copia oficial de los documentos como parte de su presentación. En ese caso, las tarifas deben de modelarse como una tarifa de **envío de documentos**, ya que solo se puede enviar los documentos una vez que la tarifa de acceso a los documentos se ha pagado. Issues Combinar y conciliar descripciones de campos y códigos con esquemas y listas de códigos Cuotas de participación Quitar la indicación de campos "opcionales" Quitar la información sobre el tipo de las descripciones de los campos Reporte issues para esta extensión en el [repositorio de extensiones ocds](https://github.com/open-contracting/ocds-extensions/issues), poniendo el nombre de la extensión en el título del issue. Revisar las palabras normativas y no-normativas El campo `id` se va a requerir en las futuras versiones de la extensión. El siguiente fragmento de JSON modela un proceso de contratación donde las tarifas son aplicables  al acceso a documentos y para la presentación de ofertas: Algunas veces hay costos asociados con el acceso a documentos de licitaciones relacionados al proceso de contratación. Los licitadores potenciales quieren saber sobre esos costos. Los monitores de adquisiciones también deben de asegurar que los costos de participación estén dentro de los parámetros legales (generalmente se establecen con un valor fijo máximo, o como un porcentaje del valor total del contrato) o para monitorear como se usan las tarifas de participación. Esta extensión añade una matriz de los costos de participación al objeto de licitación, para revelar cualquier costo de participación en el proceso de contrataciones. Actualizar la propiedad `mergeStrategy` para la propiedad `wholeListMerge`  Añadir extension.json para el Extension Explorer Notas de uso v1.1.3 v1.1.4 v1.1.5 