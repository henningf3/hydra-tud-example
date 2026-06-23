#import "hydra-tud/style.typ": tud-doc, tud-preamble, tud-body, tud-appendix, create-tud-outline
#import "@preview/abbr:0.2.3"

#abbr.load("abbreviations.csv", delimiter: ",")

#show: tud-doc.with(
  title: "My Thesis",
  subtitle: "An Exploration",
  language: "en",
  faculty: "Faculty of Computer Science",
  institute: "Institute XYZ",
  chair: "Chair ABC",
  authors: (
    (first_name: "Alice", surname: "Example", matriculationno: "123456", email: "alice@example.com"),
  ),
  supervisors: (
    (name: "Dr. Foo", email: "foo@uni.de"),
  ),
  date: datetime(year: 2025, month: 10, day: 1),
)

#show: tud-preamble

#include "formal/task.typ"
#include "formal/soa.typ"
#include "formal/abstract.typ"

#create-tud-outline()

#abbr.list()

#include "formal/list-of-symbols.typ"

#show: tud-body

#include "chapter/01_introduction.typ"

#show: tud-appendix
#include "appendix/01_electrodynamics.typ"


#bibliography("bibliography.bib", style: "ieee")

// Add more Lists if needed
#outline(title: "List of Figures", target: figure.where(kind: image))


