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
  }
  \relative f {
    r16 f( gf c f gf c='' gf f c gf f) |
    r ff=( bf ef ef'='' bf ff ef bf ef, ff ef=) |
    r d=(\< g c d g c e!='' c g e c) |
    \time 7/8 \set beatStructure = #'(2 2 3) r cs,=( fs b cs fs b e='' b fs e b fs cs=) |
  }
  \relative g' {
    \time 4/4 r4 g4.\!\f ef8-- g-- a-- | \time 7/8 \set beatStructure = #'(4 3) b4. r8 % middle of measure
  }
  \relative g'' {
  %{ middle of measure %} r8 g8.\p g16 | \time 4/4 a4. ef4 b'='' a8 |
    a( g) r4 r g8. g16 | \time 3/4 g4. ef8-- g-- a-- |
    % MS p. 4
    \time 4/4 b4. r8 r g4 g8 | f4. g8 bf4. c8 | \time 3/4 cs2 r4
  }
}
