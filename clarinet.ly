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
  \transpose f es { % get rid of double-flats in transposed part
    \relative f {
      r16 f( gf c f gf c='' gf f c gf f) |
      r ff!=( bf ef ef'='' bf ff ef bf ef, ff ef=) |
    }
  }
  \relative d {
    r d!=(\< g! c d g c e='' c g e c) |
    \time 7/8 \set beatStructure = #'(2 2 3) r cs,=( fs b cs fs b e='' b fs e b fs cs=) |
  }
  \relative g' {
    \time 4/4 r4 g4.\!\f ef8-- g-- a-- | \time 7/8 \set beatStructure = #'(4 3) b4. r8 % middle of measure
  }
  \relative g'' {
  %{ middle of measure %} r8 g8.\p g16 | \time 4/4 a4. ef4 b'='' a8 |
    a( g) r4 r g8. g16 | \time 3/4 g4. ef8-- g-- a-- |
    % MS p. 4
    \time 4/4 b4. r8 r g4 g8 | f4. g8 bf4. c8 | \time 3/4 cs2 r4 | R2. |
  }
  \relative g'' {
    \time 4/4 r4 \grace { g32[( d' g,] } ef8)-.\p d-. r d,-. ef'-. r |
    \time 3/4 d=''-. r r4 r | \time 4/4 R1 |
    % MS p. 5
    <<
      { r4 r8 d=''~\< d c d ef | fs g as2.~\!\f | \piùMosso as1 }
      { s1 | s4 s2.\> | s2.\mp\> s4\p } 
    >> |
    R1 |
  }
  \relative f {
    \time 3/2 r2 r r4 fs8.\p( gs16) \bar "||"
    \key fs \major
    \time 7/4
    as4-.( as-. as-. gs-.) b8.( as16 gs4) gs8.( as16) |
    b4-.( b-. b-. as-.) cs8.( b16 as4) fs8.( gs16) |
    % MS p. 6
    as4-.( as-. as-.) as8( gs) b8.( as16 gs4) gs8.( as16) |
    b4-.( b-. b-.) b8( as) cs8.( b16 as4) fs'='8.( gs16 |
    as4) fss-- gs-- as-- b8.( as16 gs4) es8.( fs16 |
    \accel
    \time 3/2 gs4) es--\< fs-- gs-- as8--\f fs'=''-- \noBeam g8.( a16 |
    \agitato
    \time 7/4 bf=''4)
  }
}
