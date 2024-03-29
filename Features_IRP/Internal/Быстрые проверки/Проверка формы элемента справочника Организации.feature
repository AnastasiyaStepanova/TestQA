﻿#language: ru

@tree
@БыстрыеПроверки

Функционал: Проверка формы элемента справочника Организации

Как Тестировщик я хочу
проверить доступность вкладок налоги и валюты
чтобы убедиться что пользователь не ошибется при вводе данных

Контекст: 
	Дано Я открыл новый сеанс TestClient или подключил уже существующий
	И я закрываю все окна клиентского приложения
	
//Сценарий: Проверка доступности вкладок Налоги и Валюты в справочнике Организации
//	* Открытие формы элемента справочника
//		И В командном интерфейсе я выбираю 'Справочники' 'Организации'
//		Тогда открылось окно 'Организации'
//		И я нажимаю на кнопку с именем 'FormCreate'
//		Тогда открылось окно 'Организация (создание)'
//
//	* Установка галочки "Наша Организаци" и проверка присутствия на форме вкладок Налоги и Валюты	
//		И я устанавливаю флаг с именем 'OurCompany'
//		И элемент формы "Валюты" присутствует на форме
//		И элемент формы "Вид налога" присутствует на форме
//
//	* Снятие галочки "Наша Организаци" и проверка отсутствия на форме вкладок Налоги и Валюты
//		И я снимаю флаг с именем 'OurCompany'
//		И элемент формы "Валюты" существует и невидим на форме
//		И элемент формы "Вид налога" существует и невидим на форме
//
//Сценарий: Проверка функциональной опции использовать Организации в документе Заказ
//	И Я устанавливаю в константу "UseCompanies" значение "False"
//	И В командном интерфейсе я выбираю 'Продажи' 'Заказы покупателей'
//	Тогда открылось окно 'Заказы покупателей'
//	И я нажимаю на кнопку с именем 'FormCreate'
//	И элемент формы "Организация" отсутствует на форме
//	И я закрываю все окна клиентского приложения	 
//
//Сценарий: Проверка заполнения справочника Организации
//	И В командном интерфейсе я выбираю 'Справочники' 'Организации'
//	Тогда открылось окно 'Организации'
//	И я нажимаю на кнопку с именем 'FormCreate'
//	Тогда открылось окно 'Организация (создание)'
//	И в поле с именем 'Description_ru' я ввожу текст 'Тестовый контрагент'
//	И из выпадающего списка с именем "Type" я выбираю точное значение 'Организация'
//	И я нажимаю на кнопку с именем 'FormWrite'
//* Проверка	до записи
//	Тогда элемент формы с именем "Type" стал равен 'Организация'
//	Тогда элемент формы с именем "Description_ru" стал равен 'Тестовый контрагент'
//	И я нажимаю на кнопку "Записать и закрыть"
//* Проверка после записи	
//	И в таблице "List" я перехожу к строке:
//		| 'Наименование'        |
//		| 'Тестовый контрагент' |
//	И в таблице "List" я выбираю текущую строку	
//	Тогда элемент формы с именем "Type" стал равен 'Организация'
//	Тогда элемент формы с именем "Description_ru" стал равен 'Тестовый контрагент'
//* Закрытие
//	И я закрываю все окна клиентского приложения

Сценарий: Проверка расположения элементов в форме Организации	
	И В командном интерфейсе я выбираю 'Справочники' 'Организации'
	Тогда открылось окно 'Организации'
	И я нажимаю на кнопку с именем 'FormCreate'
	@screenshot
	Тогда открылось окно 'Организация (создание)'
