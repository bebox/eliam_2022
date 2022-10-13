\version "2.23.12"
\include "../config/include.ily"

\header {
  title = "PSALAM 1"
  titlex = "Eliam 2022"
  composer = "Filip Horvat"
  style = ""
  broj = "7"
  tagline = \markup { \override #'(font-name . "JohnSans White Pro") \override #'(font-size . -3) { Izvorno: Zbor Eliam, Čakovec 
  } }
}

\paper {
  \aFourL
  %min-systems-per-page = #7
  %annotate-spacing = ##t
  %system-system-spacing.padding = #3.2
}

note = \relative c' {
  \clef treble
  \key g \major
  \time 4/4
  

  
  \markMojPoc
  g'8. h16 ~ h8 a8 ~ a8 \phrasingSlurDashed g8\( g8\) g8 |
  a8 g16 a16 ~ a16 g8 a16 ~ a16 h8 h16 ~ h4 |
  g8. h16 ~ h8 a8 ~ a8 g4 g8 |
  a8 g16 fis16 ~ fis16 g8 g16 ~ g4 r4 |
  g8. h16 ~ h8 a8 ~ a8 g8\( g8\) g8 |
  a8 g16 a16 ~ a16 g8 a16 ~ a16 h8 h16 ~ h4 |
  g8. h16 ~ h8 a8 ~ a8 g8\( g8\) g8 |
  a8 g16 fis16 ~ fis16 g8 g16 ~ g4 \bar "" \break \markMojPoc d8 d8 |

  \repeat volta 2 {

      d'4. h8 ~ h4 r8 h8 |
      a8 g16 d16 ~ d8 a'8 ~ a8 g8 d8 d8 |
      d'4. h8 ~ h4 r8 h8 |
      a8 g16 d16 ~ d8 a'8 ~ a8 g8 r4 |
      g16 g8 g16 ~ g16 g8 a16 ~ a16 h16 a8 r4 |
      g16 g8 g16 ~ g16 g8 a16 ~ a16 g8 fis16 ~ fis16 g8 g16 ~ |
         \alternative {
     \volta 1 {
        g2. d8 d |
      }
      \volta 2 {
        \repeatTie g1  |
      }
    }
  }
  \bar "|."
}

tekst = \lyricmode {
  \set stanza = "1."
  Bla -- go __ o -- nom ko -- ji ne slu -- ša glas o -- pa -- kih __ i ne __ ho -- di na pu -- tu gre -- šni -- čkom. 
  Svo -- je __ da -- ne on ne pro -- vo -- di __ u ru -- ga -- nju već u -- ži -- va __ _ u Bo -- žjem za -- ko -- nu. 
  Ka -- o sta -- blo kraj vo -- de što te -- če ni -- kad ne -- ma u ve -- nu -- lo li -- šće, 
  u svoj čas plod do -- no -- si, 
  sve što ra -- di do -- brim u -- ro -- di. __ 
  Ka -- o
  (di.) __
}

tekstB = \lyricmode {
  \set stanza = "2."
  Ni -- su __ ta -- kvi, __ _ 
  ne, 
  ni -- su ta -- kvi o -- pa -- ki __ ka -- o __ plje -- vu njih vje -- tar ra -- zno -- si. __ 
  O -- ni __ ne -- će __ _ na su -- du Bo -- žjem op -- sta -- ti. __ 
  Ja -- hvi do -- bro po -- znat put je pra -- ve -- dnih. 
}

akordi = \chordmode {
  \set chordChanges = ##t
  e2:m c | d2 g |
  e2:m c | d2 g |
  e2:m c | d2 g |
  e2:m c | d2 g |

  c1 | g/h | c | e:m | c |
  a2:m d | g1 |
  \set chordChanges = ##f
  g1 |
 }

\score {
  <<
    \new ChordNames {  \jazzChords \akordi }
    \new Staff { \note }
    \addlyrics { \tekst }
    \addlyrics { \tekstB }
  >>
  \layout {}
}

\markup {
  \vspace #1.2
  \smaller \italic Leadsheet: \hspace #2
  \huge {
    \rounded-box {
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) A \italic \teeny { intro } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) A \italic \teeny { verse 1. } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { B \teeny \italic { chorus } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) A \italic \teeny { intro } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) A \italic \teeny { verse 2. } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { B \teeny \italic { chorus } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) A \italic \teeny { outro } }
    }
  }
}
