# Encoding: UTF-8

{fileTypes: [],
 foldingStartMarker: /\/\*\*|\{\s*$/,
 foldingStopMarker: /\*\*\/|^\s*\}/,
 name: "TeX Math",
 patterns: 
  [{captures: {1 => {name: "punctuation.definition.constant.math.tex"}},
    match: 
     /(\\)(s(s(earrow|warrow|lash)|h(ort(downarrow|uparrow|parallel|leftarrow|rightarrow|mid)|arp)|tar|i(gma|m(eq)?)|u(cc(sim|n(sim|approx)|curlyeq|eq|approx)?|pset(neq(q)?|plus(eq)?|eq(q)?)?|rd|m|bset(neq(q)?|plus(eq)?|eq(q)?)?)|p(hericalangle|adesuit)|e(tminus|arrow)|q(su(pset(eq)?|bset(eq)?)|c(up|ap)|uare)|warrow|m(ile|all(s(etminus|mile)|frown)))|h(slash|ook(leftarrow|rightarrow)|eartsuit|bar)|R(sh|ightarrow|e|bag)|Gam(e|ma)|n(s(hort(parallel|mid)|im|u(cc(eq)?|pseteq(q)?|bseteq))|Rightarrow|n(earrow|warrow)|cong|triangle(left(eq(slant)?)?|right(eq(slant)?)?)|i(plus)?|u|p(lus|arallel|rec(eq)?)|e(q|arrow|g|xists)|v(dash|Dash)|warrow|le(ss|q(slant|q)?|ft(arrow|rightarrow))|a(tural|bla)|VDash|rightarrow|g(tr|eq(slant|q)?)|mid|Left(arrow|rightarrow))|c(hi|irc(eq|le(d(circ|S|dash|ast)|arrow(left|right)))?|o(ng|prod|lon|mplement)|dot(s|p)?|u(p|r(vearrow(left|right)|ly(eq(succ|prec)|vee(downarrow|uparrow)?|wedge(downarrow|uparrow)?)))|enterdot|lubsuit|ap)|Xi|Maps(to(char)?|from(char)?)|B(ox|umpeq|bbk)|t(h(ick(sim|approx)|e(ta|refore))|imes|op|wohead(leftarrow|rightarrow)|a(u|lloblong)|riangle(down|q|left(eq(slant)?)?|right(eq(slant)?)?)?)|i(n(t(er(cal|leave))?|plus|fty)?|ota|math)|S(igma|u(pset|bset))|zeta|o(slash|times|int|dot|plus|vee|wedge|lessthan|greaterthan|m(inus|ega)|b(slash|long|ar))|d(i(v(ideontimes)?|a(g(down|up)|mond(suit)?)|gamma)|o(t(plus|eq(dot)?)|ublebarwedge|wn(harpoon(left|right)|downarrows|arrow))|d(ots|agger)|elta|a(sh(v|leftarrow|rightarrow)|leth|gger))|Y(down|up|left|right)|C(up|ap)|u(n(lhd|rhd)|p(silon|harpoon(left|right)|downarrow|uparrows|lus|arrow)|lcorner|rcorner)|jmath|Theta|Im|p(si|hi|i(tchfork)?|erp|ar(tial|allel)|r(ime|o(d|pto)|ec(sim|n(sim|approx)|curlyeq|eq|approx)?)|m)|e(t(h|a)|psilon|q(slant(less|gtr)|circ|uiv)|ll|xists|mptyset)|Omega|D(iamond|ownarrow|elta)|v(d(ots|ash)|ee(bar)?|Dash|ar(s(igma|u(psetneq(q)?|bsetneq(q)?))|nothing|curly(vee|wedge)|t(heta|imes|riangle(left|right)?)|o(slash|circle|times|dot|plus|vee|wedge|lessthan|ast|greaterthan|minus|b(slash|ar))|p(hi|i|ropto)|epsilon|kappa|rho|bigcirc))|kappa|Up(silon|downarrow|arrow)|Join|f(orall|lat|a(t(s(emi|lash)|bslash)|llingdotseq)|rown)|P(si|hi|i)|w(p|edge|r)|l(hd|n(sim|eq(q)?|approx)|ceil|times|ightning|o(ng(left(arrow|rightarrow)|rightarrow|maps(to|from))|zenge|oparrow(left|right))|dot(s|p)|e(ss(sim|dot|eq(qgtr|gtr)|approx|gtr)|q(slant|q)?|ft(slice|harpoon(down|up)|threetimes|leftarrows|arrow(t(ail|riangle))?|right(squigarrow|harpoons|arrow(s|triangle|eq)?))|adsto)|vertneqq|floor|l(c(orner|eil)|floor|l|bracket)?|a(ngle|mbda)|rcorner|bag)|a(s(ymp|t)|ngle|pprox(eq)?|l(pha|eph)|rrownot|malg)|V(dash|vdash)|r(h(o|d)|ceil|times|i(singdotseq|ght(s(quigarrow|lice)|harpoon(down|up)|threetimes|left(harpoons|arrows)|arrow(t(ail|riangle))?|rightarrows))|floor|angle|r(ceil|parenthesis|floor|bracket)|bag)|g(n(sim|eq(q)?|approx)|tr(sim|dot|eq(qless|less)|less|approx)|imel|eq(slant|q)?|vertneqq|amma|g(g)?)|Finv|xi|m(ho|i(nuso|d)|o(o|dels)|u(ltimap)?|p|e(asuredangle|rge)|aps(to|from(char)?))|b(i(n(dnasrepma|ampersand)|g(s(tar|qc(up|ap))|nplus|c(irc|u(p|rly(vee|wedge))|ap)|triangle(down|up)|interleave|o(times|dot|plus)|uplus|parallel|vee|wedge|box))|o(t|wtie|x(slash|circle|times|dot|plus|empty|ast|minus|b(slash|ox|ar)))|u(llet|mpeq)|e(cause|t(h|ween|a))|lack(square|triangle(down|left|right)?|lozenge)|a(ck(s(im(eq)?|lash)|prime|epsilon)|r(o|wedge))|bslash)|L(sh|ong(left(arrow|rightarrow)|rightarrow|maps(to|from))|eft(arrow|rightarrow)|leftarrow|ambda|bag)|Arrownot)\b/,
    name: "constant.character.math.tex"},
   {captures: {1 => {name: "punctuation.definition.constant.math.tex"}},
    match: 
     /(\\)(sum|prod|coprod|int|oint|bigcap|bigcup|bigsqcup|bigvee|bigwedge|bigodot|bigotimes|bogoplus|biguplus)\b/,
    name: "constant.character.math.tex"},
   {captures: {1 => {name: "punctuation.definition.constant.math.tex"}},
    match: 
     /(\\)(arccos|arcsin|arctan|arg|cos|cosh|cot|coth|csc|deg|det|dim|exp|gcd|hom|inf|ker|lg|lim|liminf|limsup|ln|log|max|min|pr|sec|sin|sinh|sup|tan|tanh)\b/,
    name: "constant.other.math.tex"},
   {begin: /((\\)Sexpr)(\{)/,
    beginCaptures: 
     {1 => {name: "support.function.sexpr.math.tex"},
      2 => {name: "punctuation.definition.function.math.tex"},
      3 => {name: "punctuation.section.embedded.begin.math.tex"}},
    contentName: "source.r.embedded.math.tex",
    end: "(\\})",
    endCaptures: {1 => {name: "punctuation.section.embedded.end.math.tex"}},
    name: "meta.function.sexpr.math.tex",
    patterns: [{include: "source.r"}]},
   {captures: {1 => {name: "punctuation.definition.constant.math.tex"}},
    match: /(\\)([^a-zA-Z]|[A-Za-z]+)(?=\b|\}|\]|\^|\_)/,
    name: "constant.other.general.math.tex"},
   {match: /(([0-9]*[\.][0-9]+)|[0-9]+)/, name: "constant.numeric.math.tex"},
   {match: /«press a-z and space for greek letter»[a-zA-Z]*/,
    name: "meta.placeholder.greek.math.tex"}],
 scopeName: "text.tex.math",
 uuid: "027D6AF4-E9D3-4250-82A1-8A42EEFE4F76"}
