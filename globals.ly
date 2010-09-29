\version "2.13.31"

pizz = \markup { pizz. }

semprepp = \markup { \italic sempre \dynamic pp }

andante = \tempo "Andante" 4 = 63
piùMosso = \tempo "Poco più mosso" 4 = 72

#(
  define-markup-command (pedalChange layout props pedaling) (markup-list?)
  (interpret-markup layout props
    (markup (make-concat-markup (map #'make-vcenter-markup pedaling)))
  )
)
