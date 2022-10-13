\version "2.23.12"
\include "../config/include.ily"

\header {
  title = "PJEVAJTE JAHVI PJESMU NOVU"
  titlex = "Psalam 96"
  composer = "Petra Horvat"
  style = ""
  broj = "6"
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
  \key a \major
  \time 4/4
  
  \markMoj
  cis8 d e fis4 d4 e8 ~ |
  e8 cis4 e h r8 |
  cis8 d e fis4 d e8 ~ |
  e8 a4 gis r8 r4 |
  cis,8 d e fis4 d8\( d\) e8 ~ |
  e8 cis8\( cis\) e4 h r8 |
  cis8 d e fis4 d e8 ~ |
  e8 e4 a, r8 r e'8 |
  
  \markMoj
  e8 fis a h4 fis4 a8 ~ |
  a8 e4 gis e r8 |
  e8 fis a h4 fis a8 ~ |
  a8 cis4 h r8 r8 e,8 |
  e8 fis a h4 fis8\( fis8\) a8 ~ |
  a8 e8\( e8\) gis4 e e8 |
  e8 fis a h4 fis a8 ~ |
  a8 gis4 a r8 r4 |
  
  \markMoj
  a,8 h cis d4 h cis8 ~ |
  cis8 \phrasingSlurDashed a\( a\) h4 e r8 |
  a,8 h cis d4 h cis8 ~ |
  cis8 a4 e' r8 r4 |
  a,8 h cis d4 \phrasingSlurSolid h8\( h8\) cis8 ~ |
  cis8 a a h4 e r8 |
  a,8 h cis d4 h cis8 ~ |
  cis8 e4 a, r8 r4 |
  
  \pageBreak
  
  \once \override Score.RehearsalMark.self-alignment-X = #CENTER
  \once \override Staff.BarLine.extra-spacing-width = #'(0 . 1.2)
  \bar ".|:-||"
  \mark \default
  \repeat volta 2 {
    cis'4 cis cis h8 cis ~ |
    cis8 cis4 cis8 cis4 h |
    cis4 cis cis h8 cis ~ |
    \alternative {
    \volta 1 {
      cis8 d4 h8 r2 |
    }
    \volta 2 {
      \repeatTie cis8 d4 h8 r4 e,8 e |
    }
    }
%      cis4 cis cis h8 cis ~ |
%    cis8 cis4 cis8 cis4 h |
%    cis4 cis cis h8 cis ~ |
  }
  
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
  Pje -- vaj -- te Ja -- hvi pje -- smu no -- vu!
  Pje -- vaj -- te sad svi na -- ro di!
  Pje -- vaj -- te Ja -- hvi _ pje -- smu _ no -- vu,
  hva -- li -- te i -- me nje -- go -- vo!
  
  \set stanza = "2."
  Na -- vješ -- ćuj -- te nje -- go -- vo __ spa -- se -- nje,
  ka -- zuj -- te sla -- vu Ja -- hvi -- nu!
  Na -- vješ -- ćuj -- te nje -- go _ -- vo __ spa _ -- se -- nje,
  svim po -- ga -- ni -- ma ču -- de -- sa ta!
  
  \set stanza = "3."
  Ve -- lik je Ja -- hve, do -- sto -- jan hva -- le,
  stra -- šni -- ji od svih bo -- go -- va!
  Ve -- lik je Ja -- hve, _ do -- sto -- jan hva -- le,
  on je ne -- be -- sa stvo -- ri -- o!
  
  Daj -- te Ja -- hvi sla -- vu i si -- lu,
  daj -- te Ja -- hvi sla -- vu svu!
  sla -- vu svu!
  
  \set stanza = "1."
  Nek se go -- vo -- ri me -- đu po -- ga -- ni -- ma:
  Ja -- hve kra -- lju -- je! __
  On u -- čvr -- sti svijet da ne po -- ma -- kne se, __
  Ja -- hve kra -- lju -- je! __
}

tekstB = \lyricmode {
  \set stanza = "4."
  Ra -- duj se, ne -- bo, kli -- či zem -- ljo!
  Po -- lja i šu -- me pje -- vaj -- te!
  Mo -- re nek hu -- či, i što __ je u nje -- mu!
  Hva -- li -- te i -- me Ja -- hvi -- no!
  
  _ \set stanza = "4."
  Ra -- duj se, ne -- bo, kli -- či zem -- ljo!
  Po -- lja i šu -- me pje -- vaj -- te!
  _ Mo -- re nek hu -- či, i što __ je u nje -- mu!
  _ Hva -- li -- te i -- me Ja -- hvi -- no!
  
  \set stanza = "4."
  Ra -- duj se, ne -- bo, kli -- či __ _ zem -- ljo!
  Po -- lja i šu -- me pje -- vaj -- te!
  Mo -- re nek hu -- či, i što __ je u nje -- mu!
  Hva -- li -- te i -- me Ja -- hvi -- no!
  
  \repeat unfold 19 {_}
  \set stanza = "2."
  _
  U i -- sti -- ni, pra -- vdi, do -- la -- zi on
  svije -- tu su -- di -- ti! __
  "" Kle -- kni -- te pred njim i daj -- te mu čast,
  Ja -- hve kra -- lju -- je! __
}

ref = \lyricmode {

}

akordi = \chordmode {
  \set chordChanges = ##t
  a2 d2 | a2/cis e2 |
  a2 d2 | a2/cis e2 |
  a2 d2 | a2/cis e2 |
  a2 d2 | e2 a2 |
  a2 d2 | a2/cis e2 |
  a2 d2 | a2/cis e2 |
  a2 d2 | a2/cis e2 |
  a2 d2 | e2 a2 |
  a2 d2 | a2/cis e2 |
  a2 d2 | a2/cis e2 |
  a2 d2 | a2/cis e2 |
  a2 d2 | e2 a2 |
  
  a2. d4:6/a |
  a2. d4:6/a |
  a2. d4:6/a |
  a2 e2 |
  a2 e2 |
  
  d2:m c2 | f2 g2 | a2. d4:6/a | a1 |
  d2:m c2 | f2 g2 | a2. d4:6/a | a1 |
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
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) A \italic \teeny { verse 1. } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) B \italic \teeny { verse 2. } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) C \italic \teeny { verse 3. } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { D \teeny \italic { chorus 1. } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) A, A+B, A+B+C \italic \teeny { verse 4. } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { D \teeny \italic { chorus 2. } } }
    }
  }
}
