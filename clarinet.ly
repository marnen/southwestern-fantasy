\version "2.13.26"

% Clarinet in A, but these notes are entered in concert pitch.

clarinetNotes = {
  \key g \major

  \relative g'' {
    % MS p. 1
    R1 | r4 \grace { g32([\pp d' g,] } ef8)-. d-. r d,='-. ef'=''-. r | d-. r r4 r2 |
    \time 3/4 R2.*4 |
  }
  \relative d {
    \time 4/4 r4 d2.~_\semprepp | \time 3/4 d2 d8-- ef-- |
    % MS p. 2
  }
}
