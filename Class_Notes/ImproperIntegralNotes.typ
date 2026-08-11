// command: render

= Improper Integrals

Sometimes an integral cannot be evaluated directly because the interval is infinite or because the function becomes infinite somewhere in the interval. In these cases, we define the integral using limits. Such integrals are called *improper integrals*.

== Type 1: Infinite Limits of Integration

An improper integral of Type 1 occurs when the interval of integration extends to infinity.

For example:

$
integral_1^infinity f(x) dif x
$

This is defined as a limit:

$
integral_1^infinity f(x) dif x
= lim_(t -> infinity) integral_1^t f(x) dif x
$

If this limit exists and is finite, the integral *converges*.
If the limit does not exist or is infinite, the integral *diverges*.

=== Example

Evaluate

$
integral_1^infinity 1/x^2 dif x
$

We rewrite using a limit:

$
integral_1^infinity 1/x^2 dif x
= lim_(t -> infinity) integral_1^t 1/x^2 dif x
$

Compute the integral:

$
integral 1/x^2 dif x = -1/x
$

So

$
lim_(t -> infinity) [-1/x]_1^t
$

$
= lim_(t -> infinity) (-1/t + 1)
$

$
= 1
$

Therefore the integral *converges* and its value is 1.

== Type 2: Infinite Discontinuities

An improper integral of Type 2 occurs when the function becomes infinite inside the interval.

Example:

$
integral_0^1 1/sqrt(x) dif x
$

The function becomes infinite as $x -> 0$, so we rewrite:

$
integral_0^1 1/sqrt(x) dif x
= lim_(t -> 0^+) integral_t^1 1/sqrt(x) dif x
$

Compute the integral:

$
integral x^(-1/2) dif x = 2 sqrt(x)
$

So

$
lim_(t -> 0^+) [2 sqrt(x)]_t^1
$

$
= lim_(t -> 0^+) (2 - 2 sqrt(t))
$

$
= 2
$

Thus the integral *converges*.

== Infinite Discontinuity in the Interior

If a discontinuity occurs inside the interval, we split the integral.

Example:

$
integral_-1^1 1/x^2 dif x
$

Since the function is undefined at $x = 0$:

$
integral_-1^1 1/x^2 dif x
=
integral_-1^0 1/x^2 dif x
+
integral_0^1 1/x^2 dif x
$

Each piece must converge separately.

If either diverges, the whole integral diverges.

== p-Test for Improper Integrals

A useful result is the *p-test*.

For

$
integral_1^infinity 1/x^p dif x
$

#enum(
  [If $p > 1$, the integral *converges*.],
  [If $p <= 1$, the integral *diverges*.]
)

Example:

$
integral_1^infinity 1/x dif x
$

Since $p = 1$, the integral diverges.

== Summary

Improper integrals arise when:

#enum(
  [The interval extends to infinity.],
  [The function becomes infinite somewhere in the interval.]
)

To evaluate them:

#enum(
  [Rewrite the integral using limits.],
  [Evaluate the definite integral.],
  [Take the limit.],
  [Decide whether the result converges or diverges.]
)