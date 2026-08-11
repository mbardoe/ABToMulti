// command: render
= Sequences and Series

== Sequences

A *sequence* is a list of numbers written in a specific order.

Examples:

$
1, 2, 3, 4, 5, ...
$

$
2, 4, 8, 16, ...
$

We usually describe a sequence using a formula for the $n$th term:

$
a_n
$

Example:

$
a_n = 2n
$

generates the sequence

$
2, 4, 6, 8, 10, ...
$

Another example:

$
a_n = (1/2)^n
$

generates

$
1/2, 1/4, 1/8, 1/16, ...
$

=== Limits of Sequences

A sequence may approach a number as $n$ becomes very large.

If

$
lim_(n -> infinity) a_n = L
$

then we say the sequence *converges* to $L$.

Example:

$
a_n = (1/2)^n
$

Since the terms get smaller and smaller,

$
lim_(n -> infinity) (1/2)^n = 0
$

If the limit does not exist, the sequence *diverges*.

---

== Series

A *series* is the sum of the terms of a sequence.

If the sequence is

$
a_1, a_2, a_3, ...
$

the series is

$
sum_(n=1)^infinity a_n
$

Example:

$
1 + 1/2 + 1/4 + 1/8 + ...
$

To understand an infinite series, we study the *partial sums*:

$
S_N = sum_(n=1)^N a_n
$

If the sequence of partial sums approaches a number, the series *converges*.
Otherwise it *diverges*.

---

== Geometric Series

A geometric series has the form

$
sum_(n=0)^infinity a r^n
$

where

- $a$ is the first term
- $r$ is the common ratio

Example:

$
1 + 1/2 + 1/4 + 1/8 + ...
$

Here

$
a = 1,  r = 1/2
$

A geometric series converges when

$
|r| < 1
$

In that case,

$
sum_(n=0)^infinity a r^n = a/(1 - r)
$

Example:

$
1 + 1/2 + 1/4 + 1/8 + ... = 1/(1 - 1/2) = 2
$

If

$
|r| >= 1
$

the series diverges.

---

== Telescoping Series

Some series simplify because most terms cancel.

Example:

$
sum_(n=1)^infinity (1/n - 1/(n+1))
$

Expanding the first few terms:

$
(1 - 1/2) + (1/2 - 1/3) + (1/3 - 1/4) + ...
$

Most terms cancel:

$
1 - 1/2 + 1/2 - 1/3 + 1/3 - 1/4 + ...
$

Only the first and last terms remain.

The partial sum becomes

$
S_N = 1 - 1/(N+1)
$

Taking the limit:

$
lim_(N -> infinity) S_N = 1
$

So the series converges to 1.

---

== p-Series

A *p-series* has the form

$
sum_(n=1)^infinity 1/n^p
$

The behavior depends on $p$.

If

$
p > 1
$

the series converges.

If

$
p <= 1
$

the series diverges.

Examples:

Convergent:

$
sum 1/n^2
$

Divergent:

$
sum 1/n
$

(The harmonic series.)

---

== Integral Test

The integral test connects infinite series to improper integrals.

Suppose:

- $f(x)$ is positive
- $f(x)$ is continuous
- $f(x)$ is decreasing
- $f(n) = a_n$

Then the series

$
sum_(n=1)^infinity a_n
$

and the integral

$
integral_1^infinity f(x) dif x
$

either both converge or both diverge.

Example:

Consider

$
sum_(n=1)^infinity 1/n^2
$

Let

$
f(x) = 1/x^2
$

Compute the improper integral:

$
integral_1^infinity 1/x^2 dif x
$

$
= lim_(b -> infinity) integral_1^b x^(-2) dif x
$

$
= lim_(b -> infinity) (-1/x) |_1^b
$

$
= 1
$

Since the integral converges, the series converges.

---

== Alternating Series

An alternating series switches signs.

Example:

$
1 - 1/2 + 1/3 - 1/4 + 1/5 - ...
$

This can be written as

$
sum_(n=1)^infinity (-1)^(n+1) 1/n
$

=== Alternating Series Test

The series

$
sum (-1)^n a_n
$

converges if:

1. $a_n$ is decreasing
2. $lim_(n -> infinity) a_n = 0$

Example:

$
1 - 1/2 + 1/3 - 1/4 + ...
$

Here

$
a_n = 1/n
$

- The terms decrease
- The limit is 0

So the series converges.

---

== Important Idea

For any series

$
sum a_n
$

a *necessary condition for convergence* is

$
lim_(n -> infinity) a_n = 0
$

If the limit is not zero, the series must diverge.
