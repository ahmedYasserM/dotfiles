# CSS Selectors

- ### Simple Basic Selectors

  1.  Type Selector: `element`

  2.  ID Selector: `#id`

  3.  Class Selector: `.class`

  4.  Universal Selector: `*`

- ### Attribute Selectors

  1.  `[attribute]`

  2.  `[attribute=value]`

  3.  `[attribute~=value]`

  4.  `[attribute|=value]`

  5.  `[attribute^=value]`

  6.  `[attribute$=value]`

  7.  `[attribute*=value]`

- ### Combinators

  1.  Descendant Combinator: `element1 element2` $\to$ selects any element2 that is inside an element1 even if it is not a direct child.

  2.  Child Combinator: `element1 > element2` $\to$ selects any element2 that is only a direct child of an element1.

  3.  Adjacent Sibling Combinator: `element1 + element2` $\to$ selects any element2 that is the immediate sibling (at the same level not a child or a decendant) of an element1.

  4.  General Sibling Combinator: `element1 ~ element2` $\to$ selects any element2 that is a sibling (at the same level not a child or a decendant) of an element1.
  


---

## ChatGPT

1. Adjacent Sibling Selector `+`:

   1. Selects the element immediately following another specific element.

   2. Only targets the single immediate sibling that directly follows.

   3. Syntax: `element1 + element2`

   4. Example: `p + span selects the <span> that immediately follows a <p>`.

2. General Sibling Selector `~:

   1. Selects all elements that are siblings of a specific element and share the same parent, regardless of their order.

   2. Targets all siblings that match the criteria, not necessarily immediately following.

   3. Syntax: `element1 ~ element2`

   4. Example: `p ~ span selects all <span> elements that follow any <p> within the same parent`
