\version "2.13.26"

celloNotes = {
  \key g \major
  
  \relative b {
    % MS p. 1
    R1*3 | \time 3/4 r4 r b8._\markup { \dynamic p \italic espr. } b16 |
    b4. g8 b c | d2 b8 b | c4. a8 d c | \time 4/4 b8-- b4.~-- b4 r |
    \time 3/4 r4 r b=8. b16 |
    % MS p. 2
    b4. g8 b c | \time 4/4 d2. r4 |
    \time 7/8 r2 b=4 b8 |
    \time 5/4 a4. d8 fs!='2 \grace { e16([ fs] } e4) | d2.. r8 fs,=8.( g16) |
    \time 3/4 a4 a b8.( a16) | g4. r8 s4 |
  }
}
