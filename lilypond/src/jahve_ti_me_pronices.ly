\version "2.23.12"
\include "../config/include.ily"

\header {
  title = "JAHVE, TI ME PRONIČEŠ"
  titlex = "Psalam 139"
  composer = "Ljubica Zemunović"
  style = "Emil Moguš"
  broj = "5"
  %tagline = \markup { \override #'(font-name . "JohnSans White Pro") \override #'(font-size . -3) { Izvorno: Name, Album } }
}

\paper {
  \aFourL
  %min-systems-per-page = #7
  %annotate-spacing = ##t
  %system-system-spacing.padding = #3.2
}

note = \relative c'' {
  %\tempo 4 = 70
  \key d \major
  \time 4/4
  
  \markMoj
  a8 fis ~ fis 2 r8 g16 fis |
  g8 a16 a ~ a2 r4 |
  g8 g ~ g2 g8. fis16 |
  fis2. r4 |
  \once \override Score.RehearsalMark.break-visibility = #end-of-line-visible
  \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
  \mark \markup \smaller {"Fine"}
  a8 fis16 fis ~ fis2 r8 g16( fis) |
  g16 a8 a16 ~ a2 r8 g16 fis |
  g8. g16 ~ g2 g8. fis16 |
  fis2. r4 |
  
  \markMojPonRight
  d'8 h16 h ~ h2 cis8 d |
  d8 a16 a ~ a2 cis8 d |
  d16 h8. ~ h4 h8. cis16 ~ cis8 d |
  d4.( e16 d cis2) |
  d8 h16 h ~ h2 cis8 d |
  d16 a8 a16 ~ a2 r8 g16 fis |
  g8. g16 ~ g4 r8 fis8 g16 a8. |
  fis8. e16 ~ e8 e ~ e2 ~ |
  e2. r8 a |
  \bar "||"
  
  \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
  \mark \markup { \box \bold A1 }
  a16 fis fis8 ~ fis4 r8 a g fis |
  g8 a16 a ~ a2 r8 g16 fis |
  g8. g16 ~ g2 g8. fis16 |
  fis2. r8 a16 a |
  a8 fis ~ fis4 r8 a g fis |
  g8 a16 a ~ a2 r8 g16 fis |
  g8. g16 ~ g2 g8. fis16 |
  fis2. r4 |
  \bar "||"
  \break
  
  \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
  \mark \markup { \box \bold B1 }
  d'8 h16 h ~ h2 cis8 d |
  d8 a16 a ~ a2 cis8 d |
  d16 h8 h16 ~ h4 h8. cis16 ~ cis8 d |
  d4.( e16 d cis4) r8 e |
  d8 h16 h ~ h2 h8 cis16 d |
  d16 a8 a16 ~ a2 r4 |
  d8 h16 h ~ h4 h8.( cis16 ~ cis8) d8 |
  d8. e16 ~ e8 e ~ e2 ~ |
  e2. r4 |
  \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
  \mark \markup \smaller { "D.C. al Fine" }
  \bar ":|."
}

tekst = \lyricmode {
  Jah -- ve __ ti me pro -- ni -- češ,
  do -- bro __ po -- zna -- ješ.
  Du -- šu mi __ i __ dje -- la znaš,
  ne -- ma taj -- ne __ za te -- be.
  
  Spa -- vam li __ i -- li bu -- dan sam,
  sve ti vi -- diš, __ sve do -- bro znaš. __
  Zna -- nju tvom ni -- sam do -- ra -- st'o, __
  ka -- o dije -- te __ pred to -- bom kle -- čim sad. __
  
  Kad ne -- vo -- lje __ ko ta -- ma zgu -- snu se, __
  kad mi du -- šu __ svla -- da strah.
  Tvo -- je svje -- tlo __ i ta -- mo do -- pi -- re __
  i noć svije -- tli __ ka -- o dan.
  
  Uz -- mem li __ kri -- la zo -- ri -- na __
  pa se na -- se -- lim mo -- ru __ na kraj __
  i on -- dje bi __ ru -- kom me vo -- di -- o __
  de -- sni -- com svo -- jom dr -- ža -- o. __
}

ref = \lyricmode {

}

akordi = \chordmode {
  \set chordChanges = ##t
  d1 | c/d | g/d | d2. cis4:dim7 |
  h1:m7 | e:m7 | g2:maj7 g:m6 | d1 |
  
  g1 | d/fis | e:7 | e2:m9 a4:7 as:7 |
  g1 | d/fis | e4:m7 d/fis g2 | a1:sus4 | a |
  
  d1 | c/d | g/d | d2. cis4:dim7 |
  h1:m7 | e:m7 | g2:maj7 g:m6 | d1 |
  
  g1 | d/fis | e:7 | e2:m9 a4:7 as:7 |
  g1 | d/fis | e4:m7 d/fis g2 | a1:sus4 | a |
}

\score {
  <<
    \new ChordNames { \jazzChords \akordi }
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
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) A1 \italic \teeny { verse } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { B1 \teeny \italic { chorus } } }
    }
  }
  "x2,  "
    \huge {
    \rounded-box {
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) A \italic \teeny { [1-4] ending } }
    }
  }
}
