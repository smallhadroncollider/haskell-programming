# The Y Combinator

Allows recursion with with only anonymous functions - which is necessary as *all* functions in lambda calculus are anonymous.

**The Y-combinator**: (λy.(λx.y(xx))(λx.y(xx)))

If we apply this to R:

```
1) YR = (λy.(λx.y(xx))(λx.y(xx))) R
2)    = (λx.R(xx))(λx.R(xx))           // R becomes y in the body, remove head
        |---a---|  |---b---|
3)    = R((λx.R(xx))(λx.R(xx)))        // Apply a function to b 
          |--------c---------|         // c is equivalent to 2), which is YR
4)    = R(YR)                          // So YR = R(YR)
```

So, it makes R recursive.

---

## Example

A function to keep adding numbers - doesn't stop:

1 = λsz.s(z)        // 1 is defined as this in λ-calculus
S = λwyx.y(wyx)     // the successor function, given n returns n + 1

R = λrn.(r(Sn))     // a function that we want to make recursive, should just keep calling itself passing in the previous successor

R is not yet recursive, we need to use the Y-combinator.

So we apply Y to R1, which gives: YR1

But we know that YR1 is the same as R(YR)1.

```
R(YR)1 = (λrn.(r(Sn))) (YR) 1    // Long-hand version of first R
       = λn.(YR(Sn)) 1           // Apply to YR
       = YR(S1)                  // Apply to 1
       = YR2                     // S1 = 2
```

But we know that YR2 = R(YR)2

```
R(YR)2 = (λrn.(r(Sn))) (YR) 2    // Long-hand version of first R
       = λn.(YR(Sn)) 2           // Apply to YR
       = YR(S2)                  // Apply to 2
       = YR3                     // S2 = 3
```

But we know that YR3 = R(YR)3

And so on...
