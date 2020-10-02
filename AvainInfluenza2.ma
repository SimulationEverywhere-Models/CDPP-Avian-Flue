#include(A2_rule.inc)
[top]
components : Avain

[Avain]
type : cell
dim : (35,35)
delay : transport
defaultDelayTime  : 1
border : nowrapped
neighbors : (-2,-2) (-2,-1) (-2,0) (-2,1) (-2,2)
neighbors : (-1,-2) (-1,-1) (-1,0) (-1,1) (-1,2)
neighbors : (0,-2) (-0,-1) (0,0) (0,1) (0,2)
neighbors : (1,-2) (1,-1) (1,0) (1,1) (1,2)
neighbors : (2,-2) (2,-1) (2,0) (2,1) (2,2)
initialvalue : 0
initialCellsValue : Avain.val
localtransition : AvainInfluenza

[AvainInfluenza]
rule : 1 100  { (0,0)=0 and ( #macro(Inner) * #macro(inner_2) + #macro(Outer) * #macro(outer_2) >3) and random < ( #macro(Vigilance) *  ( #macro(Inner) * #macro(inner_2)/8 + #macro(Outer) * #macro(outer_2)/16 ) ) }
rule : 1 100  { (0,0)=0 and ( #macro(Inner) * #macro(inner_1) + #macro(Outer) * #macro(outer_1) > 0) and random < ( #macro(Vigilance) *  ( #macro(Inner) * #macro(inner_1)/8 + #macro(Outer) * #macro(outer_1)/16 ) ) }   
rule : { if ( random < #macro(Immune), -1, 0) } 100  { (0,0)=1 }  
rule : 2 100  { (0,0)=0 and stateCount(2) > 0 and random < #macro(Spreading) *  ( #macro(Inner) * #macro(inner_2)/8 + #macro(Outer) * #macro(outer_2)/16 )  } 
rule : 3 100 { (0,0)=2 and ( #macro(Inner) * #macro(inner_2) + #macro(Outer) * #macro(outer_2) > 5) and random < ( #macro(dead) *  ( #macro(Inner) * #macro(inner_2)/8 + #macro(Outer) * #macro(outer_2)/16 ) ) }
rule : { (0,0) } 100 { t }