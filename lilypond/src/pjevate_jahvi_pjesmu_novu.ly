\version "2.23.12"
\include "../config/include.ily"

\header {
  title = "PJEVAJTE JAHVI PJESMU NOVU"
  titlex = "Psalam 96"
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
  \key a \major
  \time 4/4
  
  \markMoj
  cis8 d e fis4 d4 e8 ~ |
  e8 cis4 e h r8 |
  cis8 d e fis4 d e8 ~ |
  e8 a4 gis r8 r4 |
  cis,8 d e fis4 d4 e8 ~ |
  e8 cis4 e h r8 |
  cis8 d e fis4 d e8 ~ |
  e8 e4 a, r8 r e'8 |
  
  \markMoj
  e8 fis a h4 fis4 a8 ~ |
  a8 e4 gis e r8 |
  e8 fis a h4 fis a8 ~ |
  a8 cis4 h r8 r8 e,8 |
  e8 fis a h4 fis4 a8 ~ |
  a8 e4 gis e e8 |
  e8 fis a h4 fis a8 ~ |
  a8 gis4 a r8 r4 |
  
  \markMoj
  a,8 h cis d4 h cis8 ~ |
  cis8 a\( a\) h4 e r8 |
  a,8 h cis d4 h cis8 ~ |
  cis8 a4 e' r8 r4 |
  a,8 h cis d4 h cis8 ~ |
  cis8 a a h4 e r8 |
  a,8 h cis d4 h cis8 ~ |
  cis8 e4 a, r8 r4 |
  
  \markMoj
  cis'4 cis cis h8 cis ~ |
  cis8 cis4 cis8 cis4 h |
  cis4 cis cis h8 cis ~ |
  cis8 d4 h8 r2 |
  cis4 cis cis h8 cis ~ |
  cis8 cis4 cis8 cis4 h |
  cis4 cis cis h8 cis ~ |
  cis8 d4 h8 r4 e,8 e |
  
  f8 f f g ~ g4 g |
  a8 a a h ~ h4 r4 |
  cis4 cis cis h8 cis ~ |
  cis2. r8 e,8 f8 f f g ~ g4 g8 g |
  a8 a a h ~ h4 r4 |
  cis4 cis cis h8 cis ~ |
  cis2. r4 |
  \bar "|."
}

tekst = \lyricmode {
  \set stanza = "1."
  Pje -- vaj -- te Ja -- hvi pje -- smu no -- vu
  Pje -- vaj -- te sad svi Na -- ro di!
  Pje -- vaj -- te Ja -- hvi pje -- smu no -- vu
  Hva -- li -- te i -- me Nje -- go -- vo!
  
  Na -- vješ -- ćuj -- te Nje -- go -- vo spa -- se -- nje.
  ka -- zuj -- te sla -- vu Ja -- hvi -- nu!
  Na -- vješ -- ćuj -- te Nje -- go -- vo spa -- se -- nje.
  svim po -- ga -- ni -- ma ču -- de -- sa ta!
  
  Ve -- lik je Ja -- hve, do -- sto -- jan hva -- le
  stra -- šni -- ji od svih bo -- go -- va!
  Ve -- lik je Ja -- hve, do -- sto -- jan hva -- le
  On je ne -- be -- sa stvo -- ri -- o!
  
  Daj -- te Ja -- hvi sla -- vu i si -- lu
  daj -- te Ja -- hvi sla -- vu svu!
  Daj -- te Ja -- hvi sla -- vu i si -- lu
  daj -- te Ja -- hvi sla -- vu svu!
  
  Nek se go -- vo -- ri me -- đu po -- ga -- ni -- ma
  Ja -- hve kra -- lju -- je!
  On u -- čvr -- sti svijet da ne po -- ma -- kne se
  Ja -- hve kra -- lju -- je!
}

tekstB = \lyricmode {
  \set stanza = "2."
  Ra -- duj se ne -- bo, kli -- či zem -- ljo
  po -- lja i šu -- me pje -- vaj -- te!
  Mo -- re nek hu -- či,i što "je u" nje -- mu
  Hva -- li -- te i -- me Ja -- hvi -- no!
  
  _ Ra -- duj se ne -- bo, kli -- či zem -- ljo
  po -- lja i šu -- me pje -- vaj -- te!
  _ Mo -- re nek hu -- či,i što "je u" nje -- mu
  _ Hva -- li -- te i -- me Ja -- hvi -- no!
  
  Ra -- duj se ne -- bo, kli -- či __ _ zem -- ljo
  po -- lja i šu -- me pje -- vaj -- te!
  Mo -- re nek hu -- či,i što je u nje -- mu
  Hva -- li -- te i -- me Ja -- hvi -- no!
  
  \repeat unfold 33 {_}
  U i -- sti -- ni pra -- vdi do -- la -- zi On
  Svije -- tu su -- di -- ti!
  _ kle -- kni -- te pred njim i daj -- te mu čast
}

ref = \lyricmode {

}

akordi = \chordmode {
  \set chordChanges = ##t
  c1 |
}

\score {
  <<
    \new ChordNames {  \jazzChords \akordi }
    \new Staff { \note }
    \addlyrics { \tekst \ref }
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
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) B \italic \teeny { verse } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { C \teeny \italic { chorus } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) B \italic \teeny { verse } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { C \teeny \italic { chorus } } }
    }
  }
}
