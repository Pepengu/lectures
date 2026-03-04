#import "@preview/pepentation:0.2.0": *
#import "@preview/mannot:0.3.0": *


#show: setup-presentation.with(
  title-slide: (
    enable: true,
    title: "Зачем столько языков?",
    authors: ("Плотников Даниил Михайлович",),
    institute: "Санкт-Петербургский Государственный Университет",
  ),
  footer: (
    enable: true,
    title: "Языки программирования",
    institute: "СПбГУ",
    authors: ("Плотников",),
  ),
  theme: themes.theme-forest-canopy,
  table-of-contents: "none",
  header: false,
  locale: "RU"
)

#show link: underline
#set text(lang: "ru")

== Сколько языков существует?

- Согласно #link("https://www.tiobe.com/tiobe-index/")[TIOBE index]: около 250. 
- Согласно #link("http://hopl.info/")[HOPL]: 8945 на момент 2020 года.

#figure(
  image(
    "img/popular_languages.png",
    width: 90%
  ),
  caption: [
    10 самых популярных языков согласно индексу TIOBE
  ]
)


= #text(0.9em, hyphenate: false)[История языков программирования]

== Ада Лавлейс

#grid(columns: 2,
align: (left+horizon, center),
  box(
    width: 100%,
    text()[Авгу́ста А́да Кинг(10 декабря 1815 --- 27 ноября 1852) --- английская графиня и математик. Прежде всего известна описанием вычислительной машины, а также первой в истории программой для неё.],
  ),
  box(
    width: 100%,
    figure(
      image(
        "img/Ada_Lovelace_portrait.jpg",
        height: 80%
      ),
      caption: [
        Авгу́ста А́да Кинг
      ]
    )
  )
)

== ЭВМ --- электронно-вычислительная машина


В 1940-е годы впервые появились ламповые электронно-вычислительные машины:
- Z3 (1941): Первая функциональная программируемая машина (Германия).
- Colossus (1943): Специализированная английская машина.
- ENIAC (1946): Первый универсальный электронный компьютер (США).

#grid(columns: 2,
align: (left+horizon, center),
  box(
    width: 100%,
    figure(
      image(
        "img/Bombe.jpg",
        height: 50%
      ),
      caption: [
        Bombe
      ]
    )
  ),
  box(
    width: 100%,
    figure(
      image(
        "img/Colossus.png",
        height: 50%
      ),
      caption: [
        Colossus Mark 2
      ]
    ),
  )
)

== Первый высокоуровневый язык

Plankalkül --- первый в мире высокоуровневый язык программирования, созданный немецким инженером Конрадом Цузе в 1943—1945. Впервые опубликован в 1972 г., первый компилятор был выпущен в 1975 г.

#v(2em)
#grid(
  columns: 2,
  align: (center, right),
  gutter: 2em,
[
    A[5] = A[4]+1

    #grid(
      columns: 4,
      gutter: 5pt,
      inset: 5pt,
      grid.vline(x: 1, stroke: 1pt + black),
      "", "A + 1", $=>$, "A",
      "V", $4$, " ", $5$,
      "S", $1.n$, " ", $1.n$,
    ),
  ],
  box(width: 100%)[
    ```
    P1 max3 (V0[:8.0],V1[:8.0],V2[:8.0]) → R0[:8.0]
    max(V0[:8.0],V1[:8.0]) → Z1[:8.0]
    max(Z1[:8.0],V2[:8.0]) → R0[:8.0]
    END
    P2 max (V0[:8.0],V1[:8.0]) → R0[:8.0]
    V0[:8.0] → Z1[:8.0]
    (Z1[:8.0] < V1[:8.0]) → V1[:8.0] → Z1[:8.0]
    Z1[:8.0] → R0[:8.0]
    END
    ```
  ]
)

== Ассемблер
На первых компьютерах для написания программ использовали двоичный код. В конце 1940-х годов появились первые ассемблеры.
- Кэтлин Бут (1947, ARC2) 
- Дэвид Уилер (1948, EDSAC)

