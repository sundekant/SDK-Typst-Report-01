// Importaciones
#import "lib.typ": *

// Configuración de plantilla
#show: informe.with(
  proyecto: "Edificio Multifamiliar Lord Cochrane",
  codigo_proyecto: "230127",
  titulo_documento: "Memoria Descriptiva",
  codigo_documento: "230127-100-MD-001",
  especialidad: "Instalaciones Sanitarias",
  revision_actual: "RevB",
  fecha_rev_actual: "01/02/2023",
  jefe_disciplina: "Jorge Rubio",
  jefe_proyecto: "Yellsin Vasquez",
  cliente: "Taller de Diseño Constructivo",
  hecho_por: ("Y. Vasquez"),
  descripcion: ("Emitido para aprobación del cliente"),
  revisado_por: ("J. Rubio"),
  aprobado_por: ("J. Rubio"),
  comentarios_cliente: none,
)

// Índice generado automáticamente
#outline()
#pagebreak()

// Cuerpo de documento

#align(center, text(24pt)[#smallcaps("Memoria Descriptiva")]
)

// Generalidades

#include "body/1_generalidades.typ"

// Sistema de agua fría

#include "body/2_sistema_AF.typ"

// Sistema de agua caliente

#include "body/3_sistema_AC.typ"

// Sistema de agua tratada

#include "body/4_sistema_AT.typ"

// Sistema de desagüe y ventilación

#include "body/5_sistema_DV.typ"

// Sistema de drenaje pluvial

#include "body/6_sistema_DP.typ"

// Planta de tratamiento de aguas grises

#include "body/7_PTAG.typ"

// Sistema de agua contra incendio

#include "body/8_sistema_ACI.typ"

// Planos

#include "body/9_planos.typ"

// Apéndices

#include "body/10_apendices.typ"

// Anexos

#include "body/11_anexos.typ"














