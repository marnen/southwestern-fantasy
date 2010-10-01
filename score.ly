% Created on Wed Sep 22 15:55:48 EDT 2010
\version "2.13.31"

\header {
	title = "Fantasy on Southwestern Folk Songs" 
 	composer = "Marnen E. Laibow-Koser" 
 	copyright = "Copyright © 2010 Marnen E. Laibow-Koser (ASCAP). All rights reserved." 
}

\include "english.ly"

% Global definitions
\include "globals.ly"

% Include notes files for the various parts
\include "flute.ly"
\include "clarinet.ly"
\include "violin.ly"
\include "viola.ly"
\include "cello.ly"
\include "harp.ly"

#(set-global-staff-size 18)

staffFlute = \new Staff {
	\time 4/4
	\set Staff.instrumentName = "Flute"
    \set Staff.shortInstrumentName = "Fl."
	\set Staff.midiInstrument = "flute"
	\clef treble
  \fluteNotes
}
staffClarinet = \new Staff {
	\set Staff.instrumentName = "Clarinet in A"
    \set Staff.shortInstrumentName = "Cl. (A)"
	\set Staff.midiInstrument = "clarinet"
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
staffViolin = \new Staff {
	\set Staff.instrumentName = "Violin"
    \set Staff.shortInstrumentName = "Vln."
	\set Staff.midiInstrument = "violin"
	\clef treble
	\violinNotes
}
staffViola = \new Staff {
	\set Staff.instrumentName = "Viola"
    \set Staff.shortInstrumentName = "Vla."
	\set Staff.midiInstrument = "viola"
	\clef alto
	\violaNotes
}
staffCello = \new Staff {
	\set Staff.instrumentName = "Violoncello"
    \set Staff.shortInstrumentName = "Vc."
	\set Staff.midiInstrument = "cello"
	\clef bass
	\celloNotes
}

staffHarp = \new PianoStaff {
	\set PianoStaff.midiInstrument = #"orchestral harp"
	\set PianoStaff.instrumentName = #"Harp"
    \set PianoStaff.shortInstrumentName = #"Hp."
	\set PianoStaff.connectArpeggios = ##t
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
  #(set-accidental-style 'modern 'Score)
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
  system-separator-markup = \slashSeparator
  left-margin = 18\mm
}


