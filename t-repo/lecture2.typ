= Лекция

== Другие признаки знакопостоянных рядов

=== Усиленный радикальный признак Коши

*Пусть:*

a) $a_n >= 0 " " forall n$\
b) $L = overline(limits(lim)_(n arrow infinity)) a_n^(1/n)$

*Тогда:*

1) $L < 1 => limits(sum)_(n=1)^(infinity) a_n$ - сходится

2) $L > 1 => limits(sum)_(n=1)^(infinity) a_n$ - расходится

*Proof:*

1) $overline(limits(lim)_(n arrow infinity)) a_n^(1/n) = L < 1 => exists " " q in (0, 1) " " exists " " N : forall n >= N arrow a_n^(1/n) <= q <=> a_n <= q^n$
$=> limits(sum)_(n=1)^(infinity) q^n "- сходится" =>$

$=> limits(sum)_(n=1)^(infinity) a_n "- сходится"$.

2) $overline(limits(lim)_(n arrow infinity)) a_n^(1/n) = L > 1 => forall N " " exists " " n >= N : a_n^(1/n) > 1 => a_n > 1 => limits(lim)_(n arrow infinity) a_n eq.not 0 => limits(sum)_(n=1)^(infinity) a_n "- расходится"$.

=== Признак Даламбера

*Пусть:*

a) $a_n > 0 " " forall n in NN$

b) $d = limits(underline(lim))_(n arrow infinity) a_(n+1)/a_n$;
$D = limits(overline(lim))_(n arrow infinity) a_(n+1)/a_n$

*Тогда:*

1) $D < 1 => limits(sum)_(n=1)^(infinity) a_n "- сходится"$

2) $D > 1 => limits(sum)_(n=1)^(infinity) a_n "- расходится"$

*Proof:*

$limits(underline(lim))_(n arrow infinity) a_(n+1)/a_n <= limits(underline(lim))_(n arrow infinity) a_n^(1/n) <= limits(overline(lim))_(n arrow infinity) a_n^(1/n) <= limits(overline(lim))_(n arrow infinity) a_(n+1)/a_n$

Ссылаемся на Коши.

_#underline[Замечание]_

Признак Коши сильнее признака Даламбера. Пример ряда, к которому применим Коши, но не применим Даламбер:

$limits(sum)_(n=1)^(infinity) 2^((-1)^n - n)$

=== Интегральный признак 

*Пусть:*

a) $f : [1, infinity] arrow RR; " " f(x) >= 0; " " f(x) "не возрастает."$

*Тогда:*

Если сходится $limits(sum)_(n=1)^(infinity) f(n)$, то сходится $integral_1^infinity f(x) d x$

=== Признак Куммера 

*Пусть:*

a) $a_n, b_n > 0 " " forall n$

b) Положим $c_n = b_n dot a_n/a_(n+1) - b_(n+1)$

*Тогда:*

1) $exists L > 0 " " exists N : " " forall n >= N arrow c_n >= L => limits(sum)_(n=1)^(infinity) a_n "- сходится"$. 

Проще говоря, если $c_n$ финально отделены от 0, то ряд $a_n$ сходится. 

2) $limits(sum)_(n=1)^(infinity) 1/b_n "- расходится и " exists N : forall n >= N arrow c_n <= 0 => limits(sum)_(n=1)^(infinity) a_n "- расходится."$

Проще говоря, если ряд $1/b_n$ расходится и $c_n <= 0$ финально, то ряд $a_n$ расходится.

*Proof:*

1) Пусть $N = 1$

$c_n >= L " " forall n => a_n dot b_n - b_(n+1) dot a_(n+1) >= L dot a_(n+1)$

$A_n = limits(sum)_(k=1)^(n) a_k = 1/L limits(sum)_(k=1)^(n) L dot a_k = 1/L (L a_1 + limits(sum)_(k=1)^(n-1) L dot a_(k+1)) <= a_1 + 1/L limits(sum)_(k=1)^(n-1) (a_k b_k - a_(k+1) b_(k+1)) = a_1 + \
+ 1/L dot (a_1 b_1 - a_n b_n) <= a_1 + (a_1 b_1)/L => A_n <= a_1 + (a_1 b_1)/L => {A_n} arrow.tr "и ограничен" => limits(sum)_(n=1)^(infinity) a_n "- сходится."$

2) $c_n <= 0 => a_n/a_(n+1) <= b_(n+1)/b_n = (1/b_n)/(1/b_(n+1))$

По 3 признаку сравнения , т.к. $limits(sum)_(n=1)^(infinity) 1/b_n "- расходится, то " limits(sum)_(n=1)^(infinity) a_n "- тоже расходится."$

=== Признак Бертрана

*Пусть:*

a) $a_n > 0 " " forall n$

b) $limits(lim)_(n arrow infinity) ln(n)  (n (a_n/a_(n+1) - 1) - 1) = B in [-infinity;infinity]$

