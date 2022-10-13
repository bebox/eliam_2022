\version "2.23.12"
\include "../config/include.ily"

\header {
  title = "PSALAM 46"
  titlex = "Bog nam je zaklon i utvrda"
  composer = "Petra Horvat"
  style = ""
  broj = "11"
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
  \key d \major
  \time 4/4
  
  \markMojPoc
  h8 h h h ~ h h4 h8 |
  cis8 cis4 cis8 ~ cis4 r4 |
  e8 e4 e8 ~ e d4 e8 |
  fis8 fis4 e8 ~ e4 r8 h8 |
  h8 h4 h8 ~ h h h h |
  cis4 cis8 cis ~ cis4 r8 cis |
  e8 e e e ~ e d4 e8 |
  fis4 e r r8 e |
  h'8 h h h ~ h h cis d |
  cis8 a a4 r r8 fis |
  g8 g fis e ~ e d d e |
  fis8 e ~ e4 r2 |
  h8 h h h ~ h h4 h8 |
  cis4 cis8 cis ~ cis4 r |
  e8 e e e ~ e e d e |
  fis8 fis4 fis8 ~ fis2 ~ |
  fis1 |
  
  \once \override Score.RehearsalMark.self-alignment-X = #CENTER
  \once \override Staff.BarLine.extra-spacing-width = #'(0 . 1.2)
  \bar ".|:-||"
  \mark \default
  fis2. fis4 | fis1 |
  fis2. fis4 | fis2. fis4 |
  h2 a | d, e |
  fis1 ~ | fis 1 |
  %fis4. fis8 fis2 |
  %fis4. fis8 fis4. fis8 |
  %h4 a d, e |
  %fis1 |
  \once \override Score.RehearsalMark.self-alignment-X = #CENTER
  \once \override Staff.BarLine.extra-spacing-width = #'(0 . 1.2)
  \bar ":.|.:"
  \mark \default
  fis2. fis4 | fis2. fis4 |
  fis2. fis4 | fis2. fis4 |
  h2 a | d, e |
  fis1 ~ | fis1 |
  \bar ":|."
}

tekst = \lyricmode {
  \set stanza = "1."
  Bog nam je za -- klon i u -- tvr -- da, __ po -- moć spre -- mna u ne -- vo -- lji. __
  Ne stra -- huj -- mo kad ze -- mlja lju -- lja se, __ i bre -- go -- vi ru -- še u mo -- re.
  Nek bu -- če i bje -- sne mor -- ski va -- lo -- vi nek bre -- go -- vi dr -- šću od že -- sti -- ne: __
  "s na" -- ma je Ja -- hve nad voj -- ska -- ma __ na -- ša je u -- tvr -- da Bog Ja -- kov -- ljev! __
}

tekstB = \lyricmode {
  \set stanza = "2."
  Rije -- ka ve -- se -- li grad Go -- spo -- dnji, mje -- sto gdje Ja -- hve pre -- bi -- va. __ ""
  On se ne -- mo -- že po -- lju -- lja -- ti, __ od zo -- re mu po -- ma -- že Ja -- hve.
  Do na -- kraj sve ze -- mlje rat On pre -- ki -- da i lu -- ko -- ve kr -- ši lo -- mi ko -- plja.
  \repeat unfold 19 {_}
}

ref = \lyricmode {
  \set stanza = "1."
  Do -- đi -- te, gle -- daj -- te, sva dje -- la Ja -- hvi -- na. __
  U -- zvi -- šen nad pu -- ci -- ma, nad ze -- mljom u -- zvi -- šen. __
}

refB = \lyricmode {
  \set stanza = "2."
  Pre -- sta -- ni, smi -- ri se, i znaj da ja sam Bog. __
}

akordi = \chordmode {
  \set chordChanges = ##t
  h1:m | a/cis | e:m | a |
  h1:m | a/cis | e:m | fis |
  h1:m | a/cis | e:m | a |
  h1:m | a/cis | e:m | fis | fis |
  
  d1 | d | fis | fis | g | g | d | d |
  h1:m | h:m | a:6 | a:6 | g | g | h:sus | h |
}

\score {
  <<
    \new ChordNames {  \jazzChords \akordi }
    \new Staff { \note }
    \addlyrics { \tekst \ref }
    \addlyrics { \tekstB \refB }
  >>
  \layout {}
}

\markup {
  \vspace #1.2
  \smaller \italic Leadsheet: \hspace #1
  \huge {
    \rounded-box {
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) A \italic \teeny { verse 1. } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { B \teeny \italic { chorus 1. } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) A \italic \teeny { verse 2. } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { B \teeny \italic { chorus 2. } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) C \italic \teeny { outro } }
    }
  }
}
