#import "macros.typ" : *

= Лекция

== Операции над числовыми рядами

=== Абсолютная и условная сходимость

$limits(sum)_(n=1)^(infinity) a_n $:

- сходится абсолютно, если сходится $limits(sum)_(n=1)^(infinity) abs(a_n)$
- сходится условно, если сходится $limits(sum)_(n=1)^(infinity) a_n$, но расходится $limits(sum)_(n=1)^(infinity) abs(a_n)$

=== Перестановка без группировки

*Пусть:*


$limits(sum)_(n=1)^(infinity) a_n$ - сходится абсолютно.

$tau : NN arrow NN$ - биекция, задает перестановку ряда.

*Тогда:*

$limits(sum)_(n=1)^(infinity) a_tau(n) = limits(sum)_(n=1)^(infinity) a_n$

*Proof:*

Пусть $a_n >= 0$, тогда докажем, что $limits(sum)_(k=1)^(infinity) a_tau(k) = limits(sum)_(k=1)^(infinity) a_n$

$N = max(tau(1), ..., tau(n))$

$B_n = limits(sum)_(k=1)^(n) a_tau(k) <= limits(sum)_(k=1)^(N) a_k <= a ==> {B_n}$ - ограничена и не убывает $==> B_n arrow b <= a$

Применим $tau^(-1)$ и аналогичными рассуждениями получим, что $limits(sum)_(k=1)^(infinity) a_(tau^(-1) compose tau(k)) <= limits(sum)_(k=1)^(infinity) a_k = a <= b$

Отсюда $a <= b <= a => b = a => B_n -> a$

Возьмём теперь $p_k = (a_k + abs(a_k)) / 2 >= 0$, $q_k = (abs(a_k) - a_k) / 2 >= 0$.

$B_n = limits(sum)_(k=1)^(n) a_tau(k) =  limits(sum)_(k=1)^(n) p_tau(k) - limits(sum)_(k=1)^(n) q_tau(k)$

$limits(sum)_(k=1)^(infinity) a_tau(k) = limits(sum)_(k=1)^(infinity) p_tau(k) - limits(sum)_(k=1)^(infinity) q_tau(k)$ (т.к. ряды $p_k$ и $q_k$ сходятся) $=$ |по доказанному выше| $=$ 

$ limits(sum)_(k=1)^(infinity) p_(k) - limits(sum)_(k=1)^(infinity) q_(k) = limits(sum)_(k=1)^(infinity) a_(k)$

=== Теорема Римана

*Пусть:*

$limits(sum)_(n=1)^(infinity) a_n$ - сходится условно.

*Тогда:*

1) $forall a in RR " " exists " " tau : NN -> NN "биекция" : limits(sum)_(n=1)^(infinity) a_tau(n) = a$

2) $exists " " tau_1, tau_2 : NN -> NN "биекция" : limits(sum)_(n=1)^(infinity) a_tau_1(n) = + infinity; limits(sum)_(n=1)^(infinity) a_tau_2(n) = - infinity$

3) $exists " " tau : NN -> NN "биекция" : limits(sum)_(n=1)^(infinity) a_tau(n) "- расходится"$

*Proof:*

$limits(sum)_(k=1)^(infinity) a_k$

$alpha_n$ - n-ый неотрицательный член,\
$beta_n$ - n-ый отрицательный член.

$limits(sum)_(k=1)^(infinity) a_k$ - сходится условно $=> limits(sum)_(k=1)^(infinity) alpha_k = + infinity; limits(sum)_(k=1)^(infinity) beta_k = - infinity$

Допустим это неверно.

Если оба ряда $alpha "и " beta$ сходятся. Тогда оценим $limits(sum)_(k=1)^(m) abs(a_k) <= limits(sum)_(k=1)^(m) alpha_k + limits(sum)_(k=1)^(m) abs(beta_k) <= C => limits(sum)_(k=1)^(m) a_k$ сходится абсолютно. Противоречие.

Пусть ряд $alpha$ сходится, ряд $beta$ расходится. Тогда частичные суммы будут расходиться при стремлении к бесконечности. Если записать формально, то если $limits(sum)_(k=1)^(infinity) alpha_k = + infinity, limits(sum)_(k=1)^(infinity) beta_k = beta > - infinity$, то $forall E > 0 " " exists N(E) : forall m >= N(E) => limits(sum)_(k=1)^(m) alpha_k > E - beta$.

Пусть M настолько велико, что в ${a_1, ..., a_M}$ лежат все ${alpha_1, ..., alpha_m}$, тогда:

$limits(sum)_(k=1)^(M) a_k >= limits(sum)_(k=1)^(m) alpha_k + beta > E$ - в силу произвольности E частичные суммы не ограничены, а значит ряд $a_n$ расходится. Противоречие.

1) Пусть $a in RR$ произвольно. Будем делать следующее:

Прибавляем $alpha_i$, пока сумма не будет больше $a$. Как только сумма стала больше $a$, начинаем прибавлять $beta_i$, как только сумма стала меньше $a$, снова начинаем прибавлять $alpha_i$ и так далее.