#v(-3em)
#{
  set text(size:1.5em)
  align(center+horizon, box(outset: (x:1em, y:1.5em), fill:white)[
    $
      mark("start:", tag: #<1>, color: #blue.darken(20%)) 
      " "
      mark("mov", tag: #<2>, color: #green.darken(20%))
      " "
      mark("ax, 5", tag: #<3>, color: #red.darken(20%))
      "  "
      mark("; загрузить число 5 в регистр ax", tag: #<4>, color: #gray.darken(30%))

      #annot(<1>)[Метка]
      #annot(<2>, pos: top)[Мнемоника]
      #annot(<3>)[Операнды]
      #annot(<4>, pos: top)[Комментарии]
    $
  ])
}

== Отцы программирования

#grid(
  columns: 2,
  align: (center, center),
  box(width:100%)[
  #figure(
      image(
        "img/Turing.jpg",
        height: 80%
      ),
      caption: [
        Алан Тьюринг
      ]
    )
    
  ],
  box(width:100%)[
  #figure(
      image(
        "img/Church.jpg",
        height: 80%
      ),
      caption: [
        Алонзо Чёрч
      ]
    )
  ]
)

==

#grid(
  columns: 2,
  column-gutter: 1em,
  align: (center+horizon, center + horizon),
  box(width:100%, height: 100%)[
    #figure(
      image(
        "img/Turing_Machine.png",
        height: 30%
      ),
      caption: [
        Машина Тьюринга
      ]
    )
    
"О вычислимых числах в приложении к проблеме разрешения" 1936 г.
],
  box(width:100%, height: 100%)[
    #figure(
      box(fill: white, outset: (y: 0.5em, x: 1em), text(fill: black)[
        $
        n+m: lambda m. lambda n. lambda f. lambda x. m f (n f x)\
        "True": lambda x. lambda y. x\
        "False": lambda x. lambda y. y\
        "If": lambda b. lambda t. lambda e. b t e\
        $
      ]),
      caption: [
        Лямбда-исчисление
      ]
    )

    "Система постулатов для оснований логики" 1932 г.
  ]
)

== Fortran

#definition[
  *Fortran*(#text(weight: "bold")[For]mula #text(weight: "bold")[Tran]slator) --- первый реализованный высокоуровневый язык программирования, получивший широкое признание. Создан в 1957 г.
]

#figure(
  image(
    "img/punchcard.webp",
    height: 60%
  ),
  caption: [
    Fortran использовал для программирования не текстовый язык, а перфокарты
  ]
)

== Algol

#definition[
  *Algol* --- название семейства языков программирования, применяемого для решения научно-технических задач. Первый язык семейства появился в 1958 г.
]

```algol
begin
   integer n, i, sum;
   integer array arr[1:1000];  % Use maximum size available
   sum := 0;
   read(n);
    begin
       for i := 1 step 1 until n do
          begin
             read(arr[i]);
             sum := sum + arr[i]
          end;
       print(sum)
    end
end
```

== Simula
#definition[
  *Simula* --- язык программирования общего назначения, созданный в 1960 г. Является объектным расширением Algol60. Именно в нём появились основные синтаксические соглашения, которые впоследствии получили название "объектно-ориентированное программирование".
]

#grid(
  columns: 2,
  align: (left, center),
  text(size: 0.95em)[
    ```simula
  begin
     integer n, i, sum;
     read(n);
     integer array arr[1:n];
     sum := 0;
     for i := 1 step 1 until n do     
        begin
           read(arr[i]);             
           sum := sum + arr[i]      
        end;
     outtext("Sum = ");
     outputnum(sum)                
  end
    ```
  ],
  box(width: 100%, figure(
    image(
      "img/Simula_Authors.jpg",
      height: 50%
    ),
    caption: [
       	Оле-Йохан Даль и Кристен Нюгорд
    ]
  ))
)


== Basic

#definition[
  *BASIC*(#text(weight: "bold")[B]eginner's #text(weight: "bold")[A]ll-purpose #text(weight: "bold")[S]ymbolic #text(weight: "bold")[I]nstruction #text(weight: "bold")[C]ode) --- семейство компилируемых статически типизированных языков программирования общего назначения. Первый язык был разработан Томасом Курцем и Джоном Кемени в 1964 г.
]

