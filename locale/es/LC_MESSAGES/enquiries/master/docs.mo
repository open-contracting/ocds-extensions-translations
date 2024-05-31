��    #      4              L     M     e  	   �  =   �  	   �     �     �  d   �     N      U  �   v  �   6  $   �  K   �  �   I  (   �  L  '  	   t  �   ~  �   6  v   �  �   0	  �   �	  
   �
  ,   �
     �
  J   �
    &  �   5  /       3     E     L     S  �  Z  $   :  $   _     �  O   �  	   �     �     �  y        {  ,   �  �   �  �   �  '   8  U   `  �   �  /   |  v  �  
   #  �   .  �   �  �   �  �   #  �   �     �  1   �     �  M     A  Z  �   �  .   v  %  �     �     �     �   Add tests and tidy code Allow `Enquiry.date` to be null Changelog Correct name of +partyRole.csv codelist (was +partyRoles.csv) Enquiries Example: Guidance Implementations may vary on the amount of enquiry information they provide, and when it is provided. Issues List codelists in extension.json Make a release with a 'tenderUpdate' release tag when the answers to the questions are provided, updating the earlier enquiries array so each entry now contains both a question and an answer; Make release with a 'tenderUpdate' release tag for every new question or batch of questions received, providing an enquiries array with each of the questions in; Remove Sphinx directives from readme Remove the `+partyRole.csv` codelist, whose codes already exist in OCDS 1.1 Report issues for this extension in the [ocds-extensions repository](https://github.com/open-contracting/ocds-extensions/issues), putting the extension's name in the issue's title. Review normative and non-normative words Some publishers may omit the identity of the question author to protect confidentiality of enquirers, or may anonymize this information (e.g. simply putting the author name as 'Organization 1' or 'Organization 2' so that it is possible to see questions from the same organization, but not to know the identity of that organization.) Structure Supporting documents with clarifications, or a full document containing answers to questions can be included in the `tender.documents` array with a `documentType` of 'clarifications'. The `relatedItem` and `relatedLot` fields are available for use when questions can be asked in relation to a specific lot or item. The enquiries extension can be used to record questions raised during a contracting process, and the answers provided. The extension adds an `enquiries` array to tender, consisting of one or more enquiry objects, each with fields for a question, and an answer. This approach will enable third-party applications to watch for releases that provide answers to questions, and will support procurement monitors in reviewing the way in which questions are being answered. Unreleased Update extension.json for Extension Explorer Use Apache 2.0 License Use `OrganizationReference` instead of `Organization` for `Enquiry.author` We recommend that publishers provide question answers as plain text, or with minimal HTML markup (paragraphs and line-breaks), and that consuming applications parse text appropriately to format it for readability (e.g. replace line-breaks with paragraph breaks in HTML). When a system allows a discussion format, where each answer can be followed by a further clarification question, the `threadID` field can be used to link together multiple entries in the `enquiries` array. Where possible, the recommended approach is to: Where the answers to a question are only available in attached documents, an `answer` value such as 'Consult section N of "%document name%" in the documents section' may be entered to allow analysts of the data to identify that an answer to this question has been provided. v1.1.3 v1.1.4 v1.1.5 Project-Id-Version:  Python
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2024-05-30 00:39-0400
PO-Revision-Date: 2019-03-14 18:31+0000
Last-Translator: James McKinney, 2024
Language: es
Language-Team: Spanish (https://app.transifex.com/open-contracting-partnership-1/teams/112300/es/)
Plural-Forms: nplurals=3; plural=n == 1 ? 0 : n != 0 && n % 1000000 == 0 ? 1 : 2
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 Agregar pruebas y ordenar el código Permitir que `Enquiry.date` sea null Registro de cambios Corrige el nombre de la lista de código + partyRole.csv (era + partyRoles.csv) Consultas Ejemplo: Guía Las implementaciones pueden variar en la cantidad de información de consultas que proporcionan y cuándo se proporciona. Issues Enlista listas de códigos en extension.json Haga una entrega con una etiqueta de `tenderUpdate` cuando se proporcionen las respuestas a las preguntas, actualizando la matriz de consultas anteriores para que cada entrada contenga una pregunta y una respuesta; Haga una entrega con una etiqueta `tenderUpdate` para cada nueva pregunta o lote de preguntas recibidas, proporcionando una matriz de preguntas con cada una de las preguntas en; Quita las directrices Sphinx del readme Eliminar la lista de códigos `+partyRole.csv`, cuyos códigos ya existen en OCDS 1.1 Reporte issues para esta extensión en el [repositorio de extensiones ocds](https://github.com/open-contracting/ocds-extensions/issues), poniendo el nombre de la extensión en el título del issue. Revisar las palabras normativas y no-normativas Algunos editores pueden omitir la identidad del autor de la pregunta para proteger la confidencialidad de los solicitantes, o pueden anonimizar esta información (por ejemplo, simplemente poniendo el nombre del autor como "Organización 1" u "Organización 2" para que sea posible ver preguntas de la misma organización , Pero no conocer la identidad de esa organización.) Estructura Los documentos de soporte con aclaraciones o un documento completo que contenga respuestas a preguntas pueden incluirse en la matriz `tender/documents` con un `documentType` de 'clarifications'. Los campos `relatedItem` y `relatedLot` están disponibles para su uso cuando se pueden hacer preguntas en relación con un lote o artículo específico. La extensión sobre consultas puede usarse para registrar las preguntas planteadas durante un proceso de contratación y las respuestas proporcionadas. La extensión agrega una lista de `enquiries` a la licitación, la cual consiste en uno o más objetos de consultas, cada uno con campos para una pregunta y una respuesta. Este enfoque permitirá a las aplicaciones de terceros vigilar las entregas que proporcionen respuestas a las preguntas y apoyará en el monitoreo de adquisiciones en la revisión de la forma en que se responden las preguntas. No entregado Añadir extension.json para el Extension Explorer Usa la licencia Apache 2.0 Usar `OrganizationReference` en lugar de` Organization` para `Enquiry.author` Recomendamos que los publicadores proporcionen respuestas como texto sin formato o con un marcado HTML mínimo (párrafos y saltos de línea) y que las aplicaciones que consumen analicen el texto apropiadamente para darle formato para legibilidad (por ejemplo, reemplazar saltos de línea con saltos de párrafo en HTML). Cuando un sistema permite un formato de discusión, en el que cada respuesta puede ir seguida de otra pregunta de aclaración, el campo `threadID` puede utilizarse para enlazar varias entradas en la lista `enquiries`. Cuando sea posible, el enfoque recomendado es: Si las respuestas a una pregunta sólo están disponibles en los documentos adjuntos, se puede ingresar un valor `answer` como "Consultar la sección N de (nombre del documento) en la sección de documentos" para permitir que los usuarios identifiquen que se ha dado respuesta a esta pregunta. v1.1.3 v1.1.4 v1.1.5 