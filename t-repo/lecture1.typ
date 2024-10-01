= Лекция

== Ряды
=== Опр. сходимости ряда

$ limits(sum)_(n=1)^infinity$  $ a_n = a$, $a_n in RR$. $A_k = limits(sum)_(n=1)^k a_n $ - частичная сумма ряда. Тогда ряд сходится, если существует конечный предел частичных сумм: 
$limits(sum)_(n=1)^infinity = limits(lim)_(k arrow infinity) A_k = a$.

=== Критерий Коши

$limits(sum)_(n=1)^infinity a_n$ - сх $<=> forall " " epsilon > 0 " " exists 
 N(epsilon) in NN : forall " " k,m in NN >= N(epsilon) => abs(limits(sum)_(n=k)^(k+m) a_n) < epsilon$.

=== Необходимое условие сходимости ряда

$limits(sum)_(n=k)^(k+m) a_n$ - сх $=> limits(lim)_(n arrow infinity) a_n = 0$

== Операции над рядами

Сложение: $limits(sum)_(n=1)^(infinity) a_n + limits(sum)_(n=1)^(infinity) b_n = limits(sum)_(n=1)^(infinity) a_n + b_n$

Умножение на скаляр: $lambda dot limits(sum)_(n=1)^(infinity) a_n = limits(sum)_(n=1)^(infinity) lambda dot a_n$

=== Группировка без перестановки (группировка)

*Пусть:*\
a) $limits(sum)_(n=1)^(infinity) a_n "- числовой ряд"$\
b) ${K_n}^infinity subset.eq NN : cases(k_1 = 1, k_i < k_(i+1))$\

c)
$limits(sum)_(n=1)^(infinity) b_n = underbrace((a_1 + ... + a_(k_2-1)), b_1) + underbrace((a_(k_2) + ... + a_(k_3 - 1)), b_2) + b_3 + ...$

*Тогда:*\
1) $limits(sum)_(n=1)^(infinity) a_n = a => limits(sum)_(n=1)^(infinity) b_n = a$.\
2) Если $limits(lim)_(n arrow infinity) a_n = 0$, $limits(sum)_(n=1)^(infinity) b_n = b$ и $exists " " m : k_(n+1) - k_n < m " " forall n$ (т.е. группировка не более чем по m слагаемых), то $limits(sum)_(n=1)^(infinity) a_n = b$.

*Proof:*

$arrow.r.double:\
B_N = b_1 + ... + b_N = |"раскрываем" b_i| = a_1 + ... + a_(k_(N+1) - 1) = A_(k_(N+1) - 1) => \
=> {B_N} "подпоследовательность" {A_N} => limits(sum)_(n=1)^(infinity) b_n = a$.

$arrow.l.double:$\
$tilde(a_i) = max{abs(a_(k_i)), ..., abs(a_(k_(i+1)-1))}$\
$A_n = a_1 + ... + a_n$

$exists! " " k_i : n in [k_i, k_(i+1)-1]\
A_n = b_1 + ... + b_(i-1) + a_(k_i) + ... + a_n = B_(i-1) + a_(k_i) + ... + a_n <= B_(i-1) + tilde(a_i) dot m$
$B_(i-1) - tilde(a_i) dot m <= A_n$

При $n arrow infinity => i arrow infinity => tilde(a_i) => 0$.

$B_(i-1) - tilde(a_i) dot m <= A_n <= B_(i-1) + tilde(a_i) dot m =>\
b - 0 dot m <= A_n <= b + 0 dot m => \
A_n arrow b$

_#underline[Замечание:]_

$"Если нет доп. условий, то в обратную сторону неверно. Контрпример:"\
limits(sum)_(n=1)^(infinity) a_n : (1 - 1) + (1 - 1) + (1 - 1) + ...\
limits(sum)_(n=1)^(infinity) b_n : 0 + 0 + 0 +...\
"Ряд" b_n "сходится, а" a_n - "расходится."$

