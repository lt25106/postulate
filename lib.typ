#let qed = sym.parallelogram.filled
#let proof = [_Proof._]

// Global flag: set to false by default
#let use-section-numbers = state("use-section-numbers", false)
#let step-counter = counter("step-counter")

#let b(type, name: "", label: none) = context {
  let shows = []

  let is-section-active = use-section-numbers.get()
  let count = step-counter.get().first() + 1
  let thatnum = -1
  if is-section-active {
    let sec = counter(heading).get()
    let sec-str = sec.map(str).join(".")
    thatnum = [#sec-str.#count]
    shows = [#type #thatnum.]
  } else {
    shows = [#type #count.]
    thatnum = count
  }

  let num-scheme(a) = thatnum

  box[#figure({
    step-counter.step()
    // let num = -1
    strong(shows)
    
    if name != "" [ (#name)]
  },

  supplement: type,
  numbering: num-scheme,
  )#label]
}

// Reset step numbers on top-level headings
#show heading.where(level: 1): it => {
  step-counter.update(0)
  it
}