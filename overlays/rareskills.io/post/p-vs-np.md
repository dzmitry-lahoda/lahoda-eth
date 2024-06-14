

# P vs NP vs PSPACE, time vs space, solve vs verify.



|        | Solve time | Verify time | Solve space | Verify Space | Examples |
|--------|------------|-------------|-------------|--------------|----------|
| P      | <=poly     | <=poly      |             |              |          |
| NP     | any        | <=poly      |             |              |          |
| PSPACE | any        | any         | <=poly      | <=poly       |          |
|        | any        | any         | any         | any          |          |


P problems are easy to solver and verify in O(n^c) time.

NP problems are not easy to solve O(c^n) time, c > 1, "exponential time".

Witness is proof that solution was solver correctly.


PSPACE problems take ETIME to solve and verify, so not ESPACE to solve.