��          �               �  �   �  E   �  "   �     �  S       W     e  �   q     [     n     �  
   �     �  l  �  x  +    �  �   �  �   8  �  #  �     �   �     �     �  �  �  �   �  Q   �  %   �     $  w  C     �     �  ?  �           4  "   T     w     �  �  �       (  #!  �   L"    �"  ,  �#  �   +&  �   '     �'     �'   A short free text description of this financial progress breakdown. This may be displayed in user interfaces to help users interpret this entry. This may be automatically generated from structured data or may be manually entered. An identifier for this particular financial progress breakdown entry. Budget and spending classification Budget classifications Budget classifications must be provided as a set of key-value pairs, where the key is a dimension (or the label of a dimension) used in budget classification, and the value is the value of that dimension for this contracting process or specific contract (depending on the point within an OCDS file at which the classification is provided). Budget period Description Extends budget breakdown and contract implementation to allow publication of detailed budget allocations and execution for a contracting process, using classifications that can be mapped to separately published budget and spend data. Financial progress Financial progress breakdown Fiscal Breakdown Field Mapping Identifier Measures Measures must be provided as a set of key-value pairs, where the key should be the name of the measure used within a related Fiscal Data Package dataset or other budget and spending dataset. The value is the value of this measure when last updated, and must be provided as a number in the same default currency as any aggregate reported budget or spending figures. OCDS defers to the Fiscal Data Package to provide detailed definitions of budget classifications and measures, including providing labels for each property and describing the relationship between each classification or measure and established fiscal concepts. A Fiscal Data Package may also contain budget and spend data, using the same classifications and measures as the OCDS file, and thereby allowing comparison between 'contract level' budget allocations and spend, and allocations and spending at the level of a particular budget line. When used, the fiscalBreakdownFieldMapping field must contain a dereferenceable URI pointing to a [Fiscal Data Package (FDP)](https://frictionlessdata.io/specs/fiscal-data-package/) datapackage.json file (version 1.0 or above), or a file that, when decompressed, contains a datapackage.json file. The URI should include a fragment identifier with the `name` value of a particular resource within that file in order to identify the particular budget or spending data file to which contract level budget allocations and spending measures can be compared, and the particular column definitions to use. The referenced resource should contain `field` or `extraField` properties with their `name` property matching each of the budget/financial progress breakdown `classification` or `measure` properties in the OCDS data, and at minimum providing labels for these. The financial progress section allows high-level and detailed information on amounts committed or spent to date for this particular contract. This may be used alongside the transactions section, which allows for details of each individual payment to be recorded. The period covered by this financial progress breakdown entry. This information may also be duplicated using classifications where relevant. The total spend on this contract at the date of last update. Note that the exact fiscal measure this number represents may vary between data publishers (e.g. amount invoiced vs. amount transferred to the bank account of the supplier). This measures section reports aggregated financial progress figures for this contract (i.e. without breakdown by budget classifications). Measures must be provided as a set of key-value pairs, where the key should be the name of the measure used within a related Fiscal Data Package dataset or other budget and spending dataset. The value is the value of this measure when last updated, and must be provided as a number in the same default currency as any aggregate reported budget or spending figures. This section allows a detailed breakdown of financial progress to be provided, each covering a particular periods, or allocating financial progress against particular funding sources and fiscal classifications. This section contains a breakdown of financial progress, allowing various measures (amount invoiced, amount accrued, amount paid etc.) to be disaggregated by source, period and budget classification Total spend measures Project-Id-Version: PROJECT VERSION
