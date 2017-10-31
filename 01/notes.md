# Lambda Calculus

- "Function": an expression applied to an argument or input, which can be "reduced" or evaluated

- Head: the `λx.` bit in `λx.x`
- Body: the `x` (after the dot) bit in `λx.x`

- variable name in head is the parameter and **binds** all instances of that variable in the body

- **Alpha Equivalence**: λx.x is same as λd.d and λc.c

- **Beta Reduction**: applying a function to an argument, eliminating the head. Keep reducing until nothing left to apply.

The identity function:

```
(λx.x)2     // x becomes equal to 2
2           // eliminate head
```

Applying to a function:

```
(λx.x)(λy.y)    // x becomes equal to λy.y
λy.y            // eliminate head
```

- Lambdas are **left associative**

```
(λx.x)(λy.y)z === ((λx.x)(λy.y))z
(λy.y)z
z
```

- "free variables": variables that aren't named in the head, e.g. the `y` in λx.xy

```
(λx.xy)z
(λ[x:=z].xy)  // z replaces x in the body, then eliminate head 
zy
```

- λx.xy and λx.xz - not alpha equivalent, as the free-variables y and z might be different things

- lambdas **can only bind one argument**. Use nested heads to have multiple arguments (currying).

```
λxy.xy === λx.(λy.xy) // non-nested same as nested

(λxy.xy) 1 2            // apply 1 2
(λx.(λy.xy)) 1 2        // same as nested
(λ[x := 1].(λy.xy)) 2   // apply 1 to outer head
(λy.1y) 2               // leaves inner head
(λ[y := 2].1y)          // apply 2 to inner head
1 2                     // leaves result
```

- "beta normal form": when we can no longer beta reduce

- "combinators": no free variables (every term in body occurs in the head)

- "divergence": beta reduction not possible as it never terminates ("convergence" is when they do):

```
(λx.xx)(λx.xx)
(λ[x := (λx.xx)].xx)
(λx.xx)(λx.xx)
```
