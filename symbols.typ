#import "@preview/unify:0.8.1"

#let qty(num, unit) = unify.qty(num, unit, thousandsep: "")  // get rid of annoying space

// mathematical symbols
#let dd = $thin "d"$  // upright differential d

#let S11 = $underline(S)_11$
#let S12 = $underline(S)_12$
#let S21 = $underline(S)_21$
#let S22 = $underline(S)_22$
#let S23 = $underline(S)_23$
#let S24 = $underline(S)_24$


// https://symbl.cc/de/unicode-table/
#let symbols = (
  // specifier: (content, description, symbol-group)
  "Φ_0": ($Phi_0$, [Radiation intensity of isotropic source], "phy"),
  "Φ_max": ($Phi_max$, [Maximum radiation intensity], "phy"),
  "G": ($G$, [Gain], "phy"),
  "G_max": ($G_max$, [Maximum gain], "phy"),
  "ε_r": ($epsilon_"r"$, [Relative permittivity of a medium (substrate)], "phy"),
  "ε_eff": ($epsilon_"eff"$, [Effective non-quasi-static relative permittivity of a medium (substrate)], "phy"),
  "ε_eff0": ($epsilon_"eff0"$, [Effective quasi-static relative permittivity of a medium (substrate)], "phy"),
  "q": ($q$, [Filling factor], "phy"),
  "q_∞": ($q_oo$, [Filling factor for uncovered transmission line], "phy"),
)

#let get_symbol(specifier) = link(label("def:" + specifier), symbols.at(specifier).at(0))
#let is_greek(specifier) = 0x0370 <= specifier.at(0).to-unicode() and specifier.at(0).to-unicode() <= 0x03FF


#let intensity-radiated0 = get_symbol("Φ_0")
#let intensity-radiated-max = get_symbol("Φ_max")
#let gain = get_symbol("G")
#let gain_max = get_symbol("G_max")
#let epsilon_r = get_symbol("ε_r")
#let epsilon_eff = get_symbol("ε_eff")
#let epsilon_eff0 = get_symbol("ε_eff0")
#let filling-factor = get_symbol("q")
#let filling-factor-inf = get_symbol("q_∞")