Стоит оговорить три момента:

1. Мы всегда можем брать $alpha_i$, которые будут нас "поднимать", потому что их бесконечно много и $limits(sum)_(k=1)^(infinity) alpha_k = + infinity$. Аналогично с $beta_i$.

2. Почему мы действительно сойдёмся к $a$? Исходный ряд сходится условно $=> a_k arrow 0 => alpha_i -> 0; beta_i -> 0$. Тогда $forall epsilon > 0 " " exists N in NN : forall n >= N => alpha_i < epsilon/2; abs(beta_i) < epsilon/2$. В момент, когда все $alpha_i$ и $beta_i$ с номерами меньше N войдут в сумму - мы начнём отклоняться от $a$ не больше, чем на $epsilon/2$. В силу произвольности $epsilon$ ряд сходится к $a$ по Коши.

#image("image.png", width: 350pt)

3. Почему ряд перестановка исходного? По построению - ряд включает в себя все члены исходного и только их.

2) Чтобы уйти в бесконечность будем брать так:

Берём альфы до 1, потом одну бету, альфы до 2, потому одну бету и т.д.

3) Чтобы сумма расходилась будем набирать так, чтобы получилась последовательность вида ${1, -1, 2, -2, 3, -3 ...}$.

=== опр. Произведение рядов по Коши

$limits(sum)_(k=1)^(infinity) a_(k)$ и $limits(sum)_(k=1)^(infinity) b_(k)$ ряда, тогда ряд $limits(sum)_(k=1)^(infinity) c_(k), "где" c_k = a_1 b_k + a_2 b_(k-1) + ... + a_k b_1$ называется произведением рядов по Коши.

=== Теорема Тёплица

*Пусть:*

$mat(t_(11);
     t_(21), t_(22);
     t_(31), t_(32), t_(33);
     ..., ..., ...;
     t_(n 1), t_(n 2), t_(n 3), ..., t_(n n);
     dots.v, dots.v, dots.v, , dots.v
)$

a) $forall j -> limits(lim)_(i -> infinity) t_(i j) = 0$

b) $exists K : forall i -> limits(sum)_(j=1)^(i) abs(t_(i j)) <= K$ - для любой строки сумма модулей элементов меньше К.

c) $limits(lim)_(i -> infinity) t_i = 1$, где $t_i = t_(i 1) + ... + t_(i i)$

*Тогда:*

1) $limits(lim)_(i -> infinity) x_i = 0 ==> limits(lim)_(i -> infinity) z_i = 0$, где $z_i = x_1 t_(i 1) + ... + x_i t_(i i)$

2) $limits(lim)_(i -> infinity) x_i = x in RR ==> limits(lim)_(i -> infinity) z_i = x$, где $z_i = x_1 t_(i 1) + ... + x_i t_(i i)$

=== Теорема Коши о суммировании по Чезаро

Для любых $x_i in RR, i in NN$ выполнено:

$limits(lim)_(i -> infinity) x_i = x ==> limits(lim)_(i -> infinity) z_i = x$, где $z_i = (x_1 + x_2 + ... + x_i)/ i$.

*Proof:*

Положим $t_(i 1) = t_(i 2) = ... = t_(i i) = 1/i " " forall i in NN$

Данные $t_(i j)$ удовлетворяют всем пунктам теоремы Тёплица $=>$ наше утверждение следует из 2 пункта теоремы.

_#underline[Лемма 1]_

$cases(limits(lim)_(i -> infinity) x_i = 0, limits(lim)_(i -> infinity) y_i = 0, limits(sum)^infinity y_i "- сх. абс.") => limits(lim)_(i -> infinity) z_i = 0$, где $z_i = x_1 y_i + ... + x_i y_1$

_#underline[Лемма 2]_

$cases(limits(lim)_(i -> infinity) x_i = x in RR, limits(lim)_(i -> infinity) y_i = y in RR) => limits(lim)_(i -> infinity) z_i = x y$, где $z_i = (x_1 y_i + ... + x_i y_1) / i$

=== Теорема Мертинса

*Пусть:*

a) $limits(sum)_(k=1)^(infinity) a_k = a in RR$,  $" "limits(sum)_(k=1)^(infinity) b_k = b in RR$

b) Хотя бы один сходится абсолютно

*Тогда:*

$limits(sum)_(k=1)^(infinity) c_k = a b, " " c_k = a_1 b_k + ... + a_k b_1$

*Proof:*

Пусть ряд $a_k$ сходится абсолютно без потери общности.

$C_n = a_1 B_n + ... + a_n B_1$, где $C_n = limits(sum)_(k=1)^(n) c_k, " " B_n = limits(sum)_(k=1)^(n) b_k$. Положим также $beta_n = limits(sum)_(k=n + 1)^(infinity) beta_k$.

