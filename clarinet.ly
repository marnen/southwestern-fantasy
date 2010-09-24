\version "2.13.31"

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
    d2. | \time 4/4 r4 d~\pp d8 ef-- g-- ef-- | \time 7/8 d-- r r4 r r8 |
    \time 5/4 r4 f=2\ppp( g | gs4 a) r2 r4 |
    \time 3/4 R2.
  }
}
