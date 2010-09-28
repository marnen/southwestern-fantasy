\version "2.13.31"

violinNotes = {
  \key g \major
  
  \relative d''' {
    % MS p. 1
    d1:32\pp | d: | d: | \time 3/4 | d2.: |
    d | R2.*2 | \time 4/4 d1:_\semprepp | d2.: |
    % MS p. 2
    d2. | \time 4/4 R1 | \time 7/8 R1*7/8 | \time 5/4 R1*5/4*2 |
  }
  \relative g' {
    r8 gf4\p gf gf8 | r <ff bf>4 <ff bf> <ff bf>8 |
    r8 <g c>4\< <g c> <g c>8 | \time 7/8 r <b!=' e=''>4 <b e> <b e> |
    \time 4/4 r4 g'=''4.\!\f ef8-- g-- a-- |
    \time 7/8 b4. r8
  }
  % middle of measure
  \relative d' {
    r8 d4(\p | \time 4/4 ef e f fs | g) r r2 |
    \time 3/4 g8. g16 g4. ef8-- |
    % MS p. 4
    \time 4/4 g-- a-- b4. r8 r g~ | g g f4. g8 bf4~ | 
    \time 3/4 bf8 c! cs4 \breathe fs,='8.\p g16 | a4 a b8. a16 |
    \time 4/4 g4. r8 r a4 b8 | \time 3/4 c4 c d8. c16 |
    \time 4/4 bf='4. r8 r as4 as8 |
    % MS p. 5
    <<
      { as2~ as8 gs\< as b | cs=''1~\! | cs }
      { s1 | s\f\> | s2.\mp\> s4\p }
    >> |
  }
}
