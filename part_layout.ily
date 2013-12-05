\version "2.16.2"

\header {
  composer = "Marnen E. Laibow-Koser"
  instrument = \instrumentName
}

\score {
  \new Staff {
    \accidentalStyle "voice"
    \compressFullBarRests
    <<
      \tempoMeter
      \partNotes
    >>
  }
  
  \layout {
  }
}