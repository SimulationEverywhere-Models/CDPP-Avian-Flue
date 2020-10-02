#include(f_rule.inc)
[top]
components : flu

[flu]
type : cell
dim : (35,35)
delay : transport
defaultDelayTime  : 1
border : nowrapped
neighbors : flu(-1,-1) flu(-1,0) flu(-1,1) 
neighbors : flu(0,-1)  flu(0,0)  flu(0,1)
neighbors : flu(1,-1)  flu(1,0)  flu(1,1)
initialvalue : 0
initialCellsValue : Avain.val
localtransition : flu-rule

[flu-rule]
rule : 2 100  { (0,0)=0 and stateCount(2) > 0 and random < #macro(Spreading)} 
rule : { (0,0) } 100 { t }