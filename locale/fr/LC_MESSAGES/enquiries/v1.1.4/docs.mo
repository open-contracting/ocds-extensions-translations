��          �               �     �     �  	     =     	   M     W  d   `     �      �  �   �  �   �  �   O  L    	   Q  �   [  �     v   �  �     �   �     m	     |	  J   �	    �	  /   �
         /  �  6  #   �  3        E  I   _     �  	   �  �   �  
   I  +   T  �   �  �   l  �      �  �  	   q  �   {  �   R  �   �  �   �  �   z     \     s  S   �  l  �  7   R  =  �     �   Add tests and tidy code Allow `Enquiry.date` to be null Changelog Correct name of +partyRole.csv codelist (was +partyRoles.csv) Enquiries Example: Implementations may vary on the amount of enquiry information they provide, and when it is provided. Issues List codelists in extension.json Make a release with a `tenderUpdate` release tag when the answers to the questions are provided, updating the earlier enquiries array so each entry now contains both a question and an answer; Make release with a `tenderUpdate` release tag for every new question or batch of questions received, providing an enquiries array with each of the questions in; Report issues for this extension in the [ocds-extensions repository](https://github.com/open-contracting/ocds-extensions/issues), putting the extension's name in the issue's title. Some publishers may omit the identity of the question author to protect confidentiality of enquirers, or may anonymize this information (e.g. simply putting the author name as 'Organization 1' or 'Organization 2' so that it is possible to see questions from the same organization, but not to know the identity of that organization.) Structure Supporting documents with clarifications, or a full document containing answers to questions can be included in the `tender/documents` array with a `documentType` of 'clarifications'. The `relatedItem` and `relatedLot` properties are available for use when questions can be asked in relation to a specific lot or item. The enquiries extension can be used to record questions raised during a contracting process, and the answers provided. The extension adds an `enquiries` array to tender, consisting of one or more enquiry objects, each with fields for a question, and an answer. This approach will enable third-party applications to watch for releases that provide answers to questions, and will support procurement monitors in reviewing the way in which questions are being answered. Usage guidance Use Apache 2.0 License Use `OrganizationReference` instead of `Organization` for `Enquiry.author` We recommend that publishers provide question answers as plain text, or with minimal HTML markup (paragraphs and line-breaks), and that consuming applications parse text appropriately to format it for readability (e.g. replace line-breaks with paragraph breaks in HTML). Where possible, the recommended approach is to: Where the answers to a question are only available in attached documents, an `answer` value such as 'Consult section N of "%document name%" in the documents section' may be entered to allow analysts of the data to identify that an answer to this question has been provided. v1.1.3 Project-Id-Version:  Python
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-03-05 17:31-0500
PO-Revision-Date: 2019-03-14 18:31+0000
Last-Translator: James McKinney, 2019
Language: fr
Language-Team: French (https://www.transifex.com/open-contracting-partnership-1/teams/112300/fr/)
Plural-Forms: nplurals=2; plural=(n > 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.0
 Ajoute des tests et nettoie le code Autorise `Enquiry.date` à prendre la valeur `null` Journal des modifications Corrige le nom de la nomenclature +partyRole.csv (était +partyRoles.csv) Echanges Exemple : Les mises en application de cette extension peuvent faire varier la quantité d'information qui sont fournies et quand elles sont fournies.  Problèmes Liste les nomenclatures dans extension.json Produire une instance avec un tag `tenderUpdate` dès que les questions obtiennent une réponse afin de mettre à jour les précédentes listes sur les échanges pour que chaque entrée comprenne à la fois la question et la réponse ; Produire une instance avec un tag `tenderUpdate` pour chaque nouvelle question ou ensemble de questions reçu fournissant une liste d'échanges qui comprend toutes les questions ; Signalez les problèmes concernant cette extension dans le [répertoire ocds](https://github.com/open-contracting/ocds-extensions/issues), en mettant le nom de l'extension dans le titre du signalement. Certains producteurs de données peuvent enlever l'identité de l'auteur de la question pour protéger la confidentialité des candidats ou peuvent anonymiser cette information (par exemple en indiquant "organisation 1" ou "organisation 2" comme nom d'auteur pour qu'il soit possible de voir les questions d'une seule organisation mais pas de connaître l'identité de cette organisation).  Structure Les documents qui apportent des clarifications ou un document entier comprenant les réponses aux questions peut être inclus dans la liste `tenders/documents` avec un champ `documentType` de type "clarifications". Les propriétés `relatedItem`et `relatedLot` peuvent être utilisées quand des questions peuvent être posées à propos d'un lot ou d'un objet spécifique. L'extension sur les échanges peut être utilisée pour enregistrer les questions soulevées pendant le processus de passation de marché et les réponses qui leurs sont fournies.  Cette extension ajoute une liste `enquiries` au composant de l'appel d'offres (`tender`) comprenant un ou plusieurs objets d'échange, chacun comprenant des champs pour la question et d'autres pour la réponse.  Cette approche peut permettre à des applications crées par des tiers de détecter les réponses aux questions et de permettre de surveiller la passation de marché pour comprendre quelles questions obtiennent des réponses. Conseils d'utilisation Utilise la licence Apache 2.0 Utilise `OrganizationReference` à la place d' `Organization` pour `Enquiry.author` Nous recommandons aux producteurs de données de fournir les réponses en texte brut ou avec un minimum de balises HTML (paragraphes et sauts de ligne) et en s'appuyant sur des applications qui parcourent (*parse*) le texte de manière appropriée pour que le texte soit lisible (par exemple, en replaçant les sauts de ligne avec des sauts de paragraphe en HTML). Dès que possible, l'approche conseillée consiste à : Là où les réponses à une question sont seulement disponibles dans les documents attachés, une valeur `answer` telle que "Consult section N of "%document name%" in the documents section" peut être entrée pour permettre aux analystes des données d'identifier que la réponse à la question a bien été fournie. v1.1.3 