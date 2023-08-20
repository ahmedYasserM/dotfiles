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
  
  
- An operator has one job: do Y. A motion has one job: go to X. By combining an operator with a motion, you predictably get YX: do Y on X.  

- 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33
- 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33
- 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33

