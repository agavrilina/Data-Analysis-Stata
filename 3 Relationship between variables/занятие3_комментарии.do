//Тест Хи-вадрат
//H1: есть взаимосвязь между расой и семейным положением
tab race married, chi2
//p-value<0,05 => низкая вероятность
//ошибиться отвергнув H0 => принимаем H1

//пример с двумя интервальными переменными
tab wage age, chi2 expected
//тест не применим

//тест на нормальность
swilk price mpg rep78 headroom trunk weight length turn displacement gear_ratio
//H1: распределение значений переменной price
//отличается от нормального распределения
//p-value<0,05 => принимаем H1

//корреляция
//H1: r !=0 (есть корреляция)
pwcorr headroom length, sig
//корреляция статистически значимая, прямая, средняя

//корреляционная матрица
pwcorr headroom length rep78 trunk, sig

//диаграмма рассеивания
twoway (scatter price length)

//коэффициент корреляции Спирмена
spearman price length 

//коэффициент корреляции Кендалла
ktau price length 

//диаграмма рассеивания с регрессионной прямой
twoway (scatter price length) (lfit price length)

//матрица диаграмм рассеивания
graph matrix weight length price trunk

//парный коэффициент корреляции
ktau church newcomer
//есть значимая слабая прямая корреляция

//считаем частную корреляцию, устраняя влияние возраста
pcorr church newcomer age
//при учёте возраста корреляция стала незначимой

//столбиковая диаграмма с группировкой
graph bar (count), over(married) over(collgrad)

