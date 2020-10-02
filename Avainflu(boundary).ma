#include(F_rule_1.inc)
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
initialCellsValue : flu.val
localtransition : flu-rule
zone : flu { (0,0)..(0,7) }
zone : flu { (1,7)..(7,0) }
zone : flu { (1,7)..(5,7) }
zone : flu { (7,1)..(7,10) }
zone : flu { (5,8)..(5,12) }
zone : flu { (8,9)..(17,9) }
zone : flu { (6,12)..(9,12) }
zone : flu { (18,5)..(18,11) }
zone : flu { (6,13)..(6,22) }
zone : flu { (19,5)..(29,5) }
zone : flu { (7,22)..(17,22) }
zone : flu { (18,22)..(18,31) }
zone : flu { (19,31)..(32,31) }
zone : flu { (30,5)..(30,15) }
zone : flu { (31,15)..(31,32) }

[flu]
rule : {(0,0) } 1 {undefCount >=1}
rule : { (0,0) } 1 {t}

[flu-rule]
rule : 2 100  { (0,0)=0 and stateCount(2) > 0 and random < #macro(Spreading)} 
rule : { (0,0) } 100 { t }