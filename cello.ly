\version "2.13.31"

celloNotes = {
  \key g \major
  
  \relative b {
    % MS p. 1
    R1*3 | \time 3/4 r4 r b8._\markup { \dynamic p \italic espr. } b16 |
    b4. g8 b c | d2 b8 b | c4. a8 d c | \time 4/4 b8-- b4.~-- b4 r |
    \time 3/4 r4 r b=8. b16 |
    % MS p. 2
    b4. g8 b c | \time 4/4 d2. r4 |
    \time 7/8 \set beatStructure = #'(4 3) r2 b=4 b8 |
    \time 5/4 a4. d8 fs!='2 \grace { e16([ fs] } e4) | d2.. r8 fs,=8.( g16) |
    \time 3/4 a4 a b8.( a16) | g4. r8 a8. b16 | c4\< c d8.( c16) |
    % MS p. 3
    \time 7/8 b=4. r8 b4 b8 | \time 4/4 b2~\!\f b8 g-- b-- c-- |
    \time 7/8 d4. r8 d4\p d8 | \time 4/4 d4. c8 b4 \grace { a16[( b] } a4) |
    g= r r2 | \time 3/4 \clef tenor ef'='8. ef16 ef4. c8-- |
    % MS p. 4
    \time 4/4 ef='8-- ef-- ef4. r8 r c~ | c d ef4. f8 g4~ | \time 3/4 g8 gs8 a='4 r | R2. |
    \time 4/4 R1 | \time 3/4 R2. |
  }
  \relative f' {
    \time 4/4 r2 r8 fs4\p fs8 |
    % MS p. 5
    fs8. e16 d4~ d8 c\< d ef | cs1\f\> |
    \piùMosso
    r8 \clef bass d='-.\mp\>( cs-. cs,-.) r d'='-.( cs-. cs,-.) |
    r\! d=-.\p^\pizz( cs-. cs,-.) r d'=-.( cs-. cs,-.) |
    \time 3/2 R1. \bar "||"
    
    \key fs \major
    \time 7/4
    R1*7/4*5 |
  }
  \relative f' {
    % MS p. 6
    \accel
    \time 3/2 r2 r fs8.(\f^\arco e16 ds8. cs16) \bar "||"
    
    \agitato
    \key bf \major
    \time 7/4
    bf=8 \noBeam gf-.( f-. f,-.) \repeat unfold 6 {r gf'-.([ f-. f,-.)]} | % 2 measures
    % MS p. 7
    \repeat unfold 7 {r8 gf'=-.([ f-. f,-.)]} | % 2 measures
    \time 4/4 r8 a'=-.( g-. g,-.) r b'-.( a-. a,-.) |
    \time 5/4 r c'-.( b-. b,-.) r ef'-.( df-. df,-.)
  }
  \relative c' {
    \clef treble \times 4/7 { c16(\< d ef fs g a b) } |
    
    \tempoIo
    \key g \major
    \time 4/4
    c=''8.\ff c16 c4. b8-- c-- ef-- | ef2~ ef8 d4 d8-- |
    % MS p. 8
    \time 3/4 d4. d8-- ef-- d-- | \time 4/4 ef-- d4. r4 g,='8.\f g16 |
    \time 3/4 g4. f8-- g-- a-- | \time 7/8 b4. r8 g4 g8 |
    \time 4/4 f4. g8 bf4. c8 | \time 3/4 bf8( a) r4
  }
  \relative f {
    \clef bass fs8.(\p g16) |
    % MS p. 9
    \time 7/4 a4-- a-- a-- a8( g) b8.( a16 g4) a8.( b16) |
    c4-- c-- c-- c8( b) d8.(\< c16 b4) b8--\f b-- |
    \time 4/4 b2~ b8 g-- b-- c-- |
    \time 5/4 d-- \noBeam \clef treble g---> b---> c---> d=''4---> r8 \clef bass d,4\mf d8 |
    \time 4/4 d4.\> c8 b4. a8 |
    % MS p. 10
    \time 3/2 g1.~\p | \time 4/4 g1~ | g2 r4 g8.(_\semprep a16) |
    \time 7/4 b4-- b-- b-- b8( a) c8.( b16 a4) a8.( b16 |
    c4) c-- c-- c8( b) d8.( c16 b4) r |
    \time 3/4 R2.*2 |
    % MS p. 11
    d,=8.(\pp c16 b8. a16 g8. ef16) |
    \time 4/4 d=,1~ | \time 3/4 d2. |
    \time 4/4 d1~ | d1~ | d1 | r1\fermata \bar "|."
  }
}
