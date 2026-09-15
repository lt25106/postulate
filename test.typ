#import "@local/thm:0.1.0": *
#set heading(numbering: "1.")
= Hi
#use-section-numbers.update(true)
#qed
#qed
#proof 

#b("Theorem", name: "Fermat's Last") #b("Conjecture", label: <hello>)

#proof I have discovered a truly marvelous proof of this which is too small to fit on my PC.
#grid(
  columns: (1fr, auto, 1fr),
  align: (left, center, right),
  [],
  $ a^2 + b^2 = c^2 $,
  qed
)

#b("Crowd", name: "Crowd") the crowd theorem is crowded, obv.

#proof by @hello. Trivial. #qed