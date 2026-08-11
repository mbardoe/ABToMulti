// command: render
= Polar Coordinates and Polar Graphs

== Rectangular vs Polar Coordinates

In rectangular coordinates, a point is written as

$
(x, y)
$

In polar coordinates, a point is written as

$
(r, theta)
$

where

- $r$ is the distance from the origin
- $theta$ is the angle measured from the positive $x$-axis

Connections between the systems:

$
x = r cos theta
$

$
y = r sin theta
$

Also,

$
r^2 = x^2 + y^2
$

and

$
tan theta = y/x
$

---

== Multiple Representations of a Polar Point

A polar point can be written in more than one way.

Examples:

$
(2, theta)
$

is the same point as

$
(2, theta + 2pi)
$

Also,

$
(r, theta)
$

is the same as

$
(-r, theta + pi)
$

Example:

$
(3, pi/4)
$

is the same point as

$
(-3, 5pi/4)
$

---

== Graphing Polar Equations

Polar graphs describe $r$ as a function of $theta$.

Example:

$
r = 2 + 2 sin theta
$

To graph polar equations:

1. Choose values of $theta$
2. Compute $r$
3. Plot the point $(r, theta)$

Negative values of $r$ are plotted by moving in the opposite direction of the angle.

---

== Symmetry Tests

Polar graphs often have symmetry.

Symmetry about the polar axis (the $x$-axis):

Replace $theta$ with $-theta$.

If the equation is unchanged, the graph has polar-axis symmetry.

---

Symmetry about the vertical axis:

Replace $theta$ with $pi - theta$.

---

Symmetry about the pole (the origin):

Replace $theta$ with $theta + pi$
or replace $r$ with $-r$.

---

== Common Polar Curves

=== Circle

$
r = a
$

This is a circle centered at the origin with radius $a$.

---

=== Lines Through the Origin


$theta = $ constant


This describes a straight line through the origin.

---

=== Cardioid

$
r = a + a sin theta
$

or

$
r = a + a cos theta
$

These curves have a heart-like shape.

---

=== Rose Curves

$
r = a cos(n theta)
$

or

$
r = a sin(n theta)
$

If $n$ is odd, the graph has $n$ petals.

If $n$ is even, the graph has $2n$ petals.

---

=== Lemniscate

$
r^2 = a^2 cos(2 theta)
$

This produces a figure-eight shape.

---

== Intersection of Polar Curves

To find where two curves intersect, set their equations equal.

Example:

$
r = 2 sin theta
$

$
r = 1
$

Set equal:

$
2 sin theta = 1
$

$
sin theta = 1/2
$

$
theta = pi/6, 5pi/6
$

---

== Area of a Polar Region

The area enclosed by a polar curve from

$
theta = alpha
$

to

$
theta = beta
$

is

$
A = 1/2 integral_alpha^beta r^2 dif theta
$

This formula comes from approximating the region with thin wedges.

---

== Example: Area of a Polar Curve

Find the area enclosed by

$
r = 2 sin theta
$

The curve completes a full region from

$
theta = 0
$

to

$
theta = pi
$

Use the formula:

$
A = 1/2 integral_0^pi (2 sin theta)^2 dif theta
$

Simplify:

$
A = 1/2 integral_0^pi 4 sin^2 theta dif theta
$

$
A = 2 integral_0^pi sin^2 theta dif theta
$

Using

$
sin^2 theta = (1 - cos(2 theta))/2
$

the area becomes

$
A = pi
$

---

== Area Between Two Polar Curves

If

- outer curve: $r = f(theta)$
- inner curve: $r = g(theta)$

then the area between them is

$
A = 1/2 integral_alpha^beta (f(theta)^2 - g(theta)^2) dif theta
$

Example setup:

$
A = 1/2 integral ((r_"outer")^2 - (r_"inner")^2) dif theta
$

---

== Important Strategy for BC Problems

When solving polar area questions:

