\version "2.16.0"

instrumentName = "Viola"

violaNotes = {
  \set harmonicDots = ##t
  \key g \major
  \clef alto
    
  % MS p. 1
  <c'\harmonic g'\harmonic>1\pp~  | <c'\harmonic g'\harmonic>1~ |
  <c'\harmonic g'\harmonic>1~ |
  <c'\harmonic g'\harmonic>2.~ | <c'\harmonic g'\harmonic>2. |
  R2.*2 |
  <c'\harmonic g'\harmonic>1_\semprepp~ | <c'\harmonic g'\harmonic>2.~ |
  % MS p. 2
  <c'\harmonic g'\harmonic>2. | R1 |
  \relative d {
    d8-- ef-- g-- b-- d-- ef-- g-- |
    d'=''2~ d2.~ | d1 r4 | 
  }
  \relative f' {
    r8 f4\p f f8 | r8 ef4 ef ef8 | r8 d4\< d d8 |
    r8 <cs fs>4 <cs fs> <cs fs> |
    r4 <c=' b'>4.\!\f g'='8-- b-- c-- |
    d4. r8
  }
  % middle of measure
  \relative d {
    r8 d4\p( | ef e f fs | g) r r2 |
  }
  \relative b' {
    b8. b16 b4. g8-- | 
    % MS p. 4
    b='8-- c-- d4. r8 r b~ | b b a4. d8 fs!=''4~ |
    fs8 e d4 \breathe
  }
  % middle of measure
  \relative a {
    af8.\p g16 | fs'4 fs es8. fs16 |
    ef4. r8 r f4 g8 | af4 e g8. af16 |
    gf='4. r8 r fs!4 fs8 |
    % MS p. 5
    <<
      { fs2~ fs8 e\< fs g | <fs as>1~\! | \piùMosso <fs as> }
      { s1 | s1\f\> | s2.\mp\> s4\p }
    >> |
    R1 |
  }
  \relative d {
    r2 r r4 d8.(\p e16) \bar "||"
   
    \key fs \major
    fs4-.( fs-. fs-. e-.) g8.( fs16 e4) e8.( fs16) |
    g4-.( g-. g-. fs-.) a8.( g16 fs4) d8.( e16) |
    % MS p. 6
    fs4-.( fs-. fs-.) fs8( e) g8.( fs16 e4) e8.( fs16) |
    g4-.( g-. g-.) g8( fs) a8.( g16 fs4)
    % BEGIN inserted material
    d8.( e16 |
    fs4) ds-- e-- fs-- g8.( fs16 e4) cs8.( d16 |
    e4) cs-- d-- e-- f8.( e16 d4) d'='8.( e16) |
    fs4-.( fs-. fs-. e-.) g8.( fs16 e4) e8.( fs16) |
    g4-.( g-. g-. fs-.) a8.( g16 fs4) d8.( e16) |
    fs4-.( fs-. fs-.) fs8( e) g8.( fs16 e4) e8.( fs16) |
    g4-.( g-. g-.) g8( fs) a8.( g16 fs4)
    % END inserted material
    d8.( e16 |
    fs4) ds-- e-- fs-- g8.( fs16 e4) cs8.( d16) |
    \accel
    e4 cs--\< d-- e-- fs--\f g8.( a16 \bar "||"
    
    \agitato
    \key bf \major
    bf='8) bf4-- bf-- bf-- bf8-- af8.( bf16 cf8. bf16 af4) |
    % MS p. 7
    r8 cf4-- cf-- cf-- cf8-- bf8.( cf16 df8. cf16 bf4) |
    r8 bf4-- bf-- bf-- bf8-- af8.( bf16 cf8. bf16 af4) |
    r8 cf4-- cf-- cf-- cf8-- bf8.( cf16 df8. cf16 bf4) |
    r8 df=''4-- df-- df-- df8-- c8.( df16 ef8. df16) |
    r8 \clef treble ef4-- ef-- ef-- ef8-- df8.(\< ef16 f4) \bar "||"
    
    \tempoIo
    \key g \major
    g8.\ff g16 \clef alto c,,,=32( ef g b \clef treble ef g b ef g=''8--) ef-- g-- a-- |
    b4 \clef alto d,,,=32( g b ef \clef treble g b ef g b=''8) g4 g8-- |
    % MS p. 8
    ef4. ef8-- b'-- a-- | 
    g-- g=''(~ g32 \clef alto d,,= g b \clef treble ef g b ef g8--) g4 g8 |
    g=''4. ef8-- g-- a-- |
    b4 \clef alto d,,,=32( g b ef \clef treble g b ef g b=''8) g4 g8-- |
    fs4. a8 g4 bf2 | fs4~ fs32\> bf( a fs d bf a fs) d='2\mf |
    \clef alto c4. c8-- c-- c-- | ef4. r8 ef4 d8 |
    ef4. c8-- c-- c-- | c-- d4. r4 d8. d16 |
    ef4. ef8-- ef-- ef-- | g4. r8 ef4 d8 |
    ef4. f8 g4. a8 | g8( fs) r4 r |
  }
  \relative a {
    % MS p. 9
    R1.. | r2 r4 af=8(\p g) bf8.(\< af16 g8. f16 ef8. d16) |
    c=1\f~ | c4 d2\>~ d~\mf | d\> cs4 d |
    % MS p. 10
    ef8\p r r4 r2 r | R1 |
  }
  \relative c' {
    \harmonicsOn
    <c g'>1\pp~ | q1..~ | q1~ q8 r r4 r |
    R2.*3 |
  }
  \relative d' {
    \harmonicsOff
    r2 r4 <d b'>8^\conSord q | 
    q4. <b g'>8 <d b'> <ef c'> | <d d'>2 <d b'>8 q |
    <ef c'>4. <c a'!>8 <ef d'> <ef c'> |
    <d b'>8-- q2..~ | q1~ | q2 r |
    \override Hairpin #'circled-tip = ##t
    \harmonicsOn
    << {<c g'>1\fermata^\senzaSord} {s2.\> s4\!} >> \bar "|."
  }
}

\addQuote "viola" \violaNotes
