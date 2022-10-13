\version "2.23.12"
\include "../config/include.ily"

\header {
  title = "DO NEBA"
  titlex = "Psalam 108"
  composer = "Frank Bosch"
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
  \key a \minor
  \time 4/4
  
  \markMojPoc
  r8 e8 e c d4 f8 e ~ |
  e2 r2 |
  r8 e4 f8 g4\( f8\) f\( ~ |
  f8 e ~ e4\) r2 | \break
  r8 e8\( e\) c d4\( f8\) e ~ |
  e2 r2 |
  r8 e8 e8 c8 d4\( c8\) a ~ |
  a2 r8 a'4 h8 |
  \once \override Score.RehearsalMark.self-alignment-X = #CENTER
  \once \override Staff.BarLine.extra-spacing-width = #'(0 . 1.2)
  \once \override Score.RehearsalMark.Y-offset = #4
  \bar ".|:-||"
  \mark \default
  \repeat volta 2 {
    c4 e, r4. c'8 |
    c8\( h a\) h ~ h h4 a8 |
    h4 e, r8 d'8 d c |
    h8( a) a4 r4. g8 |
    g4 f f2 |
    g4 g8( a) g4 f8 f( |
    e1) |
  }
  \alternative {
    {r2 r8 a4 h8}
    {r1 | r1 \bar "|."}
  }
}

kiticaA = \lyricmode {
  \set stanza = #"1. "
  %\skip4 \skip4
  Hva -- lit ću te, Bo -- že, __ me -- đu na -- ro -- di -- ma,
  me -- _ đu pu -- ci -- ma __ te -- bi ću pje -- va -- ti, __
}

ref = \lyricmode {
  jer do ne -- ba, do ne -- _ _ ba je do -- bro -- ta,
  do -- bro -- ta tvo -- ja, do o -- bla -- ka tvo -- ja __ vjer -- nost je. __
  Jer do
}

kiticaB = \lyricmode {
  \set stanza = #"2. "
  Uz -- vi -- si se, Bo -- že, __ nad ne -- be -- _ sa, __ _  
  nek sla -- va tvo -- _ ja __ je nad svom ze -- _ mljom,
}

akordi = \chordmode {
  \set chordChanges = ##t
  a2:m d:m | a:m e:7 | a:m g | c  e:7 |
  a2:m d:m | a:m e:7 | a:m d:m | a2:m e:7 |
  
  a1:m | g1 | e:7 | a:m |
  f1 | g | c | e:7 |
  \set chordChanges = ##f
  e1:7 | a:m |
}

\score {
  <<
    \new ChordNames {  \jazzChords \akordi }
    \new Staff { \note }
    \addlyrics { \kiticaA \ref }
    \addlyrics { \kiticaB }
  >>
  \layout {}
}

\markup {
  \vspace #1.2
  \smaller \italic Leadsheet: \hspace #1
  \huge {
    \rounded-box {
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) A \italic \teeny { verse 1. } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { B \teeny \italic { chorus } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) A \italic \teeny { verse 2. } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { B \teeny \italic { chorus } } }
    }
  }
}
