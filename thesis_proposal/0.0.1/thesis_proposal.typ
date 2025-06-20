// https://typst.app/docs/tutorial/making-a-template/
// https://github.com/typst/packages/?tab=readme-ov-file#local-packages
#let conf(
  title: [],
  program: [],
  student: [],
  previousDegrees: [],
  sdate: [],
  ddate: [],
  adate: [],
  keywords: (),
  abstract: [],
  MIP: none,
  doc,
) = {
set text(font: "libertinus serif", size: 12pt)
set page("us-letter",
  header: [
  *#program Proposal*
  #h(1fr)
  #student
])

smallcaps[#program Proposal]
linebreak()

text(12pt)[#title]
linebreak()

text(12pt)[#student]
linebreak()
text(11pt)[*Previous degree(s):* #previousDegrees]

linebreak()

text(12pt)[
  *Candidate:* #student
  #v(8pt)
  *Keywords:* #{keywords.join("; ")}.
]
linebreak()

text(11pt)[
  Submitted #sdate,
  #MIP months in program;
  defended #ddate;
  accepted #adate
]

text(11pt)[
  #v(5pt)
  *Abstract.* #abstract
]

doc
}

