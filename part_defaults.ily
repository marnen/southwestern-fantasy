\include "header.ily"

\header {
  composer = "Marnen E. Laibow-Koser"
  instrument = \instrumentName
}

partDefaults = {
  \accidentalStyle "modern"
  \override MultiMeasureRest #'expand-limit = 8
  \compressFullBarRests
  \numericTimeSignature
  \moreBreaks
}