#grid(
  columns: 2,
  align: (left, center),
  text(size: 1em)[
    ```basic
10 REM DICE ROLL SIMULATOR
20 DIM ROLL(6)
30 FOR I = 1 TO 1000
40   R = INT(RND*6)+1
50   ROLL(R) = ROLL(R) + 1
60 NEXT I
70 PRINT "RESULT OF 1000 DICE ROLLS:"
80 FOR I = 1 TO 6
90   PRINT I; " : "; ROLL(I)
100 NEXT I    
```
  ],
  box(width: 100%, figure(
    image(
      "img/BASIC_authors.jpeg",
      height: 50%
    ),
    caption: [
      Томас Курц и Джон Кемени
    ]
  ))
)

== Pascal

#definition[
  *Pascal* --- компилируемый статически типизированный язык программирования общего назначения, разработанный Никлаусом Виртом в 1970 г.
]

#grid(
  columns: 2,
  align: (left, center),
  text(size: 0.9em)[
    ```pascal
program SumArray(input, output);
const
  MAX_N = 10000;
var
  n, i, sum: integer;
  arr: array[1..MAX_N] of integer;
begin
  sum := 0;
  read(n);
  for i := 1 to n do
  begin
    read(arr[i]);
    sum := sum + arr[i];
  end;
  writeln('The sum of array is ', sum);
end.
```
  ],
  box(width: 100%, figure(
    image(
      "img/Niklaus.jpg",
      height: 60%
    ),
    caption: [
      Никлаус Вирт
    ]
  ))
)
== C
#definition[
  *C* --- компилируемый статически типизированный язык программирования общего назначения, разработан Деннисом Ритчи и Кеном Томпсоном в 1972 г.
]

#grid(
  columns: 2,
  align: (left, center),
  text(size: 0.95em)[
    ```c
    #include <stdio.h>
    #include <stdlib.h>

    int main(){
      int n, sum = 0, *array;
      scanf("%d", &n);
      array = malloc(sizeof(int)*n);
      for(int i = 0; i < n; ++i){
        scanf("%d", array+i);
        sum += *(array+i);
      }
      printf("The sum of array is %d", sum);
      free(array);
      return 0;
    }
    ```
  ],
  box(width: 100%, figure(
    image(
      "img/Ken_Thompson_and_Dennis_Ritchie.jpg",
      height: 50%
    ),
    caption: [
      Дэннис Ритчи и Кен Томпсон
    ]
  ))
)

== C++

#definition[
  *C++* --- компилируемый статически типизированный язык программирования
общего назначения, разработанный Бьёрном Страуструпом в 1979 г.
]


#grid(
  columns: 2,
  align: (left, center),
  text(size: 0.85em)[
    ```cpp
    #include <iostream>
    #include <vector>
    #include <algorithm>

    using namespace std;

    int main(){
      int n; 
      cin >> n;
      vector<int> vec(n);
      for(auto &el : vec){
        cin >> el;
      }
      cout << "The sum of array is " << accumulate(vec.begin(), vec.end(), 0);
      return 0;
    }
    ```
  ],
  box(width: 100%, figure(
    image(
      "img/Bjorne.jpg",
      height: 60%
    ),
    caption: [
       Бьёрн Страуструп
    ]
  ))
)

== Python

#definition[
  *Python* --- интерпретируемый язык программирования общего назначения
с динамической строгой типизацией и автоматическим управлением памятью, разработанный Гвидо ван Россумом в 1991 г. 
]

#grid(
  columns: 2,
  align: (left + horizon, center),
  text(size: 1em)[
    ```python
    import string

    n = int(raw_input())               
    parts = string.split(raw_input())       
    vec = map(int, parts)           

    total = 0
    for num in vec:
      total = total + num

    print "The sum of array is", total
    ```
  ],
  box(width: 100%, figure(
    image(
      "img/Guido.jpeg",
      height: 60%
    ),
    caption: [
      Гвидо ван Россум
    ]
  ))
)

== Java

#definition[
  *Java* --- интерпретируемый язык программирования общего назначения
