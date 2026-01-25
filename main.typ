#import "template/lib.typ": *


#show: definitely-not-isec-theme.with(
  aspect-ratio: "16-9",
  slide-alignment: top,
  progress-bar: true,
  logo: (cms, cern_blue, uzh_compact_black),
  config-info(
    title: [Long Paper Title with One to Three Lines],
    subtitle: [An optional short subtitle],
    authors: (
      "*Author First*": ("CERN", "UZH"),
      "Author Second": ("CERN", "UZH"),
      "Author Thirds": ("CERN",),
      "\ on behalf of the CMS Collaboration": (),
    ),
    extra: [*Conference 2077*\ New Tokyo\ 29-31 February 2077],
    footer: [First Author, Second Author, Third Author],
    download-qr: "",
  ),
  config-common(
    handout: false,
  ),
  config-colors(
    primary: rgb("1B4587"),
    secondary: rgb("F75C2F"),
    tertiary: rgb("FFFFFF"),
  ),
)

// -------------------------------[[ CUT HERE ]]--------------------------------
//
// === Available slides ===
//
// #title-slide()
// #blank-slide()
// #slide(title)
//
// === Available macros ===
//
// #quote-block(body)
// #color-block(title, body)
// #icon-block(title, icon, body)
//
// === Presenting with pdfpc ===
//
// Use #note("...") to add pdfpc presenter annotations on a specific slide
// Before presenting, export all notes to a pdfpc file:
// $ typst query slides.typ --field value --one "<pdfpc-file>" > slides.pdfpc
// $ pdfpc slides.pdf
//
// -------------------------------[[ CUT HERE ]]--------------------------------

#title-slide(title_multiplier: 1.0,
            subtitle_multiplier: 1.0,
            author_multiplier: 1.0,
            logos_multiplier: 1.0,
            extra_multiplier: 1.0)

#include "chapters/showcase.typ"

#slide(title: [Bibliography])[
  #bibliography("references/bibliography.bib")
]
