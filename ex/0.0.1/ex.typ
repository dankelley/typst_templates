// https://typst.app/docs/tutorial/making-a-template/
// https://github.com/typst/packages/?tab=readme-ov-file#local-packages
#let conf(
  class: none,
  number: none,
  title: none,
  date: none,
  doc,
) = {
set text(font: "Times Roman", size: 12pt)
set page("us-letter",
  header: [
  *#class Exercise #number #h(1fr) #title #h(1fr) #date*
])
doc
}

