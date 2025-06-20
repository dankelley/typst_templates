#import "@local/thesis_proposal:0.0.1": conf
#show: doc => conf(
title: [Insert proposal title here],
student: [Insert author name here],
program: [Insert BSc, MSc or PhD here],
keywords: [Insert keywords here (semicolon-separated)],
abstract: [_Abstract._ Insert abstract here],
date: "2025-06-20",
doc,
)

= Section

== Subsection
Without a newline after a `==` line, the subsection name is set on the same 
line as the following text.


== Gallery

Here, note that the subsection title is on a line of its own.

Below are some font alterations. Note that small-caps does not work with 'times'
so I changed this memo class to use 'libertinus serif'.

- #smallcaps[Small Caps Example]
- _italic example_
- *bold-faced example*
