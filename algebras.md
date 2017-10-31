# Algebras

## Semigroup: Binary Associativity
- mappend <>: does something with two values in an associative way e.g. 1 + (2 + 3)  = (1 + 2) + 3
- mconcat: takes a list of type m and returns an m

(Semigroup a) => Monoid a: Binary Associativity, Identity
- mempty: an identity/neutral value e.g 1 + 0 = 1, 3 * 1 = 3, [] ++ [1] = [1]

## Functor

Functor a: Apply a function to a value (inside), without changing structure e.g map over a list. "Lifts" over a structure i.e. Runs a function on the thing inside without worrying about the wrapper
- fmap <$>: (a->b)->fa->fb - run a function on contained value, get back Functor of same type

    Laws: fmap id = id, fmap(f.g) == fmapf.fmapg 

## Monoid

(Monoid a, Functor a) => Applicative a: monoidal functor
- pure: turns value into applicative wrapped value
- apply/ap `<*>: f (a -> b) -> f a -> f b` 


## Natural Transformations

Convert a value inside one structure to a value inside another

E.g. Just a -> [a], Nothing -> []
