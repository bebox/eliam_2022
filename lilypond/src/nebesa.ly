\version "2.23.12"
\include "../config/include.ily"

\header {
  title = "NEBESA"
  titlex = "Psalam 19"
  composer = "Franko Cetinić"
  style = ""
  broj = "5"
  %tagline = \markup { \override #'(font-name . "JohnSans White Pro") \override #'(font-size . -3) { Izvorno: Name, Album } }
}

\paper {
  \aFourR
  %min-systems-per-page = #7
  %annotate-spacing = ##t
  %system-system-spacing.padding = #3.2
}

note = \relative c' {
  \key e \major
  \time 4/4
  
  \markMoj
  \repeat volta 2 {
    r8 h h gis cis h h gis |
    r8 cis h gis( h) h4 h8 |
    cis8 cis cis gis cis cis( dis) cis ~ |
    cis2. r8 cis8 |
    dis8 dis( e) dis ~ dis2 |
  \alternative {
    \volta 1 {
      r4 dis2. |
      fis2. dis8 e ~ |
      e1 |
    }
    \volta 2 {
      r4 dis4 fis dis |
      e1 ~ |
      e1 |
    }
  }
  }
  \bar "||" 
  \break

  \once \override Score.RehearsalMark.self-alignment-X = #CENTER
  \once \override Staff.BarLine.extra-spacing-width = #'(0 . 1.2)
  \bar ".|:-||"
  \mark \default
  r8 e e cis e4 fis8 e ~ |
  e1 |
  r4 e8 h e4 fis8 e ~ |
  e1 |
  r4 gis8 fis gis4 fis8 \slurDown fis( ~ |
  fis8 e ~ e2) r8 gis8 |
  gis8 fis fis e e4 dis |
  dis4 e8 cis ~ cis2 |
  \bar ":|."
}

tekst = \lyricmode {
  Ne -- be -- sa sla -- vu Bo -- žju o -- bja -- vlju -- ju i
  dje -- lo ru -- ku nje -- go -- vih __ pri -- ka -- zu -- je __
  svod __ ne -- be -- ski. __
  svod ne -- be -- ski. __
}

ref = \lyricmode {
  Nek te -- bi Go -- spo -- de __ bu -- du u -- go -- dne __
  mo -- je mis -- sli sve __ i rije -- či ko -- je u -- sta
  go -- vo -- re. _
}

akordi = \chordmode {
  \set chordChanges = ##t
  e1 | e1 | cis:m | cis:m |
  h1 | h1 | h1 | cis:m | h | a |
  a1 | a | a | e | e | gis:m | a | cis:m | a |
}

\score {
  <<
    \new ChordNames { \transpose e a { \jazzChords \akordi }}
     \transpose e a { \note }
    %\new Staff { \note }
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
