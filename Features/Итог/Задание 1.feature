﻿#language: ru

@tree

Функционал: Прикрепление файла картинки в форму элемента спр.Товар

Как Тестировщик я хочу
проверить прикрепление файла картинки в форму элемента спр.Товар

Контекст: 
	Дано я подключаю TestClient "Этот клиент" логин "Администратор" пароль ""
	И я закрываю все окна клиентского приложения
	
Сценарий: 801 Прикрепление файла картинки в форму элемента спр.Товар

* Создать новый Товар	
	И В командном интерфейсе я выбираю 'Закупки' 'Товары'
	И я нажимаю на кнопку с именем 'ФормаСоздать'

* Наименование
	И в поле с именем 'Наименование' я ввожу текст 'Тест добавления картинки'

* Запись
	И я нажимаю на кнопку с именем 'ФормаЗаписать' 
	И я запоминаю значение поля "Код" как "КодТовара"

* Добавление картинки 1 	
	И я нажимаю кнопку выбора у поля с именем "ФайлКартинки"
	Тогда открылось окно 'Файлы'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	И в поле с именем 'Наименование' я ввожу текст 'Картинка 1 тест'
	И я выбираю файл "C:\Users\User\Documents\korobka.jpg"
	И я нажимаю на кнопку с именем 'ВыбратьФайлСДискаИЗаписать'
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна 'Картинка * тест (Файл)' в течение 20 секунд
	Тогда открылось окно 'Файлы'
	И в таблице "Список" я выбираю текущую строку
	@screenshot
	И я нажимаю на кнопку с именем 'ОбновитьКартинку'

* Добавление картинки 2 
	И я нажимаю кнопку выбора у поля с именем "ФайлКартинки"
	Тогда открылось окно 'Файлы'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	И в поле с именем 'Наименование' я ввожу текст 'Картинка 2 тест'
	И я выбираю файл "C:\Users\User\Documents\tovar.png"
	И я нажимаю на кнопку с именем 'ВыбратьФайлСДискаИЗаписать'
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна 'Картинка * тест (Файл)' в течение 20 секунд
	Тогда открылось окно 'Файлы'
	И в таблице "Список" я выбираю текущую строку
	@screenshot
	И я нажимаю на кнопку с именем 'ОбновитьКартинку'

* Записать и Закрыть 
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'

* Проверить, что после закрытия формы картинка не пропала
	Тогда открылось окно "Товары"
	И в таблице "Список" я перехожу к строке:
		| 'Наименование'             | 'Код'         |
		| 'Тест добавления картинки' | '$КодТовара$' |
	И в таблице "Список" я выбираю текущую строку
	
* Очистить картинку	
	@screenshot
	И я нажимаю кнопку очистить у поля с именем "ФайлКартинки"
	@screenshot
	И я нажимаю на кнопку с именем 'ОбновитьКартинку'

* Записать и Закрыть
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'		