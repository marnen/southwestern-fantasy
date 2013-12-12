\version "2.16.0"

\include "globals.ily"
\includeOnce "cello.ily"
\includeOnce "harp.ily"
\includeOnce "viola.ily"

instrumentName = "Flute"

fluteNotes = {
  \key g \major
  
  \relative d'' {
    % MS p. 1
    d1~\pp | \tieDashed d~ | \tieSolid d~ | d2.~ | d2. |
    R2. |
    \tag #'part { \context CueVoice { \set instrumentCueName = "Vc." } }
    \cueDuring #"cello" #DOWN {
      R2.
    }
    d1~_\semprepp | d2.~ |
    % MS p. 2
    d2. | R1 |
    \tag #'part { \context CueVoice { \set instrumentCueName = "Vla." } }
    \cueDuring #"viola" #DOWN {
      \set beatStructure = #'(4 3) R8*7 |
    }
  }
  \relative f' {
    r4 fs!2(\ppp f | ef4 d) r2 r4 |
  }
  \relative c'' {
    r8 c4\p c c8 | r ef4 ef ef8 | r e4\< e e8 |
    % MS p. 3
    r8 fs!=''4 fs fs |
    r4 b=''4.\!\f g8-- b-- c-- |
    \set beatStructure = #'(4 3) d='''4. r8 r b8.\p b16 |
    c4. a4 d c8 | c8( b) r4 r b=''8. b16 | b4. g8-- b-- c-- |
    % MS p. 4
    d='''4. r8 r b4 b8 | a4. d8 fs!4. e8 | d2 r4 | R2. |
    R1 | R2. |
  }
  \relative f''' {
    r4 \grace { f16[( bf16] } gf8)-.\p f!-. r f,-. gf'-. r |
    % MS p. 5
    <<
      { r f='''-. r fs,~\< fs e f g | as='' b cs2.~\! | \piùMosso cs1 }
      { s1 | s4 s2.\f\> | s2.\mp\> s4\p }
    >> |
    R1 | R1. \bar "||"
  }
  
  \relative f'' {
    \key fs \major
    R1*7/4*9 | % 6 additional measures
    \tag #'part { \context CueVoice { \set instrumentCueName = "Cl." } }
    \cueDuring #"clarinet" #UP {
      R1*7/4
    }
    % MS p. 6
    r4 r8 fss8-.\p r gs-. r as-. r b-. r4 r |
    \accel
    r4 r8 es,=''-.\< r fs-. r gs-. r as--\f \noBeam b8.( cs16 \bar "||"
    
    \agitato
    \key bf \major
    d='''4) d-- d-- d8.( c16) ef8.( d16 c4) c8.( d16 |
    % MS p. 7
    ef4) ef-- ef-- ef8.( d16) f8.( ef16 d4) bf8.( c16 |
    d4) d-- d-- d8.( c16) ef8.( d16 c4) c8.( d16 |
    ef4) ef-- ef-- ef8.( d16) f8.( ef16 d4) d8.( ef16 |
    f4) f-- f-- f8.( e16) g8.( f16 e8. f16 |
    g4) g-- g-- f8.( g16 a4) g8.(\< a16 \bar "||"
    
    \tempoIo
    \key g \major
    b='''8) r g8.\ff g16 g4. ef8-- | g-- a-- b4 r g~ |
    % MS p. 8
    g8 g a2 | r4 g8-- a-- b4 r4 |
    g8. g16 g4. ef8-- | g-- a-- b4 r2 |
    r8 b8 a4~ a g bf | fs2 r |
  }
  \relative b'' {
    r4 b4.\mf g8 | b c d4 r r8 |
    r8 b c4. a8 | d c c( b) r2 |
  }
  \relative b'' {
    r4 b4. g8-- |
    \set beatStructure = #'(4 3) r g-- b-- c-- d-- r r |
    r4 f!2( e4 | d=''') r r |
  }
  \relative a' {
    % MS p. 9
    \set beatStructure = #'(1 1 1 1 1 1 1) r4 r8 a4--\p a-- a8-- a( g) b8.( a16 g4) |
    r4 r8 c4-- c-- c8-- c(\< b) d8.( c16 b8) g'=''--\f |
    g4( g'='''4.) ef8-- g-- a-- |
    b2.~ b4 r | R1 |
    % MS p. 10
    R1. |
  }
  \relative c''' {
    r4 \grace { c32[( g' c,] } af8-.)\p g-. r g,-. af'-. g-. | R1 |
  }
  \relative d'' {
    d1..\pp~ | d1~ d8 r r4 r | d8.( c16 b8. a16 g8. ef16) |
    % MS p. 11
    d='8 r r4 r | R2. | R1 | R2.*3 |
  }
  \tag #'part { \context CueVoice { \set instrumentCueName = "Hp." } }
  \cueDuringWithClef #"harpL" #DOWN #"bass" {
    R1
  }

  \relative d''' {
    r4 \grace { d16[( g] } ef8-.) d-. r d,-. ef-. r | R1 | 
  }
  \override Hairpin #'circled-tip = ##t
  << {d''\fermata} {s2.\> s4\!} >> \bar "|."
}