

$$
\\ 1. S = a - b
\\ 2. S = a + M - b - M
\\ 3. k = bits(M) = bits(a) + 1
\\ 4. M = 2^k
\\ B = M - b
\\ B = (M - 1) - b + 1
\\ B = (M - 1) \oplus b + 1, (4)
\\ B = \neg b + 1
\\ S = (a + B)  \wedge  (\oplus M)
$$


