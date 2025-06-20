// https://typst.app/docs/tutorial/making-a-template/
// https://github.com/typst/packages/?tab=readme-ov-file#local-packages
#let conf(
  title: none,
  student: none,
  program: none,
  date: none,
  keywords: none,
  abstract: none,
  doc,
) = {
set text(font: "times", size: 12pt)
set page("us-letter",
  header: [
  *#title*
  #h(1fr)
  *#student*
  #h(1fr)
  *#date*
])
text(12pt)[*Keywords.* #keywords]
text(12pt)[*Abstract.* #abstract]
show heading.where(level: 1): set text(font: "times", size: 14pt)
doc
}

