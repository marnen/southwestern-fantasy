\version "2.16.0"

\include "globals.ily"
\includeOnce "clarinet.ily"
\includeOnce "harp.ily"

instrumentName = "Violoncello"

csbs = {r8 cs-.[ r8 bs,,-.]}

celloNotes = {
  \key g \major
  
  \clef bass
  % MS p. 1
  R1*2 |
  \tag #'part { \context CueVoice { \set instrumentCueName = "Hp." } }
  \transposedCueDuring #"harpL" #DOWN c'' {
    R1
  }
  \relative b {
    r4 r b8._\markup { \dynamic p \italic espr. } b16 |
    b4. g8 b c | d2 b8 b | c4. a8 d c | b8-- b4.~-- b4 r |
    r4 r b=8. b16 |
    % MS p. 2
    b4. g8 b c | d2. r4 |
    \set beatStructure = #'(4 3) r2 b=4 b8 |
    a4. d8 fs!='2 \grace { e16([ fs] } e4) | d2.. r8 fs,=8.( g16) |
    a4 a b8.( a16) | g4. r8 a8. b16 | c4\< c d8.( c16) |
    % MS p. 3
    b=4. r8 b4 b8 | b2~\!\f b8 g-- b-- c-- |
    d4. r8 d4\p d8 | d4. c8 b4 \grace { a16[( b] } a4) |
    g= r r2 | \clef tenor ef'='8. ef16 ef4. c8-- |
    % MS p. 4
    ef='8-- ef-- ef4. r8 r c~ | c d ef4. f8 g4~ | g8 gs8 a='4 r | R2. |
    R1 | R2. |
  }
  \relative f' {
    r2 r8 fs4\p fs8 |
    % MS p. 5
    fs8. e16 d4~ d8 c\< d ef | cs1\f\> |
    \piùMosso
    r8 \clef bass d='-.\mp\>( cs-. cs,-.) r d'='-.( cs-. cs,-.) |
    r\! d=-.\p^\pizz( cs-. cs,-.) r d'=-.( cs-. cs,-.) |
    R1. \bar "||"
    
    \key fs \major
    R1*7/4*5 | % 1 additional measure
    \tag #'part { \context CueVoice { \set instrumentCueName = "Cl." } }
    \cueDuring #"clarinet" #UP {
      R1*7/4
    }
  }
  % BEGIN inserted material
  << { \csbs }{ s2^\pizz } >> \repeat unfold 13 \csbs | % 4 measures
  <<
    {
      s1.. | \accel s4. s\<
    }
    {
      \repeat unfold 5 \csbs
    }
  >>
  % END inserted material
  \relative f' {
    % MS p. 6
    r4 fs8.(\f^\arco e16 ds8. cs16) \bar "||"
    
    \agitato
    \key bf \major
    bf=8 \noBeam gf-.( f-. f,-.) \repeat unfold 6 {r gf'-.([ f-. f,-.)]} | % 2 measures
    % MS p. 7
    \repeat unfold 7 {r8 gf'=-.([ f-. f,-.)]} | % 2 measures
    \repeat unfold 2 { r8 a'=-.( g-. g,-.) } r b'-.( a-. a,-.) |
    r c'-.( b-. b,-.) r ef'-.( df-. df,-.)
  }
  \relative d' {
    r8 \clef treble d! \noBeam \times 4/7 { c16(\< d ef fs g a b) } |
    
    \tempoIo
    \key g \major
    c=''8.\ff c16 c4. b8-- c-- ef-- | ef2~ ef8 d4 d8-- |
    % MS p. 8
    d4. d8-- ef-- d-- | ef-- d4. r8 ef4 d8-- |
    c4. b8-- c-- ef-- | ef2~ ef8 ef4 ef8-- |
    ef4. d8 bf4 a2 | bf8-- a4. r4 g='8.\mf g16 |
    g4. ef8-- g-- a-- | b4. r8 g4 g8-- |
    a-- ef-- f4. ef8-- | ef8-- d4. r4 g8. g16 |
    g4. f8-- g-- a-- | b4. r8 g4 g8 |
    f4. g8 bf4. c8 | bf8( a) r4
  }
  \relative f {
    \clef bass fs8.(\p g16) |
    % MS p. 9
    a4-- a-- a-- a8( g) b8.( a16 g4) a8.( b16) |
    c4-- c-- c-- c8( b) d8.(\< c16 b4) b8--\f b-- |
    b2~ b8 g-- b-- c-- |
    d-- \noBeam \clef treble g---> b---> c---> d=''4---> r8 \clef bass d,4\mf d8 |
    d4.\> c8 b4. a8 |
    % MS p. 10
    g1.~\p | g1~ | g2 r4 g8.(_\semprep a16) |
    b4-- b-- b-- b8( a) c8.( b16 a4) a8.( b16 |
    c4) c-- c-- c8( b) d8.( c16 b4) r |
    R2.*2 |
    % MS p. 11
    d,=8.(\pp c16 b8. a16 g8. ef16) |
    d=,1~ | d2.~ | d2.~ |d2.~ |
    d1~ | d1~ | d1 | r1\fermata \bar "|."
  }
}
