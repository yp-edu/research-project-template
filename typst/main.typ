#import "@preview/bloated-neurips:0.7.0": botrule, midrule, neurips2025, paragraph, toprule, url

#let affls = (
  "<LAB>": ("<LAB>",),
)

#let authors = (
  (name: "<NAME>",
   affl: "<LAB>",
   email: "<EMAIL>",
   equal: false),
)

#show: neurips2025.with(
  title: [My Awesome Paper Template in Typst],
  authors: (authors, affls),
  keywords: ("Machine Learning", "NeurIPS"),
  abstract: [
    The abstract.
  ],
  bibliography: bibliography(("semantic.bib","custom.bib")),
  appendix: [
    #include "sections/A-models.typ"
    #include "sections/B-software.typ"
    #include "checklist.typ"
  ],
  accepted: true,
)

#include "sections/1-introduction.typ"
#include "sections/2-background.typ"
#include "sections/3-methods.typ"
#include "sections/4-experiments.typ"
#include "sections/5-discussion.typ"
#include "sections/6-related-work.typ"
#include "sections/7-conclusion.typ"
