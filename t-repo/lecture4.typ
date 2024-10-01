#import "macros.typ" : *

= Лекция

== Функциональные ряды и последовательности

=== Определение функционального ряда

Пусть есть функции $f_n (x) = sumin u_i (x), u_i : EE -> RR, EE subset.eq RR $

Если $forall x in EE " " exists limits(lim)_(n -> infinity) f_n (x) = f(x),$ тогда $limits(lim)_(n -> infinity) f_n (x) = f(x) = sumii u_i (x)$ - сумма функционального ряда.

=== Определение поточечной сходимости

*Пусть:*

a) $EE subset.eq RR$

b) $f_n : EE -> RR " "(forall n in NN)$

*Тогда:*

Функциональная последовательность ${f_n}^infinity_(n=1)$ сходится поточечно к функции $f : EE -> RR$, если $forall x in EE, exists limits(lim)_(n arrow infinity) f_n (x) = f(x)$.

Обозначение: $f_n -> f$.

=== Определение равномерной сходимости

*Пусть:*

a) $EE subset.eq RR$

b) $f_n : EE -> RR " "(forall n in NN)$

*Тогда:*

Функциональная последовательность ${f_n}^infinity_(n=1)$ сходится равномерно к фунции $f : EE -> RR$ на $EE$, если $forall epsilon > 0 " " exists N : forall n >= N " " forall x in EE ==> abs(f_n (x) - f(x)) < epsilon$.

Обозначение: $f_n arrows f$.

=== Определение сходимости функциональных рядов

*Пусть:*

a) $EE subset.eq RR$

b) $u_i : EE -> RR " " (forall i in NN)$

c) $f_n (x) = sumin u_i (x) " " forall n in N$

*Тогда:*

1) Функциональный ряд сходится поточечно к функции $f : EE -> RR$, если $f_n arrow f$.

2) Функциональный ряд сходится равномерно к функции $f : EE -> RR "на" EE$, если $f_n arrows f$.


=== Критерий Коши равномерной сходимости

$(f_n arrows f) <==> (forall epsilon > 0 " " exists N : forall n, m : n >= N " " forall x in EE --> abs(f_(n+m) (x) - f_n (x)) < epsilon)$.


=== Теорема о почленном переходе к пределу

*Пусть:*

a) $EE subset.eq RR$

b) а - конечная предельная точка множества $EE$

c) $u_k : EE -> RR " " forall k in NN$

d) $exists limits(lim)_(x -> a) u_k (x) = c_k in RR$

e) $f_n arrows f$, где $f_n (x) = limits(sum)_(k = 1)^n u_k (x) " " forall n in NN$

*Тогда:*

$limits(lim)_(x -> a) f(x) = limits(lim)_(x -> a) limits(sum)_(k = 1)^infinity u_k (x) =  limits(sum)_(k = 1)^infinity limits(lim)_(x -> a) u_k (x) = limits(sum)_(k = 1)^infinity c_k$

1) Ряд $c_k$ сходится.

2) $limits(sum)_(k = 1)^infinity c_k = limits(lim)_(x -> a) f(x)$

*Proof:*

1) По кр. Коши равномерной сходимости:

$(f_n arrows f) ==> (forall epsilon > 0 " " exists N : forall n, m : n >= N " " forall x in EE --> abs(f_(n+m) (x) - f_n (x)) < epsilon) ==> abs(limits(sum)_(k = n + 1)^(n+m) u_k (x)) < epsilon$.

При $x -> a ==> abs(limits(sum)_(k = n + 1)^(n+m) c_k) <= epsilon ==> "ряд" c_k "сходится по кр. Коши".$

2) Пусть $limits(sum)_(k = 1)^infinity c_k = C in RR$

$limits(lim)_(x -> a) f(x) = C$ - хотим доказать.

$forall epsilon > 0 " " exists delta : abs(x - a) < delta --> abs(f(x) - C) < epsilon$.

$abs(f(x) - C) = abs(f(x) - f_N (x) + f_N (x) - C_N + C_N - C) <= abs(f(x) - f_N (x)) + abs(f_N (x) - C_N) + abs(C_N - C)$

