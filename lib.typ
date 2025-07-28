// -----*****-----
// ABOUT THIS TEMPLATE
// -----*****-----
// Report designed by Sundekant
// Adapted from template: structured-uib by AugustinWinther

// -----*****-----
// TEMPLATE FUNCTION
// -----*****-----
#let report(
  project: (),
  revisions: (),
  revision_actual: none,
  fecha_rev_actual: none,
  jefe_disciplina: none,
  jefe_proyecto: none,
  cliente: none,
  hecho_por: none,
  descripcion: none,
  revisado_por: none,
  aprobado_por: none,
  comentarios_cliente: none,
  body
) = {

  // -----*****-----
  // DOCUMENT METADATA
  // -----*****-----
  set document(
    title: [#project.doccod - #project.doctit],
    author: "YVT",
    date: datetime.today()
  )

  // -----*****-----
  // DOCUMENT LANGUAGE
  // -----*****-----
  set text(lang: "es")

  // -----*****-----
  // DOCUMENT FONTS
  // -----*****-----
  set text(font: "New Computer Modern")
  show math.equation: set text(font: "New Computer Modern Math")

  // -----*****-----
  // COVER PAGE
  // -----*****-----
  set page(paper: "a4", margin: (left: 27mm, right: 20mm, top: 20mm, bottom:30mm))

  v(10mm)

  // COMPANIES LOGOTIPES
  table(
    columns: (0.2fr, 1fr, 1fr, 0.2fr),
    stroke: none,
    align: horizon+center,
    column-gutter: 5mm,
    [],
    [#image("assets/logo_client.png", fit: "contain")], 
    [#image("assets/logo_consulting.png", fit: "contain")],
    [],
  )

  v(5mm)

  // PROJECT TITLE

  v(5mm)

  line(length: 16cm, stroke: 0.1cm)
  align(center, text(size: 24pt, smallcaps[*#project.title*]))

  line(length: 16cm, stroke: 0.1cm)

  // PROJECT GENERAL INFORMATION

  v(5mm) 

  align(center, text(size: 20pt, smallcaps[*#project.doctit*]))
  align(center, text(size: 20pt, smallcaps[*#project.doccod*]))
  align(center, text(size: 20pt, smallcaps[*#project.discipline*]))
  align(center, text(size: 20pt, [*#revision_actual*]))
  align(center, text(size: 12pt, [APROBADO POR:]))

  v(5mm)

  // MAIN PROJECT STAKEHOLDERS
  table(
    columns: (0.75fr, 1fr, 1fr),
    rows:(10mm, 10mm, 10mm),
    stroke: none,
    align: (bottom+left, bottom+left, bottom+left),
    row-gutter: 0mm,
    [Jefe de disciplina:], [#project.discesp], [],
    table.hline(start: 2),
    [Jefe de proyecto:], [#project.manager], [],
    table.hline(start: 2),
    [Cliente:], [#project.client], [],
    table.hline(start: 2),
  )
  v(5mm)

  pagebreak()

  // -----*****-----
  // PAGE SETUP AFTER COVER
  // -----*****-----

  set page(
    paper: "a4",
    margin: (left: 27mm, right: 20mm, top: 45mm, bottom:30mm),
    numbering: "1/1",
    header-ascent: 15pt,
    header: [
      #set text(10pt)
      #table(
        align: (horizon+center),
        columns: (1.5in,3fr,1fr,1.5in),
          [#project.doccod\ #revision_actual],
          [#project.doctit\ #project.title\ #project.discipline],
          [#fecha_rev_actual],
          [#image("assets/logo_client.png")]
      )
    ]
  )
  counter(page).update(1) // Skip first page in numbering

  // Configuración de párrafo
  set par(
  first-line-indent: 1.8em,
  spacing: 1.25em,
  leading: 0.55em,
  justify: true,
  )

  // Configuración de títulos
  set heading(
  numbering: "1.",
  supplement: [capítulo]
  )
  show heading: set block(above: 1.4em, below: 1em)


  // -----*****-----
  // REVISION TABLE
  // -----*****-----
  table(
  columns: 1fr,
  rows: 10mm,
  table.cell(align: horizon+center)[*TABLA DE REVISIONES*]
  )
  let count = revisions.len()
  let nrows = calc.min(count)
  table(
    columns: (0.5fr, 0.70fr, 1.5fr, 0.70fr, 0.6fr, 0.6fr),
    rows: (auto, 10mm, 10mm, 10mm, 10mm, 10mm,10mm,10mm,10mm,10mm,10mm,10mm,10mm,10mm, 10mm, 10mm),
    align: horizon+center,
    table.header(
      [*Rev.*], [*Hecho Por*], [*Descripción*], [*Fecha*], [*Revisado*], [*Aprobado*],
    ),
    ..revisions.map(revision => [#revision.one]), 
    ..revisions.map(revision => [#revision.two]),
    ..revisions.map(revision => [#revision.three]), 
  )
  table(
    columns: 1fr,
    rows: 30mm,
    table.cell(align: top+left)[COMENTARIOS DEL CLIENTE:]
  )

  pagebreak()

  // -----*****-----
  // REPORT CONTENT
  // -----*****-----
  body

  // 

}

