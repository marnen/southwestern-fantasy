\version "2.13.31"

harpNotesRight = {
  \key g \major

  \relative d''' {
    % MS p. 1
    d4\laissezVibrer\flageolet\pp_\markup { \harp-pedal #"---|^---" } r r2 | R1*2 |
    \time 3/4 R2.*4 |
    \time 4/4 R1 | \time 3/4 R2. |
    % MS p. 2
    R2. | \time 4/4 R1 | \time 7/8 R1*7/8 |
  }
  d''4 \relative f {
    <f gf'>2\ppp_\markup \pedalChange {G \flat} <g f'>2_\markup \pedalChange {G \natural} |
    <gs= ef'>4_\markup \pedalChange {G \sharp} <a d> r2\p r4 |
    \time 3/4 r8\p_\markup \column {\pedalChange {G \flat} \pedalChange {B \flat}} \clef bass <f= gf c>4 <f= gf c> <f= gf c>8 |
    r8_\markup \pedalChange {F \flat} <ef= ff bf ef='>4 <ef ff bf ef> <ef ff bf ef>8 |
    r8\<_\markup \column {\pedalChange {G \natural} \pedalChange {B \natural}} <g= c ff>4 <g c ff> <g c ff>8 |
    \time 7/8 r8_\markup \column {\pedalChange {G \flat} \pedalChange {C \sharp}} <gf b ff'>4 <gf b ff'> <gf b ff'> |
    \time 4/4 r4\!\f c,=16 ef g b \clef treble c ef g b c ef g b |
    \time 7/8 \set beatStructure = #'(2 2 3) \ottava #1 c=''' g' b ef='''' <d,=''' g b d>4 \ottava #0 r r8 |
    \time 4/4 R1 |
  }
  \relative g''' {
    r4 \ottava #1 \grace { g32([ d' g,] } ef8\p)-. d-. \ottava #0 r d,-. ef'!-. r |
    \time 3/4 d='''8-. r r4 r |
  }
  % MS p. 4
  \relative g' {
    \arpeggioNormal
    \time 4/4 r8 <g c ef g>--\arpeggio <b ef g b>--\arpeggio <c ef g c>--\arpeggio <d g b d>4\arpeggio r8 <g b> |
    % Some pedal changes in next bar are in LH part.
    <f='' a>4._\markup \pedalChange {F \natural} <g d'>8 <bf fs'>4._\markup \column {\pedalChange {F \sharp} \pedalChange {B \flat}} <c e!>8_\markup \pedalChange {E \natural} |
    \time 3/4 <cs=''' d>2 r4 |
  }
  \relative f' {
    r8 <fs a>4 <fs a> <es 'b>8_\markup \pedalChange {E \sharp}
  }
}

harpNotesLeft = {
  \key g \major

  \relative d'' {
    % MS p. 1
    \clef treble
    d4\laissezVibrer\flageolet r r2 | R1 |
  }
  \relative d,, {
    \arpeggioBracket
    r4 \clef bass <d d'>4~\p\arpeggio <d d'>8 ef-- g-- b-- |
    \time 3/4 d=,-- ef-- g-- b-- d-- ef-- |
    d,=,4 d,2\laissezVibrer | R2.*2 |
    \time 4/4 r4 <d d'>4~\arpeggio <d d'>8 ef-- g-- b-- |
    \time 3/4 d=,-- ef-- g-- b-- d-- ef-- |
    % MS p. 2
    d,=,4 d,2\laissezVibrer |
    \time 4/4 r4 ef=,,4~ ef8 g b d |
    \time 7/8 \set beatStructure = #'(4 3) ef=, g b d ef g b |
    \time 5/4 d='4 <d,,,=,, d'>1\arpeggio | r2 <d d'>2. |
    \time 3/4 <f f'>2. | <ef ef'>2. | <d d'>2. |
    \time 7/8 cs'!=,2.. |
    \time 4/4 c4 c,2.~ | \time 7/8 c4 <d d'> r r8 | \time 4/4 R1 |
  }
  \relative d, {
    r4 <d d'>2.~ |
    \time 3/4 <d d'>4 r r |
  }
  % MS p. 4
  \relative g {
    \arpeggioNormal
    \time 4/4 r8 \clef treble <g c ef>--\arpeggio <b ef g>\arpeggio <c ef g>--\arpeggio <d g b>4\arpeggio r |
    r8 <d=' g b> <ef f a>4 r8 <es g d'>^\markup \pedalChange {E \sharp} <g bf fs'>4 |
  }
  \relative d, {
    \time 3/4 r4 \clef bass <d d'>2 |
  }
}
