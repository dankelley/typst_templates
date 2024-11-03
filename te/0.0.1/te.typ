// https://typst.app/docs/tutorial/making-a-template/
// https://github.com/typst/packages/?tab=readme-ov-file#local-packages
#let conf(
  course: none,
  type: none,
  date: none,
  instructions: none,
  doc,
) = {
set text(font: "times", size: 14pt)
set page("us-letter",
  header: [
  *#course*
  #h(1fr)
  *#type*
  #h(1fr)
  *#date*
])
text(12pt)[*Instructions.* #instructions]
show heading.where(level: 1): set text(font: "times", size: 14pt)
doc
}