с статической строгой типизацией и автоматическим управлением памятью, разработанный Sun Microsystems в 1995 г. 
]

#grid(
  columns: (60%, 40%),
  align: (left, center + horizon),
  text(size: 0.79em)[
    ```java
    import java.util.Scanner;
    public class ArraySum {
      public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        int[] arr = new int[n];
        for (int i = 0; i < n; i++) {
          arr[i] = scanner.nextInt();
        }
        int sum = 0;
        for (int num : arr) {
          sum += num;
        }
        System.out.println("The sum of array is " + sum);
        scanner.close();
      }
    }
    ```
  ],
  box(width: 100%, figure(
    image(
      "img/Sun-Logo.png",
      height: 25%
    ),
    caption: [
      Sun Microsystems
    ]
  ))
)

== Другие языки
Новые языки появляются и по сей день, каждый из них решает свои задачи и развивается параллельно остальным. Некоторые выделяющиеся языки, о которых я ещё не упоминал:
- Системный уровень: Rust (2010), Zig (2015).
- Языки интернета: JavaScript (1995), Ruby (1995), PHP (1995).
- ООП-продолжатели Java --- C\# (2000), Kotlin (2011), --- свой C++ для Java.
- Go (2009), Carbon (2022), Dart (2011) --- языки от Google.
- Декларативные языки. Скажи *что*, а не *как* --- SQL (1974), HTML (1993), Prolog (1972)


== LISP

#definition[
  *LISP* --- функциональный язык программирования, разработанный группой учёных из MIT в 1960 году.
]
#grid(
  columns: 2,
  align: (left, center),
  text(size: 1em)[
    ```lisp
    (format t "Hello, world!~%")
    ; N-e число Фибоначчи
    (defun fibonacci (n)
      (loop repeat n
        for a = 0 then b
        and b = 1 then (+ a b)
        finally (return b)))
    ```
  ],
  box(width: 100%, figure(
    image(
      "img/John_McCarthy.jpg",
      height: 45%
    ),
    caption: [
      Джон Маккарти
    ]
  ))
)
"... Требовалась нотация для функций, и $lambda$-нотация Чёрча (1941) казалась естественной. Остальную часть книги я не понял, так что не было желания реализовывать его более общие механизмы определения функций." История LISP, 1978 г.


== ML

#definition[
  *ML*(#text(weight: "bold")[M]eta #text(weight: "bold")[L]anguage) --- функциональный язык программирования, разработанный Робином Милнером в 1970 г.
]

#grid(
  columns: (60%, 40%),
  align: (left, right),
  box(width: 100%,
    text(size: 1em)[
      ```ML
      (* N-e число Фибоначчи *)
      let rec fibonacci n =
        if n < 3 then
          1
        else
          fibonacci (n-1) + fibonacci (n-2)    

      let () =
        for n = 1 to 16 do
          Printf.printf "%d, " (fibonacci n)
        done;
          print_endline "..."
      ```
    ]
  ),
  box(width: 100%, figure(
    image(
      "img/Robin_Milner.jpg",
      height: 60%
    ),
    caption: [
      Робин Милнер
    ]
  ))
)

== Haskell


#definition[
  *Haskell* --- функциональный язык программирования семейства ML, разработанный в 1990 г.
]

#box(width: 100%,
  text(size: 1em)[
    ```hs
    -- Числа Фибоначчи
    module Main where
    import Text.Printf

    fibs :: [Int]
    fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

    line n = printf "%d, " $ fibs !! n

    main = do
      sequence_ $ map line [1..16]
      putStrLn "..."
    ```
  ]
)

== Другие языки

Мир функциональных языков так же активно развивается. Не только возможности функциональных языков перетекают в языки Тьюринга, но и новые чисто функциональные языки применяются на практике.
- Параллельные и отказоустойчивые: Erlang (1986), Elixir (2011)
- Гибриды (функциональный + ООП): Scala (2004), F\# (2005)
- Функциональные веб-языки: Elm (2012), PureScript (2013), Rescript (2016)
- Современные системные функциональные: OCaml (1996), Clojure (2007), F\# (2005)

= Выбор языка

== Чем языки отличаются?

