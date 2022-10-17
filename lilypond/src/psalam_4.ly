\version "2.23.12"
\include "../config/include.ily"

\header {
  title = "PSALAM 4"
  titlex = "Eliam 2022"
  composer = "Petra Horvat"
  style = ""
  broj = "8"
  %tagline = \markup { \override #'(font-name . "JohnSans White Pro") \override #'(font-size . -3) { Izvorno: Zbor Eliam, Čakovec }} 
}

\paper {
  \aFourR
  %min-systems-per-page = #7
  %annotate-spacing = ##t
  %system-system-spacing.padding = #3.2
  page-breaking = #ly:one-page-breaking
  last-bottom-spacing.minimum-distance = #13.7
  %paper-height = 11.69\in
}

note = \relative c' {
  \clef treble
  \key f \major
  \time 2/2
  
    \repeat volta 2 {

  \partial 4
  c8 c8 |
  
  \bar ".|:" 
  \markMojPonn
  c4 f8 f8 ~ f4 r8 c8 |
  c4 g'8 g8 ~ g4 r4 |
  c,4 a'8 a8 ~ a4 f8 f8 ~ |
  f8 b4. r8 b8 a8 b8 |
  c4 c8 a8 ~ a8 g4 g8 ~ |
  g8 a8 f2 r8 f8 |
    b4 a8 g8 ~ g8 f4 d8 ~ |

    \alternative {
      \volta 1 {
  d8 c4. r4 c8 c8  |
      }
  
  \volta 2 {
  \repeatTie d8 c4. r2 \bar "||" |
  }
    }
  }
  
  
  \break

  \once \override Score.RehearsalMark.self-alignment-X = #CENTER
  \once \override Score.RehearsalMark.Y-offset = #3.7
  %\once \override Staff.BarLine #'extra-spacing-width = #'(0 . 1.2)
  \mark \default
  a'8 a8 a8 a8 ~ a8 a4. |
  g8 g8 g8 g8 g8 g8 f8 e8 |
  e4 f8 f8 ~ f2 |
  r1 |
  b8 b8 b8 b8 b8 b8 b8 b8 |
  b8 a8 a4 r4 a8 f8 |
  f4 g8 g8 ~ g2 |
  r2 r8 c,8 c8 c8 |
  d4 d4 r2 |
  e8 e8 e8 e8 ~ e8 e8 e8 e8 |
  e4 f4 r2 |
  r2 r4 r8 f8 |
  g8 g8 a8 b8 ~ b8 a8 g4 |
  r4 g8 g8 g8 g8 r8 f8 |
  f8 g8 g2. |
  r1 \bar "|." |
}

tekstA = \lyricmode {
  Kad za -- zo -- vem te, __ u -- sli -- ši me, __ Bo -- že, prav -- do mo -- ja, 
  ti što me u tje -- sko -- bi i -- zba -- vi: u -- sli -- ši mol -- bu mo -- ju!
  Kad za mo -- ju!
  
  \set stanza = "1."
  Si -- no -- vi ljud -- ski, 
  do -- kle će vam sr -- ca tvr -- da o -- sta -- ti? __ 
  Do -- kle će -- te pra -- zne rije -- či vo -- lje -- ti, 
  la -- ži slije -- di -- ti? __ 
  Znaj -- te da Ja -- hve ču -- de -- sno vo -- di svo -- je sve -- te;
  U -- sli -- ša -- va mo -- li -- tve, kad ga zo -- vem on ču -- je me.
}

tekstB = \lyricmode {
  \repeat unfold 36 ""
  \set stanza = "2."
Smi -- re -- na sr -- ca pro -- mi -- sli -- te sa -- da i ne grije -- ši -- te. __ 
Dr -- šći -- te na tren na svo -- me le -- ža -- ju i za -- nije -- mi -- te. __
Jer mno -- gi ka -- žu: 
  Tko će po -- ka -- za -- ti nam sre -- ću? 
  Vi o -- staj -- te pra -- ve -- dni i u Ja -- hvu se u -- zdaj -- te. 
}

akordi = \chordmode {
  \set chordChanges = ##t
  s4
  f1 |
  c1/e | d:m | b |
  a1:m | d:m | g:m | c |
  \set chordChanges = ##f
  c |
  \set chordChanges = ##t
  
  d1:m | c | b | b |
  g1:m | f/a | c | c |
  b1 | c | d:m | d:m |
  es1 | es | c | c2 \parenthesize d2 |
  
}

\score {
  <<
    \new ChordNames { \jazzChords \akordi }
    \new Staff { \note }
    \addlyrics { \tekstA }
        \addlyrics { \tekstB }

  >>
  \layout {}
}

\markup {
  \vspace #1.2
  \smaller \italic Leadsheet: \hspace #1
  \huge {
    \rounded-box {
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) A \italic \teeny { intro } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { A \teeny \italic { chorus } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) B \italic \teeny { verse 1. } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { A \teeny \italic { chorus } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) B \italic \teeny { verse 2. } }
       \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \italic \teeny { modulation -> G } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { A \teeny \italic { chorus } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \italic \teeny { ending Eb-F-G } }
    }  
  }
}
