#let conf(
  category: "category",
  title: "title",
  date: "date",
  preface: "preface",
  font: "times",
  fontsize: 11pt,
  doc,
) = {
set text(font: font, size: fontsize)
set page("us-letter",
  header: context {
  if counter(page).get().first() < 2 [
  *#category #h(1fr) #title #h(1fr) #date*
]})
set page(numbering: "1")
text(size: 0.9em)[#preface] // reduce size to 90%

// show heading.where(level: 1): it => [
// set block(above: 1.0em, below: 0.2em)
// set text(size: 0.9em, weight: "bold", it.body)
// ]

// show heading.where(level: 2): it => [
// set block(above: 0.7em, below: 0.7em)
// set text(weight: "regular", style: "italic", it.body)
// ]

show heading.where(level: 1): it => [
#set align(center)
#set text(1.1em, weight: "bold")
#block(above: 0.5em, below: 0.5em, smallcaps(it.body))
]

show heading.where(level: 2): it => [
#set text(0.9em, weight: "regular", style: "italic")
#block(above: 0.8em, below: 0.5em, smallcaps(it.body))
]

doc
}

