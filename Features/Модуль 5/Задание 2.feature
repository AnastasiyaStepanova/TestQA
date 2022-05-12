﻿#language: ru

@tree

Функционал: <описание фичи>

Контекст: 
	Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: 502 Подготовительный сценарий (заказ покупателя)
	Когда экспорт данных заказ покупателя

Сценарий: 503 заполнение поля Организация в документе заказ покупателя
	И я закрываю все окна клиентского приложения
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы покупателей'
	Тогда открылось окно 'Заказы покупателей'
	И я нажимаю на кнопку с именем 'FormCreate'
	Тогда открылось окно 'Заказ покупателя (создание)'

	И из выпадающего списка "Партнер" я выбираю по строке "Клиент 2 (2 соглашения)"
	И из выпадающего списка "Соглашение" я выбираю по строке "Клиент 2 (без организации)"

* Проверка, что Организация заполнена 
	Если элемент формы с именем 'Company' стал равен '' Тогда
		И из выпадающего списка "Организация" я выбираю по строке 'Собственная компания 1'	