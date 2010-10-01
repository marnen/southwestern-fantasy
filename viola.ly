\version "2.13.31"

violaNotes = {
  \set harmonicDots = ##t
  \key g \major
    
  % MS p. 1
  <c'\harmonic g'\harmonic>1\pp~  | <c'\harmonic g'\harmonic>1~ |
  <c'\harmonic g'\harmonic>1~ |
  \time 3/4 <c'\harmonic g'\harmonic>2.~ | <c'\harmonic g'\harmonic>2. |
  R2.*2 |
  \time 4/4 <c'\harmonic g'\harmonic>1_\semprepp~ | \time 3/4 <c'\harmonic g'\harmonic>2.~ |
  % MS p. 2
  \time 3/4 <c'\harmonic g'\harmonic>2. | \time 4/4 R1 |
  \relative d {
    \time 7/8  \set beatStructure = #'(4 3) d8-- ef-- g-- b-- d-- ef-- g-- |
    \time 5/4 d'=''2~ d2.~ | d1 r4 | 
  }
  \relative f' {
    \time 3/4 r8 f4\p f f8 | r8 ef4 ef ef8 | r8 d4\< d d8 |
    \time 7/8 r8 <cs fs>4 <cs fs> <cs fs> |
    \time 4/4 r4 <c=' b'>4.\!\f g'='8-- b-- c-- |
    \time 7/8 d4. r8
  }
  % middle of measure
  \relative d {
    r8 d4\p( | \time 4/4 ef e f fs | g) r r2 |
  }
  \relative b' {
    \time 3/4 b8. b16 b4. g8-- | 
    % MS p. 4
    \time 4/4 b='8-- c-- d4. r8 r b~ | b b a4. d8 fs!=''4~ |
    \time 3/4 fs8 e d4 \breathe
  }
  % middle of measure
  \relative a {
    af8.\p g16 | fs'4 fs es8. fs16 |
    \time 4/4 ef4. r8 r f4 g8 | \time 3/4 af4 e g8. af16 |
    \time 4/4 gf='4. r8 r fs!4 fs8 |
    % MS p. 5
    <<
      { fs2~ fs8 e\< fs g | <fs as>1~\! | \piùMosso <fs as> }
      { s1 | s1\f\> | s2.\mp\> s4\p }
    >> |
    R1 |
  }
  \relative d {
    \time 3/2 r2 r r4 d8.(\p e16) \bar "||"
   
    \key fs \major
    \time 7/4
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
    \time 3/2 e4 cs--\< d-- e-- fs--\f g8.( a16 \bar "||"
    
    \agitato
    \key bf \major
    \time 7/4
    bf='8) bf4-- bf-- bf-- bf8-- af8.( bf16 cf8. bf16 af4) |
    % MS p. 7
    r8 cf4-- cf-- cf-- cf8-- bf8.( cf16 df8. cf16 bf4) |
    r8 bf4-- bf-- bf-- bf8-- af8.( bf16 cf8. bf16 af4) |
    r8 cf4-- cf-- cf-- cf8-- bf8.( cf16 df8. cf16 bf4) |
    \time 3/2 r8 df=''4-- df-- df-- df8-- c8.( df16 ef8. df16) |
    r8 \clef treble ef4-- ef-- ef-- ef8-- df8.(\< ef16 f4) \bar "||"
    
    \tempoIo
    \key g \major
    \time 4/4
    g8.\ff g16 \clef alto c,,,=32( ef g b \clef treble ef g b ef g=''8--) ef-- g-- a-- |
    b4 \clef alto d,,,=32( g b ef \clef treble g b ef g b=''8) g4 g8-- |
    % MS p. 8
    \time 3/4 ef4. ef8-- b'-- a-- | 
    \time 4/4 g-- g=''(~ g32 \clef alto d,,= g b \clef treble ef g b ef g8--) g4 g8 |
    \time 3/4 g=''4. ef8-- g-- a-- |
    \time 4/4 b4 \clef alto d,,,=32( g b ef \clef treble g b ef g b=''8) g4 g8-- |
    \time 5/4 fs4. a8 g4 bf2 | \time 4/4 fs4~ fs32\> bf( a fs d bf a fs) d='2\mf |
    \time 3/4 \clef alto ef4. ef8-- ef-- ef-- | \time 7/8 g4. r8 ef4 d8 |
    \time 4/4 ef4. f8 g4. a8 | \time 3/4 g8( fs) r4 r |
  }
  \relative a {
    % MS p. 9
    \time 7/4 R1.. | r2 r4 af=8(\p g) bf8.(\< af16 g8. f16 ef8. d16) |
    \time 4/4 c=1\f~ | \time 5/4 c4 d2\>~ d~\mf | \time 4/4 d\> cs4 d |
    % MS p. 10
    \time 3/2 ef8\p r r4 r2 r | \time 4/4 R1 |
  }
  \relative c' {
    \harmonicsOn
    <c g'>1\pp~ | \time 7/4 q1..~ | q1~ q8 r r4 r |
    \time 3/4 R2.*3 |
  }
  \relative d' {
    \harmonicsOff
    \time 4/4 r2 r4 <d b'>8^\conSord q | \time 3/4 <ef c'>4. <c a'!>8 <ef d'> <ef c'> |
    \time 4/4 <d b'>8-- q2..~ | q1~ | q2 r |
    \override Hairpin #'circled-tip = ##t
    \harmonicsOn
    << {<c g'>1\fermata^\senzaSord} {s2.\> s4\!} >> \bar "|."
  }
}
