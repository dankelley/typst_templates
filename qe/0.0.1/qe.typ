// https://typst.app/docs/tutorial/making-a-template/
// https://github.com/typst/packages/?tab=readme-ov-file#local-packages
#let conf(
  student: none,
  date: none,
  doc,
) = {
set text(font: "Times Roman", size: 14pt)
set page("us-letter",
  header: [
  _Qualifying Examination_
  #h(1fr)
  *#student*
  #h(1fr)
  #date
])
doc
}

