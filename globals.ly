\version "2.13.31"

semprepp = \markup { \italic sempre \dynamic pp }

#(
  define-markup-command (pedalChange layout props pedaling) (markup-list?)
  (interpret-markup layout props
    (markup (make-concat-markup (map #'make-vcenter-markup pedaling)))
  )
)
