#let conf(
  category: "category",
  title: "title",
  date: "date",
  preface: "preface",
  font: "times",
  fontsize: 12pt,
  doc,
) = {
set text(font: font, size: fontsize)
set page("us-letter",
  header: [
  *#category #h(1fr) #title #h(1fr) #date*
])
text(size: 0.9em)[#preface] // reduce size to 90%
show heading.where(level: 1): set text(font: font, size: fontsize)
doc
}