#v(1em)
#grid(
  columns: 2,
  row-gutter: 1.5em,
  column-gutter: 1.5em,
  box(width: 100%, inset: 1em, fill: green.lighten(85%), radius: 8pt)[
    *Парадигма* — как структурировать программу? \
    Императивная · Функциональная · ООП · Декларативная
  ],
  box(width: 100%, inset: 1em, fill: blue.lighten(85%), radius: 8pt)[
    *Система типов* — когда ловятся ошибки? \
    Статическая · Динамическая · Строгая · Слабая
  ],
  box(width: 100%, inset: 1em, fill: orange.lighten(85%), radius: 8pt)[
    *Модель исполнения* — как код становится действиями? \
    Компиляция · Интерпретация · JIT-компиляция
  ],
  box(width: 100%, inset: 1em, fill: purple.lighten(85%), radius: 8pt)[
    *Управление памятью* — кто следит за ресурсами? \
    Ручное · Сборщик мусора · Ownership
  ],
)

== «КАК делать» vs «ЧТО получить»

Задача: имена отличников, отсортированные по алфавиту

#v(0.5em)
#grid(
  columns: 2,
  column-gutter: 1em,
  box(width: 100%, inset: 0.8em, fill: red.lighten(92%), radius: 5pt)[
    #align(center)[*Императивный* (Python)]
    ```python
    result = []
    for s in students:
        if s.grade >= 5:
            result.append(s.name)
    result.sort()
    ```
    _Пошагово описываем процесс_
  ],
  box(width: 100%, inset: 0.8em, fill: blue.lighten(92%), radius: 5pt)[
    #align(center)[*Декларативный* (SQL)]
    ```sql
    SELECT name
    FROM students
    WHERE grade >= 5
    ORDER BY name;
    ```
    _Описываем желаемый результат_
  ],
)

== Статическая vs динамическая типизация

#v(0.5em)
#grid(
  columns: 2,
  column-gutter: 1em,
  box(width: 100%, inset: 0.8em, fill: green.lighten(90%), radius: 5pt)[
    #align(center)[*Статическая* (Java)]
    ```java
    int x = 5;
    x = "hello";
    // Ошибка при КОМПИЛЯЦИИ
    // Программа не запустится
    ```
    #v(0.3em)
    #text(fill: green.darken(30%))[✓] Ошибки ловятся до запуска \
    #text(fill: red.darken(30%))[✗] Нужно указывать типы
  ],
  box(width: 100%, inset: 0.8em, fill: orange.lighten(90%), radius: 5pt)[
    #align(center)[*Динамическая* (Python)]
    ```python
    x = 5
    x = "hello"
    print(x + 1)
    # TypeError при ЗАПУСКЕ
    ```
    #v(0.3em)
    #text(fill: green.darken(30%))[✓] Быстро прототипировать \
    #text(fill: red.darken(30%))[✗] Ошибки всплывают в рантайме
  ],
)


== Строгая vs слабая типизация

#grid(
  columns: 2,
  column-gutter: 1em,
  box(width: 100%, inset: 0.8em, fill: blue.lighten(90%), radius: 5pt)[
    #align(center)[*Строгая* (Python)]
    ```python
    >>> "5" + 3
    TypeError: can only
    concatenate str to str

    >>> "5" * 3
    "555"  # явно определено
    ```
    #v(0.3em)
    Язык _отказывается_ смешивать типы. Нужно явно преобразовать: `int("5") + 3`
  ],
  box(width: 100%, inset: 0.8em, fill: red.lighten(90%), radius: 5pt)[
    #align(center)[*Слабая* (JavaScript)]
    ```javascript
    > "5" + 3
    "53"     // строка!

    > "5" - 3
    2        // число!
    ```
    #v(0.3em)
    Язык _сам_ преобразует типы на ходу. Результат бывает неожиданным.
  ],
)

== От кода к результату

