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
    af8. g16 | fs'4 fs es8. fs16 |
  }
}
