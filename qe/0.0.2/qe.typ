// https://typst.app/docs/tutorial/making-a-template/
// https://github.com/typst/packages/?tab=readme-ov-file#local-packages
#let conf(
  student: none,
  paper: none,
  date: none,
  venu: none,
  time: none,
  doc,
) = {
set text(font: "Times Roman", size: 12pt)
set page("us-letter",
  header: [
  _Qualifying Examination_ #h(1fr) *#student* #h(1fr) #date
  \
#venu #h(1fr) #time
])
text(11pt)[#paper]
doc
}

