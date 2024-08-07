��          �               \  
   ]  
   h  
   s  
   ~  >   �  5   �  	   �  A        J     R     Y  �   i  (     *   G  >   r  �   �  �   s  T    {   q  �  �  
   �  
   �  
   �  
   �  D   �  @   >	     	  H   �	     �	     �	     �	  �   �	  /   �
  1   �
  D   %  �   j  �   H  l     |   m   2018-12-21 2019-03-20 2020-04-24 2020-06-04 Add `minProperties`, `minItems` and/or `minLength` properties. Additional Contact Points and Contact Point Languages Changelog Clarify use of language codes on `ContactPoint.availableLanguage` Example Issues Modelling notes Report issues for this extension in the [ocds-extensions repository](https://github.com/open-contracting/ocds-extensions/issues), putting the extension's name in the issue's title. Review normative and non-normative words Set `"uniqueItems": true` on array fields. Set `wholeListMerge` on `Organization.additionalContactPoints` There are some cases where it is important to list multiple contact points for an organization, particularly in cases where each contact point deals with enquiries in particular languages only. This extension adds an array of `additionalContactPoints` to the `Organization` object, and introduces an `availableLanguage` array of language codes to `ContactPoint`. When this extension is used, publishers should include a **primary contact point** for the `contactPoint` object, on the basis that many applications will not be aware of the `additionalContactPoints` array. However, if a primary contact point can't be determined, all contact points may be disclosed in the `additionalContactPoints` array. `availableLanguage` is singular, although it is an array, to align with [Schema.org](https://schema.org/availableLanguage). Project-Id-Version:  Python
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2024-05-30 00:39-0400
PO-Revision-Date: 2019-03-14 18:30+0000
Last-Translator: James McKinney, 2024
Language: es
Language-Team: Spanish (https://app.transifex.com/open-contracting-partnership-1/teams/112300/es/)
Plural-Forms: nplurals=3; plural=n == 1 ? 0 : n != 0 && n % 1000000 == 0 ? 1 : 2
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 2018-12-21 2019-03-20 2020-04-24 2020-06-04 Agregar las propiedades `minProperties`, `minItems` y/o `minLength`. Puntos de Contacto Adicionales y Lenguajes del Punto de Contacto Registro de cambios Aclarar el uso de códigos de idioma en `ContactPoint.availableLanguage` Ejemplo Issues Notas de modelado Reporte issues para esta extensión en el [repositorio de extensiones ocds](https://github.com/open-contracting/ocds-extensions/issues), poniendo el nombre de la extensión en el título del issue. Revisar las palabras normativas y no-normativas Establece `"uniqueItems": true` en campos matriz. Colocar  `wholeListMerge` en `Organization.additionalContactPoints`. Hay algunos casos en los que es importante enumerar varios puntos de contacto para una organización, especialmente en los casos en los que cada punto de contacto se ocupa únicamente de consultas en determinados idiomas. Esta extensión añade una matriz de `additionalContactPoints` al objeto `organization` e introduce una matriz de `availableLanguage` sobre los lenguajes disponibles a `ContactPoint`. Cuando se utiliza esta extensión, los editores deben incluir un **punto de contacto principal** para el objeto `contactPoint`, ya que muchas aplicaciones no conocerán la lista `additionalContactPoints`. Sin embargo, si no se puede determinar un punto de contacto principal, todos los puntos de contacto pueden ser revelados en la lista `additionalContactPoints`. `availableLanguage` es singular, aunque es una lista, para alinearse con [Schema.org](https://schema.org/availableLanguage). 