- Для $abs(f(x) - f_N (x))$ найдется такое $N_1$, что $forall x in EE: abs(f(x) - f_N (x)) < epsilon/3$ по равномерной сходисти.

- Для $abs(C_N - C)$ найдется такое $N_2$, что $forall x in EE: abs(C_N - C) < epsilon/3$ по сходимости ряда $c_k$.

Чтобы это выполнялось одновременно $N = max{N_1, N_2}$

- Для $abs(f_N (x) - C_N)$ $:$ 

$f_N (x) = limits(sum)_(k = 1)^N u_k (x) underbrace(-->, x -> a) limits(sum)_(k = 1)^N c_k = C_N ==> $ найдется такое $delta : abs(x - a) < delta => abs(f_N (x) - C_N) < epsilon/3$

Тогда $abs(f(x) - C) < epsilon ==> limits(lim)_(x -> a) f(x) = C$.

=== Теорема о непрерывности для равномерно сходящегося ряда

*Пусть:*

a) $EE subset.eq RR$

b) $u_k : EE -> RR$

c) $f_n (x) = limits(sum)_(k = 1)^n u_k (x)$

d) $u_k in C(EE)$ - непрерывная

e) $f_n arrows f$

*Тогда:*

$f in C(EE)$

*Proof:*

Достаточно доказать, что f непрерывна в любой точке $a in EE$, т.е. нужно доказать, что $limits(lim)_(x -> a) f(x) = f(a), forall a in EE$.

Если $a - "изолированная точка множества" EE$, то равенство очевидно. 

Если $a - "предельная точка множества" EE$, то:

$exists limits(lim)_(x -> a) u_k (x) = u_k (a) = c_k$. Тогда по теореме о почленном переходе к пределу $limits(lim)_(x -> a) f(x) = limits(sum)_(k = 1)^infinity u_k (a) = f(a)$

== Критерии равномерной сходимости

=== lim-sup критерий

*Пусть:*

a) $EE subset.eq RR$

b) $f_n : EE -> RR, " " forall n in NN$

c) $f_n = limits(sum)_(k = 1)^n u_k : EE -> RR$

*Тогда:*

$(f_n arrows f) <==> (limits(lim)_(n arrow infinity) limits(sup)_(x in EE) abs(f_n (x) - f(x)) = 0) $

*Proof:*

По определению равномерной сходимости:

$forall epsilon > 0 " " exists N : forall n >= N " " underbracket(forall x in EE --> abs(f(x) - f_n (x)) < epsilon, limits(sup)_(x in EE) abs(f(x) - f_n (x)) <= epsilon)$.

Тогда по определению предела последовательности имеем: $limits(lim)_(n arrow infinity) limits(sup)_(x in EE) abs(f_n (x) - f(x)) = 0$

=== Критерий Коши равномерной сходимости

$(f_n arrows f) <==> (forall epsilon > 0 " " exists N : forall n, m : n >= N " " forall x in EE --> abs(f_(n+m) (x) - f_n (x)) < epsilon)$.

=== Признак Вейрштрасса равномерной сходимости

*Пусть:*

a) $EE subset.eq RR$

b) $u_k : EE -> RR$

c) $forall n in NN " " forall x in EE --> abs(u_k (x)) <= a_k$

d) $limits(sum)_(k = 1)^infinity a_k$ сходится.

*Тогда:*

$limits(sum)_(k = 1)^infinity u_k (x)  arrows u(x)$

\
=== Признак Абеля/Дирехле

*Пусть:*

#table(
  columns: (50%, 50%),
  inset: 10pt,
  align: center,
  [*Дирихле*], [*Абель*],
  [$exists M > 0 : forall n in NN, forall x in E\
  abs(limits(sum)_(k=1)^(n) a_k (x)) <= M$], [$limits(sum)_(n=1)^(infinity) a_n (x) "- сходится равномерно."$], 
  [$b_k (x) arrows 0$], [$exists M > 0 : forall n, forall x\
  abs(b_n (x)) <= M$],
  [${b_n (x)} arrow.tr$ или ${b_n (x)} arrow.br$], [${b_n} arrow.tr$ или ${b_n} arrow.br$]
)