$"Если добавить в условие, что" limits(lim)_(n arrow infinity) a_n = 0, "то всё еще неверно."\
limits(sum)_(n=1)^(infinity) a_n : (1-1) + (1/2 + 1/2 - 1/2 - 1/2) + (1/3+1/3+1/3-1/3-1/3-1/3) + ...\
limits(sum)_(n=1)^(infinity) b_n : 0 + 0 + 0 + ...\
"Ряд" a_n "расходится по Коши." $

== Знакопостоянные ряды

=== Опр. знакоположительный ряд

$limits(sum)_(n=1)^(infinity) a_n," " a_n >= 0 " " forall n$ - знакоположительный ряд.

=== Теорема Лобачевского-Коши

*Пусть:*

a) $a_n >= 0$\
b) $a_n >= a_(n+1)$

*Тогда:*

$limits(sum)_(n=1)^(infinity) a_n "~ по сходимости" limits(sum)_(n=0)^(infinity) 2^n a_(2^n) $

*Proof:*

$a_2 <= a_2 <= a_1$\
$2a_4 <= a_3 + a_4 <= 2a_2$\
$4a_8 <= a_5 + a_6 + a_7 + a_8 <= 4a_4$\
...\
$2^n a_(2^(n+1)) <= a_(2^n + 1) + ... + a_(2^(n+1)) <= 2^n a_(2^n)$

$(S_(n+1) - a_1)/2 <= A_(2^(n+1)) - a_1 <= S_n$

Если исходная сходится, то $(S_(n+1) - a_1)/2$ - неубывающая и ограниченная сверху последовательность $=>$ сходится. Аналогично, если сходится конденсированная, то $A_(2^(n+1)) - a_1$ - неубывающая и ограниченная сверху последовательность $=>$ сходится.

=== Сходимость ряда вида $sum 1/(n^p)$

$limits(sum)_(n=1)^(infinity) 1/(n^p)$, $" "p > 0$

По теореме Лобачевского-Коши исходный ряд эквивалентен:

$limits(sum)_(n=0)^(infinity) 2^n 1/(2^n)^p = limits(sum)_(n=0)^(infinity) (2^(1-p))^n$ - геометрическая прогрессия, где $q = 2^(1-p)$

Тогда ряд сходится $<=> abs(q) < 1$

$2^(1-p) < 1 => p > 1$

=== Ряд Бертрана

$limits(sum)_(n=1)^(infinity) 1/(n^alpha (ln(n))^beta)$ - сходится $<=> cases(alpha > 1, alpha = 1", " beta > 1)$

== Признаки сравнения рядов

=== Первый признак сходимости

*Пусть:*

a) $a_n, b_n >= 0$\
b) $a_n <= b_n$ финально

*Тогда:*

1) $limits(sum)_(n=1)^(infinity) b_n - "сходится" => limits(sum)_(n=1)^(infinity) a_n - "сходится"$
2) $limits(sum)_(n=1)^(infinity) a_n - "расходится" => limits(sum)_(n=1)^(infinity) b_n - "расходится".$

=== Второй признак сходимости

*Пусть:*

a) $a_n, b_n > 0$\
b) $exists " "m, M > 0 : m <= a_n/b_n <= M$ финальною

*Тогда:*

$limits(sum)_(n=1)^(infinity) a_n ~ "по сходимости" limits(sum)_(n=1)^(infinity) b_n$

#underline[_Следствие:_]

$limits(lim)_(n arrow infinity) a_n/b_n = c in (0, infinity) => $
$limits(sum)_(n=1)^(infinity) a_n ~ "по сходимости" limits(sum)_(n=1)^(infinity) b_n$

=== Третий признак сходимости

*Пусть:*

a) $a_n, b_n > 0$
b) $a_(n+1)/a_n <= b_(n+1)/b_n$

*Тогда:*

1) $limits(sum)_(n=1)^(infinity) b_n "- сх" => limits(sum)_(n=1)^(infinity) a_n "- сх"$.

2) $limits(sum)_(n=1)^(infinity) a_n "- расх" => limits(sum)_(n=1)^(infinity) b_n "- расх"$.