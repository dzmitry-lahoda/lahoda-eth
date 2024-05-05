

$$
\\ C(x, w) \rightarrow F
\\ x \in F^n \text { is public statement }
\\ w \in F^m \text { is secret witness }
\\ C \text { is arithmetic circuit}
\\ F \text { is finite field}
\\ S \text { is preprocessor function}
\\ S(C) \rightarrow (prover\_parameters, verifier\_parameters)
\\ Prover(prover\_parameters, x, w) -> \Pi \text { is proof so that} C(x, w) = 0
\\ Verifer(verifier\_parameters, x, \Pi) -> \{0,1\}
\\ \text{Complete } \forall x, w \  C(x,w) = 0 => Pr(Verifier(verifier\_parameters, x, Prover(prover\_parameters, x, w)) = 1) = 1
\\ \text{Knowledge sound: } Verifier(..)=1 \rightarrow Prover \text{ "knows" } w s.t. C(x,w)=0  
$$
