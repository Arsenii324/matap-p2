#import "template.typ": *
// #include "lecture2.typ"

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Математический анализ 2",
  authors: (
    (name: "Georgy", affiliation: "@georgyshamteev"),
  ),
)


#show outline.entry.where(
  level: 1
): it1 => {
  strong(it1)
}

#show outline.entry.where(
  level: 2
): it2 => {
  strong(it2)
}

#show outline.entry.where(
  level: 3
): it3 => {
  it3
}


#outline(
  indent: n => 2em * n,
)
#pagebreak()
#include "lecture1.typ"
#pagebreak()
#include "lecture2.typ"
#pagebreak()
#include "lecture3.typ"
#pagebreak()
#include "lecture4.typ"
#pagebreak()
#include "lecture5.typ"
#pagebreak()
#include "lecture6.typ"
#pagebreak()
#include "lecture7.typ"

