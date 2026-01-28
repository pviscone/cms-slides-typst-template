#import "/template/lib.typ": *
#import "/template/logos.typ": *

// === Available slides ===
//
// #title-slide()
// #toc-slide()
// #blank-slide(title)
// #slide(title)
// #backup-cover()
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
#slide(title: [Introduction], spacing: 0.5em)[
  #lorem(290)
]

//blank-slide title is a heading level 1, it will appear in the TOC
#blank-slide(title: [Layout showcase])[
  Show example and presets of multiple layouts.
]

#slide(title: [Two columns])[
  #text(size: 14pt)[
    #lorem(100)
  ]
][
  #place(horizon)[
    #figure(
      image("/template/assets/backup_cover.png"),
      caption: [The CMS event display],
    )
  ]
]

#slide(title: [Two columns])[
  #quote-block[
    Have you ever heard about Typst?! @typst
  ]
  #image(cern_blue)
  #note("This will show on pdfpc speaker notes ;)")
]

#blank-slide(title: [Second Chapter])[]

#slide(title: [TODO])[
  #align(left)[
    - Show code block and text box
    - Show lists, enums and checkboxes
    - use pinit example
    - Show links
    - Create function to add black box around images
    - Change font
    - Understand how to add foot notes
    - Add a reference to a backup slide
  ]
]
#slide(title: [Conclusions])[
  Conclusions
]

// Backup-cover is where the progress bar finishes
#backup-cover()

#slide(title: [Backup slide 1])[
  This is a backup slide.
]

#slide(title: [Backup slide 2])[
  This is another backup slide.
]
