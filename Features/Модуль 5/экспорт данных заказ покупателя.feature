#language: ru
@tree
@ExportScenarios
@IgnoreOnCIMainBuild

Функционал: экспорт данных заказ покупателя

Сценарий: экспорт данных заказ покупателя
	
	// Справочник.Agreements

	И я проверяю или создаю для справочника "Agreements" объекты:
		| 'Ref'                                                                | 'DeletionMark' | 'Code' | 'Number' | 'Date'               | 'PartnerSegment' | 'Partner'                                                          | 'Company' | 'PriceType'                                                          | 'ItemSegment' | 'StartUsing'         | 'EndOfUse'           | 'ManagerSegment' | 'PriceIncludeTax' | 'DaysBeforeDelivery' | 'Store' | 'Type'                         | 'LegalName'                                                         | 'CurrencyMovementType'                                                                            | 'ApArPostingDetail'                   | 'StandardAgreement' | 'Kind'                        | 'UseCreditLimit' | 'CreditLimitAmount' | 'PaymentTerm' | 'Description_en' | 'Description_hash' | 'Description_ru'             | 'Description_tr' |
		| 'e1cib/data/Catalog.Agreements?ref=a3a198eecbeac87211ecd1cf59471203' | 'False'        | 11     | ''       | '01.01.0001 0:00:00' | ''               | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794c' | ''        | 'e1cib/data/Catalog.PriceTypes?ref=b762b13668d0905011eb767f10805e2a' | ''            | '01.01.0001 0:00:00' | '01.01.0001 0:00:00' | ''               | 'False'           |                      | ''      | 'Enum.AgreementTypes.Customer' | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7674324a4a2c' | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796b' | 'Enum.ApArPostingDetail.ByAgreements' | ''                  | 'Enum.AgreementKinds.Regular' | 'False'          |                     | ''            | ''               | ''                 | 'Клиент 2 (без организации)' | ''               |
