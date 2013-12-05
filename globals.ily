\version "2.13.31"

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

crossStaffBracket = \once \override PianoStaff.Arpeggio #'stencil = #ly:arpeggio::brew-chord-bracket
#(
  define-markup-command (pedalChange layout props pedaling) (markup-list?)
  (interpret-markup layout props
    (markup (make-concat-markup (map #'make-vcenter-markup pedaling)))
  )
)
