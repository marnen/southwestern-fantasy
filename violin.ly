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
      { as2~ as8 gs\< as b | cs=''1~\! | \piùMosso cs }
      { s1 | s\f\> | s2.\mp\> s4\p }
    >> |
    R1 | \time 3/2 R1. \bar "||"
  }
  \relative d'' {
    \key fs \major
    \time 7/4
    R1*7/4*10 | % 6 additional measures
    % MS p. 6
    r4 r8 ds-.^\pizz r e-. r fs-. r g-. r4 r |
    \accel
    \time 3/2 r4 r8 cs,=''-.\< r d-. r e-. as,='4--\f^\arco b8.( cs16 \bar "||"
    
    \agitato
    \key bf \major
    \time 7/4
    d=''8) d4-- d-- d-- d8-- c8.( d16 ef8. d16 c4) |
    % MS p. 7
    r8 ef4-- ef-- ef-- ef8-- d8.( ef16 f8. ef16 d4) |
    r8 d4-- d-- d-- d8-- c8.( d16 ef8. d16 c4) |
    r8 ef4-- ef-- ef-- ef8-- d8.( ef16 f8. ef16 d4) |
    \time 3/2 r8 f=''4-- f-- f-- f8-- e8.( f16 g8. f16) |
    r8 g4-- g-- g-- g8-- f8.(\< g16 a4) \bar "||"
    
    \tempoIo
    \key g \major
    \time 4/4
    b=''8.\ff b16 b4. g8-- b-- c-- | d2~ d8 b4 b8-- |
    % MS p. 8
    \time 3/4 c4. a8-- d-- c-- | \time 4/4 b8-- b4. r4 b,='8.\mf b16 |
    \time 3/4 b4. g8-- b-- c-- | \time 7/8 <d d,>4. r8 b4 b8 |
    \time 4/4 a4. d8 fs!4. \grace{ e16[( fs16] } e8) |
    \time 3/4 d=''4 r r |
  }
  \relative f' {
    % MS p. 9
    \time 7/4 r4 r8 f4--\p f-- f8-- f( ef) g8.( f16 ef4) |
    r4 r8 af4-- af-- af8-- af(\< g) bf8.( af16 g8) b'=''--\f |
    \time 4/4 b2~ b8 g-- b-- c-- |
    \time 5/4 d2.~ d4 r | \time 4/4 R1 |
    % MS p. 10
    \time 3/2 R1. | \time 4/4 R1
  }
  \relative d''' {
    d1:32\pp | \time 7/4 d1..: | d1: d8.( c16 b8. a16 g8. ef16 ) |
    \time 3/4 d8 r r4 r | R2.*2 |
  }
  \relative g' {
    \time 4/4 r2 r4 g8^\conSord g | \time 3/4 af4. f8 <f bf> <f a> |
    \time 4/4 g8-- g2..~ | g1~ | g2 r |
  }
  \override Hairpin #'circled-tip = ##t
  << {d'''1:-\fermata^\senzaSord} {s2.\> s4\!} >> \bar "|."
}
