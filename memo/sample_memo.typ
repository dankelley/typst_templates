#import "@local/memo:0.0.1": conf
#show: doc => conf(
category: "Memo",
title: "A beautiful day",
date: "2024-10-17",
font: "libertinus serif",
fontsize: 11pt,
preface: [_Abstract._ I wonder, what's not to love?],
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