Report-Msgid-Bugs-To: EMAIL@ADDRESS
POT-Creation-Date: 2019-03-20 14:28-0400
PO-Revision-Date: 2019-03-20 18:30+0000
Last-Translator: Maria Esther Cervantes <mariaesther@idatosabiertos.org>, 2019
Language: es
Language-Team: Spanish (https://www.transifex.com/OpenDataServices/teams/95084/es/)
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.7.0
 Un texto breve de descripción de este desglose de progreso financiero. Esto puede visualizarse en una interfaz de usuarios que interprete esta entrada. Puede ser generada automáticamente como datos estructurados o pueden ser ingresados manualmente. Un identificador para esta entrada de desglose de progreso financiero particular  Clasificación de presupuesto y gasto Clasificaciones de presupuesto Las clasificaciones de presupuesto deben de darse como un conjunto de pares clave-valor, donde la clave es la dimensión (o el nombre de la dimensión) usada en la clasificación de presupuesto, y el valor es el valor de esa dimensión en el proceso de contrataciones o en el contrato específico (dependiendo del punto en el archivo OCDS en el cual se da la clasificación). Período de Presupuesto Descripción Extiende el desglose de presupuesto y la implementación de contrato para permitir la publicación del detalle de las asignaciones de presupuesto y la ejecución del proceso de contrataciones, utilizando las clasificaciones que pueden mapearse a datos de presupuesto y de gasto que fueron publicados de forma separada.  Progreso financiero Desglose de progreso financiero Mapeo de Campos de Desglose Fiscal Identificador Medidas Las medidas deben de dar un conjunto de pares clave-valor, donde la clave debe ser el nombre de una medida utilizada en la base de datos del Paquete de Datos Fiscales o en otras bases de datos de presupuesto y gasto. El valor es el valor de esta medida en la última actualización, y debe de darse como un número en la misma moneda que en cualquier reporte de presupuesto agregado o valores de gasto. El OCDS se basa en el Paquete de Datos Fiscales que da definiciones detalladas sobre la clasificación de presupuesto y medidas, incluyendo dar etiquetas a cada propiedad y describir la relación entre cada clasificación, medida y conceptos fiscales establecidos. El Paquete de Datos Fiscales también contiene datos de presupuesto y gasto, utilizando las mismas clasificaciones y medidas como el archivo OCDS, permitiendo la comparación entre las asignaciones de presupuesto a nivel contrato y las asignaciones y gastos a nivel de una línea de presupuesto. Cuando se utiliza el campo fiscalBreakdownFieldMapping, debe de contener una URI desreferible que apunte a [Fiscal Data Package (FDP)](https://frictionlessdata.io/specs/fiscal-data-package/) datapackage.json file (version 1.0 or más), o un archivo que, cuando se descomprime, contiene un archivo datapackage.json. La URI debe de incluir un identificador fragmento con el  valor `name` de un recurso particular en el archivo para poder identificar el presupuesto particular o el archivo de gastos al cual las asignaciones de presupuesto a nivel contrato y las medidas de gasto se pueden comprar y las columnas particulares de definición que se pueden usuar. El recurso al que se hace referencia debe contener propiedades `field` or `extraField` con su propiedad `name` emparejada con el desglose de cada progreso de presupuesto o progreso financiero, con las propiedades `classification` or `measure` properties en los datos OCDS y como mínimo dando las etiquetas para este.  La sección de progreso financiero permite publicar información de alto nivel y detallada sobre montos asignados o gastados hasta la fecha para este contrato en particular. Esto puede usarse junto a la sección de transacciones, la cual permite que se registren detalles de cada pago individual. El período cubierto por la entrada de desglose de progreso financiero. Esta información también puede ser duplicada utilizando clasificaciones cuando sea relevante.  El gasto total de este contrato a la fecha de la última actualización. Tenga en cuenta que la medida fiscal exacta que representa este número puede variar dependiendo del publicador de los datos (ej. monto facturado vs monto transferido al banco del proveedor). La sección de medidas reporta valores agregados del progreso financiero para este contrato (ie. sin el desglose de clasificación de presupuesto. Las medidas se deben de dar como un set de pares clave-valor, donde la clave debe ser el nombre de la medida utilizada dentro de una base de datos del Paquete de Datos Fiscales u otra base de datos de presupuesto y gasto. El valor es el valor de esta medida la última vez que fue actualizada y debe de darse como un número en la misma moneda que cualquier reporte agregado de presupuesto o figuras de gasto. Esta sección permite un desglose detallado de cada progreso financiero que se de, cada uno cubriendo períodos particulares, o asignar el progreso financiero a fuentes de financiamiento particulares y clasificaciones fiscales. Esta sección contienen un desglose del progreso financiero, permitiendo que varias medidas (monto facturado, monto acumulado, monto pagado, etc) se desglosen por fuente, período y clasificación de presupuesto Gasto total medidas 