*Тогда:*

$limits(sum)_(n=1)^(infinity) a_n b_n "- сходится равномерно."$



== Почленное интегрирование/дифференцирование

=== Теорема о почленном интегрировании

*Пусть:*

a) $I = [a, b] subset RR$

b) $u_k : I -> RR$

c) $f_n (x) = limits(sum)_(k = 1)^n u_k (x)$

d) $u_k in R(I)$ (интегрируемая по Риману)

e) $f_n arrows f$

*Тогда:*

1) $f in R(I)$

2) $limits(integral)_a^b f(x) d x = limits(sum)_(k = 1)^infinity limits(integral)_a^b u_k (x) d x$

*Proof:*

1) $f in R(I) underbrace(<==>, "кр. Дарбу") forall epsilon > 0 " " exists lambda : forall T : d(T) <= lambda --> limits(sum)_T limits(w)_(I_i) (f) dot abs(I_i) < epsilon$

- $d(T)$ - диаметр разбиения ($max abs(I_i)$)

- $limits(w)_(I_i) = limits(sup)_(x in I_i) (f) - limits(inf)_(x in I_i) (f)$ - колебание $f$ на отрезке $I_i$.

- Суммирование ведется по всем отрезкам разбиения T

Выбираем N по данному $epsilon > 0$.

(1) - $forall epsilon > 0 " " exists N :  forall x in I -> abs(f(x) - f_N (x)) < epsilon/(4 (b - a)) ==> f_N (x) -  epsilon/(4 (b - a)) <= f(x) <= f_N (x) +  epsilon/(4 (b - a)), forall x in I$


Для любого подотрезка $tilde(I) subset.eq I$ имеем:

(2) - $underbrace(w(f) = sup(f) - inf(f), "по определению") <= underbrace((sup(f_N) +  epsilon/(4 (b - a))) - (inf(f_N) -  epsilon/(4 (b - a))), "из неравенства (1) и т.к." inf f_N <= f_N <= sup f_N) <= underbrace(w(f_N) +  epsilon/(2 (b - a)), "по определению" w(f_N))$

Дальше, пользуясь критерием Дарбу, для заданного $epsilon$ и выбранного $N$ мы выбираем $lambda$:

$f_N in R(I) ==> forall epsilon > 0 " " exists lambda : d(T) < lambda -> limits(sum)_T limits(w)_I_i (f_N) dot abs(I_i) < epsilon/2$

$limits(sum)_T limits(w)_I_i (f) dot abs(I_i) <= underbrace(limits(sum)_T (limits(w)_I_i (f_N) + epsilon/(2 (b - a)) ) dot abs(I_i), "т.к. нер-во (2) верно для " forall" подотрезка") = underbrace(limits(sum)_T limits(w)_I_i (f_N) abs(I_i), "в силу (3) меньше" epsilon/2) + epsilon/(2 (b - a)) underbrace(limits(sum)_T abs(I_i), b-a) <= epsilon/2 + epsilon/2 = epsilon$

2) Положим $phi_n = f - f_n$. Ясно, что $phi in R(I)$ (сумма конечного числа интегрируемых интегрируема, а $f in R(I)$ доказали в 1 пункте).

Достаточно доказать, что $limits(integral)_a^b phi_n (x) d x underbrace(-->, n -> infinity) 0$

Т.к. $f_n arrows f$, то $exists N : forall n > N, forall x in I " " abs(f_n - f) < epsilon/ (b - a)$

$abs(limits(integral)_a^b phi_n (x) d x) <= limits(integral)_a^b abs(phi_n (x)) d x = limits(integral)_a^b abs(f_n - f) d x <= limits(integral)_a^b epsilon/(b-a) d x = epsilon$

=== Теорема о почленном дифференцировании

*Пусть:*

a) $I = [a, b] subset RR$

b) $u_k : I -> RR$

c) $f_n (x) = limits(sum)_(k = 1)^n u_k (x)$

d) $u_k in D(I)$, (дифференцируемая)

e) $exists c in I : limits(sum)_(k = 1)^infinity u_k (c) = L in RR$, (есть хоть одна точка, где ряд сходится)

