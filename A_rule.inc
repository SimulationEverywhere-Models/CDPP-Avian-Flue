#BeginMacro(outer_2)
if ( (-2, -2) = 2, 1, 0) + if ( (-2, -1) = 2, 1, 0) + if ( (-2, 0) = 2, 1, 0) + if ( (-2, 1) = 2, 1, 0) + if ( (-2, 2) = 2, 1, 0) + if ( (-1, -2) = 2, 1, 0) + if ( (0, -2) = 2, 1, 0) + if ( (1, -2) = 2, 1, 0) + if ( (2, -2) = 2, 1, 0) + if ( (2, -1) = 2, 1, 0) + if ( (2, 0) = 2, 1, 0) + if ( (2, 1) = 2, 1, 0) + if ( (2, 2) = 2, 1, 0) + if ( (1, 2) = 2, 1, 0) + if ( (0, 2) = 2, 1, 0) + if ( (-1, 2) = 2, 1, 0)
#EndMacro

#BeginMacro(inner_2)
if ( (-1, -1) = 2, 1, 0) + if ( (0, -1) = 2, 1, 0) + if ( (1, -1) = 2, 1, 0) + if ( (1, 0) = 2, 1, 0) + if ( (1, 1) = 2, 1, 0) + if ( (0, 1) = 2, 1, 0) + if ( (-1, 1) = 2, 1, 0) + if ( (-1, 0) = 2, 1, 0)
#EndMacro

#BeginMacro(outer_1)
if ( (-2, -2) = 1, 1, 0) + if ( (-2, -1) = 1, 1, 0) + if ( (-2, 0) = 1, 1, 0) + if ( (-2, 1) = 1, 1, 0) + if ( (-2, 2) = 1, 1, 0) + if ( (-1, -2) = 1, 1, 0) + if ( (0, -2) = 1, 1, 0) + if ( (1, -2) = 1, 1, 0) + if ( (2, -2) = 1, 1, 0) + if ( (2, -1) = 1, 1, 0) + if ( (2, 0) = 1, 1, 0) + if ( (2, 1) = 1, 1, 0) + if ( (2, 2) = 1, 1, 0) + if ( (1, 2) = 1, 1, 0) + if ( (0, 2) = 1, 1, 0) + if ( (-1, 2) = 1, 1, 0) 
#EndMacro

#BeginMacro(inner_1)
if ( (-1, -1) = 1, 1, 0) + if ( (0, -1) = 1, 1, 0) + if ( (1, -1) = 1, 1, 0) + if ( (1, 0) = 1, 1, 0) + if ( (1, 1) = 1, 1, 0) + if ( (0, 1) = 1, 1, 0) + if ( (-1, 1) = 1, 1, 0) + if ( (-1, 0) = 1, 1, 0)
#EndMacro

#BeginMacro(Immune)
0.1
#EndMacro

#BeginMacro(dead)
0.9
#EndMacro

#BeginMacro(Outer)
uniform(0, 0.05)
#EndMacro

#BeginMacro(Inner)
uniform(0, 0.75)
#EndMacro

#BeginMacro(Spreading)
0.2
#EndMacro

#BeginMacro(Vigilance)
0.6
#EndMacro
 




