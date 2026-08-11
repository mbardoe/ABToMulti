// command: render

= Partial Fraction Decomposition

Partial fractions allow us to rewrite a complicated rational function as a sum of simpler fractions.
This is especially useful when integrating rational functions.

A *rational function* has the form

$
f(x) = P(x)/Q(x)
$

where $P(x)$ and $Q(x)$ are polynomials.

The goal is to rewrite

$
P(x)/Q(x)
$

as a sum of fractions whose denominators are factors of $Q(x)$.

== Step 1: Make Sure the Fraction is Proper

Before using partial fractions we must have

$
deg(P) < deg(Q)
$

If the numerator has greater or equal degree, perform *polynomial division first*.

Example:

$
(x^2 + 3x + 1)/(x+1)
$

Since the numerator has larger degree, divide first.

== Step 2: Factor the Denominator

The denominator must be factored completely.

Common possibilities:

#enum(
  [Distinct linear factors: $(x-a)(x-b)(x-c)$],
  [Repeated linear factors: $(x-a)^2$],
  [Irreducible quadratic factors: $x^2+1$]
)

The form of the partial fraction decomposition depends on these factors.

== Case 1: Distinct Linear Factors

If

$
Q(x) = (x-a)(x-b)
$

then

$
P(x)/((x-a)(x-b)) = A/(x-a) + B/(x-b)
$

=== Example

Decompose

$
(3x+5)/((x-1)(x+2))
$

Write the decomposition form:

$
(3x+5)/((x-1)(x+2)) = A/(x-1) + B/(x+2)
$

Multiply both sides by the denominator:

$
3x+5 = A(x+2) + B(x-1)
$

Now we choose values of $x$ that make the equation simple.

If $x = 1$:

$
3(1)+5 = A(3)
$

$
8 = 3A
$

$
A = 8/3
$

If $x = -2$:

$
3(-2)+5 = B(-3)
$

$
-1 = -3B
$

$
B = 1/3
$

So

$
(3x+5)/((x-1)(x+2)) =
(8/3)/(x-1) + (1/3)/(x+2)
$

This method works because choosing $x$ equal to one of the roots eliminates the other terms.

== Example with Three Linear Factors

Decompose

$
(2x+3)/((x-1)(x+1)(x+2))
$

Write the form

$
(2x+3)/((x-1)(x+1)(x+2))
=
A/(x-1) + B/(x+1) + C/(x+2)
$

Multiply through:

$
2x+3 =
A(x+1)(x+2)
+ B(x-1)(x+2)
+ C(x-1)(x+1)
$

Now substitute convenient values.

If $x=1$

$
5 = A(2)(3)
$

$
A = 5/6
$

If $x=-1$

$
1 = B(-2)(1)
$

$
B = -1/2
$

If $x=-2$

$
-1 = C(-3)(-1)
$

$
C = -1/3
$

== Case 2: Repeated Linear Factors

If a denominator factor repeats, we include a term for each power.

Example structure:

$
P(x)/(x-a)^2
=
A/(x-a) + B/(x-a)^2
$

For higher powers:

$
P(x)/(x-a)^3
=
A/(x-a) + B/(x-a)^2 + C/(x-a)^3
$

== Case 3: Irreducible Quadratic Factors

If the denominator contains a quadratic that cannot be factored, the numerator must be linear.

Example structure:

$
P(x)/(x^2+1) = (A x+B)/(x^2+1)
$

If the quadratic repeats:

$
P(x)/(x^2+1)^2
=
(A x+B)/(x^2+1)
+
(C x+D)/(x^2+1)^2
$

== Why Partial Fractions Are Useful

Partial fractions allow us to integrate rational functions easily.

Example:

$
integral (3x+5)/((x-1)(x+2)) dif x
$

After decomposition:

$
integral (8/3)/(x-1) dif x
+
integral (1/3)/(x+2) dif x
$

$
(8/3) ln|x-1| + (1/3) ln|x+2| + C
$

== Summary

#enum(
  [Make sure the fraction is proper.],
  [Factor the denominator completely.],
  [Write the correct partial fraction form.],
  [Multiply through by the denominator.],
  [Substitute convenient values of $x$ to solve for the constants.]
)