f) $f'_n arrows g$, (сходится равномерно к чему-то)

*Тогда:*

1) $f_n arrows f$

2) $f'(x) = g(x) = (limits(sum)_(k = 1)^infinity u_k)'$ 

*Proof:*

1) Прежде всего покажем, что $forall y in I$:

$limits(sum)_(k = 1)^infinity (u_k (x) - u_k (y)) / (x - y) , x in underbrace(I \\ {y}, EE) -> $ ряд сходится на $EE$. 

Т.е. по кр. Коши показать, что $forall epsilon > 0 " " exists N : forall n > N, " " forall m in NN, " " forall x in I -> abs(limits(sum)_(k = n)^(n+m) (u_k (x) - u_k (y)) / (x - y) ) < epsilon$

Т.к. $f'_n arrows g ==> forall epsilon > 0 " " exists N : forall n > N, " " forall m in NN, " " forall x in I -> abs(f'_(n+m) (x) - f'_n (x)) < epsilon$

$abs(f'_(n+m) (x) - f'_n (x)) = abs(limits(sum)_(k = n + 1)^(n+m) u'_k (x)) = abs(h'(x)) < epsilon$

$abs(limits(sum)_(k = n)^(n+m) (u_k (x) - u_k (y)) / (x - y) ) = abs(( limits(sum)_(k = n)^(n+m) u_k (x) " "- limits(sum)_(k = n)^(n+m)u_k (y)) \/ (x - y)) = abs((h(x) - h(y))/(x-y)) = |"т. Лагранжа о среднем"| =\ abs(((h'(t))(x-y))/(x-y)) = abs(h'(t)), "где " x<t<y.$

Знаем, что $abs(h'(x)) < epsilon ==> abs(h'(t)) < epsilon ==> limits(sum)_(k = 1)^infinity (u_k (x) - u_k (y)) / (x - y)$ сходится равномерно.

Возьмем $y = c$:

$limits(sum)_(k = 1)^infinity (u_k (x) - u_k (c)) / (x - c)$ - сходится равномерно на $I \\ {c}$

(x - c) - ограниченная функция, а домножение на ограниченную функцию не влияет на сходимость. Тогда:

$limits(sum)_(k = 1)^infinity (u_k (x) - u_k (c))$ - сходится равномерно на $I \\ {c}$

$limits(sum)_(k = 1)^infinity (u_k (x) - u_k (c)) = limits(sum)_(k = 1)^infinity u_k (x) - underbrace(limits(sum)_(k = 1)^infinity u_k (c), "const") => limits(sum)_(k = 1)^infinity u_k (x) "сх. равномерно на " I \\ {c}$

Ряд сходится равномерно на ${c}$ и на I \\ {c} => ряд сходится равномерно на $I$, т.к. если ряд сходится на множествах, то он будет сходиться и на их объединении (достаточно в критерии Коши выбрать $N = max{N_1, ..., N_k}$).

2) Доказали, что $limits(sum)_(k = 1)^infinity u_k (x) = f(x)$.

$limits(sum)_(k = n)^(n+m) (u_k (x) - u_k (y)) / (x - y) = (f(x) - f(y))/(x - y)$

Пусть:

a) $E = I \\ {y}$

b) y -  конечная предельная точка $E$

c) $limits(lim)_(x->y) (u_k (x) - u_k (y)) / (x - y) = u'_k (y)$

d) $limits(sum)_(k = 1)^(infinity) (u_k (x) - u_k (y)) / (x - y) arrows (f(x) - f(y))/(x - y)$

Выполнены все условия теоремы о почленном переходе к пределу $==>$

$ ==> limits(sum)_(k = 1)^(infinity) u'_k (y) = limits(lim)_(x->y) (f(x) - f(y))/(x - y) = f'(y)$. 


=== Теорема Вейерштрасса о равномерном приближении

*Пусть:*

a)$f in C^m [a,b]$

*Тогда:*

$forall epsilon > 0 " " exists p in RR[x] : " " forall k in {0 .. m },  forall x in [a, b] --> abs(f^((k)) (x) - p^((k)) (x)) < epsilon$

