% Created on Wed Sep 22 15:55:48 EDT 2010
\version "2.18.0"

\language "english"

% Global definitions
\include "globals.ily"
\includeOnce "score_header.ily"



% Include notes files for the various parts
\includeOnce "flute.ily"
\includeOnce "clarinet.ily"
\includeOnce "violin.ily"
\includeOnce "viola.ily"
\includeOnce "cello.ily"
\includeOnce "harp.ily"

#(set-global-staff-size 18)

staffFlute = \new Staff \with {
  instrumentName = "Flute"
  shortInstrumentName = "Fl."
  midiInstrument = "flute"
} {
  \clef treble
  <<
    \tempoMeter
    \fluteNotes
  >>
}
staffClarinet = \new Staff \with {
  instrumentName = "Clarinet in A"
  shortInstrumentName = "Cl. (A)"
  midiInstrument = "clarinet"
} {
  \clef treble
  \tag #'transposed {
    \transposedClarinetNotes
  }
  \tag #'concert-pitch {
    \clarinetNotes
  }
}
staffViolin = \new Staff \with {
  instrumentName = "Violin"
  shortInstrumentName = "Vln."
  midiInstrument = "violin"
} {
  \clef treble
  \violinNotes
}
staffViola = \new Staff \with {
  instrumentName = "Viola"
  shortInstrumentName = "Vla."
  midiInstrument = "viola"
} {
  \clef alto
  \violaNotes
}
staffCello = \new Staff \with {
  instrumentName = "Violoncello"
  shortInstrumentName = "Vc."
  midiInstrument = "cello"
} {
  \clef bass
  \celloNotes
}

staffHarp = \new PianoStaff \with {
  midiInstrument = #"orchestral harp"
  instrumentName = #"Harp"
  shortInstrumentName = #"Hp."
  connectArpeggios = ##t
} {
  <<
    \context Staff = "RH" {  % Right hand 
      \clef treble
      \harpNotesRight
    }
    \context Staff = "LH" {  % Left hand 			
      \clef bass
      \harpNotesLeft
    }
  >>
}

basicScore = \removeWithTag #'part {
  \killCues {
    <<
      \accidentalStyle Score.modern
      \new StaffGroup <<
        \staffFlute
        \staffClarinet
      >>
      \new StaffGroup <<
        \staffViolin
        \staffViola
        \staffCello
      >>
      \staffHarp
    >>
  }
}


\score {
  \keepWithTag #'concert-pitch
  \basicScore
  
  \midi {
  }
}

\pageBreak

\score {

  \keepWithTag #'transposed
  \basicScore
  
  \layout {
    \moreBreaks
    \context {
      \Staff
      extraNatural = ##f
      \override TimeSignature.style = #'numbered
    }
  }
}

\paper {
  #(set-paper-size "letter")
  print-first-page-number = ##f
  first-page-number = #0
  system-separator-markup = \slashSeparator
  left-margin = 18\mm
}


