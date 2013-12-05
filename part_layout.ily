\version "2.16.2"

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