
# CMS Typst Slides Template

**Showcase**: [main.pdf](https://github.com/pviscone/cms-slides-typst-template/releases/download/v1.0/main.pdf)

This is a Typst slide template with a clean visual style and a set of helper macros.

The reason why I considered it a CMS (unofficial) template it's because it contains logos and images of CERN and CMS experiment, together with some predefined macros that come from the CMS LaTeX TDR style.

Nevertheless, the template is totally customizable and is intended for general usage

## Quick start

- Edit the metadata and theme options in [main.typ](main.typ).
- Add or remove slides in [chapters/showcase.typ](chapters/showcase.typ). This file is only an example showcase and can be replaced entirely.

## Theme configuration (main.typ)

The theme is configured by calling `definitely-not-isec-theme.with(...)` in [main.typ](main.typ). The most important settings are:

- `font`: Base font name for the whole deck (e.g., "Open Sans"). This affects all text unless overridden locally.
- `slide-alignment`: Default vertical alignment for slide content. Use `top` for top-aligned content, or other alignments if you prefer.
- `progress-bar`: `true` or `false`. Shows a progress bar at the bottom of each slide when enabled.
- `logo`: Tuple of logo assets to show on slides. These are defined in the template files and can be replaced with your own.

### Progress bar behavior

The progress bar runs across normal slides and stops before the backup section. This is done by placing `#backup-cover()` where the main deck ends. Slides after the backup cover are treated as appendix and do not advance the progress bar.

### `config-info(...)`

This section controls title slide metadata and footer content:

- `title`: Main title displayed on the title slide and referenced by `#title` in footers.
- `subtitle`: Optional subtitle for the title slide.
- `authors`: Author list. Each entry maps a display name to an array of affiliations. Use a trailing entry for collaboration notes.
- `conference`: Conference or event name (also available as `#conference` for footers).
- `location`: Event location text.
- `date`: Event date text.
- `footer`: Tuple of strings used in the footer; entries can reference `#title` and `#conference` placeholders.
- `footer_size`: Footer text size (e.g., `10pt`).

### `config-common(...)`

- `handout`: `true` or `false`. When `true`, enables handout-friendly output (e.g., animations disabled if supported).

### `config-colors(...)`

Defines the core color palette:

- `primary`: Primary accent color (e.g., headings, key accents, blank-slide).
- `secondary`: Secondary accent color (progress bar and subtitle in title-slide).
- `tertiary`: Text color of headers and blank-slides (which are primary color)
- `footer`: Footer text color.

## Slide macros

The template provides several convenience slide constructors in [template/lib.typ](template/lib.typ), used throughout [chapters/showcase.typ](chapters/showcase.typ):

- `title-slide(...)`: Builds the front page. You can override the background image and fine-tune the relative sizes of title, subtitle, authors, and extra info using the multiplier arguments.
- `toc-slide(...)`: Builds a table-of-contents slide using level-1 headings marked as outlined. Use it early in the deck to list sections.
- `slide(title: [...], ...)`: Standard content slide with a title (defaults to heading level 2). Use this for most content.
- `blank-slide(title: [...], ...)`: Like `slide(...)` but uses a level-1 heading so it appears in the TOC. Useful for section dividers.
- `backup-cover()`: Marks the end of the main deck; the progress bar stops here. Place backup slides after this call.

### `slide(...)` arguments and tags

`slide(...)` supports these arguments:

- `title`: Slide title content. If omitted, the header is empty.
- `alignment`: Overrides the default slide alignment from the theme.
- `outlined`: Whether the title appears in the PDF outline and TOC query.
- `head`: Heading level used for the title (defaults to 2).
- `size`: Override text size for the slide body.
- `spacing`: Override paragraph leading for the slide body.
- `tag`: Adds a label to the slide title so it can be referenced with `@tag`.
- `..args`: Extra Touying slide arguments (e.g., `spacing`, `fill`, or other supported options).

Short example:

```typst
#slide(title: [Introduction], tag: <intro>)[
  #lorem(40)
]
```

You can then reference it later as `@intro`, which resolves to the page number of that slide.

### Layout helpers: `#cols`, `#rows`, `#put`, `#bx`

These helpers come from the template and are used throughout the showcase:

- `#cols(...)`: Creates a multi-column layout. You can pass a number (equal-width columns) or a list of relative widths, plus an optional `gutter`.
- `#rows(...)`: Creates a multi-row layout with the same API as `#cols(...)`.
- `#put(...)`: Places content with alignment inside the current container (for example `center + horizon`, `left + horizon`). Useful for fine placement inside columns or boxes.
- `#bx(...)`: Draws a boxed container with configurable `stroke`, `height`, and `width`. Handy for visual layout blocks.

Short example:

```typst
#cols((60%, 40%), gutter: 2%)[
  #put(horizon)[
    Left column
  ]
][
  #bx(stroke: 2pt + black, height: 100%, width: 100%)[
    #put(center + horizon)[Right column]
  ]
]
```

## CMS macros

CMS-specific convenience macros live in [template/cms-macros.typ](template/cms-macros.typ). Import them when needed:

```typst
#import "template/cms-macros.typ": *
```

Example:

```typst
#ttbar #to #ll #bbbar #nunu
```

## Packages already loaded

The theme loads a set of Typst packages in [template/lib.typ](template/lib.typ). You can use them without extra imports:

- `touying`
- `codly` and `codly-languages`
- `cetz`
- `fletcher`
- `tiaoma`
- `pinit`
- `cheq`
- `lovelace`
- `quick-maths`
- `physica`
- `showybox`

## Notes

- The default logos are placeholders. Replace them to match your institution or project.
- The template is unofficial and intended as a starting point.
