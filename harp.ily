\version "2.18.0"

\include "globals.ily"
\includeOnce "cello.ily"
\includeOnce "clarinet.ily"
\includeOnce "viola.ily"

instrumentName = "Harp"

dcsR = { r8 d'-.([ cs'-.)] r }
dcsL = { r8 d,-.([ cs-. cs,-.)] }

harpNotesRight = {
  \key g \major

  \relative d''' {
    % MS p. 1
    d4\laissezVibrer\flageolet\pp_\markup { \harp-pedal #"---|^---" } r r2 |
    \tag #'part { \context CueVoice { \set instrumentCueName = "Cl." } }
    \cueDuring #"clarinet" #UP {
      R1
    }
    R1 |
    R2.*4 |
    R1 | R2. |
    % MS p. 2
    R2. | R1 | R1*7/8 |
  }
  d''4 \relative f {
    <f gf'>2\ppp_\markup \pedalChange {G \flat} <g f'>2_\markup \pedalChange {G \natural} |
    <gs= ef'>4_\markup \pedalChange {G \sharp} <a d> r2\p r4 |
    r8\p_\markup \column {\pedalChange {G \flat} \pedalChange {B \flat}} \clef bass <f= gf c>4 <f= gf c> <f= gf c>8 |
    r8_\markup \pedalChange {F \flat} <ef= ff bf ef='>4 <ef ff bf ef> <ef ff bf ef>8 |
    r8\<_\markup \column {\pedalChange {G \natural} \pedalChange {B \natural}} <g= c ff>4 <g c ff> <g c ff>8 |
    r8_\markup \column {\pedalChange {G \flat} \pedalChange {C \sharp}} <gf b ff'>4 <gf b ff'> <gf b ff'> |
    r4\!\f c,=16 ef g b \clef treble c ef g b c ef g b |
    \set beatStructure = #'(2 2 3) \ottava #1 c=''' g' b ef='''' <d,=''' g b d>4 \ottava #0 r r8 |
    R1 |
  }
  \relative g''' {
    r4 \ottava #1 \grace { g32([ d' g,] } ef8\p)-. d-. \ottava #0 r d,-. ef'!-. r |
    d='''8-. r r4 r |
  }
  % MS p. 4
  \relative g' {
    \arpeggioNormal
    r8 <g c ef g>--\arpeggio <b ef g b>--\arpeggio <c ef g c>--\arpeggio <d g b d>4\arpeggio r8 <g b> |
    <<
      { <f='' a>4._\markup \pedalChange {F \natural} <g d'>8 <bf fs'>4._\markup \column {\pedalChange {F \sharp} \pedalChange {B \flat}} <c e!>8_\markup \pedalChange {E \natural} }
      { s2 s8 s4._\markup \pedalChange {E \sharp} }
    >> |
    <cs=''' d>2_\markup \pedalChange {C \sharp} r4 |
  }
  \relative f' {
    r8 <fs a>4\p <fs a> <es b'>8_\markup \pedalChange {E \sharp} |
    r8 <ds g>4._\markup \pedalChange {D \sharp} r4 <f a>_\markup \pedalChange {F \natural} |
    r8 <af=' c>4_\markup \pedalChange {A \flat} <e! c'>_\markup \pedalChange {E \natural} <g=' d'>8_\markup \pedalChange {D \natural} |
    r8 <gf bf>4._\markup \column {\pedalChange {G \flat} \pedalChange {B \flat}} r4 <gf bf> |
    % MS p. 5
    r8 <gf=' bf> <d=' gf bf d>4~\arpeggio <d gf bf d>8 <af'=' c e>\< <bf d fs>_\markup \pedalChange {E \flat} <b ef g>_\markup \column {\pedalChange {G \natural} \pedalChange {B \natural}} |
    <cs='' fs as>4 <cs as' cs>2.~\f\> | 
    \piùMosso
    <cs as' cs>1 |
    R1\! |
  }
  <<
    { s8 s\p s4*5 }
    { \repeat unfold 3 \dcsR }
  >> \bar "||"
  
  \key fs \major
  \repeat unfold 7 \dcsR | % 2 measures
  % MS p. 6
  \repeat unfold 7 \dcsR | % 2 measures
  % BEGIN inserted material
  <<
    {
      \transpose d' ff' { \repeat unfold 3 \dcsR }
      \repeat unfold 4 \dcsR % 2 measures
    }
    {
      s8 s_\markup \pedalChange {F \flat} s4*6 | s1..
    }
  >> |
  \repeat unfold 7 \dcsR | % 2 measures
  \repeat unfold 7 \dcsR | % 2 measures
  % END inserted material
  %
  <<
    {
      \transpose d' ff' { \repeat unfold 3 \dcsR } r8 d'-.[( |
      \accel
      cs'-.]) r \dcsR \dcsR r4
    }
    { s1.. | s4 s4\< s4. s8_\markup \pedalChange {A \natural} s2\f_\markup \pedalChange {F \natural} }
  >> \bar "||"
  
    
  \agitato
  \key bf \major
  \relative b''{
    <bf d>4--_\markup \column {\pedalChange {G \flat} \pedalChange {B \flat}} q4-- q-- <af c>--_\markup \column {\pedalChange {A \flat} \pedalChange {C \natural}} <cf ef>8.(_\markup \pedalChange {C \flat} <bf d>16 <af c>4)_\markup \pedalChange {C \natural} f,=' \glissando |
    % MS p. 7
    <cf''=''' ef>4--_\markup \pedalChange {C \flat} q4-- q-- <bf d>-- <df f>8.(_\markup \pedalChange {D \flat} <cf ef>16 <bf d>4)_\markup \pedalChange {D \natural} f,='_\markup \pedalChange {C \natural} \glissando |
    <bf'='' d>4-- q4-- q-- <af c>-- <cf ef>8.(_\markup \pedalChange {C \flat} <bf d>16 <af c>4)_\markup \pedalChange {C \natural} f,=' \glissando |
    <cf''=''' ef>4--_\markup \pedalChange {C \flat} q4-- q-- <bf d>-- <df f>8.(_\markup \pedalChange {D \flat} <cf ef>16 <bf d>4)_\markup \pedalChange {D \natural} f,='_\markup \pedalChange {C \natural} \glissando |
    <<
      { <df''=''' f>4-- q-- q-- <c e>4-- <ef g>8.( <df f>16 <c e>8. <d f>16 }
      { s4._\markup \column {\pedalChange {A \natural} \pedalChange {D \flat}} s4_\markup \pedalChange {G \natural} s8 s4_\markup \pedalChange {E \natural} s8_\markup \pedalChange {E \flat} s8_\markup \pedalChange {B \natural} s4_\markup \pedalChange {E \natural}}
    >> |
    <<
      { <ef=''' g>4) q-- q-- <df f>8.( <ef g>16 <f a>4) ef,,='4\<\glissando }
      { s1_\markup \pedalChange {E \flat} s8 s_\markup \pedalChange {D \natural} s4_\markup \pedalChange {F \sharp}}
    >> \bar "||"
      
    \tempoIo
    \key g \major
    <c''=''' ef g b>8 r <c,='' ef g b>8.\ff q16 q4. <b c ef g>8-- |
    <c ef g b>-- <ef g a c>-- <d g b d>2 <d g b>4~ |
    % MS p. 8
    q8 q <d ef a c>4 r |
    \ottava #1 <d'=''' b' d>8 <c a' c> <b g' b>4 \ottava #0 r2 |
  }
  \relative e'' {
    r4 r8 ef32 g b ef g8^\lh r | r4 r8 b,,='32 ef g b <ef g b>8^\lh r8 r4 |
    R1*5/4 |
  }
  \relative f {
    fs32_\markup \pedalChange {B \flat} bf d fs bf d fs bf d2 r4 |
  }
  \relative g {
    << {r4} {s8 s8\mf_\markup \pedalChange {B \natural}} >> g32 b ef g r8 r4 |
    r4 g,=32 b ef g r8 <d''=''' g b> r r |
  }
  \relative e'' {
    r8 <ef g b> <f a c>4_\markup \pedalChange {F \natural} r |
  }
  \relative d'''' {
    r4 \ottava #1 d32 b g ef \ottava #0 r8 d,=''32 b g ef r8 r4 |
  }
  \relative g, {
    r8\mf \clef bass g32 b ef g r8 \clef treble g32 b ef g r8 g32 b ef g='' |
    r8 d=''32 g b ef r8 \ottava #1 d='''32 g b ef <d b g d>4 \ottava #0 r8
  }
  \relative f'' {
    r4 <f gf'>2_\markup \pedalChange {G \flat} <ef ff'>4_\markup \column {\pedalChange {F \flat} \pedalChange {B \flat}} |
    r4 <d='' d'>2 |
    % MS p. 9
    R1..*2 |
  }
  \relative c {
    r4 \clef bass c16\f ef g b \clef treble c ef g b c ef g b |
    \ottava #1 c=''' g' b ef <d='''' b g d>2~ q4 \ottava #0 r | R1 |
    % MS p. 10
    R1. |
  }
  \relative g' {
    \crossStaffBracket
    <g c, g>1\arpeggio\p | d'=''4\flageolet\laissezVibrer\pp r r2 |
    d2\flageolet d'2~\flageolet d2. |
    d,2\flageolet_\markup \pedalChange {A \flat} d'2~\flageolet d2. |
    R2.*3 | R1 | R2.*2 |
    \tag #'part { \context CueVoice { \set instrumentCueName = "Va." } }
    \cueDuring #"viola" #DOWN {
      R2.
    }
    R1*3 |
    \arpeggioBracket
    <d='''\flageolet d,\flageolet>4\arpeggio\laissezVibrer r r2\fermata \bar "|."
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
    d=,-- ef-- g-- b-- d-- ef-- |
    d,=,4 d,2\laissezVibrer | R2. |
    \tag #'part { \context CueVoice { \set instrumentCueName = "Vc." } }
    \cueDuring #"cello" #UP {
      R2. |
    }
    r4 <d d'>4~\arpeggio <d d'>8 ef-- g-- b-- |
    d=,-- ef-- g-- b-- d-- ef-- |
    % MS p. 2
    d,=,4 d,2\laissezVibrer |
    r4 ef=,,4~ ef8 g b d |
    \set beatStructure = #'(4 3) ef=, g b d ef g b |
    d='4 <d,,,=,, d'>1\arpeggio | r2 <d d'>2. |
    <f f'>2. | <ef ef'>2. | <d d'>2. |
    cs'!=,2.. |
    c4 c,2.~ | c4 <d d'> r r8 | R1 |
  }
  \relative d, {
    r4 <d d'>2.~ |
    <d d'>4 r r |
  }
  % MS p. 4
  \relative g {
    \arpeggioNormal
    r8 \clef treble <g c ef>--\arpeggio <b ef g>\arpeggio <c ef g>--\arpeggio <d g b>4\arpeggio r |
    r8 <d=' g b> <ef f a>4 r8 <es g d'> <g bf fs'>4 |
  }
  \relative d, {
    r4 \clef bass <d d'>2 | R2. | R1 | R2. | R1 |
  }
  \relative c' {
    % MS p. 5
    r2 r8 \clef treble <c e> <d fs> <ef g> | <fs as>4
  }
  % Middle of measure
  \relative c, {
    \clef bass <cs cs'>2.~ | <cs cs'>1 | 
  }
  \tag #'part { \context CueVoice { \set instrumentCueName = "Vc. pizz." } }
  \cueDuring #"cello" #DOWN {
    R1
  }
  \repeat unfold 3 \dcsL \bar "||"
  
  \key fs \major
  \repeat unfold 7 \dcsL | % 2 measures
  % MS p. 6
  \repeat unfold 7 \dcsL | % 2 measures
  % BEGIN inserted material
  \repeat unfold 21 \dcsL | % 6 measures
  % END inserted material
  \repeat unfold 5 \dcsL
  % now in middle of 3/2 measure!
  \relative d, {
    r8 d cs2
    -\tweak breakable ##f % this one doesn't want to slope the right way when broken 
    \glissando \bar "||"
  }
  
  \key bf \major
  \clef treble
  \relative b' {
    <<
      {\change Staff = "RH" \hideNotes b'=''4 s2.}
      \new Voice {
        \voiceOne
        \change Staff = "LH" <bf,=' d>4-- q-- q-- <af c>-- <cf ef>8.( <bf d>16 <af c>4) r
      }
      \new Voice {
        \voiceTwo
        r8 gf='4 f gf f gf f8 r4
      }
    >>
  }
  \change Staff = "LH"
  \unHideNotes
  \relative c'' {
    <<
      {
        \voiceOne
        <cf='' ef>4-- q-- q-- <bf d>-- <df f>8.( <cf ef>16 <bf d>4) r |
        <bf=' d>4-- q-- q-- <af c>-- <cf ef>8.( <bf d>16 <af c>4) r |
        <cf ef>4-- q-- q-- <bf d>-- <df f>8.( <cf ef>16 <bf d>4) r |
        <df='' f>4-- q-- q-- <c e>-- <ef g>8.( <df f>16 <c e>8. <df f>16 |
        <ef g>4) q-- g-- f8.( g16 <f a>4) r
      }
      \new Voice {
        \voiceTwo
        r8 f,='4 gf f gf f gf8 r4 |
        r8 gf4 f gf f gf f8 r4
        r8 f4 gf f gf f gf8 r4 |
        r8 a4 g a g b a8 |
        r8 c4 b8 r ef4 df8 r d r4 |
      }
    >>
    \oneVoice
    \key g \major
    <c='' ef g b>8 r
  }
  
  \relative c, {
    \clef bass <c c'>2. | r4 <d, d'>8 <d' d'> <d' d'>2 |
    r4 d,=,2
    -\tweak breakable ##f % this one doesn't want to slope the right way when broken 
    \glissando |
  }
  <<
      { \change Staff = "RH" \hideNotes d'''4 \unHideNotes \change Staff = "LH" }
      \new Voice {
        r4
      }
  >>
  \relative b {
    \clef treble <b g'>8-- <c a'>-- <d b'>4 r |
  }
  \clef bass <c, c>4
  \relative c' {
    \clef treble c32 ef g b r8 r4
  } |
  r8 \clef bass <d, d>8--
  \relative g {
    \clef treble g32 b ef g r8 r2
  } |
  R1*5/4 |
  r8 \clef bass <d, d>8 \clef treble d''2 r4 |
  \relative c, {
    r8 \clef bass c32 g' b ef r8
  }
  \relative b' {
    \clef treble <b ef g>8 r4 |
  }
  \relative d, {
    r8 \clef bass d32 g b ef r8 
  }
  \relative b' {
    \clef treble b32 ef g b r4 r8 |
  }
  \relative e' {
    r8 <ef g b>8 <f a c>4 r |
  }
  \relative d''' {
    r4 r8 d32 b g ef r8 \clef bass d,32 b g ef d=4 |
  }
  \relative e, {
    \clef bass ef32 g b ef r8 ef32 g b ef r8 \clef treble ef32 g b ef r8 |
    d,='32 g b ef r8 d32 g b ef r8 r4 r8 |
  }
  \relative a' {
    r4 <a ef>2 <bf gf'>4 |
  }
  r4 \clef bass <d, d>2 |
  % MS p. 9
  R1.. |
  \tag #'part { \context CueVoice { \set instrumentCueName = "Va." } }
  \cueDuring #"viola" #UP {
    R1..
  }
  \relative c, {
    r4 <c c,>2. | r4 <d d,>8-- ef''='-- <d d,>4 r r | 
    R1 |
  }
  \tag #'part { \context CueVoice { \set instrumentCueName = "Cl." } }
  \cueDuring #"clarinet" #UP {
    R1.
  }
  \relative c {
    % MS p. 10
    \crossStaffBracket
    <c g c,>1\arpeggio | d4\laissezVibrer r r2 |
    R1.. |
  }
  \relative e'' {
    \clef treble <ef af c>1 <d g b>2. | R2.*3 |
  }
  \relative d, {
    % MS p. 11
    \clef bass <d d,>1^\ppp\laissezVibrer | R2.*3 |
    r4 <d d,>2 <g g,>4~ | q4 <d d,>2 <g g,>4~ | q4 <d d,>2 <g g,>4 | R1\fermata \bar "|."
  }
}

\addQuote "harpL" \harpNotesLeft