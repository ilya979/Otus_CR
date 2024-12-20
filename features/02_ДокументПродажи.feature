﻿#language: ru
@tree

Функционал: Работа с документом продажи

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий


Сценарий: Создаем документ успешной продажи 
	* Создание документа
	И В командном интерфейсе я выбираю "Продажи" "Продажи"
	Тогда открылось окно "Продажи товара"
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно "Продажа товара (создание)"
	И из выпадающего списка с именем 'ВидЦен' я выбираю точное значение "Закупочная"
	И из выпадающего списка с именем 'Организация' я выбираю точное значение "Моя организация"
	И из выпадающего списка с именем 'Покупатель' я выбираю точное значение "Покупатель 1"
	И в таблице 'Товары' я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице 'Товары' я нажимаю кнопку выбора у реквизита с именем 'ТоварыТовар'
	Тогда открылось окно "Товары"
	И в таблице 'Список' я выбираю текущую строку
	Тогда открылось окно "Продажа товара (создание) *"
	//И в таблице 'Товары' я активизирую поле с именем 'ТоварыЦена'
	И в таблице 'Товары' в поле с именем 'ТоварыЦена' я ввожу текст "150,00"
	И в таблице 'Товары' я завершаю редактирование строки

	* Запись и проведение документа
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	Тогда открылось окно "Продажа * от *"
	И я нажимаю на кнопку с именем 'ФормаПровести'
	Тогда открылось окно "Продажа * от *"

	* вывод печатных форм
	И я нажимаю на кнопку с именем 'ФормаДокументРасходТовараПечатьРасходнойНакладной'
	Тогда открылось окно "Таблица"
	И Я закрываю окно "Таблица"
	Тогда открылось окно "Продажа * от *"
	И я нажимаю на кнопку с именем 'ФормаОформитьДоставку'
	Тогда открылось окно "Оформление доставки"
	И Я закрываю окно "Оформление доставки"
			

Сценарий: Продажа - нет остатков
	* Создание продажи
	И В командном интерфейсе я выбираю "Продажи" "Продажи"
	Когда открылось окно "Продажи товара"
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно "Продажа товара (создание)"
	И из выпадающего списка с именем 'ВидЦен' я выбираю точное значение "Закупочная"
	И из выпадающего списка с именем 'Организация' я выбираю точное значение "Моя организация"
	И из выпадающего списка с именем 'Покупатель' я выбираю точное значение "Покупатель 1"
	И в таблице 'Товары' я нажимаю на кнопку с именем 'ТоварыДобавить'	
	И в таблице 'Товары' из выпадающего списка с именем 'ТоварыТовар' я выбираю точное значение "Шлепанцы ЭВА"
	И в таблице 'Товары' в поле с именем 'ТоварыЦена' я ввожу текст "100,00"
	И я перехожу к следующему реквизиту
	
		
