harpNotesRight = {
  \key g \major

  \relative d''' {
    % MS p. 1
    d4\laissezVibrer\flageolet\pp_\markup { \harp-pedal #"---|^---" } r r2 | R1*2 |
    \time 3/4 R2.*4 |
    \time 4/4 R1 | \time 3/4 R2. |
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
    % MS p. 3
  }
}
