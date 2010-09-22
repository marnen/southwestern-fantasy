\version "2.13.26"

fluteNotes = {
  \key g \major
  
  \relative d'' {
    % MS p. 1
    d1~\pp | \tieDashed d~ | \tieSolid d~ | \time 3/4 d2.~ | d2. |
    R2.*2 | \time 4/4 d1~_\semprepp | \time 3/4 d2.~ |
    % MS p. 2
    d2. | \time 4/4 R1 | \time 7/8 R8*7 |
  }
  \relative f' {
    \time 5/4 r4 fs!2(\ppp f | ef4 d) r2 r4 | \time 3/4 R2. |
  }
}

