#let conf(
  category: "category",
  title: "title",
  date: "date",
  preface: "preface",
  author: "author",
  font: "libertinus serif",
  fontsize: 11pt,
  doc,
) = {
set text(font: font, size: fontsize)
set par(linebreaks: "optimized")
set page("us-letter",
  header: context {
  if counter(page).get().first() < 2 [
  *#category #h(1fr) #title #h(1fr) #date*
  #author
]})
set page(numbering: "1")
text(size: 1.0em)[#preface] // reduce size to 90%

// show heading.where(level: 1): it => [
// set block(above: 1.0em, below: 0.2em)
// set text(size: 0.9em, weight: "bold", it.body)
// ]

// show heading.where(level: 2): it => [
// set block(above: 0.7em, below: 0.7em)
// set text(weight: "regular", style: "italic", it.body)
// ]

show heading.where(
  level: 1
): it => block(width: 100%)[
  #set align(center)
  #set text(size: 1.0em, weight: "regular")
  #smallcaps(it.body)
]

show heading.where(
  level: 2
): it => text(
  size: 1.0em,
  weight: "regular",
  style: "italic",
  it.body + [.],
)

doc
}

