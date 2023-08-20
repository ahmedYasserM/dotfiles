- The only grammer rule in vim language -> verb + noun

- verbs -> operators

  y Yank text (copy)
  d Delete text and save to register
  c Delete text, save to register, and start insert mode

- nouns -> motions

  h Left
  j Down
  k Up
  l Right
  w Move forward to the beginning of the next word
  } Jump to the next paragraph
  $ Go to the end of the line

- Motions also accept count number as arguments

- nouns -> text objects

There are two types of text objects: 1. inner text objects 2. outer text objects

    i + object    Inner text object
    a + object    Outer text object

- common text objects

  w A word
  p A paragraph
  s A sentence
  ( or ) A pair of ( )
  { or } A pair of { }
  [ or ] A pair of [ ]
  < or > A pair of < >
  t XML tags
  " A pair of " "
  ' A Pair of ' '
  `        A pair of` `
  
  
Id  Name    Cuteness
01  Puppy   Very
02  Kitten  Ok
03  Bunny   Ok