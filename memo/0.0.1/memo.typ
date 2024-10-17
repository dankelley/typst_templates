#let conf(
  category: none,
  title: none,
  date: none,
  preface: none,
  doc,
) = {
set text(font: "Times", size: 11pt)
set page("us-letter",
  header: [
  *#category #h(1fr) #title #h(1fr) #date*
])
text(10pt)[#preface]
show heading.where(level: 1): set text(font: "Times Roman", size: 11pt)
doc
}

