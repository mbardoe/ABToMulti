// command: render

#set page(width: 8.5in, height: 11in, margin: 1in)
#set text(size: 11pt)

= Integration by Parts

== 1. Why We Need It

Substitution works well for compositions of functions.

But when we must integrate a *product* of functions, substitution alone is often not enough.

Integration by Parts handles expressions such as:

- $x e^x$
- $x sin(x)$
- $ln(x)$
- $x^2 cos(x)$

It comes directly from the Product Rule.

== 2. Deriving the Formula

Recall the product rule:

$ (u v)' = u v' + v u' $

Rewrite in differential form:

$ dif(u v) = u dif v + v dif u $

Now integrate both sides:

$ integral dif(u v) = integral u dif v + integral v dif u $

Since

$ integral dif(u v) = u v $

we obtain:

$ u v = integral u dif v + integral v dif u $

Rearrange:

$ integral u dif v = u v - integral v dif u $

== 3. The Formula

$ integral u dif v = u v - integral v dif u $

You choose:

- $u$ (to differentiate)
- $dif v$ (to integrate)

Then compute:

- $dif u$
- $v$

The goal is for the new integral $integral v dif u$ to be simpler.

== 4. Choosing $u$: The LIATE Rule

A common guideline is:

*LIATE*

Choose $u$ from the earliest category in this list:

#enum(
  "L — Logarithmic (example: $ln(x)$)",
  "I — Inverse trig (example: $arctan(x)$, $arcsin(x)$)",
  "A — Algebraic (example: $x$, $x^2$, $sqrt(x)$)",
  "T — Trigonometric (example: $sin(x)$, $cos(x)$)",
  "E — Exponential (example: $e^x$, $2^x$)"
)

Guiding idea:

Differentiate what becomes simpler.
Integrate what stays similar.

== 5. Example 1

Compute:

$ integral x e^x dif x $

Choose:

$ u = x $
$ dif v = e^x dif x $

Then:

$ dif u = dif x $
$ v = e^x $

Apply the formula:

$ integral x e^x dif x
  = x e^x - integral e^x dif x $

$ = x e^x - e^x + C $

Factor:

$ = e^x (x - 1) + C $

== 6. Example 2

Compute:

$ integral x sin(x) dif x $

Let:

$ u = x $
$ dif v = sin(x) dif x $

Then:

$ dif u = dif x $
$ v = -cos(x) $

Apply:

$ integral x sin(x) dif x
  = -x cos(x) - integral (-cos(x)) dif x $

$ = -x cos(x) + integral cos(x) dif x $

$ = -x cos(x) + sin(x) + C $

== 7. Example 3

Compute:

$ integral ln(x) dif x $

Rewrite:

$ integral 1 · ln(x) dif x $

Let:

$ u = ln(x) $
$ dif v = dif x $

Then:

$ dif u = (1/x) dif x $
$ v = x $

Apply:

$ integral ln(x) dif x
  = x ln(x) - integral x (1/x) dif x $

$ = x ln(x) - integral 1 dif x $

$ = x ln(x) - x + C $

== 8. Repeated Integration by Parts

Example idea:

$ integral x^2 e^x dif x $

Each application reduces the power of $x$.

A known result:

$ integral x^2 e^x dif x
  = e^x (x^2 - 2x + 2) + C $

== 9. Tabular Method (Shortcut)

When repeatedly differentiating a polynomial:

#enum(
  "Differentiate the polynomial until it becomes 0.",
  "Integrate the other function repeatedly.",
  "Alternate signs starting with +.",
  "Multiply diagonally and add."
)

== 10. When the Same Integral Reappears

Consider:

$ integral e^x cos(x) dif x $

Let

$ I = integral e^x cos(x) dif x $

We will apply Integration by Parts twice.

---

First application:

Choose

$ u = cos(x) $
$ dif v = e^x dif x $

Then

$ dif u = -sin(x) dif x $
$ v = e^x $

Apply the formula:

$ I = e^x cos(x) - integral e^x (-sin(x)) dif x $

Simplify:

$ I = e^x cos(x) + integral e^x sin(x) dif x $

---

Now compute:

$ integral e^x sin(x) dif x $

Apply Integration by Parts again.

Choose

$ u = sin(x) $
$ dif v = e^x dif x $

Then

$ dif u = cos(x) dif x $
$ v = e^x $

Apply the formula:

$ integral e^x sin(x) dif x
  = e^x sin(x) - integral e^x cos(x) dif x $

But notice:

$ integral e^x cos(x) dif x = I $

So substitute back:

$ integral e^x sin(x) dif x
  = e^x sin(x) - I $

---

Substitute into the earlier equation for $I$:

$ I = e^x cos(x) + (e^x sin(x) - I) $

Simplify:

$ I = e^x cos(x) + e^x sin(x) - I $

Add $I$ to both sides:

$ 2I = e^x (cos(x) + sin(x)) $

Divide by 2:

$ I = (1/2) e^x (cos(x) + sin(x)) + C $

---

Final Answer:

$ integral e^x cos(x) dif x
  = (1/2) e^x (cos(x) + sin(x)) + C $

== 11. Summary

Integration by Parts:

$ integral u dif v = u v - integral v dif u $

Use LIATE to choose $u$.

Goal: make the resulting integral simpler.