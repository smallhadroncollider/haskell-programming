# Types

- Expressions reduce to values. Every value has a type.
- Kind of like mathematical sets

---

## Data Declarations

How types are defined.

- Type Constructor: name of the type (e.g. `Bool`)
- Data Constructors: values of that type (e.g. `True`, `False`)

```hs
data Bool = False | True
```

`Bool` is a **sum type** (disjunction)

All data declarations have: `data`, then type name, then `=`, followed by definition


---

## Numeric Types

Numbers are polymorphic by default - not assigned a concrete type until forced to.

- `Num`: most numeric types have instances of `Num` type (`+`, `-`, `*`, etc.)

### Integral Numbers

- `Int`: fixed precision integer (also `Int8`, `Int16`, etc.)
- `Integer`: arbitrary sized integer

### `Fractional`

- `Float`: single-precision floating point - dodgy maths
- `Double`: double-precision floating point - dodgy maths
- `Rational`: stores ratios of two integers - arbitrarily precise, but less efficient then `Scientific`
- `Scientific`: coefficient as `Integer`, exponent as `Int` - limited precision, but unlikely to cause issues

Can force a type using `::` syntax. e.g. `12 :: Int8`

## Comparing Values

- `==`: equal to
- `/=`: not equal to
- `>`: greater than
- `<`: less than

---

## Typeclass Contraints

A typeclass is a set of operations defined with respect to a polymorphic type - sort of like an interface, but for types.

`(==) :: Eq a => a -> a -> Bool` - to use `==`, takes two values, that are of the same type *and* instances of `Eq`, and returns a `Bool`.

`(<) :: Ord a => a -> a -> Bool` - to use `==`, takes two values, that are of the same type *and* instances of `Ord`, and returns a `Bool`.

These work for numbers (`1 < 2`) and strings (`a > A`) as both are instances of `Eq` and `Ord`.

In fact, strings are actually lists of characters: but `[]` and `Char` are instances of `Eq` and `Ord`, so it uses the list instance, then the character instance

---

## Tuples

### Two-Tuple

`data (,) a b = (,) a b`

A **product type**: must apply both arguments to construct a value

`a` and `b` can be different types (would be `a` twice if they had to be same)

`(,) 1, "Hello"` -> `(1, "Hello")`

```hs
fst :: (a, b) -> a
snd :: (a, b) -> b
swap :: (a, b) -> (b, a) -- need to import Data.Tuple
```
