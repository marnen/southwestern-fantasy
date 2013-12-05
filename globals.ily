\version "2.16.0"

\language "english"

\header {
  title = "Fantasy on Southwestern Folk Songs" 
  date = "September 2010"
  copyright = "Copyright © 2010 Marnen E. Laibow-Koser (ASCAP). All rights reserved." 
}


#(define afterGraceFraction (cons 1 4))

arco = \markup { arco }
pizz = \markup { pizz. }
conSord = \markup { con sord. }
senzaSord = \markup { senza sord. }

lh = \markup { "L.H." }

semprep = \markup { \italic sempre \dynamic p }
semprepp = \markup { \italic sempre \dynamic pp }

andante = \tempo "Andante" 4 = 63
piùMosso = \tempo "Poco più mosso" 4 = 72
accel = \tempo "accel."
agitato = \tempo "Agitato" 4 = 100
tempoIo = {
  \set Score.tempoHideNote = ##t 
  \tempo "Tempo Iº" 4 = 63
}

moreBreaks = {
  \override Beam #'breakable = ##t
  \override Glissando #'breakable = ##t
}

tempoMeter = {
  \andante
  \time 4/4
  s1*3 |
  \time 3/4
  s2.*4 |
  \time 4/4
  s1 |
  \time 3/4
  s2.*2 |
  % p. 2 (m. 11)
  \time 4/4
  s1 |
  \set Timing.beatStructure = #'(4 3)
  \time 7/8
  s8*7 |
  \time 5/4
  s4*5*2 |
  \time 3/4
  s2.*3 |
  % p. 3 (m. 18)
  \set Timing.beatStructure = #'(2 2 3)
  \time 7/8
  s8*7 |
  \time 4/4
  s1 |
  \set Timing.beatStructure = #'(2 2 3)
  \time 7/8
  s8*7 |
  \time 4/4
  s1*2 |
  \time 3/4
  s2. |
  \time 4/4
  s1 |
  % p. 4 (m. 25)
  s1 |
  \time 3/4
  s2.*2 |
  \time 4/4
  s1 |
  \time 3/4
  s2. |
  \time 4/4
  s1*3 |
  % p. 5 (m. 33)
  \piùMosso
  s1*2 |
  \time 3/2
  s1. \bar "||"
  \time 7/4
  s4*7*2 |
  % p. 6 (m. 38)
  s4*7*8 |
  % p. 8 (m. 46)
  s4*7 |
  \accel
  \time 3/2
  s1. \bar "||"
  \agitato
  \time 7/4
  s4*7*2 |
  % p. 9 (m. 50)
  s4*7*2 |
  \time 3/2
  s1.*2 \bar "||"
  % p. 10 (m. 54)
  \tempoIo
  \time 4/4
  s1*2 |
  % p. 11 (m. 56)
  \time 3/4
  s2. |
  \time 4/4
  s1 |
  \time 3/4
  s2. |
  \time 4/4
  s1 |
  % p. 12 (m. 60)
  \time 5/4
  s4*5 |
  \time 4/4
  s1 |
  \time 3/4
  s2. |
  \set Timing.beatStructure = #'(2 2 3)
  \time 7/8
  s8*7 |
  % p. 13 (m. 64)
  \time 3/4
  s2. |
  \time 4/4
  s1 |
  \time 3/4
  s2. |
  \set Timing.beatStructure = #'(2 2 3)
  \time 7/8
  s8*7 |
  % p. 14 (m. 68)
  \time 4/4
  s1 |
  \time 3/4
  s2. |
  \time 7/4
  s4*7*2 |
  \time 4/4
  s1 |
  % p. 15 (m. 73)
  \time 5/4
  s4*5 |
  \time 4/4
  s1 |
  \time 3/2
  s1. |
  \time 4/4
  s1*2 |
  \time 7/4
  s4*7 |
  % p. 16 (m. 79)
  s4*7 |
  \time 3/4
  s2.*3 |
  \time 4/4
  s1 |
  \time 3/4
  s2.*3 |
  % p. 17 (m. 87)
  \time 4/4
  s1*4 \bar "|."
}

crossStaffBracket = \once \override PianoStaff.Arpeggio #'stencil = #ly:arpeggio::brew-chord-bracket
#(
  define-markup-command (pedalChange layout props pedaling) (markup-list?)
  (interpret-markup layout props
    (markup (make-concat-markup (map #'make-vcenter-markup pedaling)))
  )
)
