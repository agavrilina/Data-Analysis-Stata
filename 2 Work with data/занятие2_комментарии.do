//открываем встроенный файл с данными
sysuse auto.dta
//гистограмма переменной price, 30 столбиков
//наложена кривая нормального распределения
histogram price, bin(30) frequency normal
//для получения описательной статистики
sum price, detail
//создание новой переменной по формуле
generate float tax = wage*0.13
//изменение содержимого переменной
replace tax = wage*0.3
//перекодирование текстовой переменной в числовую
//создание новой переменной
generate position2 = .
replace position2 = 1 if position=="assistant"
replace position2 = 2 if position=="lecturer"
replace position2 = 3 if position=="docent"
replace position2 = 4 if position=="professor"
//ранжирование
egen new = rank(age)
egen new2 = rank(age), track
egen new3 = rank(age), field
egen new4 = rank(age), unique
//агрегирование данных
collapse (mean) reading (mean) computer (mean) sport, by(nr group)
