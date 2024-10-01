#import "macros.typ" : *

= Лекция 

== Степенные ряды

=== Опр. степенного ряда

Фукнциональный ряд вида $limits(sum)_(n = 0)^infinity c_n (x - x_0)^n$, где $x_0, c_n in RR$ фиксированные числа - называется степенным рядом с центром в точке $x_0$.

=== Опр. радиус сходимости

Пусть $D = {"множество точек сходимости ряда"}$. Тогда $R = limits(sup)_(x in D){abs(x)}$ - называется радиусом сходимости ряда.

Множество $(-R, R)$ - называется интервалом сходимости ряда.

=== Теорема о радиусе сходимости

*Пусть:*

Дан степенной ряд $limits(sum)_(k = 0)^infinity c_k x^k$ и R - радиус его сходимости.

*Тогда:*

1) $abs(x) < R => limits(sum)_(k = 0)^infinity c_k x^k$ сходится абсолютно.

2) $abs(x) > R => limits(sum)_(k = 0)^infinity c_k x^k$ расходится.

3) $forall [a, b] subset (-R, R) => limits(sum)_(k = 0)^infinity c_k x^k$ сходится равномерно (и абсолютно) на $[a, b]$.

4) Если $limits(sum)_(k = 0)^infinity c_k R^k$ - сходится, то на $[0, R]$ сходится равномерно (и абсолютно).

5) Если $limits(sum)_(k = 0)^infinity c_k R^k$ - расходится, то на $[0, R)$ сходится неравномерно.

*Proof:*

1) $abs(x) < R = sup {abs(x) : x in D} => exists y in D : abs(y) > abs(x)$

Возьмем ряд $limits(sum)_(k = 0)^infinity abs(c_k x^k) = limits(sum)_(k = 0)^infinity abs(c_k) abs(y)^k abs(x/y)^k $

$limits(sum)_(k = 0)^infinity c_k y^k$ - сходится, т.к. $y in D => c_k y^k --> 0 => exists M : abs(c_k y^k) < M," "forall k in NN$

Тогда $limits(sum)_(k = 0)^infinity abs(c_k) abs(y)^k abs(x/y)^k <= underbrace(M dot limits(sum)_(k = 0)^infinity abs(x/y)^k, "сходится, геом. прогр.") => $ исходный ряд сходится абсолютно.

2) $abs(x) > R$. 

Предположим обратное -  ряд $limits(sum)_(k = 0)^infinity c_k x^k$ сходится. Тогда $x in D => R >= abs(x)$. Противоречие.

3) $abs(c_k x^k) <= abs(c_k) dot underbrace((max{abs(a), abs(b)}), lambda)^k$

$limits(sum)_(k = 0)^infinity abs(c_k) lambda^k - "сходится по пункту (1)" => limits(sum)_(k = 0)^infinity c_k x^k underbrace(" сх. равномерно", [a, b])$ по признаку Вейрштрасса, т.к.\
$abs(c_k x^k) <= abs(c_k) lambda^k $ и $limits(sum)_(k = 0)^infinity abs(c_k) lambda^k - "сходится"$.

4) $limits(sum)_(k = 0)^infinity c_k x^k = limits(sum)_(k = 0)^infinity c_k R^k (x/R)^k$.

Положим $a_k = c_k R^k$ - сходится равномерно, т.к. не зависит от иксов.

Положим $b_k = (x/R)^k. forall k, forall x : abs(b_k (x)) <= 1 $.

Тогда по признаку Абеля ряд сходится равномерно.

5) Предположим, что сходится равномерно. Тогда заметим, что $R$ - предельная точка $E = [0, R)$. Пусть также $u_n (x) = c_n x^n$ и $exists limits(lim)_(x -> R-0) u_n (x) = c_n R^n$.

Тогда по теореме о почленном переходе к пределу ряд $c_n R^n$ - сходится. Противоречие.

=== Теорема Коши-Адамара

*Пусть:*

a) $limits(sum)_(k = 0)^infinity c_k x^k$

b) $R = sup{ abs(x) : limits(sum)_(k = 0)^infinity c_k x^k - "сходится"}$

c) $tau = limits(overline(lim))_(k -> infinity) abs(c_k)^(1/k)$

*Тогда:*

1) $tau = 0 => R = infinity$

2) $tau = infinity => R = 0$

3) $tau in (0, infinity) => R = 1/tau$

R - радиус сходимости.

*Proof:*

Положим $x != 0$, если $x = 0$, то всё очевидно.

Далее будем пользоваться радикальным признаком Коши.

1) $tau = 0$

Положим $a_k = abs(c_k x^k) => L = limits(overline(lim))_(k -> infinity) abs(c_k x^k)^(1/k) = abs(x) tau$

$L = abs(x) tau < 1 => "сходится"$. Т.к. $tau = 0$, то сходится для любого $x => R = infinity$.

2) $tau = infinity$

$L = abs(x) tau < 1 $. Т.к. $tau = infinity$, то ряд сходится только в точке $x = 0 ==> R = 0$.

3) $tau in (0, infinity)$

Ряд сходится, если $abs(x) < 1/tau ==> R >= 1/tau$.

Пусть $R > 1/tau => exists y in D : abs(y) > 1/tau => abs(y) tau > 1 =>$ в точке y ряд расходится. Противоречие.

Значит $R = 1/tau$.
