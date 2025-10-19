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

#import "formal/task.typ": cont
#cont()

#import "formal/soa.typ": cont
#cont()

#import "formal/abstract.typ": cont
#cont()

#create-tud-outline()

#abbr.list()

#import "formal/list-of-symbols.typ": cont
#cont()


#show: tud-body

#import "chapter/01_introduction.typ": cont
#cont(abbr)

#show: tud-appendix
#import "appendix/01_electrodynamics.typ": cont
#cont(abbr)

#bibliography("bibliography.bib", style: "ieee")

// Add more Lists if needed
#outline(title: "List of Figures", target: figure.where(kind: image))


