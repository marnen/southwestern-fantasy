\version "2.13.26"

violaNotes = {
  \set harmonicDots = ##t
  \key g \major
    
  % MS p. 1
  <c'\harmonic g'\harmonic>1\pp~  | <c'\harmonic g'\harmonic>1~ |
  <c'\harmonic g'\harmonic>1~ |
  \time 3/4 <c'\harmonic g'\harmonic>2.~ | <c'\harmonic g'\harmonic>2. |
  R2.*2 |
  \time 4/4 <c'\harmonic g'\harmonic>1_\semprepp~ | \time 3/4 <c'\harmonic g'\harmonic>2.~ |
  % MS p. 2
  \time 3/4 <c'\harmonic g'\harmonic>2. | \time 4/4 R1 |
  \relative d {
    \time 7/8 d8[-- ef-- g-- b]-- d[-- ef-- g]-- |
    \time 5/4 d'=''2~ d2.~ | d1 r4 |
    \time 3/4 R2.
  }
}
