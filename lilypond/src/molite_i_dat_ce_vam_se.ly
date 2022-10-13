\version "2.23.9"
\include "../config/include.ily"

\header {
  title = "MOLITE I DAT ĆE VAM SE"
  titlex = "Eliam 2022"
  composer = "Frank Bosch"
  style = ""
  broj = "4"
  %tagline = \markup { \override #'(font-name . "JohnSans White Pro") \override #'(font-size . -3) { Izvorno: Name, Album } }
}

\paper {
  \aFourL
  %min-systems-per-page = #7
  %annotate-spacing = ##t
  %system-system-spacing.padding = #3.2
  %page-breaking = #ly:one-page-breaking
  %last-bottom-spacing.minimum-distance = #8
}

note = \relative c' {
  \key d \major
  \time 4/4
  
  \markMojPoc
  \repeat volta 2 {
    fis8 g16 a r8 d,8 g fis e d |
    fis8 g16 a r8 d,8 h' a g fis |
    fis8 g16 a r8 d,16 d g8 fis e d |
    \alternative {
      \volta 1 {
        d2. r4 
      }
      \volta 2 {
        d2. r8 a'8
      }
    }
  }
  
  \markMojCenter
  d8 d cis a h4 a |
  fis8( g16) a ~ a2 r4 |
  d8 d cis a h4 a8. fis16 ~ |
  fis2 r8 fis4 e8 |
  e8 d r4 r4 r8 d8 |
  e8 fis e d r8 fis4 e8 |
  e8 d r4 r4 r8 d8 |
  e8 fis e d ~ d4 r4 |
  \bar "|."
}

tekst = \lyricmode {
  Mo -- li -- te, i dat će vam se!
  Tra -- ži te, i na -- ći će te!
  Ku -- caj -- te, i o -- tvo -- rit će vam se!
  se! Jer
  sva -- ki ko -- ji mo -- li, pri -- ma;
  ko -- ji tra -- ži, na -- la -- zi, __
  i tko ku -- ca, o -- tva -- ra mu se;
  i tko ku -- ca o -- tva ra mu se. __
}

ref = \lyricmode {

}

akordi = \chordmode {
  \set chordChanges = ##t
  d2 g4 a |
  d2 g4 a |
  d2 g4 a |
  d2 g4 a |
  d2. a4
  
  d2 g2 |
  d2. a4 |
  d2 g4 a4 |
  h1:m |
  g1 |
  a2 h2:m |
  g1 |
  a2 d2 |
}

\score {
  <<
    \new ChordNames {  \jazzChords \akordi }
    \new Staff { \note }
    \addlyrics { \tekst \ref }
  >>
  \layout {}
}

\markup {
  \vspace #1.2
  \smaller \italic Leadsheet: \hspace #1
  \huge {
    \rounded-box {
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) A \italic \teeny { verse } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { B \teeny \italic { chorus } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) A \italic \teeny { verse } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { B \teeny \italic { chorus } } }
    }
  }
}
