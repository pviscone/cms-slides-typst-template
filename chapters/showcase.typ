#import "/template/lib.typ": *
#import "/template/logos.typ": *

// === Available slides ===
//
// #title-slide()
// #standout-slide(title)
// #section-slide(title,subtitle)
// #blank-slide()
// #slide(title)
//
// === Available macros ===
//
// #quote-block(body)
// #color-block(title, body)
// #icon-block(title, icon, body)

#blank-slide()[
  Understand how to add table of contents
]



#slide(title: [First Slide])[
  #quote-block[
    Have you ever heard about Typst?! @typst
  ]
  #image(cern_blue)
  #note("This will show on pdfpc speaker notes ;)")
]

#blank-slide()[
  Show example and presets of multiple layouts.
]


#blank-slide()[
  = Section slide
  Understand how to add footer
]

#blank-slide(size:20pt)[
  == TODO
  #align(left)[
  - Change itemize bullet to color tertiary in blank slide
  - Show code block and text box
  - what's wrong with references? Why does it start at 26?
  - Create "backup" slides (and disable progress bar on them)
  - Create backup cover page
  - use pinit example
  - Show qr code
  - Create function to add black box around images
  - Cover page:
    - Change the authors to a dictionary instead of separate lists for author and institutions
  - Change font
  ]
]
