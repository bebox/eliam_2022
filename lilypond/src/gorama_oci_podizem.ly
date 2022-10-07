\version "2.23.9"
\include "../config/include.ily"

\header {
  title = "GORAMA OČI PODIŽEM"
  titlex = "Eliam 2022"
  composer = "Petra Horvat"
  style = ""
  broj = "1"
  %tagline = \markup { \override #'(font-name . "JohnSans White Pro") \override #'(font-size . -3) { Izvorno: Name, Album } }
}

\paper {
  \aFourR
  %min-systems-per-page = #7
  %annotate-spacing = ##t
  %system-system-spacing.padding = #3.2
  %page-breaking = #ly:one-page-breaking
  %last-bottom-spacing.minimum-distance = #8
}

note = \relative c' {
  \key c \major
  \time 4/4
  
  \markMojPoc
  r8 e8 e e e d d c |
  d8 e e2. |
  r8 e8 e e e d d c |
  c1 |
  r8 e8 e e e d d c |
  d8 e e2. |
  r8 e8 e e e d d c |
  c1 |
  \break

  \markMoj
  f8 e d c ~ c2 |
  r1 |
  f8 e d c ~ c2 |
  r1 |
  f8 e d c ~ c2 |
  r1 |
  a'4( g) f a8. g16 ~ |
  g2. r4 |

  \markMojCenter
  c4 a g r8. c16 ~ |
  c8 c a a g4 e8. a16 |
  r1 |
  r1 |
  c4 a g r8. c16 ~ |
  c8 c a a g4 e8. e16 |
  r1 |
  r1 |
  c'4 a g r8. c16 ~ |
  c8 c a a g4 e8. a16 |
  r1 |
  r1 |
  c4 a g r8. c16 ~ |
  c8 c a a g4 e8. e16 |
  r2 r4 g8. d16 ~ |
  d2. e8. c16 ~ |
  c4 r4 r2 |
  \bar "|."
}

tekst = \lyricmode {
  \set stanza = "1."
  Bog mi pro -- go -- va -- ra kroz svo -- ju Riječ, __
  že -- lim ga sa -- da slu -- ša -- ti. __
  On re -- če: Slu -- šaj Riječ i vr -- ši je __
  jer tad ćeš ži -- vot i -- ma -- ti. __
}

tekstB = \lyricmode {
  \set stanza = "2."
  Znam, Bo -- že, ti kroz ku -- šnje vo -- diš me __
  da bi u vje -- ri ja -- ča -- o. __
  Na -- u -- či me da u te uz -- dam se __
  jer ti na do -- bro vo -- diš sve. __
}

bridge = \lyricmode {
  Pri -- zi -- vam te, __
  pri -- la -- zim ti, __
  uz -- da -- jem se __
  vje -- ru -- jem ti. __
}

ref = \lyricmode {
  Go -- ra -- ma o -- či svo -- je po -- di -- žem.
  O -- da -- kle po -- moć me -- ni do -- la -- zi.
  Pe -- njem se vi -- še da te su -- sre -- tnem.
  Ti ćeš me mije -- njat kad pri -- bli -- žim se
  jer vo -- liš me. __
}

akordi = \chordmode {
  \set chordChanges = ##t
  
}

\score {
  <<
    \new ChordNames {  \jazzChords \akordi }
    \new Staff { \note }
    \addlyrics { \tekst \bridge \ref }
    \addlyrics { \tekstB }
  >>
  \layout {}
}

\markup {
  \vspace #1.2
  \smaller \italic Leadsheet: \hspace #1
  \huge {
    \rounded-box {
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) A \italic \teeny { verse 1. } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) B \italic \teeny { bridge } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { C \teeny \italic { chorus } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) A \italic \teeny { verse 2. } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) B \italic \teeny { bridge } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { C \teeny \italic { chorus } } }
    }
  }
}
