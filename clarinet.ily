\version "2.16.0"

% Clarinet in A, but these notes are entered in concert pitch.
instrumentName = "Clarinet in A"

clarinetNotes = {
  \key g \major

  \relative g'' {
    % MS p. 1
    R1 | r4 \grace { g32([\pp d' g,] } ef8)-. d-. r d,='-. ef'=''-. r | d-. r r4 r2 |
    R2.*4 |
  }
  \relative d {
    r4 d2.~_\semprepp | d2 d8-- ef-- |
    % MS p. 2
    d2. | r4 d~\pp d8 ef-- g-- ef-- | d-- r r4 r r8 |
    r4 f=2\ppp( g | gs4 a) r2 r4 |
  }
  \transpose f es { % get rid of double-flats in transposed part
    \relative f {
      r16 f( gf c f gf c='' gf f c gf f) |
      r ff!=( bf ef ef'='' bf ff ef bf ef, ff ef=) |
    }
  }
  \relative d {
    r d!=(\< g! c d g c e='' c g e c) |
    \set beatStructure = #'(2 2 3) r cs,=( fs b cs fs b e='' b fs e b fs cs=) |
  }
  \relative g' {
    r4 g4.\!\f ef8-- g-- a-- | \set beatStructure = #'(4 3) b4. r8 % middle of measure
  }
  \relative g'' {
  %{ middle of measure %} r8 g8.\p g16 | a4. ef4 b'='' a8 |
    a( g) r4 r g8. g16 | g4. ef8-- g-- a-- |
    % MS p. 4
    b4. r8 r g4 g8 | f4. g8 bf4. c8 | cs2 r4 | R2. |
  }
  \relative g'' {
    r4 \grace { g32[( d' g,] } ef8)-.\p d-. r d,-. ef'-. r |
    d=''-. r r4 r | R1 |
    % MS p. 5
    <<
      { r4 r8 d=''~\< d c d ef | fs g as2.~\!\f | \piùMosso as1 }
      { s1 | s4 s2.\> | s2.\mp\> s4\p } 
    >> |
    R1 |
  }
  \relative f {
    r2 r r4 fs8.\p( gs16) \bar "||"
    \key fs \major
    as4-.( as-. as-. gs-.) b8.( as16 gs4) gs8.( as16) |
    b4-.( b-. b-. as-.) cs8.( b16 as4) fs8.( gs16) |
    % MS p. 6
    as4-.( as-. as-.) as8( gs) b8.( as16 gs4) gs8.( as16) |
    b4-.( b-. b-.) b8( as) cs8.( b16 as4) 
    % BEGIN inserted material
    fs8.( gs16 |
    as4) fss-- gs-- as-- b8.( as16 gs4) es8.( fs16 |
    gs4) es-- fs-- gs-- as8.( gs16 fs4) fs'='8.( gs16) |
    as4-.( as-. as-. gs-.) b8.( as16 gs4) gs8.( as16) |
    b4-.( b-. b-. as-.) cs8.( b16 as4) fs8.( gs16) |
    as4-.( as-. as-.) as8( gs) b8.( as16 gs4) gs8.( as16) |
    b4-.( b-. b-.) b8( as) cs8.( b16 as4)
    % END inserted material
    fs8.( gs16 |
    as4) fss-- gs-- as-- b8.( as16 gs4) es8.( fs16 |
    \accel
    gs4) es--\< fs-- gs-- as8--\f fs'=''-- \noBeam g8.( a16 \bar "||"
  }
  
  \agitato
  \tag #'concert-pitch {
    \key bf \major
  }
  
  \transpose bf as { % this should only happen with #'transposed
    \relative b'' {
      bf4) bf-- bf-- bf8.( af16) cf8.( bf16 af4) af8.( bf16 |
      % MS p. 7
      cf4) cf-- cf-- cf8.( bf16) df8.( cf16 bf4) gf8.( af16 |
      bf4) bf-- bf-- bf8.( af16) cf8.( bf16 af4) af8.( bf16 |
      cf4) cf-- cf-- cf8.( bf16) df8.( cf16 bf4) bf8.( cf16 |
      df='''4) df-- df-- df8.( c16) ef8.( df16 c8. df16 |
      ef4) ef-- ef-- df8.( ef16 df4)
    }
  }
  \relative b'' {
   b8.(\< cs16 \bar "||"
  }
  
  \tempoIo
  \key g \major
  \relative c''' {
    c!8) r b8.\ff b16 b4. g8-- | b-- c-- d4 r b~ |
    % MS p. 8
    b8 b c2 | r4 b8-- c-- d4 r |    
    b8. b16 b4. g8-- | b-- c-- d4 r2 |
    r8 ef d4~ d bf a | a2 r |
    r4 g4.\mf ef8 | g a b4 r r8 |
    r8 g a4. f8 | b a a( g) r2 |
  }
  \relative f'' {
    r4 f4.\mf ef8-- |
    \set beatStructure = #'(4 3) r ef-- g-- a-- b-- r r |
    r4 f=''2( ef4) | cs8( d) r4
  }
  \relative d {
    d8.\p( ef16) |
    % MS p. 9
    f4-- f-- f-- f8( ef) g8.( f16 ef4) f8.( g16) |
    af4-- af-- af-- af8( g) bf8.(\< af16 g8. f16 ef8.\f) r16 |
  }
  \relative g'' {
    r4 g4. ef8-- g-- a-- | b2.~ b4 r |
    R1 |
  }
  \relative e {
    % MS p. 10
    \set beatStructure = #'(1 1 1) ef4--\p ef-- ef-- d8( cs) ef8.( d16 cs4) | R1 |
    d1\pp~ | d1..~ | d1~ d8 r r4 r | R2. |
  }
  \relative d' {
    d8.( c16 b8. a16 g8. ef16) | d8 r r4 r | R1 | R2.*3 |
    R1*3 | r1\fermata \bar "|."
  }
}

\addQuote "clarinet" \clarinetNotes

transposedClarinetNotes = {
  \removeWithTag #'concert-pitch {
    \transpose a, c {
      \clarinetNotes
    }
  }
}