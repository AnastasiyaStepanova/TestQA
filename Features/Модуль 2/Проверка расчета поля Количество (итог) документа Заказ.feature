﻿#language: ru

Функционал: Проверка расчета поля Количество (итог) документа Заказ 
Как Менеджер по закупкам я хочу
создавать документы Заказ товаров и проверять расчет поля Количество (итог)

Контекст:
Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: Организация с валютным учетом, поставщик с розничной ценой.

И Я Заполняю шапку документа Заказ по "С валютным учетом" и "Поставщик с розничной ценой"
И Я заполняю таб.часть документа Заказ для "Услуга"
И Я заполняю таб.часть документа Заказ для "Товар"
* Проверка расчета поля Количество (итог)
 	И у элемента с именем 'ТоварыИтогКоличество' я жду значения '11' в течение 10 секунд
* Проведение и проверка	 
	И Я провожу документ Заказ и проверяю создание документа 

Сценарий: Организация с валютным учетом, поставщик с оптовой ценой.

И Я Заполняю шапку документа Заказ по "С валютным учетом" и "Поставщик с оптовой ценой"
И Я заполняю таб.часть документа Заказ для "Услуга"
И Я заполняю таб.часть документа Заказ для "Товар"
* Проверка расчета поля Количество (итог)
 	И у элемента с именем 'ТоварыИтогКоличество' я жду значения '11' в течение 10 секунд
* Проведение и проверка	 
	И Я провожу документ Заказ и проверяю создание документа 

Сценарий: Организация без валютного учета, поставщик с розничной ценой.

И Я Заполняю шапку документа Заказ по "Без валютного учета" и "Поставщик с розничной ценой"
И Я заполняю таб.часть документа Заказ для "Услуга"
И Я заполняю таб.часть документа Заказ для "Товар"
* Проверка расчета поля Количество (итог)
 	И у элемента с именем 'ТоварыИтогКоличество' я жду значения '11' в течение 10 секунд
* Проведение и проверка	 
	И Я провожу документ Заказ и проверяю создание документа 

Сценарий: Организация без валютного учета, поставщик с оптовой ценой.

И Я Заполняю шапку документа Заказ по "Без валютного учета" и "Поставщик с оптовой ценой"	
И Я заполняю таб.часть документа Заказ для "Услуга"
И Я заполняю таб.часть документа Заказ для "Товар"
* Проверка расчета поля Количество (итог)
 	И у элемента с именем 'ТоварыИтогКоличество' я жду значения '11' в течение 10 секунд
* Проведение и проверка	 
	И Я провожу документ Заказ и проверяю создание документа 