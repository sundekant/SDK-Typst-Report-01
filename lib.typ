// Carátula principal diseñada por Sundekant
// Adapatado a partir de plantilla structured-uib de AugustinWinther

// Función Plantilla
#let informe(
  proyecto: none,
  codigo_proyecto: none,
  titulo_documento: none,
  codigo_documento: none,
  especialidad: none,
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

  // Metadata del informe
  set document(
    title: [#codigo_documento - #titulo_documento],
    author: "YVT",
    date: datetime.today()
  )

  // Idioma del informe
  set text(lang: "es")

  // Fuentes del informe
  set text(font: "New Computer Modern")
  show math.equation: set text(font: "New Computer Modern Math")

  // Carátula
  set page(paper: "a4", margin: (left: 27mm, right: 20mm, top: 20mm, bottom:30mm))

  v(2mm)

  // Logotipos de las empresas
  table(
    columns: (0.2fr, 1fr, 1fr, 0.2fr),
    stroke: none,
    align: horizon+center,
    column-gutter: 5mm,
    [],
    [#image("Imagenes/Logo_TDC.png", fit: "contain")], 
    [#image("Imagenes/Logo_JAMFEC.png", fit: "contain")],
    [],
  )

  // Información principal del proyecto
  v(5mm)
  line(length: 16cm, stroke: 0.1cm)
  align(center, text(size: 24pt, [*#proyecto*]))
  line(length: 16cm, stroke: 0.1cm)
  v(1mm) 
  align(center, text(size: 20pt, [*#titulo_documento*]))
  align(center, text(size: 20pt, [*#codigo_documento*]))
  align(center, text(size: 20pt, [*#especialidad*]))
  align(center, text(size: 20pt, [*#revision_actual*]))
  align(center, text(size: 12pt, [APROBADO POR:]))
  v(2mm)

  // Tabla de principales interesados del proyecto
  table(
    columns: (0.75fr, 1fr, 1fr),
    rows:(10mm, 10mm, 10mm),
    stroke: none,
    align: (bottom+left, bottom+left, bottom+left),
    row-gutter: 0mm,
    [Jefe de disciplina:], [#jefe_disciplina], [],
    table.hline(start: 2),
    [Jefe de proyecto:], [#jefe_proyecto], [],
    table.hline(start: 2),
    [Cliente:], [#cliente], [],
    table.hline(start: 2),
  )
  v(5mm)

  // Tabla de revisiones
  table(
    columns: (0.5fr, 0.70fr, 1.5fr, 0.70fr, 0.6fr, 0.6fr),
    rows: (auto, auto, auto, auto, auto, 25mm),
    align: (horizon+center, horizon+center, horizon+left, horizon+center, horizon+center, horizon+center),
    [*Rev.*], [*Hecho Por*], [*Descripción*], [*Fecha*], [*Revisado*], [*Aprobado*],
    [RevA], [#hecho_por], [Emitido para revisión interna], [01/01/2023], [#revisado_por], [#aprobado_por],
    [#revision_actual], [#hecho_por], [#descripcion], [#fecha_rev_actual], [#revisado_por], [#aprobado_por],
    [], [], [], [], [], [],
    [], [], [], [], [], [],
    table.cell(colspan: 6, align: top+left)[COMENTARIOS DEL CLIENTE:]
  )

  pagebreak()

  // Configuración para el resto del informe

  set page(
    paper: "a4",
    margin: (left: 27mm, right: 20mm, top: 35mm, bottom:30mm),
    numbering: "1/1",
    header: [
      #set text(10pt)
      #table(
        align: (horizon+center),
        columns: (1.5in,3fr,1fr,1.5in),
          [#codigo_documento\ #revision_actual],
          [#titulo_documento\ #proyecto\ #especialidad],
          [#fecha_rev_actual],
          [#image("Imagenes/Logo_TDC.png")]
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

  // Mostrar contenido
  body

  // 

}

