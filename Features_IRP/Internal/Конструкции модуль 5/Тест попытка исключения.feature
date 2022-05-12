﻿#language: ru

@tree

Функционал: <описание фичи>

//Сценарий: тест веб сервиса
//	И в поле с именем 'ПроверитьГод' я ввожу текст '2012'
//	И Я запоминаю в переменную "СоединениеУстановлено" значение "Нет"
//	И я делаю 2 раз		
//		Попытка
//			И я нажимаю на кнопку с именем 'ФормаПолучитьДанные'
//			И элемент формы с именем "ГодВысокосный" стал равен 'Да'	
//			И Я запоминаю в переменную "СоединениеУстановлено" значение "Да"
//			Тогда я прерываю цикл
//		Исключение
//			И Пауза 10
//	Если переменная "СоединениеУстановлено" имеет значение "Нет" Тогда
//		Затем я останавливаю выполнение сценария "Skipped"
//	И В командном интерфейсе я выбираю 'Склад' 'Склады'

Сценарий: тест
	Попытка
		И Я подключаю клиент тестирования "ИмяПрофиля2TestClient" из таблицы клиентов тестирования
	Исключение
		И я регистрирую ошибку "Первая ошибка" по данным исключения

	И Пауза 2

	Попытка
		И Я подключаю клиент тестирования "ИмяПрофиля2TestClient" из таблицы клиентов тестирования
	Исключение
		И я регистрирую ошибку "Вторая ошибка" по данным исключения
		