\version "2.18.0"

\include "part_defaults.ily"

\score {
  \new Staff {
    \partDefaults
    <<
      \tempoMeter
      \partNotes
    >>
  }
  
  \layout {
  }
}