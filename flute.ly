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
    R1*7/4*4 |
    % MS p. 6
    r4 r8 fss8-.\p r gs-. r as-. r b-. r4 r |
    \accel
    \time 3/2 r4 r8 es,=''-.\< r fs-. r gs-. r as--\f \noBeam b8.( cs16 |
    \agitato
    \time 7/4 d='''4)
  }
}

