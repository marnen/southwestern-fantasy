% Created on Wed Sep 22 15:55:48 EDT 2010
\version "2.13.26"

\header {
	title = "Fantasy on Southwestern Folk Songs" 
 	composer = "Marnen E. Laibow-Koser" 
 	copyright = "Copyright © 2010 Marnen E. Laibow-Koser (ASCAP). All rights reserved." 

}

\include "english.ly"


staffFlute = \new Staff {
	\time 4/4
	\set Staff.instrumentName = "Flute"
	\set Staff.midiInstrument = "flute"
	\key g \major
	\clef treble
  \fluteNotes
}
staffClarinet = \new Staff {
	\set Staff.instrumentName = "Clarinet in A"
	\set Staff.midiInstrument = "clarinet"
	\transposition a,
	\key g \major
	\clef treble
	\clarinetNotes
}
staffViolin = \new Staff {
	\set Staff.instrumentName = "Violin"
	\set Staff.midiInstrument = "violin"
	\key g \major
	\clef treble
	\violinNotes
}
staffViola = \new Staff {
	\set Staff.instrumentName = "Viola"
	\set Staff.midiInstrument = "viola"
	\key g \major
	\clef alto
	\violaNotes
}
staffCello = \new Staff {
	\set Staff.instrumentName = "Violoncello"
	\set Staff.midiInstrument = "cello"
	\key g \major
	\clef bass
	\celloNotes
}

staffHarp = \new PianoStaff {
	\set PianoStaff.midiInstrument = #"harp"
	\set PianoStaff.instrumentName = #"Harp"
				<<
		\context Staff = "RH" {  % Right hand 
			\clef treble
			\key g \major
			\relative c' {
			}
		}
		\context Staff = "LH" {  % Left hand 			
			\clef bass
			\key g \major
			\relative c {
			}
		}
	>>
}



\score {
	<<
		\staffFlute
		\staffClarinetInBb
		\staffViolin
		\staffViola
		\staffCello
		\staffHarp
	>>
	
	\midi {
	}

  \layout {
  }
}

\paper {
}


