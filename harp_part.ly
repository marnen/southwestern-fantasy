\version "2.18.0"

\include "globals.ily"
\include "harp.ily"

\include "part_defaults.ily"

\score {
  \new PianoStaff \with {
    connectArpeggios = ##t
  } {
    <<
      \context Staff = "RH" {
        \partDefaults
        <<
          \tempoMeter
          \harpNotesRight
        >>
      }
      \context Staff = "LH" {
        \partDefaults
        \harpNotesLeft
      }
    >>
  }
  
  \layout {
  }
}