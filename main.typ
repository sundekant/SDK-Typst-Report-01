// Importaciones
#import "lib.typ": *

// Configuración de plantilla
#show: report.with(
  project: (
    title: "Edificio Multifamiliar La Merced",
    document: "Memoria Descriptiva",
    code: "230127-100-MD-001",
    discipline: "Instalaciones Sanitarias",
    specialist: "L. Torvalds",
    manager: "Sundekant",
    client: "Empresa S.A.C.",
    designer: "Empresa Diseño",
    revision: "RevC",
    date: "01/03/2023",
  ),
  revisions: (
    (
      one: "RevA",
      two: "RevB",
      three: "RevC",
    ),
    (
      one: "S. Woz",
      two: "S. Woz",
      three: "S. Woz",
    ),
    (
      one: "Emitido para revisión interna",
      two: "Emitido para aprobación del cliente",
      three: "Emitido para aprobación del cliente",
    ),
    (
      one: "01/01/2023",
      two: "01/02/2023",
      three: "01/03/2023",
    ),
    (
      one: "S. Jobs",
      two: "S. Jobs",
      three: "S. Jobs",
    ),
    (
      one: "B. Gates",
      two: "B. Gates",
      three: "B. Gates",
    ),
  ),
)
  
// Índice generado automáticamente
#outline()
#pagebreak()  

// Cuerpo de documento

#align(center, text(24pt)[#smallcaps("Memoria Descriptiva")]
)

// Generalidades

#include "body/Chapter 1.typ"

// Sistema de agua fría

#include "body/Chapter 2.typ"
















