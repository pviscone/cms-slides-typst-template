#import "template/lib.typ": *

#show: definitely-not-isec-theme.with(
  aspect-ratio: "16-9",
  font: "Open Sans",
  slide-alignment: top,
  progress-bar: true,
  logo: (cern_white, uzh_compact_white, cms_white),
  config-info(
    title: [Long Paper Title with One to Three Lines],
    subtitle: [An optional short subtitle],
    authors: (
      "*Piero Viscone*": ("CERN", "University of Zürich"),
      "Author Second": ("CERN", "University of Zürich"),
      "Author Thirds": ("CERN",),
      "\ on behalf of the CMS Collaboration": (),
    ),
    conference: "Conference 2077",
    location: "New Tokyo",
    date: "29-31 February 2077",
    footer: ("Piero Viscone", "#title", "#conference"),
    footer_size: 10pt,
  ),
  config-common(
    handout: false,
  ),
  config-colors(
    primary: rgb("2651a8"),
    secondary: rgb("F75C2F"),
    tertiary: rgb("FFFFFF"),
  ),
)

#title-slide(title_multiplier: 1.0, subtitle_multiplier: 1.0, author_multiplier: 1.0, extra_multiplier: 1.0)

#include "chapters/showcase.typ"

#slide(title: [Bibliography])[
  #bibliography("references/bibliography.bib")
]
