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
  cis8 d e fis ~ fis d4 e8 ~ |
  e8 cis4 e8 ~ e h4. |
  cis8 d e fis ~ fis d4 e8 ~ |
  e8 a4 gis8 ~ gis2 |
  cis,8 d e fis8 ~ fis d8\( d\) e8 ~ |
  e8 cis8\( cis\) e8 ~ e h4. |
  cis8 d e fis8 ~ fis d4 e8 ~ |
  e8 e4 a,8 ~ a4. \break
  
    %\override Score.RehearsalMark.extra-spacing-width = #'(0 . 0)
  %\override Score.RehearsalMark.extra-spacing-height = #'(-inf.0 . +inf.0) 
  %\once \override Score.RehearsalMark.X-offset = #0.05
  %\once \override Score.RehearsalMark.extra-spacing-height = #0
  %\once \override Score.RehearsalMark.outside-staff-priority = #1
  %\override Score.RehearsalMark.break-align-symbols = #'(breathing-sign)
  %\override Score.RehearsalMark.break-align-symbols = #'(breathing-sign)
  %\mark \default
  %\breathe
  %\noBreak
  \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
  \once \override Score.RehearsalMark.Y-offset = #0.16
  %\once \override Staff.BarLine #'extra-spacing-width = #'(-5 . 3)
  \once \override Staff.BarLine.extra-spacing-width = #'(0 . 1.2)
  %\once \override Staff.BarLine #'color = #red
  %\once \override Staff.BarLine.bar-extent = #'(1.5 . 2.5)

  \mark \default
  e'8 | \bar "||"
  e8 fis a h8 ~ h fis4 a8 ~ |
  a8 e4 gis8 ~ gis e4. |
  e8 fis a h8 ~ h fis4 a8 ~ |
  a8 cis4 h8 ~ h4. e,8 |
  e8 fis a h8 ~ h fis8\( fis8\) a8 ~ |
  a8 e8\( e8\) gis8 ~ gis \phrasingSlurDashed e4\( e8\) \phrasingSlurSolid |
  e8 fis a h8 ~ h fis4 a8 ~ |
  a8 gis4 a8 ~ a2 |
  
  \markMoj
  a,8 h cis d8 ~ d h4 cis8 ~ |
  cis8 \phrasingSlurDashed a\( a\) h8 ~ h e4. |
  a,8 h cis d8 ~ d h4 cis8 ~ |
  cis8 a4 e'8 ~ e2 |
  a,8 h cis d8 ~ d \phrasingSlurSolid h8\( h8\) cis8 ~ |
  cis8 a a h8 ~ h e4. |
  a,8 h cis d8 ~ d h4 cis8 ~ |
  cis8 e4 a,8 ~ a2 |
  
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
  Pje -- vaj -- te Ja -- hvi pje -- smu no -- vu! __
  Pje -- vaj -- te sad svi na -- ro di! __
  Pje -- vaj -- te Ja -- hvi _ pje -- smu _ no -- vu, __
  hva -- li -- te i -- me nje -- go -- vo! __
  
  \set stanza = "2."
  Na -- vješ -- ćuj -- te nje -- go -- vo __ spa -- se -- nje, __
  ka -- zuj -- te sla -- vu Ja -- hvi -- nu! __
  Na -- vješ -- ćuj -- te nje -- go _ -- vo __ spa _ -- se -- nje,
  svim po -- ga -- ni -- ma ču -- de -- sa ta! __
  
  \set stanza = "3."
  Ve -- lik je Ja -- hve, do -- sto -- jan hva -- le, __
  stra -- šni -- ji od svih bo -- go -- va! __
  Ve -- lik je Ja -- hve, _ do -- sto -- jan hva -- le, __
  on je ne -- be -- sa stvo -- ri -- o! __
  
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
  Ra -- duj se, ne -- bo, kli -- či zem -- ljo! __
  Po -- lja i šu -- me pje -- vaj -- te! __
  Mo -- re nek hu -- či, i što __ je u nje -- mu! __
  Hva -- li -- te i -- me Ja -- hvi -- no! __
  
  \set stanza = "4."
  "" Ra -- duj se, ne -- bo, kli -- či zem -- ljo! __
  Po -- lja i šu -- me pje -- vaj -- te! __
  "" Mo -- re nek hu -- či, i što __ je u nje -- mu! __
  "" Hva -- li -- te i -- me Ja -- hvi -- no! __
  
  \set stanza = "4."
  Ra -- duj se, ne -- bo, kli -- či __ _ zem -- ljo! __
  Po -- lja i šu -- me pje -- vaj -- te! __
  Mo -- re nek hu -- či, i što __ je u nje -- mu! __
  Hva -- li -- te i -- me Ja -- hvi -- no! __ ""
  
  \repeat unfold 18 {_}
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
