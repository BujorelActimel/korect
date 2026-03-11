#set document(title: "Korect", author: "Alexandru")
#set page(paper: "a4", margin: 2.5cm)
#set text(font: "New Computer Modern", size: 11pt)
#set par(justify: true, leading: 0.75em)

#align(center)[
  #v(3cm)

  #text(size: 24pt, weight: "bold")[Korect]

  #v(0.6cm)

  #text(size: 13pt, style: "italic")[
    Semantics-Aware Fuzzer Generation from K Framework Specifications
  ]

  #v(0.4cm)

  #text(size: 10pt, fill: luma(90))[
    Babeș-Bolyai University · Faculty of Mathematics and Computer Science
  ]

  #v(3cm)
]

#line(length: 100%, stroke: 0.4pt + luma(160))
#v(1.2cm)

#text(size: 13pt, weight: "semibold")[Abstract]

#v(0.5cm)

Automated testing of language implementations presents a fundamental tension between
input validity and semantic coverage. Random generation scales poorly due to the high
rejection rate of syntactically or semantically invalid inputs, while coverage-guided
approaches such as AFL operate at the binary level and are therefore blind to the
semantic structure of the language under test. We present *Korect*, a framework that
resolves this tension by deriving semantics-aware fuzzers directly from formal language
specifications written in the K Framework. Given a K definition, Korect constructs a
program generator that guarantees semantic validity by construction, producing only
inputs whose execution is defined according to the specification. Furthermore, Korect
extracts a rule dependency graph from the K semantics, enabling directed fuzzing toward
user-specified rewrite rules. This allows practitioners to systematically target
individual language features, such as pointer arithmetic, function call conventions,
or specific compiler optimization passes, without requiring instrumentation or a
reference implementation.

We instantiate and evaluate Korect on the formal K semantics of C (KCC), targeting the
C11 standard. Using differential fuzzing across GCC and Clang at multiple optimization
levels, we demonstrate that Korect surfaces behavioral discrepancies attributable to
compiler bugs and standard misinterpretations. We further show that rule-directed
generation produces inputs that exercise targeted semantic rules at a significantly
higher rate than undirected generation, validating the utility of the dependency graph
as a coverage guidance mechanism. Our results suggest that formal language specifications
constitute a largely untapped foundation for principled, automated test generation, and
that the K Framework's operational semantics are particularly well-suited to this purpose.
