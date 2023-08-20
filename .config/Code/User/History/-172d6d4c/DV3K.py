# Generate candidates 2-item sequences
def gen_cand2(frequent1):

  cand2 = []

  l1 = frequent1
  l2 = l1

# All possible Temporal  joins
  for i in range(0,len(l1)):
    l1_item = l1[i]
    for j in range(0, len(l2)):
      l2_item = l2[j]
      cand2.append(l1_item + l2_item)

# All possible non-Temporal  joins
  for i in range(1, len(l1)): # i = 1 ; i < len(l); i++
    l1_item = l1[i]
    for j in range(0, i):
       l2_item = l2[j]
       cand2.append("(" + l2_item + l1_item + ")")

  return cand2