\version "2.13.31"

fluteNotes = {
  \key g \major
  
  \relative d'' {
    % MS p. 1
    d1~\pp | \tieDashed d~ | \tieSolid d~ | \time 3/4 d2.~ | d2. |
    R2.*2 | \time 4/4 d1~_\semprepp | \time 3/4 d2.~ |
    % MS p. 2
    d2. | \time 4/4 R1 | \time 7/8 R8*7 |
  }
  \relative f' {
    \time 5/4 r4 fs!2(\ppp f | ef4 d) r2 r4 |
  }
  \relative c'' {
    \time 3/4 r8 c4\p c c8 | r ef4 ef ef8 | r e4\< e e8 |
    % MS p. 3
    \time 7/8 r8 fs!=''4 fs fs |
    \time 4/4 r4 b=''4.\!\f g8-- b-- c-- |
    \time 7/8 \set beatStructure = #'(4 3) d='''4. r8 r b8.\p b16 |
    \time 4/4 c4. a4 d c8 | c8( b) r4 r b=''8. b16 | \time 3/4 b4. g8-- b-- c-- |
    % MS p. 4
    \time 4/4 d='''4. r8 r b4 b8 | a4. d8 fs!4. e8 | \time 3/4 d2 r4 | R2. |
    \time 4/4 R1 | \time 3/4 R2. |
  }
  \relative f''' {
    \time 4/4 r4 \grace { f16[( bf16] } gf8)-.\p f!-. r f,-. gf'-. r |
    % MS p. 5
    <<
      { r f='''-. r fs,~\< fs e f g | as='' b cs2.~\! | \piùMosso cs1 }
      { s1 | s4 s2.\f\> | s2.\mp\> s4\p }
    >> |
    R1 | \time 3/2 R1. \bar "||"
  }
  
  \relative f'' {
    \key fs \major
    \time 7/4
    R1*7/4*10 | % 6 additional measures
    % MS p. 6
    r4 r8 fss8-.\p r gs-. r as-. r b-. r4 r |
    \accel
    \time 3/2 r4 r8 es,=''-.\< r fs-. r gs-. r as--\f \noBeam b8.( cs16 \bar "||"
    
    \agitato
    \key bf \major
    \time 7/4
    d='''4) d-- d-- d8.( c16) ef8.( d16 c4) c8.( d16 |
    % MS p. 7
    ef4) ef-- ef-- ef8.( d16) f8.( ef16 d4) bf8.( c16 |
    d4) d-- d-- d8.( c16) ef8.( d16 c4) c8.( d16 |
    ef4) ef-- ef-- ef8.( d16) f8.( ef16 d4) d8.( ef16 |
    \time 3/2 f4) f-- f-- f8.( e16) g8.( f16 e8. f16 |
    g4) g-- g-- f8.( g16 a4) g8.(\< a16 \bar "||"
    
    \tempoIo
    \key g \major
    \time 4/4
    b='''8) r g8.\ff g16 g4. ef8-- | g-- a-- b4 r g~ |
    % MS p. 8
    \time 3/4 g8 g a2 | \time 4/4 r4 g8-- a-- b4 r4 |
    \time 3/4 g8. g16 g4. ef8-- | \time 4/4 g-- a-- b4 r2 |
    \time 5/4 r8 b8 a4~ a g bf | \time 4/4 fs2 r |
  }
  \relative b'' {
    \time 3/4 r4 b4.\mf g8 | \time 7/8 b c d4 r r8 |
    \time 3/4 r8 b c4. a8 | \time 4/4 d c c( b) r2 |
  }
  \relative b'' {
    \time 3/4 r4 b4. g8-- |
    \time 7/8 \set beatStructure = #'(4 3) r g-- b-- c-- d-- r r |
    \time 4/4 r4 f!2( e4 | \time 3/4 d=''') r r |
  }
  \relative a' {
    % MS p. 9
    \time 7/4 \set beatStructure = #'(1 1 1 1 1 1 1) r4 r8 a4--\p a-- a8-- a( g) b8.( a16 g4) |
    r4 r8 c4-- c-- c8-- c(\< b) d8.( c16 b8) g'=''--\f |
    \time 4/4 g4( g'='''4.) ef8-- g-- a-- |
    \time 5/4 b2.~ b4 r | \time 4/4 R1 |
    % MS p. 10
    \time 3/2 R1. |
  }
  \relative c''' {
    \time 4/4 r4 \grace { c32[( g' c,] } af8-.)\p g-. r g,-. af'-. g-. | R1 |
  }
  \relative d'' {
    \time 7/4 d1..\pp~ | d1~ d8 r r4 r | \time 3/4 d8.( c16 b8. a16 g8. ef16) |
    % MS p. 11
    d='8 r r4 r | R2. | \time 4/4 R1 | \time 3/4 R2.*3 | \time 4/4 R1 |
  }
  \relative d''' {
    r4 \grace { d16[( g] } ef8-.) d-. r d,-. ef-. r | R1 | 
  }
  \override Hairpin #'circled-tip = ##t
  << {d''\fermata} {s2.\> s4\!} >> \bar "|."
}

