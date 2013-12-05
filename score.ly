% Created on Wed Sep 22 15:55:48 EDT 2010
\version "2.16.0"

\header {
  title = "Fantasy on Southwestern Folk Songs" 
  composer = \markup {
    \center-column {
      "Marnen E. Laibow-Koser"
      "719 State Street, 1st floor"
      "Albany, NY 12203"
      "marnen@marnen.org • (845) 625-7801"
    }
  }
  date = "September 2010"
  copyright = "Copyright © 2010 Marnen E. Laibow-Koser (ASCAP). All rights reserved." 
}

\include "english.ly"

% Global definitions
\include "globals.ily"
\include "book-titling.ily"

% Include notes files for the various parts
\include "flute.ily"
\include "clarinet.ily"
\include "violin.ily"
\include "viola.ily"
\include "cello.ily"
\include "harp.ily"

#(set-global-staff-size 18)

\pageBreak
staffFlute = \new Staff \with {
  \time 4/4
  instrumentName = "Flute"
  shortInstrumentName = "Fl."
  midiInstrument = "flute"
} {
  \clef treble
  \fluteNotes
}
staffClarinet = \new Staff \with {
  instrumentName = "Clarinet in A"
  shortInstrumentName = "Cl. (A)"
  midiInstrument = "clarinet"
} {
  \clef treble
  \tag #'transposed {
    \transpose a, c {
      \clarinetNotes
    }
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

basicScore = <<
  \accidentalStyle #'Score "modern"
  \andante
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


\score {
  \keepWithTag #'concert-pitch
  \basicScore
  
  \midi {
  }
}

\score {
  \keepWithTag #'transposed
  \basicScore
  
  \layout {
    \context {
      \Staff
      extraNatural = ##f
      \override TimeSignature #'style = #'numbered
      \override Glissando #'breakable = ##t 
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


