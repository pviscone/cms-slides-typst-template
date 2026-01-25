#import "/template/lib.typ": *
#import "/template/logos.typ": *

// === Available slides ===
//
// #title-slide()
// #toc-slide()
// #blank-slide(title)
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
// ------------------------------


//All the headings level 1 marked as outlined will appear in the TOC
#toc-slide()[]

//slide title is a heading level 2, you can change with head: 1
#slide(title: [Introduction], size:16pt, spacing:0.5em)[
    #lorem(290)
]

//blank-slide title is a heading level 1, it will appear in the TOC
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

#blank-slide()[
  == TODO
  #align(left)[
    - Show code block and text box
    - Show lists, enums and checkboxes
    - Create "backup" slides (and disable progress bar on them)
    - Create backup cover page
    - use pinit example
    - Show qr code
    - Create function to add black box around images
    - Change font
    - Understand how to add foot notes
  ]
]
