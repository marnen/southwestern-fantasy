\version "2.13.26"

harmonicFifth= {
  \set harmonicDots = ##t
  <
    c'\harmonic
    g'\harmonic
  >
}

violaNotes = {
  \key g major
  
  \relative c' {
    % MS p. 1
    \harmonicFifth1*3~\pp | \time 3/4 \harmonicFifth1*2 |
    R1*2 | \harmonicFifth1*2\semprepp
  }
}
