# SNARK

## Non interactive argument of knowledge (NARK)

$$
\\ C(x, w) \rightarrow F
\\ x \in F^n \text { is public statement }
\\ w \in F^m \text { is secret witness }
\\ C \text { is arithmetic circuit}
\\ F \text { is finite field}
\\ S \text { is preprocessor function}
\\ S(C, r) \rightarrow (prover\_parameters, verifier\_parameters)
\\ r \text { is random}
\\ Prover(prover\_parameters, x, w) -> \Pi \text { is proof so that} C(x, w) = 0
\\ Verifer(verifier\_parameters, x, \Pi) -> \{0,1\}
\\ \text{Complete } \forall x, w \  C(x,w) = 0 => Pr(Verifier(verifier\_parameters, x, Prover(prover\_parameters, x, w)) = 1) = 1
\\ \text{Knowledge sound: } Verifier(..)=1 \rightarrow Prover \text{ "knows" } w s.t. C(x,w)=0  
\\ \text{optional Zero Knowledge} (C, x, prover\_parameters, verifier\_parameters, \Pi) \text {does not reveal } w
\\ \text{is trivial}, C(x, w) = C (x, \Pi)
$$

## Succinct

$$
\\ len(\pi) = sublinear(|w|)
\\ time(V) = O_{lambda}(|x|, sublinear(C))
$$

### Strongly

$$
\\ len(\pi) = O_{lambda}(log(C))
\\ time(V) = O_{lambda}(|x|, log(C))
$$

S compresses C, so that `log` is possible.

## Setups

### Trusted Setup per circuit

$r$ kept secret from $Prover$


### Trusted Universal 

$$
\\ S = ( S_{init}, S_{index})
\\ S_{init}(\lambda,r) \rightarrow gp
\\ S_{index}(gp, C) \rightarrow parameters
$$

### Transparent (non trusted)