$C_n = a_1 (b - beta_n) + a_2 (b - beta_(n-1)) + ... + a_n (b - beta_1)$, т.к. $B_n + beta_n = limits(sum)_(k = 1)^infinity b_k = b$

$C_n = b(a_1 + ... + a_n) - (a_1 beta_n + ... + a_n beta_1)$

Положим $x_i = beta_i$ и $y_i = a_i$ Тогда:

+ $limits(lim)_(i -> infinity) x_i = 0$, т.к. $x_i = beta_i = b - B_i = b - b = 0$

+ $limits(lim)_(i -> infinity) y_i = 0$, необходимый признак сходимости

+ $forall i limits(sum)_(j = 1)^i abs(y_j) <= K = limits(sum)_(j=1)^infinity abs(a_j)$ - K существует, т.к. мы предположили, что ряд $a_i$ сходится абсолютно.

Тогда по лемме 1 имеем $a_1 beta_n + ... + a_n beta_1 -> 0$ при $n -> infinity$.

Соответственно, $limits(lim)_(n arrow infinity) C_n = b underbrace((a_1 + ... + a_n), -> a) - underbrace((a_1 beta_n + ... + a_n beta_1), -> 0) = a b - 0 = a b$.

=== Теорема Абеля

*Пусть:*

a) $limits(sum)_(k=1)^(infinity) a_k = a$

b) $limits(sum)_(k=1)^(infinity) b_k = b$

c) $limits(sum)_(k=1)^(infinity) c_k = c$, где $c_k = a_1 b_k + ... + a_k b_1 $

*Тогда:*

$c = a b$

*Proof:*

Положим $A_n = sumin a_i$, $B_n = sumin b_i$, $C_n = sumin c_i$. Несложно заметить и проверить, что $C_1 + ... + C_n = A_1 B_n + ... + A_n B_1$

Т.к. $liminf A_n = a$, $liminf B_n = b$ при $x_i = A_i$, $y_i = B_i$ по лемме 2 имеем:

$(C_1 + ... + C_n) / n = (A_1 B_n + ... + A_n B_1) / n -> a b$ при $n -> infinity$

С другой стороны, $liminf C_n = c$, поэтому в силу теоремы Коши имеем $(C_1 + ... + C_n) / n -> c$, при $n -> infinity$.

Из полученных выше равенств заключаем $c = a b$.

_#underline[Замечание]_

Пусть есть два числовых ряда $sumii a_i$ и $sumii b_i$. Как можно определить их произведение:

$(sumii a_i) dot (sumii b_i) = " "?$

Такое произведение можно определить как сумму ряда $sumii c_i$, где каждый элемент $a_i b_j$ встречается ровно один раз. Но в каком порядке брать эти слагаемые? Как только мы фиксируем какой-либо порядок мы получаем умножение рядов, однако несложно заметить, что таких порядков столько же, сколько биекций $NN -> NN^2$, т.е. несчетное количество. Следующая теорема Абеля показывает, что если ряды сходятся абсолютно, то порядок не важен. 

=== Теорема Абеля об умножении абсолютно сходящихся рядов

*Пусть:*

a) Ряды $sumii a_i$ и $sumii b_i$ сходятся аболютно.

b) $i arrow.bar (m_i, n_i)$ - биекция $NN -> NN^2$.

c) $sumii a_i = a$, $sumii b_i = b$


*Тогда:*

$sumii a_(m_i) dot b_(n_i) = a b$

*Proof:*

$limits(sum)_(i = 1)^N abs(a_(m_i) b_(n_i)) <= (limits(sum)_(i = 1)^K abs(a_i)) dot (limits(sum)_(i = 1)^K abs(b_i))$, где $K = max{m_1, m_2, ..., m_N, n_1, n_2, ..., n_N}$ т.к. любое слагаемое левой суммы присутствует в правой сумме и все слагаемые правой суммы неотрицательны.

$limits(sum)_(i = 1)^N abs(a_(m_i) b_(n_i)) <= (limits(sum)_(i = 1)^K abs(a_i)) dot (limits(sum)_(i = 1)^K abs(b_i)) <= hat(a) hat(b) in RR$, где $hat(a) = limits(sum)_(i = 1)^infinity abs(a_i)$, $hat(b) = limits(sum)_(i = 1)^infinity abs(b_i) ==> limits(sum)_(i = 1)^N abs(a_(m_i) b_(n_i))$ сходится абсолютно.

В силу теоремы о перестановке членов ряда сходящегося абсолютно перестановка на сумму не влияет. Переставим члены ряда следующим образом:

#image("image2.png", width: 300pt)

На $i$ диагонали лежат $c_i$. Сгруппируем члены по диагонялям. Легко увидеть, что получившийся после группировки ряд - это произведение рядов $sumii a_i$ и $sumii b_i$ по Коши. Т.к. ряд сходился до группировки, то сходится и после, причем к тому же числу.

Т.к. сходятся ряды $sumii a_i$ и $sumii b_i$, а также сходится полученный ряд, то по т. Абеля сумма ряда равна $a b$, что и требовалось доказать.