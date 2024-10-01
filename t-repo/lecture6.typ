#import "macros.typ" : *

= Лекция

== Операции со степенными рядами

=== Теорема о почленном дифференцировании/интегрировании

*Пусть:*

a) $f(x) = limits(sum)_(n = 0)^infinity$ - степенной ряд

b) $R > 0$ - радиус его сходимости


*Тогда:*

1) $f'(x) = limits(sum)_(n = 1)^infinity n c_n x^(n-1), R_1$

2) $limits(integral)_0^x f(t) d t = limits(sum)_(n = 0)^infinity c_n/(n+1) x^(n+1), R_2$

3) R_1 = R_2 = R

*Proof:*

3) 

$R_1 = 1/ (limits(overline(lim))_(n -> infinity) root(n-1, abs(n c_n))) = 1/ (limits(overline(lim))_(n -> infinity) root(n, abs(c_n))) = R$

$R_2 = 1/ (limits(overline(lim))_(n -> infinity) root(n+1, abs(c_n/(n+1)))) = 1/ (limits(overline(lim))_(n -> infinity) root(n, abs(c_n))) = R$

1) $R_1 = R > 0$

Выберем на интервале $(-R, R)$ произвольную точку х и отрезок $[a, b]$ её содержащий. По т. о радиусе сходимости на этом отрезке ряд сходится равномерно.

Исходный ряд сходится в 0. $u_k in D([a, b])$

Тогда по теореме о почленном дифференцировании $f'(x) = limits(sum)_(n = 1)^infinity n c_n x^(n-1)$ выполняется, а в силу произвольности x выполняется везде.

2) $R_2 = R > 0$

Возьмем отрезок $[0, x]$. На нём есть равномерная сходимость. $u_k in R([0, x])$. Тогда по теореме о почленном интегрировании выполняется $limits(integral)_0^x f(t) d t = limits(sum)_(n = 0)^infinity c_n/(n+1) x^(n+1)$.

_#underline[Замечание]_

Радиусы сходимости могут быть равны, а множества сходимости отличаться.

$(limits(sum)^infinity_(n = 1) 1/n x^n)' underbrace(=, (-1, 1)) (limits(sum)^infinity_(n = 1) x^(n-1)))$

$R = 1$

В точке 1 первый ряд расходится. В точке -1 первый ряд сходится.

В точке 1 второй ряд расходится. В точке -1 второй ряд расходится.

Радиусы равны, а множества сходимости нет.

=== Теорема о нулях степенного ряда

*Пусть:*

a) $f(x) = limits(sum)_(n = 0)^infinity$ - степенной ряд

b) $R > 0$ - радиус его сходимости

c) Пусть существует ${x_n}_(n=1)^infinity subset (-R, R) \\ {0}$

$limits(lim)_(n -> infinity) x_n = 0$ и $f(x_n) = 0, forall n in NN$

*Тогда:*

$c_n = 0, forall n in NN_0$

*Proof:*

Индукция по индексу $n$.

$underline("База")$: 

$n = 0, f in C(-R, R)$

Тогда $0 = limits(lim)_(n -> infinity) f(x_n) = underbrace(f(limits(lim)_(n -> infinity) x_n), "по непрерывности" ) = f(0) = c_0$

$underline("Предположение"):$

$c_0 = ... = c_n = 0$

$f(x) = limits(sum)_(k = 0)^infinity c_k x^k = limits(sum)_(k = n+1)^infinity c_k x^k = x^(n+1) underbracket(limits(sum)_(k = n+1)^infinity c_(k+n+1) x^k, g(x))$

$R_(g(x)) = R_(f(x))$ как предел сдвинутой на $n$ последовательности.

$g(x_n) = 0, forall n$

$0 = f(x_n) = underbracket( x_n^(n+1), != 0) g(x_n) ==> c_(0+n+1) = 0$ (следует из базы индукции для g). Доказано.

== Аналитические функции

=== Опр. ряд Тейлора

Пусть есть $f in C^infinity ({a}), a in E, f: E -> R$ 

Значит $ exists f^((k)) (a), forall k in NN_0$

Тогда $T_(f, a) (x) = limits(sum)_(k = 0)^infinity (f^((k)) (a)) / k! (x-a)^k underbracket(=, M) f(x)$

$a in M$ точно можно гарантировать.


_#underline[Пример 1]_

$a = 0$

$f(x) = cases(e^(-1/x^2) "при" x != 0, 0 "при" x = 0) ==> f^((k)) (x) = cases(Q(x) e^(-1/x^2) "при" x != 0, 0 "при" x = 0) ==> f^((k)) (0) = 0, forall k in NN_0 ==> T_(f, 0) (x) equiv 0$ 

_#underline[Пример 2]_

$g(x) = limits(integral)_0^infinity e^(-t) cos(t^2 x ) d t)$

$g^((2k)) (0) = (4k)! dot (-1)^k $

$g^((2k + 1)) (0) = 0$

$T_(g, 0) = limits(sum)_(k=0)^infinity ((4k)! (-1)^k)/(2k)! x^(2k) arrow.not 0, x!=0 ==> R = 0$

=== Опр. аналитичской функции

$f: E -> R$, $f$ аналитична в точке $a$, если $exists delta > 0 : T_(f, a) (x) = f(x),  forall x in (a - delta, a + delta) sect E$


=== Теорема Тейлора

*Пусть:*

${c_k} - $произвольная последовательность

*Тогда:*

$exists f in C^infinity ({0}) : T_(f, 0) (x) = limits(sum)_(k = 0)^infinity c_k/k! x^k$

(Для любой последовательности вещественных чисел существует  функция $f in C^infinity ({0})$, такая что $f^((n)) (0) = c_n, forall n in NN_0$)

=== Достаточные условия аналитичности

*Пусть:*

a) $f in C^infinity (-r, r), $ для некоторого $r > 0$

b) $exists L > 0, exists lambda in [0, 1) : forall n in NN_0 ,forall x in (-r, r) --> abs(f^((n)) (x)) <= L^n n ^(n lambda)$

*Тогда:*

$f(x) = T_(f, 0) (x),  forall x in (-r , r)$

*Proof:*

В силу формулы Тейлора с остаточным членом в форме Лагранжа имеем: 

$f(x) = underbrace(limits(sum)_(k = 0)^(N-1) (f^((k)) (a)) / k! x^k, ->T_(f, 0) (x)) + underbrace((f^((N)) (tau_N x)) / (N)! x^(N), -> 0), tau_N in (0, 1)$

В силу условия (b) имеем оценку:

$0 <= abs((f^((N)) (tau_N x)) / (N)! x^(N)) <= underbrace((L^N N ^(N lambda)) / N! r^N, "нужно чтобы это" -> 0)$

Обозначим правую часть за $b_n$. Тогда $b_(n+1)/b_n = (L r)/(n+1) ((N+1)/N)^(N lambda) (N + 1)^lambda -> L dot r dot e^lambda dot 0 -> 0$

Тогда по Даламберу $limits(sum) b_N$ сходится $=> b_N -> 0$.