1. Graph or understand the curves.
2. Find intersection angles.
3. Identify which curve is outside.
4. Set up the polar area formula.

Always remember:

$
A = 1/2 integral r^2 dif theta
$

== Arc Length of a Polar Curve

Suppose a curve is given in polar form

$
r = f(theta)
$

for

$
alpha <= theta <= beta
$

The arc length of the curve is

$
L = integral_alpha^beta sqrt(r^2 + (dif r/(dif theta))^2) dif theta
$

This formula comes from combining two facts:

- small polar motion changes radius and angle
- the distance traveled combines those two changes using the Pythagorean Theorem

---

=== Steps for Finding Polar Arc Length

To find the arc length of a polar curve:

1. Compute the derivative

$
dif r/(dif theta)
$

2. Square both terms

$
r^2
$

and

$
(dif r/(dif theta))^2
$

3. Substitute into

$
L = integral sqrt(r^2 + (dif r/(dif theta))^2) dif theta
$

4. Evaluate the integral.

---

=== Example

Find the arc length of

$
r = 2 theta
$

from

$
theta = 0
$

to

$
theta = 2
$

First compute the derivative:

$
dif r/(dif theta) = 2
$

Substitute into the formula:

$
L = integral_0^2 sqrt((2theta)^2 + 2^2) dif theta
$

Simplify:

$
L = integral_0^2 sqrt(4theta^2 + 4) dif theta
$

Factor out 4:

$
L = integral_0^2 2 sqrt(theta^2 + 1) dif theta
$

So

$
L = 2 integral_0^2 sqrt(theta^2 + 1) dif theta
$

This integral can be evaluated using substitution or a known formula.

---

=== Important Idea

Notice the similarity to the rectangular arc length formula.

Rectangular arc length:

$
L = integral sqrt(1 + (dif y/(dif x))^2) dif x
$

Polar arc length:

$
L = integral sqrt(r^2 + (dif r/(dif theta))^2) dif theta
$

Both measure how distance changes along a curve.

== Slope of a Polar Curve

Suppose a curve is given in polar form

$
r = f(theta)
$

We convert to rectangular coordinates using

$
x = r cos theta
$

$
y = r sin theta
$

Since both $x$ and $y$ depend on $theta$, we compute the slope using the parametric formula

$
dy/dx = (dy/dtheta) / (dx/dtheta)
$

---

=== Derivative Formulas

Differentiate

$
x = r cos theta
$

Using the product rule:

$
dx/dtheta = (dr/dtheta) cos theta - r sin theta
$

Differentiate

$
y = r sin theta
$

$
dy/dtheta = (dr/dtheta) sin theta + r cos theta
$

Therefore

$
dy/dx =
((dr/dtheta) sin theta + r cos theta) /
((dr/dtheta) cos theta - r sin theta)
$

---

=== Example

Find the slope of the curve

$
r = 1 + cos theta
$

First compute

$
dr/dtheta = -sin theta
$

Compute $dy/dtheta$:

$
dy/dtheta =
(-sin theta)(sin theta) + (1 + cos theta)(cos theta)
$

$
dy/dtheta =
- sin^2 theta + cos theta + cos^2 theta
$

Compute $dx/dtheta$:

$
dx/dtheta =
(-sin theta)(cos theta) - (1 + cos theta)(sin theta)
$

$
dx/dtheta =
- sin theta cos theta - sin theta - sin theta cos theta
$

$
dif x/(dif theta) =
- sin theta - 2 sin theta cos theta
$

The slope is

$
dif y/(dif x) = (dif y/(dif theta))/(dif x/dif (theta))
$

---

=== Horizontal and Vertical Tangents

Horizontal tangents occur when

$
dif y/(dif theta) = 0
$

and

$
dif x/(dif theta) ≠ 0
$

Vertical tangents occur when

$
dif x/(dif theta) = 0
$

and

$
dif y/(dif theta) ≠ 0
$

These conditions are often used in AP Calculus BC free-response questions.