*Тогда:*

1) Если $B > 1 => limits(sum)_(n=1)^(infinity) a_n "- сходится"$.

2) Если $B < 1 => limits(sum)_(n=1)^(infinity) a_n "- расходится"$.

*Proof:*

1) Возьмем в признаке Куммера $b_n = n ln(n); " " limits(sum)_(n=1)^(infinity) 1/b_n "- расходится"$

$c_n = n ln(n) a_n/a_(n+1) - (n+1)ln(n+1) = underbrace(ln(n)((a_n/a_(n+1)-1)-1), arrow B>1) - underbrace((n+1)(ln(n+1) - ln(n)), arrow 1) => \
=> "Выражение" arrow L > 0 => limits(sum)_(n=1)^(infinity) a_n "- сходится по Куммеру."$

2) $c_n = n ln(n) a_n/a_(n+1) - (n+1)ln(n+1) = underbrace(ln(n)((a_n/a_(n+1)-1)-1), arrow B<1) - underbrace((n+1)(ln(n+1) - ln(n)), arrow 1) => \
=> "Выражение" arrow L < 0 => limits(sum)_(n=1)^(infinity) a_n "- расходится по Куммеру."$


=== Признак Раабе

*Пусть:*

$limits(lim)_(n arrow infinity) n(a_n/a_(n+1) - 1) = R$

*Тогда:*

1) $R > 1 => "сходится"$

2) $R < 1 => "расходится"$

*Proof:*

Подставляем в $limits(lim)_(n arrow infinity) ln(n)  (n (a_n/a_(n+1) - 1) - 1) = B$ - из признака Бертрана очевидным образом следуют пункты 1 и 2.


=== Признак Гаусса

*Пусть:*

a) $a_n > 0$, $exists lambda in RR, exists mu in RR, exists epsilon > 0$

b) $a_n/a_(n+1) = lambda + mu/n + gamma/n^(1+epsilon)$, где ${gamma}_1^N$ ограничено.

*Тогда:*

1) $cases(lambda > 1, lambda = 1 " и " mu > 1) => limits(sum)_(n=1)^(infinity) a_n "- сходится"$

2) $cases(lambda < 1, lambda = 1 " и " mu <= 1) => limits(sum)_(n=1)^(infinity) a_n "- расходится"$

*Proof:*

Возьмём Бертрана.

$limits(lim)_(n arrow infinity) ln(n)  (n (a_n/a_(n+1) - 1) - 1) = B$

1) Если $lambda > 1$, то $B = +infinity$

Если $lambda = 1$ и $mu > 1$, то:

$limits(lim)_(n arrow infinity) ln(n)  (n ((1 + mu/n + gamma/n^(1+epsilon)) - 1) - 1) = limits(lim)_(n arrow infinity) ln(n)(n (mu/n + gamma/n^(1+epsilon)) - 1) = limits(lim)_(n arrow infinity) ln(n)underbrace((mu + gamma/n^epsilon - 1), "const > 0") = +infinity$

2) Если $lambda < 1$, то $B = -infinity$

Если $lambda = 1$ и $mu < 1$, то $B = -infinity$ - аналогично 1 пункту.

Если $lambda = 1$ и $mu = 1$, то в итоге имеем $B = limits(lim)_(n arrow infinity) ln(n)/n^epsilon gamma_n arrow 0$.

== Признаки сравнения любых рядов

=== Признаки Абеля и Дирихле

*Пусть:*

#table(
  columns: (50%, 50%),
  inset: 10pt,
  align: center,
  [*Дирихле*], [*Абель*],
  [$exists M > 0 : forall n in NN\
  abs(limits(sum)_(k=1)^(n) a_k) <= M$], [$limits(sum)_(n=1)^(infinity) a_n "- сходится."$], 
  [$limits(lim)_(k arrow infinity) b_k = 0$], [$exists M > 0 : forall n\
  abs(b_n) <= M$],
  [${b_n} arrow.tr$ или ${b_n} arrow.br$], [${b_n} arrow.tr$ или ${b_n} arrow.br$]
)

*Тогда:*

$limits(sum)_(n=1)^(infinity) a_n b_n "- сходится."$

_#underline[Примечание]_

Дирихле $==>$ Абель


=== Преобразование Абеля

*Пусть:*

${a_n}_(n=1)^infinity$ и ${b_n}_(n=1)^infinity$ - последовательности вещественных чисел.

*Тогда:* 

$forall n,k in NN$ выполнено:

$limits(sum)_(i= n + 1)^(n + k) a_i b_i = A_(n+k) b_(n+k) - A_n b_(n+1) + limits(sum)_(i= n + 1)^(n + k - 1) A_i (b_i - b_(i+1))$, где $A_m = limits(sum)_(i=1)^(m) a_i$