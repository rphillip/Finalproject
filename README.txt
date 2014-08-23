* ABOUT *

Man vs. Animal - a web page comparing man, cow, cat, and dog
by diplaying percent identity when compared to man

Website is located here:
http://bfx.eng.jhu.edu/rsulapa1/compare/compare.html

Source code can be obtained here:
http://bfx.eng.jhu.edu/rsulapa1/compare.tar.gz

* REQUIREMENTS *

Additional tools used in site:
ClustalO
http://www.clustal.org/omega/
ClustalO was used to align the sequences and produce percent identities

Jqwidgets
http://www.jqwidgets.com/
Jqwidgets was used for dropdowns and graphs

Storage required is minimal. 

Recommended memory/cpu is 1gb, 1.8ghz per simultaneous user.

* DETAILED USAGE *
Explanation from top of webpage to bottom
1. The first dropdown selectes which gene to compare to. 
(NOTE: Selection of gene removes any input sequence entered from the graph)

2. The second dropdown selects which type of graph. 
(NOTE: Selection of graph keeps any input sequence entered from the graph)

3. The third dropdown selects which type of color scheme for the graph. 
(NOTE: Selection of graph keeps any input sequence entered from the graph)

4. The graph automatically updates with dropdown list selection or input sequence
submittal

5. The sequence name of the form is the name that will show up on the graph.
The text area below is where a FASTA sequence is inserted. This can only be 
in FASTA format (with "<" header), or the Identity value will return 0. The 
submit button will update graph to include the input sequence. To remove the input 
sequence, reselect a gene type.

Authored by Ryan Sulapas