// command: render




= Arc Length of a Curve

Suppose a curve is given by

$
y = f(x)
$

for $a < x < b$.

We want to measure the *length of the curve* between these two points.

== Distance Between Two Nearby Points

Take two nearby points on the curve:

$
(x, f(x))
$

and

$
(x + Delta x, f(x+Delta x))
$

The straight-line distance between them is given by the distance formula:

$
Delta s
=
sqrt((Delta x)^2 + (Delta y)^2)
$

where

$
Delta y = f(x+Delta x) - f(x)
$

So

$
Delta s = sqrt((Delta x)^2 + (Delta y)^2)
$

== Rewriting the Distance

Factor out $(Delta x)^2$:

$
Delta s
=
sqrt((Delta x)^2 (1 + (frac(Delta y,Delta x))^2))
$

$

Delta s
=
|Delta x| sqrt(1 + (frac(Delta y, Delta x))^2)

$

For small steps moving to the right we can write

$
Delta s
=
Delta x sqrt(1 + (frac(Delta y,Delta x))^2)
$

This is the key step: *the distance is written as something times $Delta x$.*

== Passing to the Limit

As the points get closer together:

$
Delta x -> 0
$

the ratio

$
frac(Delta y, Delta x)
$

approaches the derivative

$
f'(x)
$

So

$
dif s
=
sqrt(1 + (f'(x))^2)  dif x
$

== Arc Length Formula

Adding all these tiny pieces together gives the arc length:

$
L =
integral_a^b
sqrt(1 + (f'(x))^2)
dif x
$

This formula measures the length of the curve from $x=a$ to $x=b$.

== Example

Find the length of

$
y = x^2
$

from $x=0$ to $x=1$.

First compute the derivative:

$
f'(x) = 2x
$

Plug into the arc length formula:

$
L =
integral_0^1
sqrt(1 + (2x)^2)
dif x
$

$
=
integral_0^1
sqrt(1 + 4x^2)
dif x
$

(This integral requires substitution or a hyperbolic substitution.)

== Geometric Interpretation

The arc length formula comes directly from the distance formula applied to tiny pieces of the curve.


#import "@preview/cetz:0.3.1"

#figure(
  cetz.canvas({
    import cetz.draw: *
    scale(1.8)
    // Helper: always return explicit xy coordinates
    let P(x, y) = (x: x, y: y)

    // Axes
    line(P(0, 0), P(4, 0))
    line(P(0, 0), P(0, 3))

    // Curve: y = 0.3 x^2 on [0, 3] (piecewise linear approximation)
    let n = 60
    for i in range(0, n) {
      let x1 = 3 * i / n
      let x2 = 3 * (i + 1) / n
      line(
        P(x1, 0.3 * x1 * x1),
        P(x2, 0.3 * x2 * x2),
      )
    }

    // Two nearby points
    let x1 = 1.0
    let y1 = 0.3 * x1 * x1
    let x2 = 1.8
    let y2 = 0.3 * x2 * x2

    let p1 = P(x1, y1)
    let p2 = P(x2, y2)

    circle(p1, radius: 0.04, fill: black)
    circle(p2, radius: 0.04, fill: black)

    // Secant segment (approximate arc piece)
    line(p1, p2, stroke: (thickness: 2pt))

    // Triangle legs (Δx and Δy)
    line(p1, P(x2, y1), stroke: (dash: "dashed"))
    line(P(x2, y1), p2, stroke: (dash: "dashed"))

    // Labels
    content(P(x1 - 0.75, y1 + 0.25), [$(x, f(x))$])
    content(P(x2 + 0.10, y2 + 0.20), [$(x+Delta x, f(x+Delta x))$])

    content(P((x1 + x2)/2, y1 - 0.28), [$Delta x$])
    content(P(x2 + 0.18, (y1 + y2)/2), [$Delta y$])
  }),
  caption: [Distance between two nearby points on a curve.]
)
The straight segment approximates the curve locally.
Its length is approximately

$
sqrt((Delta x)^2 + (Delta y)^2)
$

As the points move closer together, the approximation becomes exact, giving the arc length integral.