#import "../symbols.typ": *

#let fo_sy() = [
  = List of Symbols <ch:list-of-symbols>

  == Latin Symbols <sec:latin-symbols>

  #table(
    columns: (1fr, 9fr),
    align: (center + top, left + top),
    inset: (3pt, 4pt),
    stroke: 0.7pt + black,
    [*Symbol*], [*Description*],
    ..for specifier in symbols.keys().sorted(key: specifier => upper(specifier)) {
      let content = symbols.at(specifier).at(0)
      let description = symbols.at(specifier).at(1)
      let symbol-group = symbols.at(specifier).at(2)
      if symbol-group == "phy" and not is_greek(specifier) {
        (
          align(alignment.horizon)[
            #content #label("def:" + specifier)
          ],
          description
        )
      }
    }
  )

  == Greek Symbols <sec:greek-symbols>

  #table(
    columns: (1fr, 9fr),
    align: (center + top, left + top),
    inset: (3pt, 4pt),
    stroke: 0.7pt + black,
    [*Symbol*], [*Description*],
    ..for specifier in symbols.keys().sorted(key: specifier => upper(specifier)) {
      let content = symbols.at(specifier).at(0)
      let description = symbols.at(specifier).at(1)
      let symbol-group = symbols.at(specifier).at(2)
      if symbol-group == "phy" and is_greek(specifier) {
        (
          align(alignment.horizon)[
            #content #label("def:" + specifier)
          ],
          description
        )
      }
    }
  )
]