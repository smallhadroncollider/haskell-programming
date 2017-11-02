Multiplication: λxyz.x(yz)

2 = λsz.s(s(z))
4 = λsz.s(s(s(s(z))))

(λxyz.x(yz)) 2 2
(λyz.2(yz)) 2
(λz.2(2z))
(λz.(λs(λz.s(s(z))))((λs(λz.s(s(z))))z))
(λz.(λs(λz.s(s(z))))((λs(λt.s(s(t))))z)) // change internal z to t, as free variable z is coming in
(λz.(λs(λz.s(s(z))))(λt.z(z(t))))
(λz.(λs(λw.s(s(w))))(λt.z(z(t)))) // change internal z to w, as free variable z being passed in
(λz.(λw.(λt.z(z(t)))((λt.z(z(t)))(w)))
(λz.(λw.z(z(z(z(w))))))
(λzw.z(z(z(z(w))))) === 4

λs.(λz.s(s(z))) instead of λsz.s(s(z))
