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

#toc-slide()[]


#slide(title: [Introduction], outlined: false)[
  #lorem(100)
]

#blank-slide(title: [First Chapter])[
  Show example and presets of multiple layouts.
]


#slide(title: [First Subsec])[
  #quote-block[
    Have you ever heard about Typst?! @typst
  ]
  #image(cern_blue)
  #note("This will show on pdfpc speaker notes ;)")
]



#blank-slide(title: [Second Chapter])[]

#blank-slide(size:20pt)[
  == TODO
  #align(left)[
  - Show code block and text box
  - what's wrong with references? Why does it start at 26?
  - Create "backup" slides (and disable progress bar on them)
  - Create backup cover page
  - use pinit example
  - Show qr code
  - Create function to add black box around images
  - Change font
  - Understand how to add footer
  ]
]