#{
  let fbox(content, clr) = box(
    inset: (x: 0.5em, y: 0.3em),
    fill: clr.lighten(80%),
    radius: 4pt,
    stroke: 0.5pt + clr,
    content
  )

  v(0.5em)
  grid(
    columns: 1,
    row-gutter: 1em,
    box(width: 100%, inset: 0.7em, stroke: (left: 3pt + green), radius: 3pt)[
      *Компиляция* (C, C++, Rust) #h(1fr) #text(size: 0.8em, fill: gray)[_Быстрый результат, долгая сборка_]
      #v(0.3em)
      #align(center)[
        #fbox([Исходный код], green) → #fbox([Компилятор], green) → #fbox([Маш. код], green) → #fbox([Процессор], green)
      ]
    ],
    box(width: 100%, inset: 0.7em, stroke: (left: 3pt + orange), radius: 3pt)[
      *Интерпретация* (Python, Ruby) #h(1fr) #text(size: 0.8em, fill: gray)[_Быстрый запуск, медленная работа_]
      #v(0.3em)
      #align(center)[
        #fbox([Исходный код], orange) → #fbox([Интерпретатор], orange) → #fbox([Процессор], orange)
      ]
    ],
    box(width: 100%, inset: 0.7em, stroke: (left: 3pt + blue), radius: 3pt)[
      *JIT-компиляция* (Java, C\#, JS) #h(1fr) #text(size: 0.8em, fill: gray)[_Баланс + кроссплатформенность_]
      #v(0.3em)
      #align(center)[
        #fbox([Исходный код], blue) → #fbox([Байткод], blue) → #fbox([Вирт. машина], blue) → #fbox([Процессор], blue)
      ]
    ],
  )
}

== Компромиссы

Не существует языка, лучшего во всём одновременно.

#v(0.5em)
#align(center)[
  #table(
    columns: 5,
    align: (left, center, center, center, center),
    stroke: 0.5pt + gray,
    inset: 0.6em,
    fill: (x, y) => if y == 0 { gray.lighten(80%) },
    [*Язык*],   [*Скорость*],  [*Простота*],  [*Безопасность*], [*Экосистема*],
    [C],        [●●●●●],       [●●●○○],       [●○○○○],          [●●○○○],
    [C++],      [●●●●●],       [●●○○○],       [●●○○○],          [●●●○○],
    [Java],     [●●●○○],       [●●●○○],       [●●●●○],          [●●●○○],
    [Python],   [●○○○○],       [●●●●●],       [●●●○○],          [●●●●●],
    [Rust],     [●●●●●],       [●○○○○],       [●●●●●],          [●●●●●],
    [Go],       [●●●●○],       [●●●●○],       [●●●●○],          [●●●●○],
  )
]

== Язык под задачу

#table(
  columns: (auto, 1fr),
  stroke: 0.5pt + gray,
  inset: 0.7em,
  fill: (x, y) => if y == 0 { gray.lighten(80%) },
  [*Область*],                       [*Популярные языки*],
  [Веб-сайты (фронтенд)],            [JavaScript, TypeScript],
  [Веб-сервера (бэкенд)],            [Rust, Python, Java, Go, PHP, Node.js],
  [Мобильные приложения],            [Kotlin (Android), Swift (iOS), Dart (Flutter)],
  [Игры],                            [C++, C\# (Unity), GDScript (Godot)],
  [Data Science и ML],               [Python, R, Julia, Matlab],
  [Системное ПО и ОС],               [C, C++, Rust],
  [Олимпиадное программирование],    [C++, Python],
  [Скрипты и автоматизация],         [Python, Bash, PowerShell],
)

== С чего начать?

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1.5em,
  align: (left + horizon, center + horizon),
  [
    *Хочу делать сайты* → JavaScript \
    *Хочу анализировать данные* → Python \
    *Хочу делать игры* → C\# / C++ \
    *Хочу понять компьютер* → C \

    #v(1em)

    Важнее понять _принципы_, чем выучить синтаксис. Алгоритмы и структуры данных работают одинаково на любом языке.
  ],
  box(inset: 1.2em, fill: green.lighten(85%), radius: 10pt)[
    #align(center)[
      *Язык --- это не навсегда* \
      #v(0.5em)
Второй язык изучать \
      значительно легче, \
      чем первый. \
      #v(0.5em)
      Концепции переносятся \
      между языками.
    ]
  ]
)
