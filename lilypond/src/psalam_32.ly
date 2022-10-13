\version "2.23.12"
\include "../config/include.ily"

\header {
  title = "PSALAM 32"
  titlex = "Eliam 2022"
  composer = "Maasej Kovačević"
  style = "Filip Horvat"
  broj = "9"
  %tagline = \markup { \override #'(font-name . "JohnSans White Pro") \override #'(font-size . -3) { Izvorno: Name, Album } }
}

\paper {
  \aFourL
  %min-systems-per-page = #8
  %annotate-spacing = ##t
  system-system-spacing.padding = #2
  %page-breaking = #ly:one-page-breaking
  %last-bottom-spacing.minimum-distance = #0
  system-system-spacing.basic-distance = #13.8

}

note = \relative c'' {
  \key c \major
  \time 4/4
  
  \markMojPoc
  r4 g8 g g g d d |
  g4 g8 g g g d4 |
  r4 g8 g g g d d |
  g4 g g8 g d4 |
  r4 c8 c g' g g g |
  g8 g g g g g h4 |
  r4 g8 g g g g g |
  h8 h h h h h a g |
  g8 g g g g4 d |
  g8 g g g g g d d |
  g8 g g g g g d d |
  g4 g8 g g g d4 |
  c4 c8 c g'4 g |
  g8 g g g g g g4 |
  g8 g g g g g g h |
  h8 h h h h h a g |
  g4 g g2 |
  g4 g8 g g g d d |
  g8 g g g g g d d |
  g8 g g g g g d4 |
  c8 c c c g' g g g ~ |
  g8 g g g g4 r8 g |
  g8 g g g g g g h ~ |
  h8 h4. h8 h a g |
  g8 g g g g g d d |
  g8 g g g g4 d8 d |
  g8 g g g g g d d |
  g8 g g g r4 d8 d |
  c8 c c c g'4 g |
  r2 g8 g g g |
  g4 r8 g8 g g g g |
  h4 h8 a ~ a8 g4. |
  
  \once \override Score.RehearsalMark.self-alignment-X = #CENTER
  \once \override Staff.BarLine.extra-spacing-width = #'(0 . 1.2)
  \bar ".|:-||"
  \mark \default
  %\bar ".|:"
  r2 d8 e g4 |
  r2 d8 e g4 |
  r4 r8 d8 d e g4 ~ |
  g8 h4. a8 g e4 |
  r2 d8 e g4 |
  r2 d8 e g4 |
  r4 r8 h8 a h4 d8 ~ |
  d4 d8 d d h a( g) |
  \bar ":|."
}

tekst = \lyricmode {
  Bla -- go o -- nom ko -- me prije -- stup je o -- pro -- šten,
  bla -- žen o -- naj ko -- me grijeh je po -- kri -- ven!
  Bla -- go čo -- vje -- ku kom Ja -- hve ne -- u -- bra -- ja dug,
  i u ko -- ga ne -- ma prije -- va -- re u du -- hu.
  Jer u že -- lji da pre -- šu -- tim ko -- sti su mi klo -- nu -- le
  od ne -- pre -- sta -- na je -- ca -- nja, u prah se pre -- tvo -- ri -- le.
  Ru -- ka me tvo -- ja ti -- šti -- la bez pre -- stan -- ka,
  sna -- ga mi se tro -- ši -- la ko za ljet -- nih vru -- ći -- na.
  A -- li tad grijeh svoj, te -- bi sam pri -- zna -- o
  i kriv -- nju svo -- ju pred to -- bom ja vi -- še ni -- sam skri -- va -- o.
  Re -- ka -- o sam: Pri -- znat ću Ja -- hvi prije -- stup svoj,
  i ti si mi o -- pro -- sti -- o kri -- vnju.
  Za -- to nek se po -- bo -- žnik sva -- ki u ča -- su ne -- vo -- lje mo -- li.
  Ka -- da bu -- ji -- ce na -- va -- le, nje -- ga ne -- će sti -- ći.
  Ti si u -- to -- čiš -- te mo -- je, da -- ješ mi ra -- dost,
  sa -- ču -- vat ćeš me od tje -- sko -- be.
}

ref = \lyricmode {
  Ja -- hvi se ra -- duj -- te i kli -- či -- te, __ svi pra -- ve -- dni,
  pje -- vaj -- te Go -- spo -- du svi ko -- ji sr -- ca ste is -- kre -- na! __
}

akordi = \chordmode {
  \set chordChanges = ##t
  g1 | g1/fis | e:m | g/d |
  c1 | g/h | a:m | d |
  g1 | g1/fis | e:m | g/d |
  c1 | g/h | a:m | d |
  g1 | g1/fis | e:m | g/d |
  c1 | g/h | a:m | d |
  g1 | g1/fis | e:m | g/d |
  c1 | g/h | a:m | d |
  
  g1 | d/fis | e:m | g/d |
  c1 | g/h | a:m | d |
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
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) B \italic \teeny { intro } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) A \italic \teeny { verse } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { B \teeny \italic { chorus } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) A \italic \teeny { verse } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { B \teeny \italic { chorus } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) B \italic \teeny { outro } }
    }
  }
}
