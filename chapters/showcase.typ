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
  #cols(2)[
    //By default, content is top aligned
    //#put(left+horizon)[
    #lorem(100)
    //]
  ][
    #put(center + horizon)[
      #figure(
        image(cern_blue),
        caption: [CERN Logo],
      )]
  ]
]


#slide(title: [N columns])[
  //You can also specify relative widths for each column
  #cols((29%, 19%, 49%), gutter: 1%)[
    #bx(stroke: 3pt + rgb("2651a8"), height: 100%, width: 100%)[
      #put(center + horizon)[
        Column 1
      ]
    ]
  ][
    #bx(stroke: 3pt + red, height: 100%, width: 100%)[
      #put(center + horizon)[
        Column 2
      ]
    ]
  ][
    #bx(stroke: 3pt + green, height: 100%, width: 100%)[
      #put(center + horizon)[
        Column 3
      ]
    ]
  ]
]

#slide(title: [N rows])[
  //You can also specify relative widths for each column
  #rows((28%, 18%, 48%), gutter: 2%)[
    #bx(stroke: 3pt + rgb("2651a8"), height: 100%, width: 100%)[
      #put(center + horizon)[
        Row 1
      ]
    ]
  ][
    #bx(stroke: 3pt + red, height: 100%, width: 100%)[
      #put(center + horizon)[
        Row 2
      ]
    ]
  ][
    #bx(stroke: 3pt + green, height: 100%, width: 100%)[
      #put(center + horizon)[
        Row 3
      ]
    ]
  ]
]

#slide(title: [Rows + Columns])[
  #cols((29%, 19%, 49%), gutter: 1%)[
    #rows((49%, 49%), gutter: 2%)[
      #bx(stroke: 3pt + blue, height: 100%, width: 100%)[
        #put(center + horizon)[
          Region 1
        ]
      ]
    ][
      #bx(stroke: 3pt + gray, height: 100%, width: 100%)[
        #put(center + horizon)[
          Region 2
        ]
      ]
    ]
  ][
    #bx(stroke: 3pt + green, height: 100%, width: 100%)[
      #put(center + horizon)[
        Region 3
      ]
    ]
  ][
    #rows((32%, 32%, 32%), gutter: 1.5%)[
      #bx(stroke: 3pt + yellow, height: 100%, width: 100%)[
        #put(center + horizon)[
          Region 4
        ]
      ]
    ][
      #bx(stroke: 3pt + orange, height: 100%, width: 100%)[
        #put(center + horizon)[
          Region 5
        ]
      ]
      #bx(stroke: 3pt + purple, height: 100%, width: 100%)[
        #put(center + horizon)[
          Region 6
        ]
      ]
    ]
  ]
]

#blank-slide(title: [Functionalities])[]

#slide(title: [Listings])[
  #set align(center)
  #let height = 40%
  #cols((32%, 32%, 30%), gutter:1%)[
    #put(horizon)[
      #bx(stroke: black, height:height)[
        *Bullet list*:
        - Item 1
        - Item 2
          - Subitem 1
          - Subitem 2
            - Subsubitem 1
        - Item 3
      ]
    ]
  ][
    #put(horizon)[
      #bx(stroke: black, height:height)[
        #set par(leading: 0.45em)
        *Enum list*:
        1. Item 1
        2. Item 2
        3.  Subitem 1
          4. Subitem 2
            5. Subsubitem 1
        6. Item 3
      ]
    ]
  ][
    #put(horizon)[
      #bx(stroke: black, height:height)[
        #set par(leading: 0.45em)
        *Check boxes*:
        - [ ] Item 1
        - [x] Item 2
          - [-] Subitem 1
          - [-] Subitem 2
            - [-] Subsubitem 1
        - [?] Item 3

      ]
    ]
  ]
]


#slide(title: [TODO])[
  #align(left)[
    - Show code block and text box
    - use pinit example
    - Show links
    - Create function to add black box around images
    - Understand how to add foot notes
    - Add a reference to a backup slide
    - Customizable cover image
    - Less space between bullet and text
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
