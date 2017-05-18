\chapter{Previous Work}

The work of my thesis uses the universal Hasher for digital representations of music tool. This work was largely done in the Spring of 2015 as part of my 6.UAP. Additionally, experimental results in a related project focused on speeding up musical comparison by converting Python objects to C objects provide evidence that the bottleneck in musical sequence alignment is not in the comparison step. Both subjects are described in more detail below but only to the extent necessary to understand the work of my thesis.

\section{A Modular Universal Hasher}
Prior to my work on building a musical sequence aligner and fixer, I built a hasher with the specific intention that it would be able to adapt according to different specification settings decided by the programmer. The programmer decides which kinds of music21 stream elements and properties important to their hash, and selects them to build a specific instance of a Hasher object. This Hasher instance can then be used to produce a hash from any music21 stream.
\subsection{Why Musical Comparison and Alignment Needs a Modular Hashing Function}
A hash function maps pieces of data of arbitrary size into data of fixed size and standard representation. If musical sequences could be discretized into elements and if these elements could be hashed, then the processes of comparison and alignment could be made deterministic and quick. 

Depending upon the problem statement that calls for a hash in the first place, the details of this two step process, 1) discretizing a musical sequence into a list of relevant elements and 2) hashing those elements can vary. For instance, in determining the the rhythmic similarity between two musical sequences, only the musical elements with durations (e.g. notes, chords, rests) in each sequence would be relevant. In hashing these elements, only properties such as duration and offset might only be relevant. determining whether one piece was an approximate transposition of another, only the elements with some relation to pitch would be relevant (e.g. notes and chords) would be relevant. 

\begin{lilypond}
\relative c' {
  c2 g'2 \times 2/3 { f8 e d } c'2 g4
}
\end{lilypond}

The process of comparing music sequences can be made quantitatively deterministic and quick by converting the musical sequence into a list of its elements (e.g. chord, note, rest, barline, time signature, etc.) and its elements properties (e.g. duration, offset, pitch, notation, etc. where relevant) and performing a comparison algorithm between these kinds of representations for any two musical sequences. For example, in determining the the rhythmic similarity between two musical sequences, only the musical elements with durations in each sequence would be relevant. Similarly in determining whether one piece was an approximate transposition of another, only the elements with pitches would be relevant. Once the proper musical elements and properties have been identified and listed in this representation, it is easy to see how one might apply an edit distance algorithm to determine the amount of similarity or dissimilarity between pieces.

Thus, 

\subsection{Previous Work on Modular Hashing Functions}
\subsection{Algorithmic Approach}
\subsection{Overview of System}
\subsection{Additional Modifications to the Hasher}

\section{Low-level Object Comparison Optimizations }