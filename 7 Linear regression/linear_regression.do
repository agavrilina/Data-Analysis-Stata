//Построение модели линейной регрессии
reg likes views dislikes comment_count
//Стандартизированные коэффициенты
reg likes views dislikes comment_count, beta

//Диагностика модели
//Сохранение стандартизированных остатков
predict r, rstandard
//Проверка нормальности остатков
swilk r
//Графическое представлениео статков
kdensity r, normal
//Сортировка остатков
gsort r
//Расчёт статистик влияния
dfbeta
//VIF
estat vif
//Гетероскедастичность
estat hettest
rvfplot


