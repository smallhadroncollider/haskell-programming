# Types

- By default Haskell gives a value its most polymorphic type - *constrained* polymorphic - e.g. `1` will be constrained to `Num` - the most flexible type that the value `1` can have - only becomes a fixed type when forced to

- Can give a concrete type using `::`, e.g. `8 :: Int`


## Type Signatures

- Can have multiple typeclass constraints on a type signature:

```
(Num a, Num b) => a -> b -> b
(Ord a, Num a) => a -> a -> Ordering
```

## Currying

The function operator, `->`, is right associative and infix

So `a -> a -> a` is `a -> (a -> a)` i.e. a function that takes an argument and returns *a function* that takes an argument

So currying by default

---

## Polymorphism

- Parametric: loosest form, e.g. `id :: a -> a` - no type class, just saying thing that goes in must be same type as thing that comes out. So can work with *any* type of data. Limits what the function can do, as it has to work with *all* types.

- Constrained: limits with a typeclass, e.g. `Num a => a -> a` - takes a `Num` and returns a `Num`. There are more things that could be done with that - anything numbery.

- Concrete types: most flexible. e.g. an `Int` is an `Integral` is a `Num` - so it gets all the behaviours of `Integral` and `Num`. `Num` is a **superclass**.

`fromIntegral` takes an `Integral` and turns it into a `Num`, making it polymorphic

- **Principal type**: the most generic type that still type checks. e.g. `Num` for `10` - constrained polymorphic - or just `a` in `a -> a` - parametrically polymorphic


---

## Terms

- type variable: the variables in a type declaration. e.g. the `a` in `a -> a`
- typeclass: the shared interfaces
