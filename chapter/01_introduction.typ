#import "../symbols.typ": S11

#let ch_01(abbr) = [
  = Introduction <ch:intro>

  This is an introduction @cite_example[p.136]. This is S-Parameter #S11.

  An example image can be seen in Figure @fig:example_image. This is an abbreviation. #abbr.a[VSWR]. #abbr.a[PSRR]

  == Subsection

  === Subsubsection
  #lorem(1000)
  #figure(
    placement: auto,
    grid(
      rows: (auto, auto, auto),
      image("01_res/qhc2-2nd-05.svg", width: 100%),
    ),
    caption: [Second order second kind QHCs with $z_2=0.5$ (top), $z_2=1.0$ (mid) and  $z_2=1.5$ (bottom)],
  ) <fig:example_image>
  #lorem(1000)
  $
    S_11 = (a ^ 2 - b ^ 2) / ( c_1 * d_"hallo")
  $ <eq:test_equation>
  @eq:test_equation, it was stated that ... .
]
