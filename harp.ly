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
    <f gf'>2\ppp_\markup \concat \vcenter {G \flat} <g f'>2_\markup \concat \vcenter {G \natural} |
    <gs= ef'>4_\markup \concat \vcenter {G \sharp} <a d> r2\p r4 |
    \time 3/4 r8_\markup \column {\concat \vcenter {B \flat} \concat \vcenter {G \flat}} \clef bass <f= gf c>4 <f= gf c> <f= gf c>8 |
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
    \time 7/8 ef=,[ g b d] ef[ g b] |
    \time 5/4 d='4 <d,,,=,, d'>1\arpeggio | r2 <d d'>2. |
    \time 3/4 <f f'>2. |
  }
}
