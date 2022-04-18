-- --------------------------------------------------------
-- Servidor:                     crm_paladini.mysql.dbaas.com.br
-- Versão do servidor:           5.7.32-35-log - Percona Server (GPL), Release 35, Revision 5688520
-- OS do Servidor:               Linux
-- HeidiSQL Versão:              11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para crm_paladini
CREATE DATABASE IF NOT EXISTS `crm_paladini` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_general_ci */;
USE `crm_paladini`;

-- Copiando estrutura para tabela crm_paladini.tblacc_accounts
CREATE TABLE IF NOT EXISTS `tblacc_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `key_name` varchar(255) DEFAULT NULL,
  `number` varchar(45) DEFAULT NULL,
  `parent_account` int(11) DEFAULT NULL,
  `account_type_id` int(11) NOT NULL,
  `account_detail_type_id` int(11) NOT NULL,
  `balance` decimal(15,2) DEFAULT NULL,
  `balance_as_of` date DEFAULT NULL,
  `description` text,
  `default_account` int(11) NOT NULL DEFAULT '0',
  `active` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblacc_accounts: ~88 rows (aproximadamente)
/*!40000 ALTER TABLE `tblacc_accounts` DISABLE KEYS */;
INSERT INTO `tblacc_accounts` (`id`, `name`, `key_name`, `number`, `parent_account`, `account_type_id`, `account_detail_type_id`, `balance`, `balance_as_of`, `description`, `default_account`, `active`) VALUES
	(1, '', 'acc_accounts_receivable', NULL, NULL, 1, 1, NULL, NULL, NULL, 1, 1),
	(2, '', 'acc_accrued_holiday_payable', NULL, NULL, 9, 61, NULL, NULL, NULL, 1, 1),
	(3, '', 'acc_accrued_liabilities', NULL, NULL, 8, 44, NULL, NULL, NULL, 1, 1),
	(4, '', 'acc_accrued_non_current_liabilities', NULL, NULL, 9, 62, NULL, NULL, NULL, 1, 1),
	(5, '', 'acc_accumulated_depreciation_on_property_plant_and_equipment', NULL, NULL, 4, 22, NULL, NULL, NULL, 1, 1),
	(6, '', 'acc_allowance_for_bad_debts', NULL, NULL, 2, 2, NULL, NULL, NULL, 1, 1),
	(7, '', 'acc_amortisation_expense', NULL, NULL, 14, 106, NULL, NULL, NULL, 1, 1),
	(8, '', 'acc_assets_held_for_sale', NULL, NULL, 5, 32, NULL, NULL, NULL, 1, 1),
	(9, '', 'acc_available_for_sale_assets_short_term', NULL, NULL, 2, 3, NULL, NULL, NULL, 1, 1),
	(10, '', 'acc_bad_debts', NULL, NULL, 14, 108, NULL, NULL, NULL, 1, 1),
	(11, '', 'acc_bank_charges', NULL, NULL, 14, 109, NULL, NULL, NULL, 1, 1),
	(12, '', 'acc_billable_expense_income', NULL, NULL, 11, 89, NULL, NULL, NULL, 1, 1),
	(13, '', 'acc_cash_and_cash_equivalents', NULL, NULL, 3, 15, NULL, NULL, NULL, 1, 1),
	(14, '', 'acc_change_in_inventory_cos', NULL, NULL, 13, 100, NULL, NULL, NULL, 1, 1),
	(15, '', 'acc_commissions_and_fees', NULL, NULL, 14, 111, NULL, NULL, NULL, 1, 1),
	(16, '', 'acc_cost_of_sales', NULL, NULL, 13, 104, NULL, NULL, NULL, 1, 1),
	(17, '', 'acc_deferred_tax_assets', NULL, NULL, 5, 33, NULL, NULL, NULL, 1, 1),
	(18, '', 'acc_direct_labour_cos', NULL, NULL, 13, 100, NULL, NULL, NULL, 1, 1),
	(19, '', 'acc_discounts_given_cos', NULL, NULL, 13, 100, NULL, NULL, NULL, 1, 1),
	(20, '', 'acc_dividend_disbursed', NULL, NULL, 10, 69, NULL, NULL, NULL, 1, 1),
	(21, '', 'acc_dividend_income', NULL, NULL, 12, 92, NULL, NULL, NULL, 1, 1),
	(22, '', 'acc_dividends_payable', NULL, NULL, 8, 48, NULL, NULL, NULL, 1, 1),
	(23, '', 'acc_dues_and_subscriptions', NULL, NULL, 14, 113, NULL, NULL, NULL, 1, 1),
	(24, '', 'acc_equipment_rental', NULL, NULL, 14, 114, NULL, NULL, NULL, 1, 1),
	(25, '', 'acc_equity_in_earnings_of_subsidiaries', NULL, NULL, 10, 70, NULL, NULL, NULL, 1, 1),
	(26, '', 'acc_freight_and_delivery_cos', NULL, NULL, 13, 100, NULL, NULL, NULL, 1, 1),
	(27, '', 'acc_goodwill', NULL, NULL, 5, 34, NULL, NULL, NULL, 1, 1),
	(28, '', 'acc_income_tax_expense', NULL, NULL, 14, 116, NULL, NULL, NULL, 1, 1),
	(29, '', 'acc_income_tax_payable', NULL, NULL, 8, 50, NULL, NULL, NULL, 1, 1),
	(30, '', 'acc_insurance_disability', NULL, NULL, 14, 117, NULL, NULL, NULL, 1, 1),
	(31, '', 'acc_insurance_general', NULL, NULL, 14, 117, NULL, NULL, NULL, 1, 1),
	(32, '', 'acc_insurance_liability', NULL, NULL, 14, 117, NULL, NULL, NULL, 1, 1),
	(33, '', 'acc_intangibles', NULL, NULL, 5, 35, NULL, NULL, NULL, 1, 1),
	(34, '', 'acc_interest_expense', NULL, NULL, 14, 118, NULL, NULL, NULL, 1, 1),
	(35, '', 'acc_interest_income', NULL, NULL, 12, 93, NULL, NULL, NULL, 1, 1),
	(36, '', 'acc_inventory', NULL, NULL, 2, 5, NULL, NULL, NULL, 1, 1),
	(37, '', 'acc_inventory_asset', NULL, NULL, 2, 5, NULL, NULL, NULL, 1, 1),
	(38, '', 'acc_legal_and_professional_fees', NULL, NULL, 14, 119, NULL, NULL, NULL, 1, 1),
	(39, '', 'acc_liabilities_related_to_assets_held_for_sale', NULL, NULL, 9, 63, NULL, NULL, NULL, 1, 1),
	(40, '', 'acc_long_term_debt', NULL, NULL, 9, 64, NULL, NULL, NULL, 1, 1),
	(41, '', 'acc_long_term_investments', NULL, NULL, 5, 38, NULL, NULL, NULL, 1, 1),
	(42, '', 'acc_loss_on_discontinued_operations_net_of_tax', NULL, NULL, 14, 120, NULL, NULL, NULL, 1, 1),
	(43, '', 'acc_loss_on_disposal_of_assets', NULL, NULL, 12, 94, NULL, NULL, NULL, 1, 1),
	(44, '', 'acc_management_compensation', NULL, NULL, 14, 121, NULL, NULL, NULL, 1, 1),
	(45, '', 'acc_materials_cos', NULL, NULL, 13, 100, NULL, NULL, NULL, 1, 1),
	(46, '', 'acc_meals_and_entertainment', NULL, NULL, 14, 122, NULL, NULL, NULL, 1, 1),
	(47, '', 'acc_office_expenses', NULL, NULL, 14, 123, NULL, NULL, NULL, 1, 1),
	(48, '', 'acc_other_cos', NULL, NULL, 13, 100, NULL, NULL, NULL, 1, 1),
	(49, '', 'acc_other_comprehensive_income', NULL, NULL, 10, 73, NULL, NULL, NULL, 1, 1),
	(50, '', 'acc_other_general_and_administrative_expenses', NULL, NULL, 14, 123, NULL, NULL, NULL, 1, 1),
	(51, '', 'acc_other_operating_income_expenses', NULL, NULL, 12, 97, NULL, NULL, NULL, 1, 1),
	(52, '', 'acc_other_selling_expenses', NULL, NULL, 14, 125, NULL, NULL, NULL, 1, 1),
	(53, '', 'acc_other_type_of_expenses_advertising_expenses', NULL, NULL, 14, 105, NULL, NULL, NULL, 1, 1),
	(54, '', 'acc_overhead_cos', NULL, NULL, 13, 100, NULL, NULL, NULL, 1, 1),
	(55, '', 'acc_payroll_clearing', NULL, NULL, 8, 55, NULL, NULL, NULL, 1, 1),
	(56, '', 'acc_payroll_expenses', NULL, NULL, 14, 126, NULL, NULL, NULL, 1, 1),
	(57, '', 'acc_payroll_liabilities', NULL, NULL, 8, 56, NULL, NULL, NULL, 1, 1),
	(58, '', 'acc_prepaid_expenses', NULL, NULL, 2, 11, NULL, NULL, NULL, 1, 1),
	(59, '', 'acc_property_plant_and_equipment', NULL, NULL, 4, 26, NULL, NULL, NULL, 1, 1),
	(60, '', 'acc_purchases', NULL, NULL, 14, 130, NULL, NULL, NULL, 1, 1),
	(61, '', 'acc_reconciliation_discrepancies', NULL, NULL, 15, 139, NULL, NULL, NULL, 1, 1),
	(62, '', 'acc_rent_or_lease_payments', NULL, NULL, 14, 127, NULL, NULL, NULL, 1, 1),
	(63, '', 'acc_repair_and_maintenance', NULL, NULL, 14, 128, NULL, NULL, NULL, 1, 1),
	(64, '', 'acc_retained_earnings', NULL, NULL, 10, 80, NULL, NULL, NULL, 1, 1),
	(65, '', 'acc_revenue_general', NULL, NULL, 11, 86, NULL, NULL, NULL, 1, 1),
	(66, '', 'acc_sales', NULL, NULL, 11, 89, NULL, NULL, NULL, 1, 1),
	(67, '', 'acc_sales_retail', NULL, NULL, 11, 87, NULL, NULL, NULL, 1, 1),
	(68, '', 'acc_sales_wholesale', NULL, NULL, 11, 88, NULL, NULL, NULL, 1, 1),
	(69, '', 'acc_sales_of_product_income', NULL, NULL, 11, 89, NULL, NULL, NULL, 1, 1),
	(70, '', 'acc_share_capital', NULL, NULL, 10, 81, NULL, NULL, NULL, 1, 1),
	(71, '', 'acc_shipping_and_delivery_expense', NULL, NULL, 14, 129, NULL, NULL, NULL, 1, 1),
	(72, '', 'acc_short_term_debit', NULL, NULL, 8, 54, NULL, NULL, NULL, 1, 1),
	(73, '', 'acc_stationery_and_printing', NULL, NULL, 14, 123, NULL, NULL, NULL, 1, 1),
	(74, '', 'acc_subcontractors_cos', NULL, NULL, 13, 100, NULL, NULL, NULL, 1, 1),
	(75, '', 'acc_supplies', NULL, NULL, 14, 130, NULL, NULL, NULL, 1, 1),
	(76, '', 'acc_travel_expenses_general_and_admin_expenses', NULL, NULL, 14, 132, NULL, NULL, NULL, 1, 1),
	(77, '', 'acc_travel_expenses_selling_expense', NULL, NULL, 14, 133, NULL, NULL, NULL, 1, 1),
	(78, '', 'acc_unapplied_cash_payment_income', NULL, NULL, 11, 91, NULL, NULL, NULL, 1, 1),
	(79, '', 'acc_uncategorised_asset', NULL, NULL, 2, 10, NULL, NULL, NULL, 1, 1),
	(80, '', 'acc_uncategorised_expense', NULL, NULL, 14, 124, NULL, NULL, NULL, 1, 1),
	(81, '', 'acc_uncategorised_income', NULL, NULL, 11, 89, NULL, NULL, NULL, 1, 1),
	(82, '', 'acc_undeposited_funds', NULL, NULL, 2, 13, NULL, NULL, NULL, 1, 1),
	(83, '', 'acc_unrealised_loss_on_securities_net_of_tax', NULL, NULL, 12, 99, NULL, NULL, NULL, 1, 1),
	(84, '', 'acc_utilities', NULL, NULL, 14, 135, NULL, NULL, NULL, 1, 1),
	(85, '', 'acc_wage_expenses', NULL, NULL, 14, 126, NULL, NULL, NULL, 1, 1),
	(86, '', 'acc_credit_card', NULL, NULL, 7, 43, NULL, NULL, NULL, 1, 1),
	(87, '', 'acc_accounts_payable', NULL, NULL, 6, 42, NULL, NULL, NULL, 1, 1),
	(88, '', 'acc_opening_balance_equity', NULL, NULL, 10, 71, NULL, NULL, NULL, 1, 1);
/*!40000 ALTER TABLE `tblacc_accounts` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblacc_account_history
CREATE TABLE IF NOT EXISTS `tblacc_account_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` int(11) NOT NULL,
  `debit` decimal(15,2) NOT NULL DEFAULT '0.00',
  `credit` decimal(15,2) NOT NULL DEFAULT '0.00',
  `description` text,
  `rel_id` int(11) DEFAULT NULL,
  `rel_type` varchar(45) DEFAULT NULL,
  `datecreated` datetime DEFAULT NULL,
  `addedfrom` int(11) DEFAULT NULL,
  `customer` int(11) DEFAULT NULL,
  `reconcile` int(11) NOT NULL DEFAULT '0',
  `split` int(11) NOT NULL DEFAULT '0',
  `item` int(11) DEFAULT NULL,
  `paid` int(1) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `tax` int(11) DEFAULT NULL,
  `payslip_type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblacc_account_history: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `tblacc_account_history` DISABLE KEYS */;
INSERT INTO `tblacc_account_history` (`id`, `account`, `debit`, `credit`, `description`, `rel_id`, `rel_type`, `datecreated`, `addedfrom`, `customer`, `reconcile`, `split`, `item`, `paid`, `date`, `tax`, `payslip_type`) VALUES
	(1, 1, 10.00, 0.00, '', 8, 'invoice', '2022-04-13 19:26:03', 1, 2, 0, 66, 0, 1, '2022-04-11', 0, NULL),
	(2, 66, 0.00, 10.00, '', 8, 'invoice', '2022-04-13 19:26:03', 1, 2, 0, 1, 0, 1, '2022-04-11', 0, NULL),
	(5, 1, 10.00, 0.00, '', 11, 'invoice', '2022-04-18 00:18:54', 1, 1, 0, 66, 0, 0, '2022-04-18', 0, NULL),
	(6, 66, 0.00, 10.00, '', 11, 'invoice', '2022-04-18 00:18:54', 1, 1, 0, 1, 0, 0, '2022-04-18', 0, NULL);
/*!40000 ALTER TABLE `tblacc_account_history` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblacc_account_type_details
CREATE TABLE IF NOT EXISTS `tblacc_account_type_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_type_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `note` text,
  `statement_of_cash_flows` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblacc_account_type_details: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblacc_account_type_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblacc_account_type_details` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblacc_banking_rules
CREATE TABLE IF NOT EXISTS `tblacc_banking_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `transaction` varchar(45) DEFAULT NULL,
  `following` varchar(45) DEFAULT NULL,
  `then` varchar(45) DEFAULT NULL,
  `payment_account` int(11) DEFAULT NULL,
  `deposit_to` int(11) DEFAULT NULL,
  `auto_add` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblacc_banking_rules: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblacc_banking_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblacc_banking_rules` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblacc_banking_rule_details
CREATE TABLE IF NOT EXISTS `tblacc_banking_rule_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rule_id` int(11) NOT NULL,
  `type` varchar(45) DEFAULT NULL,
  `subtype` varchar(45) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `subtype_amount` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblacc_banking_rule_details: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblacc_banking_rule_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblacc_banking_rule_details` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblacc_budgets
CREATE TABLE IF NOT EXISTS `tblacc_budgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `year` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `data_source` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblacc_budgets: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblacc_budgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblacc_budgets` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblacc_budget_details
CREATE TABLE IF NOT EXISTS `tblacc_budget_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `budget_id` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `account` int(11) DEFAULT NULL,
  `amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblacc_budget_details: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblacc_budget_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblacc_budget_details` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblacc_expense_category_mappings
CREATE TABLE IF NOT EXISTS `tblacc_expense_category_mappings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `payment_account` int(11) NOT NULL DEFAULT '0',
  `deposit_to` int(11) NOT NULL DEFAULT '0',
  `preferred_payment_method` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblacc_expense_category_mappings: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblacc_expense_category_mappings` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblacc_expense_category_mappings` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblacc_item_automatics
CREATE TABLE IF NOT EXISTS `tblacc_item_automatics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `inventory_asset_account` int(11) NOT NULL DEFAULT '0',
  `income_account` int(11) NOT NULL DEFAULT '0',
  `expense_account` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblacc_item_automatics: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblacc_item_automatics` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblacc_item_automatics` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblacc_journal_entries
CREATE TABLE IF NOT EXISTS `tblacc_journal_entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(45) DEFAULT NULL,
  `description` text,
  `journal_date` date DEFAULT NULL,
  `amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `datecreated` datetime DEFAULT NULL,
  `addedfrom` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblacc_journal_entries: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblacc_journal_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblacc_journal_entries` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblacc_payment_mode_mappings
CREATE TABLE IF NOT EXISTS `tblacc_payment_mode_mappings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_mode_id` int(11) NOT NULL,
  `payment_account` int(11) NOT NULL DEFAULT '0',
  `deposit_to` int(11) NOT NULL DEFAULT '0',
  `expense_payment_account` int(11) NOT NULL DEFAULT '0',
  `expense_deposit_to` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblacc_payment_mode_mappings: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblacc_payment_mode_mappings` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblacc_payment_mode_mappings` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblacc_reconciles
CREATE TABLE IF NOT EXISTS `tblacc_reconciles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` int(11) NOT NULL,
  `beginning_balance` decimal(15,2) NOT NULL,
  `ending_balance` decimal(15,2) NOT NULL,
  `ending_date` date NOT NULL,
  `expense_date` date DEFAULT NULL,
  `service_charge` decimal(15,2) DEFAULT NULL,
  `expense_account` int(11) DEFAULT NULL,
  `income_date` date DEFAULT NULL,
  `interest_earned` decimal(15,2) DEFAULT NULL,
  `income_account` int(11) DEFAULT NULL,
  `finish` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblacc_reconciles: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblacc_reconciles` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblacc_reconciles` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblacc_tax_mappings
CREATE TABLE IF NOT EXISTS `tblacc_tax_mappings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_id` int(11) NOT NULL,
  `payment_account` int(11) NOT NULL DEFAULT '0',
  `deposit_to` int(11) NOT NULL DEFAULT '0',
  `expense_payment_account` int(11) NOT NULL DEFAULT '0',
  `expense_deposit_to` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblacc_tax_mappings: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblacc_tax_mappings` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblacc_tax_mappings` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblacc_transaction_bankings
CREATE TABLE IF NOT EXISTS `tblacc_transaction_bankings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `withdrawals` decimal(15,2) NOT NULL DEFAULT '0.00',
  `deposits` decimal(15,2) NOT NULL DEFAULT '0.00',
  `payee` varchar(255) DEFAULT NULL,
  `description` text,
  `datecreated` datetime DEFAULT NULL,
  `addedfrom` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblacc_transaction_bankings: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblacc_transaction_bankings` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblacc_transaction_bankings` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblacc_transfers
CREATE TABLE IF NOT EXISTS `tblacc_transfers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transfer_funds_from` int(11) NOT NULL,
  `transfer_funds_to` int(11) NOT NULL,
  `transfer_amount` decimal(15,2) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  `description` text,
  `datecreated` datetime DEFAULT NULL,
  `addedfrom` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblacc_transfers: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblacc_transfers` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblacc_transfers` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblactivity_log
CREATE TABLE IF NOT EXISTS `tblactivity_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` mediumtext NOT NULL,
  `date` datetime NOT NULL,
  `staffid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `staffid` (`staffid`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblactivity_log: ~71 rows (aproximadamente)
/*!40000 ALTER TABLE `tblactivity_log` DISABLE KEYS */;
INSERT INTO `tblactivity_log` (`id`, `description`, `date`, `staffid`) VALUES
	(1, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: 191.30.0.226]', '2022-04-09 10:48:26', 'Claudinei Paladini'),
	(2, 'New Client Created [ID: 1, From Staff: 1]', '2022-04-09 10:56:38', 'Claudinei Paladini'),
	(3, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: 191.30.0.226]', '2022-04-09 11:05:04', 'Claudinei Paladini'),
	(4, 'New Currency Added [ID: BRL]', '2022-04-09 11:10:54', 'Claudinei Paladini'),
	(5, 'Currency Deleted [2]', '2022-04-09 11:11:06', 'Claudinei Paladini'),
	(6, 'Customer Info Updated [ID: 1]', '2022-04-09 11:13:19', 'Claudinei Paladini'),
	(7, 'Invoice Status Updated [Invoice Number: INV-000001, From: Não pago To: Parcialmente Pago]', '2022-04-09 13:44:07', 'Claudinei Paladini'),
	(8, 'Payment Recorded [ID:1, Invoice Number: INV-000001, Total: $1.00]', '2022-04-09 13:44:07', 'Claudinei Paladini'),
	(9, 'Payment Updated [Number:1]', '2022-04-09 13:44:48', 'Claudinei Paladini'),
	(10, 'Invoice Status Updated [Invoice Number: INV-000001, From: Parcialmente Pago To: Não pago]', '2022-04-09 13:45:15', 'Claudinei Paladini'),
	(11, 'Payment Deleted [ID:1, Invoice Number: ]', '2022-04-09 13:45:15', 'Claudinei Paladini'),
	(12, 'Non Existing User Tried to Login [Email: claudinei@paladiniadv.com.br, Is Staff Member: No, IP: 191.30.0.226]', '2022-04-09 13:47:10', 'Claudinei Paladini'),
	(13, 'Invoice Deleted [INV-000001]', '2022-04-09 13:47:56', 'Claudinei Paladini'),
	(14, 'Currency Deleted [1]', '2022-04-09 13:48:48', 'Claudinei Paladini'),
	(15, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: 191.30.0.226]', '2022-04-09 14:03:24', 'Claudinei Paladini'),
	(16, 'Non Existing User Tried to Login [Email: claudinei@paladiniadv.com.br, Is Staff Member: No, IP: 191.30.0.226]', '2022-04-09 14:06:48', NULL),
	(17, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: 191.30.0.226]', '2022-04-09 14:08:06', 'Claudinei Paladini'),
	(18, 'Invoice Deleted [INV-000002]', '2022-04-09 14:36:13', 'Claudinei Paladini'),
	(19, 'New Custom Field Added [Data de Nascimento]', '2022-04-09 14:42:07', 'Claudinei Paladini'),
	(20, 'New Custom Field Added [RG]', '2022-04-09 14:43:26', 'Claudinei Paladini'),
	(21, 'New Custom Field Added [RG]', '2022-04-09 14:44:12', 'Claudinei Paladini'),
	(22, 'New Custom Field Added [Identificador Gerencianet]', '2022-04-09 14:45:04', 'Claudinei Paladini'),
	(23, 'New Custom Field Added [Porcentagem Gerencianet]', '2022-04-09 14:46:02', 'Claudinei Paladini'),
	(24, 'New Custom Field Added [Identificador Gerencianet 2]', '2022-04-09 14:47:28', 'Claudinei Paladini'),
	(25, 'New Custom Field Added [Porcentagem Gerencianet 2]', '2022-04-09 14:48:32', 'Claudinei Paladini'),
	(26, 'Custom Field Updated [CPF]', '2022-04-09 14:49:01', 'Claudinei Paladini'),
	(27, 'New Custom Field Added [ Porcentagem Gerencianet 3]', '2022-04-09 14:49:49', 'Claudinei Paladini'),
	(28, 'New Custom Field Added [Identificador Gerencianet 3]', '2022-04-09 14:50:47', 'Claudinei Paladini'),
	(29, 'Staff Member Updated [ID: 1, Claudinei Paladini]', '2022-04-09 14:52:12', 'Claudinei Paladini'),
	(30, 'New Customer Group Created [ID:1, Name:MEGGA]', '2022-04-09 14:52:56', 'Claudinei Paladini'),
	(31, 'Customer Info Updated [ID: 1]', '2022-04-09 15:00:40', 'Claudinei Paladini'),
	(32, 'Staff Member Updated [ID: 1, Claudinei Paladini]', '2022-04-09 15:13:10', 'Claudinei Paladini'),
	(33, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: 191.30.0.226]', '2022-04-09 15:20:45', 'Claudinei Paladini'),
	(34, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: 191.35.249.95]', '2022-04-10 13:07:38', 'Claudinei Paladini'),
	(35, 'Role Updated [ID: 1, Name: Operador de Cobrança]', '2022-04-10 13:10:19', 'Claudinei Paladini'),
	(36, 'New Role Added [ID: 2.Coordenadora de Cobrança]', '2022-04-10 13:11:28', 'Claudinei Paladini'),
	(37, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: 191.35.249.95]', '2022-04-10 15:31:51', 'Claudinei Paladini'),
	(38, 'Staff Member Updated [ID: 1, Claudinei Paladini]', '2022-04-10 15:47:22', 'Claudinei Paladini'),
	(39, 'Role Updated [ID: 2, Name: Coordenadora de Cobrança]', '2022-04-10 15:50:20', 'Claudinei Paladini'),
	(40, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: 191.35.249.95]', '2022-04-11 09:47:35', 'Claudinei Paladini'),
	(41, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: 191.35.249.95]', '2022-04-11 09:49:23', 'Claudinei Paladini'),
	(42, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: 191.35.249.95]', '2022-04-11 09:56:39', 'Claudinei Paladini'),
	(43, 'Failed Login Attempt [Email: claudinei@paladiniadv.com.br, Is Staff Member: Yes, IP: 191.180.132.60]', '2022-04-11 09:57:07', NULL),
	(44, 'Failed Login Attempt [Email: claudinei@paladiniadv.com.br, Is Staff Member: Yes, IP: 191.180.132.60]', '2022-04-11 09:57:39', NULL),
	(45, 'New Custom Field Added [Razão Social - CNPJ]', '2022-04-11 10:07:39', 'Claudinei Paladini'),
	(46, 'New Custom Field Added [Atividade Principal - CNPJ]', '2022-04-11 10:07:59', 'Claudinei Paladini'),
	(47, 'New Custom Field Added [Email - CNPJ]', '2022-04-11 10:08:20', 'Claudinei Paladini'),
	(48, 'New Custom Field Added [WhatsApp]', '2022-04-11 10:08:42', 'Claudinei Paladini'),
	(49, 'New Client Created [ID: 2, From Staff: 1]', '2022-04-11 10:13:22', 'Claudinei Paladini'),
	(50, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: 191.35.249.95]', '2022-04-11 10:32:50', 'Claudinei Paladini'),
	(51, 'New Staff Member Added [ID: 2, SÉRGIO DA  SILVA  SCHULENBURG]', '2022-04-11 10:54:48', 'Claudinei Paladini'),
	(52, 'New Role Added [ID: 3.Parceiro de Negócios]', '2022-04-11 10:58:47', 'Claudinei Paladini'),
	(53, 'Staff Member Updated [ID: 2, SÉRGIO DA  SILVA  SCHULENBURG]', '2022-04-11 10:59:13', 'Claudinei Paladini'),
	(54, 'New Staff Member Added [ID: 3, MAURY DE OLIVEIRA SANTO JUNIOR]', '2022-04-11 11:06:28', 'Claudinei Paladini'),
	(55, 'Staff Member Updated [ID: 3, MAURY DE OLIVEIRA SANTO JUNIOR]', '2022-04-11 11:06:41', 'Claudinei Paladini'),
	(56, 'New Reminder Added [InvoiceID: 4 Description: Teste de lembrete de fatura]', '2022-04-11 11:31:25', 'Claudinei Paladini'),
	(57, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: 191.35.249.95]', '2022-04-11 12:48:51', 'Claudinei Paladini'),
	(58, 'Cron Invoked Manually', '2022-04-11 12:55:34', 'Claudinei Paladini'),
	(59, 'Cron Invoked Manually', '2022-04-11 12:55:41', 'Claudinei Paladini'),
	(60, 'Cron Invoked Manually', '2022-04-11 12:56:27', 'Claudinei Paladini'),
	(61, 'Failed Login Attempt [Email: claudinei@paladiniadv.com.br, Is Staff Member: Yes, IP: 189.40.107.56]', '2022-04-11 14:09:45', NULL),
	(62, 'Failed Login Attempt [Email: claudinei@paladiniadv.com.br, Is Staff Member: Yes, IP: 189.40.107.56]', '2022-04-11 14:10:12', NULL),
	(63, 'Failed Login Attempt [Email: claudinei@paladiniadv.com.br, Is Staff Member: Yes, IP: 191.35.249.95]', '2022-04-11 14:12:03', NULL),
	(64, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: 191.35.249.95]', '2022-04-11 14:12:07', 'Claudinei Paladini'),
	(65, 'Cron Invoked Manually', '2022-04-11 14:20:45', 'Claudinei Paladini'),
	(66, 'Email Sent To [Email: claudinei@paladiniadv.com.br, Template: New Contact Added/Registered (Welcome Email)]', '2022-04-11 14:33:37', 'Claudinei Paladini'),
	(67, 'Contact Created [ID: 1]', '2022-04-11 14:33:37', 'Claudinei Paladini'),
	(68, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: 191.35.249.95]', '2022-04-11 14:38:27', 'Claudinei Paladini'),
	(69, 'Email Sent To [Email: claudinei@paladiniadv.com.br, Template: Send Invoice to Customer]', '2022-04-11 14:42:13', 'Claudinei Paladini'),
	(70, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: 177.65.173.90]', '2022-04-11 15:05:34', 'Claudinei Paladini'),
	(71, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: 191.35.249.95]', '2022-04-11 15:55:23', 'Claudinei Paladini'),
	(72, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: 191.35.249.95]', '2022-04-11 16:38:51', 'Claudinei Paladini'),
	(73, 'Customer Info Updated [ID: 1]', '2022-04-11 16:53:48', 'Claudinei Paladini'),
	(74, 'Contact Updated [ID: 1]', '2022-04-11 16:55:30', 'Claudinei Paladini'),
	(75, 'New Client Created [ID: 3, From Staff: 1]', '2022-04-11 16:59:10', 'Claudinei Paladini'),
	(76, 'Customer Info Updated [ID: 3]', '2022-04-11 17:00:11', 'Claudinei Paladini'),
	(77, 'Customer Info Updated [ID: 3]', '2022-04-11 17:05:35', 'Claudinei Paladini'),
	(78, 'Customer Info Updated [ID: 3]', '2022-04-11 17:07:47', 'Claudinei Paladini'),
	(79, 'Customer Info Updated [ID: 3]', '2022-04-11 17:11:33', 'Claudinei Paladini'),
	(80, 'Customer Info Updated [ID: 3]', '2022-04-11 17:11:40', 'Claudinei Paladini'),
	(81, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: 191.35.249.95]', '2022-04-11 18:38:40', 'Claudinei Paladini'),
	(82, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: 191.35.249.95]', '2022-04-12 19:31:24', 'Claudinei Paladini'),
	(83, 'New Leads Status Added [StatusID: 2, Name: 0]', '2022-04-12 20:33:31', 'Claudinei Paladini'),
	(84, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: 191.35.249.95]', '2022-04-12 23:52:27', 'Claudinei Paladini'),
	(85, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: 191.35.249.95]', '2022-04-13 09:43:33', 'Claudinei Paladini'),
	(86, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: 191.35.249.95]', '2022-04-13 10:26:03', 'Claudinei Paladini'),
	(87, 'Failed Login Attempt [Email: claudinei@paladiniadv.com.br, Is Staff Member: Yes, IP: 191.35.249.95]', '2022-04-13 10:32:50', NULL),
	(88, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: 191.35.249.95]', '2022-04-13 10:33:08', 'Claudinei Paladini'),
	(89, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: 191.35.249.95]', '2022-04-13 18:01:44', 'Claudinei Paladini'),
	(90, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: 191.35.249.95]', '2022-04-13 18:09:04', 'Claudinei Paladini'),
	(91, 'Staff Member Updated [ID: 1, Claudinei Paladini]', '2022-04-13 18:09:59', 'Claudinei Paladini'),
	(92, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: 191.35.249.95]', '2022-04-13 18:10:30', 'Claudinei Paladini'),
	(93, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: 45.168.203.18]', '2022-04-13 18:52:19', 'Claudinei Paladini'),
	(94, 'Failed Login Attempt [Email: claudinei@paladiniadv.com.br, Is Staff Member: Yes, IP: 191.35.249.95]', '2022-04-13 19:01:34', NULL),
	(95, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: 191.35.249.95]', '2022-04-13 19:01:46', 'Claudinei Paladini'),
	(96, 'Failed Login Attempt [Email: claudinei@paladiniadv.com.br, Is Staff Member: Yes, IP: 191.35.249.95]', '2022-04-13 19:19:14', NULL),
	(97, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: 191.35.249.95]', '2022-04-13 19:19:22', 'Claudinei Paladini'),
	(98, 'Invoice Status Updated [Invoice Number: INV-000006, From: Não pago To: Pago]', '2022-04-13 19:26:02', 'Claudinei Paladini'),
	(99, 'Payment Recorded [ID:2, Invoice Number: INV-000006, Total: R$10.00]', '2022-04-13 19:26:02', 'Claudinei Paladini'),
	(100, 'Custom Field Status Changed [FieldID: 4 - Active: 0]', '2022-04-13 20:54:59', 'Claudinei Paladini'),
	(101, 'Custom Field Status Changed [FieldID: 5 - Active: 0]', '2022-04-13 20:55:00', 'Claudinei Paladini'),
	(102, 'Custom Field Status Changed [FieldID: 6 - Active: 0]', '2022-04-13 20:55:01', 'Claudinei Paladini'),
	(103, 'Custom Field Status Changed [FieldID: 7 - Active: 0]', '2022-04-13 20:55:01', 'Claudinei Paladini'),
	(104, 'Custom Field Status Changed [FieldID: 8 - Active: 0]', '2022-04-13 20:55:02', 'Claudinei Paladini'),
	(105, 'Custom Field Status Changed [FieldID: 9 - Active: 0]', '2022-04-13 20:55:03', 'Claudinei Paladini'),
	(106, 'Staff Member Updated [ID: 1, Claudinei Paladini]', '2022-04-13 20:58:37', 'Claudinei Paladini'),
	(107, 'Staff Member Updated [ID: 1, Claudinei Paladini]', '2022-04-13 20:58:58', 'Claudinei Paladini'),
	(108, 'Custom Field Status Changed [FieldID: 4 - Active: 1]', '2022-04-13 21:34:16', 'Claudinei Paladini'),
	(109, 'Custom Field Status Changed [FieldID: 5 - Active: 1]', '2022-04-13 21:34:17', 'Claudinei Paladini'),
	(110, 'Custom Field Status Changed [FieldID: 6 - Active: 1]', '2022-04-13 21:34:17', 'Claudinei Paladini'),
	(111, 'Custom Field Status Changed [FieldID: 7 - Active: 1]', '2022-04-13 21:34:19', 'Claudinei Paladini'),
	(112, 'Custom Field Status Changed [FieldID: 8 - Active: 1]', '2022-04-13 21:34:21', 'Claudinei Paladini'),
	(113, 'Custom Field Status Changed [FieldID: 9 - Active: 1]', '2022-04-13 21:34:21', 'Claudinei Paladini'),
	(114, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: 191.35.249.95]', '2022-04-14 08:47:01', 'Claudinei Paladini'),
	(115, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: 191.35.249.95]', '2022-04-14 08:47:01', 'Claudinei Paladini'),
	(116, 'Invoice Deleted [INV-000008]', '2022-04-14 09:39:03', 'Claudinei Paladini'),
	(117, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: 201.76.3.90]', '2022-04-14 10:05:17', 'Claudinei Paladini'),
	(118, 'Failed Login Attempt [Email: schulen.silva@gmail.com, Is Staff Member: Yes, IP: 191.35.249.95]', '2022-04-14 10:06:32', NULL),
	(119, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: 191.35.249.95]', '2022-04-14 10:06:39', 'Claudinei Paladini'),
	(120, 'Staff Member Updated [ID: 2, SÉRGIO DA  SILVA  SCHULENBURG]', '2022-04-14 10:07:07', 'Claudinei Paladini'),
	(121, 'User Successfully Logged In [User Id: 2, Is Staff Member: Yes, IP: 191.35.249.95]', '2022-04-14 10:08:15', 'SÉRGIO DA  SILVA  SCHULENBURG'),
	(122, 'User Successfully Logged In [User Id: 2, Is Staff Member: Yes, IP: 191.35.249.95]', '2022-04-14 10:09:00', 'SÉRGIO DA  SILVA  SCHULENBURG'),
	(123, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: 191.35.249.95]', '2022-04-14 10:09:28', 'Claudinei Paladini'),
	(124, 'User Successfully Logged In [User Id: 2, Is Staff Member: Yes, IP: 191.35.249.95]', '2022-04-14 10:11:40', 'SÉRGIO DA  SILVA  SCHULENBURG'),
	(125, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: 191.35.249.95]', '2022-04-14 10:12:06', 'Claudinei Paladini'),
	(126, 'Role Updated [ID: 3, Name: Parceiro de Negócios]', '2022-04-14 10:13:08', 'Claudinei Paladini'),
	(127, 'User Successfully Logged In [User Id: 2, Is Staff Member: Yes, IP: 191.35.249.95]', '2022-04-14 10:13:33', 'SÉRGIO DA  SILVA  SCHULENBURG'),
	(128, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: 191.35.249.95]', '2022-04-14 10:13:59', 'Claudinei Paladini'),
	(129, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: 191.35.249.95]', '2022-04-14 11:25:07', 'Claudinei Paladini'),
	(130, 'New Role Added [ID: 4.Marketplace]', '2022-04-14 11:26:19', 'Claudinei Paladini'),
	(131, 'Email Sent To [Email: maury.oliveira@grupomoliver.com.br, Template: New Staff Created (Welcome Email)]', '2022-04-14 11:28:01', 'Claudinei Paladini'),
	(132, 'New Staff Member Added [ID: 4, SPLIT PGTO AMIGÁVEL]', '2022-04-14 11:28:01', 'Claudinei Paladini'),
	(133, 'Email Sent To [Email: atendimento@paladiniadv.com.br, Template: New Staff Created (Welcome Email)]', '2022-04-14 11:44:15', 'Claudinei Paladini'),
	(134, 'New Staff Member Added [ID: 5, SPLIT -  PGTO JURÍDICO]', '2022-04-14 11:44:15', 'Claudinei Paladini'),
	(135, 'Staff Member Updated [ID: 5, SPLIT -  PGTO JURÍDICO]', '2022-04-14 11:44:47', 'Claudinei Paladini'),
	(136, 'Custom Field Updated [Identificador Gerencianet 3]', '2022-04-14 11:46:38', 'Claudinei Paladini'),
	(137, 'Custom Field Updated [Identificador Gerencianet 3]', '2022-04-14 11:49:01', 'Claudinei Paladini'),
	(138, 'Custom Field Updated [Identificador Gerencianet 3]', '2022-04-14 11:49:14', 'Claudinei Paladini'),
	(139, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: 191.35.249.95]', '2022-04-14 15:55:32', 'Claudinei Paladini'),
	(140, 'Customer Info Updated [ID: 3]', '2022-04-14 16:05:05', 'Claudinei Paladini'),
	(141, 'Non Existing User Tried to Login [Email: claudineip@gmail.com, Is Staff Member: Yes, IP: 191.35.249.95]', '2022-04-14 16:06:32', NULL),
	(142, 'User Successfully Logged In [User Id: 1, Is Staff Member: No, IP: 191.35.249.95]', '2022-04-14 16:10:14', 'Claudinei Paladini'),
	(143, 'User Successfully Logged In [User Id: 1, Is Staff Member: No, IP: 191.35.249.95]', '2022-04-15 10:24:16', 'Claudinei Paladini'),
	(144, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: 191.35.249.95]', '2022-04-15 10:25:48', 'Claudinei Paladini'),
	(145, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: 191.35.249.95]', '2022-04-15 10:53:24', 'Claudinei Paladini'),
	(146, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: 45.237.109.217]', '2022-04-15 19:12:17', 'Claudinei Paladini'),
	(147, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: 45.237.109.217]', '2022-04-15 21:16:59', 'Claudinei Paladini'),
	(148, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: 45.237.109.217]', '2022-04-15 21:31:53', 'Claudinei Paladini'),
	(149, 'User Successfully Logged In [User Id: 1, Is Staff Member: No, IP: 45.237.109.217]', '2022-04-16 23:04:25', 'Claudinei Paladini'),
	(150, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: 45.237.109.217]', '2022-04-16 23:05:58', 'Claudinei Paladini'),
	(151, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: 191.35.249.95]', '2022-04-17 23:59:52', 'Claudinei Paladini'),
	(152, 'New Contract Type Added [PRESTAÇÃO DE SERVIÇOS DE CURSOS PROFISSIONALIZANTES]', '2022-04-18 00:13:15', 'Claudinei Paladini'),
	(153, 'New Contract Added [TESTE DE CONTRATO]', '2022-04-18 00:13:29', 'Claudinei Paladini'),
	(154, 'New Template Added [ID: 1, MODELO DE CONTRATO]', '2022-04-18 00:14:08', 'Claudinei Paladini'),
	(155, 'User Successfully Logged In [User Id: 1, Is Staff Member: No, IP: 191.35.249.95]', '2022-04-18 00:21:33', 'Claudinei Paladini'),
	(156, 'Customer Info Updated [ID: 1]', '2022-04-18 00:24:27', 'Claudinei Paladini');
/*!40000 ALTER TABLE `tblactivity_log` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblallowance_type
CREATE TABLE IF NOT EXISTS `tblallowance_type` (
  `type_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type_name` varchar(200) NOT NULL,
  `allowance_val` decimal(15,2) NOT NULL,
  `taxable` tinyint(1) NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblallowance_type: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblallowance_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblallowance_type` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblannouncements
CREATE TABLE IF NOT EXISTS `tblannouncements` (
  `announcementid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `message` text,
  `showtousers` int(11) NOT NULL,
  `showtostaff` int(11) NOT NULL,
  `showname` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  `userid` varchar(100) NOT NULL,
  PRIMARY KEY (`announcementid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblannouncements: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblannouncements` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblannouncements` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblapplicable_staff
CREATE TABLE IF NOT EXISTS `tblapplicable_staff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commission_policy` int(11) NOT NULL,
  `applicable_staff` longtext NOT NULL,
  `name` varchar(255) NOT NULL,
  `datecreated` datetime NOT NULL,
  `addedfrom` int(11) NOT NULL,
  `is_client` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblapplicable_staff: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblapplicable_staff` DISABLE KEYS */;
INSERT INTO `tblapplicable_staff` (`id`, `commission_policy`, `applicable_staff`, `name`, `datecreated`, `addedfrom`, `is_client`) VALUES
	(1, 1, '1', '', '2022-04-13 19:25:11', 1, 0);
/*!40000 ALTER TABLE `tblapplicable_staff` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblcd_care
CREATE TABLE IF NOT EXISTS `tblcd_care` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `candidate` int(11) NOT NULL,
  `care_time` datetime NOT NULL,
  `care_result` text NOT NULL,
  `description` text,
  `add_from` int(11) NOT NULL,
  `add_time` datetime DEFAULT NULL,
  `type` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblcd_care: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblcd_care` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcd_care` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblcd_family_infor
CREATE TABLE IF NOT EXISTS `tblcd_family_infor` (
  `fi_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `candidate` int(11) NOT NULL,
  `relationship` varchar(100) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `fi_birthday` date DEFAULT NULL,
  `job` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `phone` int(15) DEFAULT NULL,
  PRIMARY KEY (`fi_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblcd_family_infor: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblcd_family_infor` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcd_family_infor` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblcd_interview
CREATE TABLE IF NOT EXISTS `tblcd_interview` (
  `in_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `candidate` int(11) NOT NULL,
  `interview` int(11) NOT NULL,
  PRIMARY KEY (`in_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblcd_interview: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblcd_interview` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcd_interview` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblcd_literacy
CREATE TABLE IF NOT EXISTS `tblcd_literacy` (
  `li_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `candidate` int(11) NOT NULL,
  `literacy_from_date` date DEFAULT NULL,
  `literacy_to_date` date DEFAULT NULL,
  `diploma` varchar(200) DEFAULT NULL,
  `training_places` varchar(200) DEFAULT NULL,
  `specialized` varchar(200) DEFAULT NULL,
  `training_form` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`li_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblcd_literacy: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblcd_literacy` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcd_literacy` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblcd_work_experience
CREATE TABLE IF NOT EXISTS `tblcd_work_experience` (
  `we_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `candidate` int(11) NOT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `company` varchar(200) DEFAULT NULL,
  `position` varchar(200) DEFAULT NULL,
  `contact_person` varchar(200) DEFAULT NULL,
  `salary` varchar(200) DEFAULT NULL,
  `reason_quitwork` varchar(200) DEFAULT NULL,
  `job_description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`we_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblcd_work_experience: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblcd_work_experience` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcd_work_experience` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblchatclientmessages
CREATE TABLE IF NOT EXISTS `tblchatclientmessages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sender_id` varchar(20) NOT NULL,
  `reciever_id` varchar(20) NOT NULL,
  `message` longtext NOT NULL,
  `viewed` tinyint(11) NOT NULL DEFAULT '0',
  `time_sent` datetime DEFAULT NULL,
  `viewed_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblchatclientmessages: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblchatclientmessages` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblchatclientmessages` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblchatgroupmembers
CREATE TABLE IF NOT EXISTS `tblchatgroupmembers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `group_id` (`group_id`),
  CONSTRAINT `tblchatgroupmembers_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `tblchatgroups` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblchatgroupmembers: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblchatgroupmembers` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblchatgroupmembers` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblchatgroupmessages
CREATE TABLE IF NOT EXISTS `tblchatgroupmessages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `message` longtext NOT NULL,
  `sender_id` int(11) NOT NULL,
  `time_sent` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblchatgroupmessages: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblchatgroupmessages` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblchatgroupmessages` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblchatgroups
CREATE TABLE IF NOT EXISTS `tblchatgroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by_id` int(11) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblchatgroups: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblchatgroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblchatgroups` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblchatgroupsharedfiles
CREATE TABLE IF NOT EXISTS `tblchatgroupsharedfiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblchatgroupsharedfiles: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblchatgroupsharedfiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblchatgroupsharedfiles` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblchatmessages
CREATE TABLE IF NOT EXISTS `tblchatmessages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sender_id` int(11) NOT NULL,
  `reciever_id` int(11) NOT NULL,
  `message` longtext NOT NULL,
  `viewed` int(11) DEFAULT '0',
  `time_sent` datetime DEFAULT NULL,
  `viewed_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblchatmessages: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblchatmessages` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblchatmessages` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblchatsettings
CREATE TABLE IF NOT EXISTS `tblchatsettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblchatsettings: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblchatsettings` DISABLE KEYS */;
INSERT INTO `tblchatsettings` (`id`, `user_id`, `name`, `value`) VALUES
	(1, 1, 'current_theme', 'dark');
/*!40000 ALTER TABLE `tblchatsettings` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblchatsharedfiles
CREATE TABLE IF NOT EXISTS `tblchatsharedfiles` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sender_id` int(11) DEFAULT NULL,
  `reciever_id` int(11) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblchatsharedfiles: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblchatsharedfiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblchatsharedfiles` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblclients
CREATE TABLE IF NOT EXISTS `tblclients` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `company` varchar(191) DEFAULT NULL,
  `vat` varchar(50) DEFAULT NULL,
  `phonenumber` varchar(30) DEFAULT NULL,
  `country` int(11) NOT NULL DEFAULT '0',
  `city` varchar(100) DEFAULT NULL,
  `zip` varchar(15) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `website` varchar(150) DEFAULT NULL,
  `datecreated` datetime NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `leadid` int(11) DEFAULT NULL,
  `billing_street` varchar(200) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(100) DEFAULT NULL,
  `billing_country` int(11) DEFAULT '0',
  `shipping_street` varchar(200) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(100) DEFAULT NULL,
  `shipping_zip` varchar(100) DEFAULT NULL,
  `shipping_country` int(11) DEFAULT '0',
  `longitude` varchar(191) DEFAULT NULL,
  `latitude` varchar(191) DEFAULT NULL,
  `default_language` varchar(40) DEFAULT NULL,
  `default_currency` int(11) NOT NULL DEFAULT '0',
  `show_primary_contact` int(11) NOT NULL DEFAULT '0',
  `stripe_id` varchar(40) DEFAULT NULL,
  `registration_confirmed` int(11) NOT NULL DEFAULT '1',
  `addedfrom` int(11) NOT NULL DEFAULT '0',
  `woo_id` int(9) DEFAULT NULL,
  `store_id` int(9) DEFAULT NULL,
  PRIMARY KEY (`userid`),
  KEY `country` (`country`),
  KEY `leadid` (`leadid`),
  KEY `company` (`company`),
  KEY `active` (`active`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblclients: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `tblclients` DISABLE KEYS */;
INSERT INTO `tblclients` (`userid`, `company`, `vat`, `phonenumber`, `country`, `city`, `zip`, `state`, `address`, `website`, `datecreated`, `active`, `leadid`, `billing_street`, `billing_city`, `billing_state`, `billing_zip`, `billing_country`, `shipping_street`, `shipping_city`, `shipping_state`, `shipping_zip`, `shipping_country`, `longitude`, `latitude`, `default_language`, `default_currency`, `show_primary_contact`, `stripe_id`, `registration_confirmed`, `addedfrom`, `woo_id`, `store_id`) VALUES
	(1, 'CLAUDINEI PALADINI', '02.098.992/980', '(48) 98434-8774', 32, 'Biguaçu', '88161-048', 'Santa Catarina', 'Rua Prefeito Paulo Frederico Alves Wildner<br />\r\n279', 'claudineipaladini@gmail.com', '2022-04-09 10:56:38', 1, NULL, 'Rua Prefeito Paulo Frederico Alves Wildner<br />\r\n279', 'Biguaçu', 'Santa Catarina', '88161-048', 32, 'Rua Prefeito Paulo Frederico Alves Wildner<br />\r\n279', 'Biguaçu', 'Santa Catarina', '88161-048', 32, NULL, NULL, '', 0, 0, NULL, 1, 1, NULL, NULL),
	(2, 'FAMEC\'S ENGENHARIA', '27.804.134/0001-11', '(11) 5823-3750', 32, 'São Bernardo do Campo', '09602-000', 'SP', 'Avenida Senador Vergueiro, Nº 3071 – Complemento: SALA 21 – Rudge Ramos', '', '2022-04-11 10:13:22', 1, NULL, 'Avenida Senador Vergueiro, Nº 3071 – Complemento: SALA 21 – Rudge Ramos', 'São Bernardo do Campo', 'SP', '09602-000', 32, 'Avenida Senador Vergueiro, Nº 3071 – Complemento: SALA 21 – Rudge Ramos', 'São Bernardo do Campo', 'SP', '09602-000', 32, NULL, NULL, '', 0, 0, NULL, 1, 1, NULL, NULL),
	(3, 'ADELIR COSTA DO CARMO MARINS', '105.555.397-50', '(48) 98434-8775', 32, 'Niterói', '24050-100', 'RJ', 'Rua Jornalista Sardo Filho – n.º 352 - Ilha da Conceição', '', '2022-04-11 16:59:10', 1, NULL, 'Rua Jornalista Sardo Filho – Ilha da Conceição', 'Niterói', 'RJ', '24050-100', 32, 'Rua Jornalista Sardo Filho – Ilha da Conceição', 'Niterói', 'RJ', '24050-100', 32, NULL, NULL, '', 0, 0, NULL, 1, 1, NULL, NULL);
/*!40000 ALTER TABLE `tblclients` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblcommission
CREATE TABLE IF NOT EXISTS `tblcommission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staffid` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  `date` date NOT NULL,
  `is_client` int(11) NOT NULL DEFAULT '0',
  `paid` int(11) NOT NULL DEFAULT '0',
  `amount_paid` decimal(15,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblcommission: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblcommission` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcommission` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblcommission_hierarchy
CREATE TABLE IF NOT EXISTS `tblcommission_hierarchy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `salesman` int(11) NOT NULL,
  `coordinator` int(11) NOT NULL,
  `percent` varchar(45) NOT NULL,
  `addedfrom` int(11) DEFAULT NULL,
  `datecreated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblcommission_hierarchy: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblcommission_hierarchy` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcommission_hierarchy` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblcommission_policy
CREATE TABLE IF NOT EXISTS `tblcommission_policy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date DEFAULT NULL,
  `percent_enjoyed` varchar(45) DEFAULT NULL,
  `product_setting` longtext,
  `ladder_setting` longtext,
  `datecreated` datetime NOT NULL,
  `commission_policy_type` varchar(45) DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `clients` text,
  `client_groups` text,
  `commmission_first_invoices` int(11) NOT NULL DEFAULT '0',
  `number_first_invoices` int(11) NOT NULL DEFAULT '0',
  `percent_first_invoices` varchar(45) NOT NULL DEFAULT '0',
  `ladder_product_setting` longtext,
  `amount_to_calculate` varchar(45) NOT NULL DEFAULT '0',
  `commission_type` varchar(45) NOT NULL DEFAULT 'percentage',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblcommission_policy: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblcommission_policy` DISABLE KEYS */;
INSERT INTO `tblcommission_policy` (`id`, `name`, `from_date`, `to_date`, `percent_enjoyed`, `product_setting`, `ladder_setting`, `datecreated`, `commission_policy_type`, `addedfrom`, `clients`, `client_groups`, `commmission_first_invoices`, `number_first_invoices`, `percent_first_invoices`, `ladder_product_setting`, `amount_to_calculate`, `commission_type`) VALUES
	(1, 'CAMPANHA MEGGA', '2022-04-01', '2022-04-29', '0.50', '[[null,null,null,null,null]]', '[{"from_amount":"","to_amount":"","percent_enjoyed_ladder":""}]', '2022-04-13 19:24:02', '2', 1, NULL, '1', 0, 0, '', '{"":{"from_amount_product":[""],"to_amount_product":[""],"percent_enjoyed_ladder_product":[""]}}', '0', 'percentage');
/*!40000 ALTER TABLE `tblcommission_policy` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblcommission_receipt
CREATE TABLE IF NOT EXISTS `tblcommission_receipt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` decimal(15,2) NOT NULL,
  `paymentmode` varchar(40) DEFAULT NULL,
  `paymentmethod` varchar(191) DEFAULT NULL,
  `date` date NOT NULL,
  `daterecorded` datetime NOT NULL,
  `note` text NOT NULL,
  `transactionid` mediumtext,
  `addedfrom` int(11) DEFAULT NULL,
  `convert_expense` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblcommission_receipt: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblcommission_receipt` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcommission_receipt` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblcommission_receipt_detail
CREATE TABLE IF NOT EXISTS `tblcommission_receipt_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `receipt_id` int(11) NOT NULL,
  `commission_id` int(11) NOT NULL,
  `amount_paid` decimal(15,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblcommission_receipt_detail: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblcommission_receipt_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcommission_receipt_detail` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblcommission_salesadmin_group
CREATE TABLE IF NOT EXISTS `tblcommission_salesadmin_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `salesadmin` int(11) NOT NULL,
  `customer_group` int(11) NOT NULL,
  `addedfrom` int(11) DEFAULT NULL,
  `datecreated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblcommission_salesadmin_group: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblcommission_salesadmin_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcommission_salesadmin_group` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblconsents
CREATE TABLE IF NOT EXISTS `tblconsents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` varchar(10) NOT NULL,
  `date` datetime NOT NULL,
  `ip` varchar(40) NOT NULL,
  `contact_id` int(11) NOT NULL DEFAULT '0',
  `lead_id` int(11) NOT NULL DEFAULT '0',
  `description` text,
  `opt_in_purpose_description` text,
  `purpose_id` int(11) NOT NULL,
  `staff_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `purpose_id` (`purpose_id`),
  KEY `contact_id` (`contact_id`),
  KEY `lead_id` (`lead_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblconsents: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblconsents` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblconsents` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblconsent_purposes
CREATE TABLE IF NOT EXISTS `tblconsent_purposes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` text,
  `date_created` datetime NOT NULL,
  `last_updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblconsent_purposes: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblconsent_purposes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblconsent_purposes` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblcontacts
CREATE TABLE IF NOT EXISTS `tblcontacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `is_primary` int(11) NOT NULL DEFAULT '1',
  `firstname` varchar(191) NOT NULL,
  `lastname` varchar(191) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phonenumber` varchar(100) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `datecreated` datetime NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `new_pass_key` varchar(32) DEFAULT NULL,
  `new_pass_key_requested` datetime DEFAULT NULL,
  `email_verified_at` datetime DEFAULT NULL,
  `email_verification_key` varchar(32) DEFAULT NULL,
  `email_verification_sent_at` datetime DEFAULT NULL,
  `last_ip` varchar(40) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_password_change` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `profile_image` varchar(191) DEFAULT NULL,
  `direction` varchar(3) DEFAULT NULL,
  `invoice_emails` tinyint(1) NOT NULL DEFAULT '1',
  `estimate_emails` tinyint(1) NOT NULL DEFAULT '1',
  `credit_note_emails` tinyint(1) NOT NULL DEFAULT '1',
  `contract_emails` tinyint(1) NOT NULL DEFAULT '1',
  `task_emails` tinyint(1) NOT NULL DEFAULT '1',
  `project_emails` tinyint(1) NOT NULL DEFAULT '1',
  `ticket_emails` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `firstname` (`firstname`),
  KEY `lastname` (`lastname`),
  KEY `email` (`email`),
  KEY `is_primary` (`is_primary`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblcontacts: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblcontacts` DISABLE KEYS */;
INSERT INTO `tblcontacts` (`id`, `userid`, `is_primary`, `firstname`, `lastname`, `email`, `phonenumber`, `title`, `datecreated`, `password`, `new_pass_key`, `new_pass_key_requested`, `email_verified_at`, `email_verification_key`, `email_verification_sent_at`, `last_ip`, `last_login`, `last_password_change`, `active`, `profile_image`, `direction`, `invoice_emails`, `estimate_emails`, `credit_note_emails`, `contract_emails`, `task_emails`, `project_emails`, `ticket_emails`) VALUES
	(1, 1, 1, 'Claudinei', 'Paladini', 'claudinei@paladiniadv.com.br', '48984348774', 'Diretor', '2022-04-11 14:33:37', '$2a$08$9pruFA3ap24DFl5eplCbb.mWt.sLKmwTDqjkpDLQjYI.Vlq5Az7cG', NULL, NULL, '2022-04-11 14:33:37', NULL, NULL, '191.35.249.95', '2022-04-18 00:21:33', NULL, 1, NULL, '', 1, 1, 1, 1, 1, 1, 1);
/*!40000 ALTER TABLE `tblcontacts` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblcontact_permissions
CREATE TABLE IF NOT EXISTS `tblcontact_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permission_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblcontact_permissions: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `tblcontact_permissions` DISABLE KEYS */;
INSERT INTO `tblcontact_permissions` (`id`, `permission_id`, `userid`) VALUES
	(1, 1, 1),
	(2, 2, 1),
	(3, 3, 1),
	(4, 4, 1),
	(5, 5, 1),
	(6, 6, 1);
/*!40000 ALTER TABLE `tblcontact_permissions` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblcontracts
CREATE TABLE IF NOT EXISTS `tblcontracts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` longtext,
  `description` text,
  `subject` varchar(191) DEFAULT NULL,
  `client` int(11) NOT NULL,
  `datestart` date DEFAULT NULL,
  `dateend` date DEFAULT NULL,
  `contract_type` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  `isexpirynotified` int(11) NOT NULL DEFAULT '0',
  `contract_value` decimal(15,2) DEFAULT NULL,
  `trash` tinyint(1) DEFAULT '0',
  `not_visible_to_client` tinyint(1) NOT NULL DEFAULT '0',
  `hash` varchar(32) DEFAULT NULL,
  `signed` tinyint(1) NOT NULL DEFAULT '0',
  `signature` varchar(40) DEFAULT NULL,
  `marked_as_signed` tinyint(1) NOT NULL DEFAULT '0',
  `acceptance_firstname` varchar(50) DEFAULT NULL,
  `acceptance_lastname` varchar(50) DEFAULT NULL,
  `acceptance_email` varchar(100) DEFAULT NULL,
  `acceptance_date` datetime DEFAULT NULL,
  `acceptance_ip` varchar(40) DEFAULT NULL,
  `short_link` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `client` (`client`),
  KEY `contract_type` (`contract_type`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblcontracts: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblcontracts` DISABLE KEYS */;
INSERT INTO `tblcontracts` (`id`, `content`, `description`, `subject`, `client`, `datestart`, `dateend`, `contract_type`, `project_id`, `addedfrom`, `dateadded`, `isexpirynotified`, `contract_value`, `trash`, `not_visible_to_client`, `hash`, `signed`, `signature`, `marked_as_signed`, `acceptance_firstname`, `acceptance_lastname`, `acceptance_email`, `acceptance_date`, `acceptance_ip`, `short_link`) VALUES
	(1, NULL, 'TESTE', 'TESTE DE CONTRATO', 1, '2022-04-18', '2022-04-23', 1, 0, 1, '2022-04-18 00:13:29', 0, 100.00, 0, 0, 'b2434001689c868efafdc3890a1fec8d', 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `tblcontracts` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblcontracts_types
CREATE TABLE IF NOT EXISTS `tblcontracts_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblcontracts_types: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblcontracts_types` DISABLE KEYS */;
INSERT INTO `tblcontracts_types` (`id`, `name`) VALUES
	(1, 'PRESTAÇÃO DE SERVIÇOS DE CURSOS PROFISSIONALIZANTES');
/*!40000 ALTER TABLE `tblcontracts_types` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblcontract_comments
CREATE TABLE IF NOT EXISTS `tblcontract_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` mediumtext,
  `contract_id` int(11) NOT NULL,
  `staffid` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblcontract_comments: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblcontract_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcontract_comments` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblcontract_renewals
CREATE TABLE IF NOT EXISTS `tblcontract_renewals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contractid` int(11) NOT NULL,
  `old_start_date` date NOT NULL,
  `new_start_date` date NOT NULL,
  `old_end_date` date DEFAULT NULL,
  `new_end_date` date DEFAULT NULL,
  `old_value` decimal(15,2) DEFAULT NULL,
  `new_value` decimal(15,2) DEFAULT NULL,
  `date_renewed` datetime NOT NULL,
  `renewed_by` varchar(100) NOT NULL,
  `renewed_by_staff_id` int(11) NOT NULL DEFAULT '0',
  `is_on_old_expiry_notified` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblcontract_renewals: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblcontract_renewals` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcontract_renewals` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblcountries
CREATE TABLE IF NOT EXISTS `tblcountries` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `iso2` char(2) DEFAULT NULL,
  `short_name` varchar(80) NOT NULL DEFAULT '',
  `long_name` varchar(80) NOT NULL DEFAULT '',
  `iso3` char(3) DEFAULT NULL,
  `numcode` varchar(6) DEFAULT NULL,
  `un_member` varchar(12) DEFAULT NULL,
  `calling_code` varchar(8) DEFAULT NULL,
  `cctld` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblcountries: ~250 rows (aproximadamente)
/*!40000 ALTER TABLE `tblcountries` DISABLE KEYS */;
INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES
	(1, 'AF', 'Afghanistan', 'Islamic Republic of Afghanistan', 'AFG', '004', 'yes', '93', '.af'),
	(2, 'AX', 'Aland Islands', '&Aring;land Islands', 'ALA', '248', 'no', '358', '.ax'),
	(3, 'AL', 'Albania', 'Republic of Albania', 'ALB', '008', 'yes', '355', '.al'),
	(4, 'DZ', 'Algeria', 'People\'s Democratic Republic of Algeria', 'DZA', '012', 'yes', '213', '.dz'),
	(5, 'AS', 'American Samoa', 'American Samoa', 'ASM', '016', 'no', '1+684', '.as'),
	(6, 'AD', 'Andorra', 'Principality of Andorra', 'AND', '020', 'yes', '376', '.ad'),
	(7, 'AO', 'Angola', 'Republic of Angola', 'AGO', '024', 'yes', '244', '.ao'),
	(8, 'AI', 'Anguilla', 'Anguilla', 'AIA', '660', 'no', '1+264', '.ai'),
	(9, 'AQ', 'Antarctica', 'Antarctica', 'ATA', '010', 'no', '672', '.aq'),
	(10, 'AG', 'Antigua and Barbuda', 'Antigua and Barbuda', 'ATG', '028', 'yes', '1+268', '.ag'),
	(11, 'AR', 'Argentina', 'Argentine Republic', 'ARG', '032', 'yes', '54', '.ar'),
	(12, 'AM', 'Armenia', 'Republic of Armenia', 'ARM', '051', 'yes', '374', '.am'),
	(13, 'AW', 'Aruba', 'Aruba', 'ABW', '533', 'no', '297', '.aw'),
	(14, 'AU', 'Australia', 'Commonwealth of Australia', 'AUS', '036', 'yes', '61', '.au'),
	(15, 'AT', 'Austria', 'Republic of Austria', 'AUT', '040', 'yes', '43', '.at'),
	(16, 'AZ', 'Azerbaijan', 'Republic of Azerbaijan', 'AZE', '031', 'yes', '994', '.az'),
	(17, 'BS', 'Bahamas', 'Commonwealth of The Bahamas', 'BHS', '044', 'yes', '1+242', '.bs'),
	(18, 'BH', 'Bahrain', 'Kingdom of Bahrain', 'BHR', '048', 'yes', '973', '.bh'),
	(19, 'BD', 'Bangladesh', 'People\'s Republic of Bangladesh', 'BGD', '050', 'yes', '880', '.bd'),
	(20, 'BB', 'Barbados', 'Barbados', 'BRB', '052', 'yes', '1+246', '.bb'),
	(21, 'BY', 'Belarus', 'Republic of Belarus', 'BLR', '112', 'yes', '375', '.by'),
	(22, 'BE', 'Belgium', 'Kingdom of Belgium', 'BEL', '056', 'yes', '32', '.be'),
	(23, 'BZ', 'Belize', 'Belize', 'BLZ', '084', 'yes', '501', '.bz'),
	(24, 'BJ', 'Benin', 'Republic of Benin', 'BEN', '204', 'yes', '229', '.bj'),
	(25, 'BM', 'Bermuda', 'Bermuda Islands', 'BMU', '060', 'no', '1+441', '.bm'),
	(26, 'BT', 'Bhutan', 'Kingdom of Bhutan', 'BTN', '064', 'yes', '975', '.bt'),
	(27, 'BO', 'Bolivia', 'Plurinational State of Bolivia', 'BOL', '068', 'yes', '591', '.bo'),
	(28, 'BQ', 'Bonaire, Sint Eustatius and Saba', 'Bonaire, Sint Eustatius and Saba', 'BES', '535', 'no', '599', '.bq'),
	(29, 'BA', 'Bosnia and Herzegovina', 'Bosnia and Herzegovina', 'BIH', '070', 'yes', '387', '.ba'),
	(30, 'BW', 'Botswana', 'Republic of Botswana', 'BWA', '072', 'yes', '267', '.bw'),
	(31, 'BV', 'Bouvet Island', 'Bouvet Island', 'BVT', '074', 'no', 'NONE', '.bv'),
	(32, 'BR', 'Brazil', 'Federative Republic of Brazil', 'BRA', '076', 'yes', '55', '.br'),
	(33, 'IO', 'British Indian Ocean Territory', 'British Indian Ocean Territory', 'IOT', '086', 'no', '246', '.io'),
	(34, 'BN', 'Brunei', 'Brunei Darussalam', 'BRN', '096', 'yes', '673', '.bn'),
	(35, 'BG', 'Bulgaria', 'Republic of Bulgaria', 'BGR', '100', 'yes', '359', '.bg'),
	(36, 'BF', 'Burkina Faso', 'Burkina Faso', 'BFA', '854', 'yes', '226', '.bf'),
	(37, 'BI', 'Burundi', 'Republic of Burundi', 'BDI', '108', 'yes', '257', '.bi'),
	(38, 'KH', 'Cambodia', 'Kingdom of Cambodia', 'KHM', '116', 'yes', '855', '.kh'),
	(39, 'CM', 'Cameroon', 'Republic of Cameroon', 'CMR', '120', 'yes', '237', '.cm'),
	(40, 'CA', 'Canada', 'Canada', 'CAN', '124', 'yes', '1', '.ca'),
	(41, 'CV', 'Cape Verde', 'Republic of Cape Verde', 'CPV', '132', 'yes', '238', '.cv'),
	(42, 'KY', 'Cayman Islands', 'The Cayman Islands', 'CYM', '136', 'no', '1+345', '.ky'),
	(43, 'CF', 'Central African Republic', 'Central African Republic', 'CAF', '140', 'yes', '236', '.cf'),
	(44, 'TD', 'Chad', 'Republic of Chad', 'TCD', '148', 'yes', '235', '.td'),
	(45, 'CL', 'Chile', 'Republic of Chile', 'CHL', '152', 'yes', '56', '.cl'),
	(46, 'CN', 'China', 'People\'s Republic of China', 'CHN', '156', 'yes', '86', '.cn'),
	(47, 'CX', 'Christmas Island', 'Christmas Island', 'CXR', '162', 'no', '61', '.cx'),
	(48, 'CC', 'Cocos (Keeling) Islands', 'Cocos (Keeling) Islands', 'CCK', '166', 'no', '61', '.cc'),
	(49, 'CO', 'Colombia', 'Republic of Colombia', 'COL', '170', 'yes', '57', '.co'),
	(50, 'KM', 'Comoros', 'Union of the Comoros', 'COM', '174', 'yes', '269', '.km'),
	(51, 'CG', 'Congo', 'Republic of the Congo', 'COG', '178', 'yes', '242', '.cg'),
	(52, 'CK', 'Cook Islands', 'Cook Islands', 'COK', '184', 'some', '682', '.ck'),
	(53, 'CR', 'Costa Rica', 'Republic of Costa Rica', 'CRI', '188', 'yes', '506', '.cr'),
	(54, 'CI', 'Cote d\'ivoire (Ivory Coast)', 'Republic of C&ocirc;te D\'Ivoire (Ivory Coast)', 'CIV', '384', 'yes', '225', '.ci'),
	(55, 'HR', 'Croatia', 'Republic of Croatia', 'HRV', '191', 'yes', '385', '.hr'),
	(56, 'CU', 'Cuba', 'Republic of Cuba', 'CUB', '192', 'yes', '53', '.cu'),
	(57, 'CW', 'Curacao', 'Cura&ccedil;ao', 'CUW', '531', 'no', '599', '.cw'),
	(58, 'CY', 'Cyprus', 'Republic of Cyprus', 'CYP', '196', 'yes', '357', '.cy'),
	(59, 'CZ', 'Czech Republic', 'Czech Republic', 'CZE', '203', 'yes', '420', '.cz'),
	(60, 'CD', 'Democratic Republic of the Congo', 'Democratic Republic of the Congo', 'COD', '180', 'yes', '243', '.cd'),
	(61, 'DK', 'Denmark', 'Kingdom of Denmark', 'DNK', '208', 'yes', '45', '.dk'),
	(62, 'DJ', 'Djibouti', 'Republic of Djibouti', 'DJI', '262', 'yes', '253', '.dj'),
	(63, 'DM', 'Dominica', 'Commonwealth of Dominica', 'DMA', '212', 'yes', '1+767', '.dm'),
	(64, 'DO', 'Dominican Republic', 'Dominican Republic', 'DOM', '214', 'yes', '1+809, 8', '.do'),
	(65, 'EC', 'Ecuador', 'Republic of Ecuador', 'ECU', '218', 'yes', '593', '.ec'),
	(66, 'EG', 'Egypt', 'Arab Republic of Egypt', 'EGY', '818', 'yes', '20', '.eg'),
	(67, 'SV', 'El Salvador', 'Republic of El Salvador', 'SLV', '222', 'yes', '503', '.sv'),
	(68, 'GQ', 'Equatorial Guinea', 'Republic of Equatorial Guinea', 'GNQ', '226', 'yes', '240', '.gq'),
	(69, 'ER', 'Eritrea', 'State of Eritrea', 'ERI', '232', 'yes', '291', '.er'),
	(70, 'EE', 'Estonia', 'Republic of Estonia', 'EST', '233', 'yes', '372', '.ee'),
	(71, 'ET', 'Ethiopia', 'Federal Democratic Republic of Ethiopia', 'ETH', '231', 'yes', '251', '.et'),
	(72, 'FK', 'Falkland Islands (Malvinas)', 'The Falkland Islands (Malvinas)', 'FLK', '238', 'no', '500', '.fk'),
	(73, 'FO', 'Faroe Islands', 'The Faroe Islands', 'FRO', '234', 'no', '298', '.fo'),
	(74, 'FJ', 'Fiji', 'Republic of Fiji', 'FJI', '242', 'yes', '679', '.fj'),
	(75, 'FI', 'Finland', 'Republic of Finland', 'FIN', '246', 'yes', '358', '.fi'),
	(76, 'FR', 'France', 'French Republic', 'FRA', '250', 'yes', '33', '.fr'),
	(77, 'GF', 'French Guiana', 'French Guiana', 'GUF', '254', 'no', '594', '.gf'),
	(78, 'PF', 'French Polynesia', 'French Polynesia', 'PYF', '258', 'no', '689', '.pf'),
	(79, 'TF', 'French Southern Territories', 'French Southern Territories', 'ATF', '260', 'no', NULL, '.tf'),
	(80, 'GA', 'Gabon', 'Gabonese Republic', 'GAB', '266', 'yes', '241', '.ga'),
	(81, 'GM', 'Gambia', 'Republic of The Gambia', 'GMB', '270', 'yes', '220', '.gm'),
	(82, 'GE', 'Georgia', 'Georgia', 'GEO', '268', 'yes', '995', '.ge'),
	(83, 'DE', 'Germany', 'Federal Republic of Germany', 'DEU', '276', 'yes', '49', '.de'),
	(84, 'GH', 'Ghana', 'Republic of Ghana', 'GHA', '288', 'yes', '233', '.gh'),
	(85, 'GI', 'Gibraltar', 'Gibraltar', 'GIB', '292', 'no', '350', '.gi'),
	(86, 'GR', 'Greece', 'Hellenic Republic', 'GRC', '300', 'yes', '30', '.gr'),
	(87, 'GL', 'Greenland', 'Greenland', 'GRL', '304', 'no', '299', '.gl'),
	(88, 'GD', 'Grenada', 'Grenada', 'GRD', '308', 'yes', '1+473', '.gd'),
	(89, 'GP', 'Guadaloupe', 'Guadeloupe', 'GLP', '312', 'no', '590', '.gp'),
	(90, 'GU', 'Guam', 'Guam', 'GUM', '316', 'no', '1+671', '.gu'),
	(91, 'GT', 'Guatemala', 'Republic of Guatemala', 'GTM', '320', 'yes', '502', '.gt'),
	(92, 'GG', 'Guernsey', 'Guernsey', 'GGY', '831', 'no', '44', '.gg'),
	(93, 'GN', 'Guinea', 'Republic of Guinea', 'GIN', '324', 'yes', '224', '.gn'),
	(94, 'GW', 'Guinea-Bissau', 'Republic of Guinea-Bissau', 'GNB', '624', 'yes', '245', '.gw'),
	(95, 'GY', 'Guyana', 'Co-operative Republic of Guyana', 'GUY', '328', 'yes', '592', '.gy'),
	(96, 'HT', 'Haiti', 'Republic of Haiti', 'HTI', '332', 'yes', '509', '.ht'),
	(97, 'HM', 'Heard Island and McDonald Islands', 'Heard Island and McDonald Islands', 'HMD', '334', 'no', 'NONE', '.hm'),
	(98, 'HN', 'Honduras', 'Republic of Honduras', 'HND', '340', 'yes', '504', '.hn'),
	(99, 'HK', 'Hong Kong', 'Hong Kong', 'HKG', '344', 'no', '852', '.hk'),
	(100, 'HU', 'Hungary', 'Hungary', 'HUN', '348', 'yes', '36', '.hu'),
	(101, 'IS', 'Iceland', 'Republic of Iceland', 'ISL', '352', 'yes', '354', '.is'),
	(102, 'IN', 'India', 'Republic of India', 'IND', '356', 'yes', '91', '.in'),
	(103, 'ID', 'Indonesia', 'Republic of Indonesia', 'IDN', '360', 'yes', '62', '.id'),
	(104, 'IR', 'Iran', 'Islamic Republic of Iran', 'IRN', '364', 'yes', '98', '.ir'),
	(105, 'IQ', 'Iraq', 'Republic of Iraq', 'IRQ', '368', 'yes', '964', '.iq'),
	(106, 'IE', 'Ireland', 'Ireland', 'IRL', '372', 'yes', '353', '.ie'),
	(107, 'IM', 'Isle of Man', 'Isle of Man', 'IMN', '833', 'no', '44', '.im'),
	(108, 'IL', 'Israel', 'State of Israel', 'ISR', '376', 'yes', '972', '.il'),
	(109, 'IT', 'Italy', 'Italian Republic', 'ITA', '380', 'yes', '39', '.jm'),
	(110, 'JM', 'Jamaica', 'Jamaica', 'JAM', '388', 'yes', '1+876', '.jm'),
	(111, 'JP', 'Japan', 'Japan', 'JPN', '392', 'yes', '81', '.jp'),
	(112, 'JE', 'Jersey', 'The Bailiwick of Jersey', 'JEY', '832', 'no', '44', '.je'),
	(113, 'JO', 'Jordan', 'Hashemite Kingdom of Jordan', 'JOR', '400', 'yes', '962', '.jo'),
	(114, 'KZ', 'Kazakhstan', 'Republic of Kazakhstan', 'KAZ', '398', 'yes', '7', '.kz'),
	(115, 'KE', 'Kenya', 'Republic of Kenya', 'KEN', '404', 'yes', '254', '.ke'),
	(116, 'KI', 'Kiribati', 'Republic of Kiribati', 'KIR', '296', 'yes', '686', '.ki'),
	(117, 'XK', 'Kosovo', 'Republic of Kosovo', '---', '---', 'some', '381', ''),
	(118, 'KW', 'Kuwait', 'State of Kuwait', 'KWT', '414', 'yes', '965', '.kw'),
	(119, 'KG', 'Kyrgyzstan', 'Kyrgyz Republic', 'KGZ', '417', 'yes', '996', '.kg'),
	(120, 'LA', 'Laos', 'Lao People\'s Democratic Republic', 'LAO', '418', 'yes', '856', '.la'),
	(121, 'LV', 'Latvia', 'Republic of Latvia', 'LVA', '428', 'yes', '371', '.lv'),
	(122, 'LB', 'Lebanon', 'Republic of Lebanon', 'LBN', '422', 'yes', '961', '.lb'),
	(123, 'LS', 'Lesotho', 'Kingdom of Lesotho', 'LSO', '426', 'yes', '266', '.ls'),
	(124, 'LR', 'Liberia', 'Republic of Liberia', 'LBR', '430', 'yes', '231', '.lr'),
	(125, 'LY', 'Libya', 'Libya', 'LBY', '434', 'yes', '218', '.ly'),
	(126, 'LI', 'Liechtenstein', 'Principality of Liechtenstein', 'LIE', '438', 'yes', '423', '.li'),
	(127, 'LT', 'Lithuania', 'Republic of Lithuania', 'LTU', '440', 'yes', '370', '.lt'),
	(128, 'LU', 'Luxembourg', 'Grand Duchy of Luxembourg', 'LUX', '442', 'yes', '352', '.lu'),
	(129, 'MO', 'Macao', 'The Macao Special Administrative Region', 'MAC', '446', 'no', '853', '.mo'),
	(130, 'MK', 'North Macedonia', 'Republic of North Macedonia', 'MKD', '807', 'yes', '389', '.mk'),
	(131, 'MG', 'Madagascar', 'Republic of Madagascar', 'MDG', '450', 'yes', '261', '.mg'),
	(132, 'MW', 'Malawi', 'Republic of Malawi', 'MWI', '454', 'yes', '265', '.mw'),
	(133, 'MY', 'Malaysia', 'Malaysia', 'MYS', '458', 'yes', '60', '.my'),
	(134, 'MV', 'Maldives', 'Republic of Maldives', 'MDV', '462', 'yes', '960', '.mv'),
	(135, 'ML', 'Mali', 'Republic of Mali', 'MLI', '466', 'yes', '223', '.ml'),
	(136, 'MT', 'Malta', 'Republic of Malta', 'MLT', '470', 'yes', '356', '.mt'),
	(137, 'MH', 'Marshall Islands', 'Republic of the Marshall Islands', 'MHL', '584', 'yes', '692', '.mh'),
	(138, 'MQ', 'Martinique', 'Martinique', 'MTQ', '474', 'no', '596', '.mq'),
	(139, 'MR', 'Mauritania', 'Islamic Republic of Mauritania', 'MRT', '478', 'yes', '222', '.mr'),
	(140, 'MU', 'Mauritius', 'Republic of Mauritius', 'MUS', '480', 'yes', '230', '.mu'),
	(141, 'YT', 'Mayotte', 'Mayotte', 'MYT', '175', 'no', '262', '.yt'),
	(142, 'MX', 'Mexico', 'United Mexican States', 'MEX', '484', 'yes', '52', '.mx'),
	(143, 'FM', 'Micronesia', 'Federated States of Micronesia', 'FSM', '583', 'yes', '691', '.fm'),
	(144, 'MD', 'Moldava', 'Republic of Moldova', 'MDA', '498', 'yes', '373', '.md'),
	(145, 'MC', 'Monaco', 'Principality of Monaco', 'MCO', '492', 'yes', '377', '.mc'),
	(146, 'MN', 'Mongolia', 'Mongolia', 'MNG', '496', 'yes', '976', '.mn'),
	(147, 'ME', 'Montenegro', 'Montenegro', 'MNE', '499', 'yes', '382', '.me'),
	(148, 'MS', 'Montserrat', 'Montserrat', 'MSR', '500', 'no', '1+664', '.ms'),
	(149, 'MA', 'Morocco', 'Kingdom of Morocco', 'MAR', '504', 'yes', '212', '.ma'),
	(150, 'MZ', 'Mozambique', 'Republic of Mozambique', 'MOZ', '508', 'yes', '258', '.mz'),
	(151, 'MM', 'Myanmar (Burma)', 'Republic of the Union of Myanmar', 'MMR', '104', 'yes', '95', '.mm'),
	(152, 'NA', 'Namibia', 'Republic of Namibia', 'NAM', '516', 'yes', '264', '.na'),
	(153, 'NR', 'Nauru', 'Republic of Nauru', 'NRU', '520', 'yes', '674', '.nr'),
	(154, 'NP', 'Nepal', 'Federal Democratic Republic of Nepal', 'NPL', '524', 'yes', '977', '.np'),
	(155, 'NL', 'Netherlands', 'Kingdom of the Netherlands', 'NLD', '528', 'yes', '31', '.nl'),
	(156, 'NC', 'New Caledonia', 'New Caledonia', 'NCL', '540', 'no', '687', '.nc'),
	(157, 'NZ', 'New Zealand', 'New Zealand', 'NZL', '554', 'yes', '64', '.nz'),
	(158, 'NI', 'Nicaragua', 'Republic of Nicaragua', 'NIC', '558', 'yes', '505', '.ni'),
	(159, 'NE', 'Niger', 'Republic of Niger', 'NER', '562', 'yes', '227', '.ne'),
	(160, 'NG', 'Nigeria', 'Federal Republic of Nigeria', 'NGA', '566', 'yes', '234', '.ng'),
	(161, 'NU', 'Niue', 'Niue', 'NIU', '570', 'some', '683', '.nu'),
	(162, 'NF', 'Norfolk Island', 'Norfolk Island', 'NFK', '574', 'no', '672', '.nf'),
	(163, 'KP', 'North Korea', 'Democratic People\'s Republic of Korea', 'PRK', '408', 'yes', '850', '.kp'),
	(164, 'MP', 'Northern Mariana Islands', 'Northern Mariana Islands', 'MNP', '580', 'no', '1+670', '.mp'),
	(165, 'NO', 'Norway', 'Kingdom of Norway', 'NOR', '578', 'yes', '47', '.no'),
	(166, 'OM', 'Oman', 'Sultanate of Oman', 'OMN', '512', 'yes', '968', '.om'),
	(167, 'PK', 'Pakistan', 'Islamic Republic of Pakistan', 'PAK', '586', 'yes', '92', '.pk'),
	(168, 'PW', 'Palau', 'Republic of Palau', 'PLW', '585', 'yes', '680', '.pw'),
	(169, 'PS', 'Palestine', 'State of Palestine (or Occupied Palestinian Territory)', 'PSE', '275', 'some', '970', '.ps'),
	(170, 'PA', 'Panama', 'Republic of Panama', 'PAN', '591', 'yes', '507', '.pa'),
	(171, 'PG', 'Papua New Guinea', 'Independent State of Papua New Guinea', 'PNG', '598', 'yes', '675', '.pg'),
	(172, 'PY', 'Paraguay', 'Republic of Paraguay', 'PRY', '600', 'yes', '595', '.py'),
	(173, 'PE', 'Peru', 'Republic of Peru', 'PER', '604', 'yes', '51', '.pe'),
	(174, 'PH', 'Philippines', 'Republic of the Philippines', 'PHL', '608', 'yes', '63', '.ph'),
	(175, 'PN', 'Pitcairn', 'Pitcairn', 'PCN', '612', 'no', 'NONE', '.pn'),
	(176, 'PL', 'Poland', 'Republic of Poland', 'POL', '616', 'yes', '48', '.pl'),
	(177, 'PT', 'Portugal', 'Portuguese Republic', 'PRT', '620', 'yes', '351', '.pt'),
	(178, 'PR', 'Puerto Rico', 'Commonwealth of Puerto Rico', 'PRI', '630', 'no', '1+939', '.pr'),
	(179, 'QA', 'Qatar', 'State of Qatar', 'QAT', '634', 'yes', '974', '.qa'),
	(180, 'RE', 'Reunion', 'R&eacute;union', 'REU', '638', 'no', '262', '.re'),
	(181, 'RO', 'Romania', 'Romania', 'ROU', '642', 'yes', '40', '.ro'),
	(182, 'RU', 'Russia', 'Russian Federation', 'RUS', '643', 'yes', '7', '.ru'),
	(183, 'RW', 'Rwanda', 'Republic of Rwanda', 'RWA', '646', 'yes', '250', '.rw'),
	(184, 'BL', 'Saint Barthelemy', 'Saint Barth&eacute;lemy', 'BLM', '652', 'no', '590', '.bl'),
	(185, 'SH', 'Saint Helena', 'Saint Helena, Ascension and Tristan da Cunha', 'SHN', '654', 'no', '290', '.sh'),
	(186, 'KN', 'Saint Kitts and Nevis', 'Federation of Saint Christopher and Nevis', 'KNA', '659', 'yes', '1+869', '.kn'),
	(187, 'LC', 'Saint Lucia', 'Saint Lucia', 'LCA', '662', 'yes', '1+758', '.lc'),
	(188, 'MF', 'Saint Martin', 'Saint Martin', 'MAF', '663', 'no', '590', '.mf'),
	(189, 'PM', 'Saint Pierre and Miquelon', 'Saint Pierre and Miquelon', 'SPM', '666', 'no', '508', '.pm'),
	(190, 'VC', 'Saint Vincent and the Grenadines', 'Saint Vincent and the Grenadines', 'VCT', '670', 'yes', '1+784', '.vc'),
	(191, 'WS', 'Samoa', 'Independent State of Samoa', 'WSM', '882', 'yes', '685', '.ws'),
	(192, 'SM', 'San Marino', 'Republic of San Marino', 'SMR', '674', 'yes', '378', '.sm'),
	(193, 'ST', 'Sao Tome and Principe', 'Democratic Republic of S&atilde;o Tom&eacute; and Pr&iacute;ncipe', 'STP', '678', 'yes', '239', '.st'),
	(194, 'SA', 'Saudi Arabia', 'Kingdom of Saudi Arabia', 'SAU', '682', 'yes', '966', '.sa'),
	(195, 'SN', 'Senegal', 'Republic of Senegal', 'SEN', '686', 'yes', '221', '.sn'),
	(196, 'RS', 'Serbia', 'Republic of Serbia', 'SRB', '688', 'yes', '381', '.rs'),
	(197, 'SC', 'Seychelles', 'Republic of Seychelles', 'SYC', '690', 'yes', '248', '.sc'),
	(198, 'SL', 'Sierra Leone', 'Republic of Sierra Leone', 'SLE', '694', 'yes', '232', '.sl'),
	(199, 'SG', 'Singapore', 'Republic of Singapore', 'SGP', '702', 'yes', '65', '.sg'),
	(200, 'SX', 'Sint Maarten', 'Sint Maarten', 'SXM', '534', 'no', '1+721', '.sx'),
	(201, 'SK', 'Slovakia', 'Slovak Republic', 'SVK', '703', 'yes', '421', '.sk'),
	(202, 'SI', 'Slovenia', 'Republic of Slovenia', 'SVN', '705', 'yes', '386', '.si'),
	(203, 'SB', 'Solomon Islands', 'Solomon Islands', 'SLB', '090', 'yes', '677', '.sb'),
	(204, 'SO', 'Somalia', 'Somali Republic', 'SOM', '706', 'yes', '252', '.so'),
	(205, 'ZA', 'South Africa', 'Republic of South Africa', 'ZAF', '710', 'yes', '27', '.za'),
	(206, 'GS', 'South Georgia and the South Sandwich Islands', 'South Georgia and the South Sandwich Islands', 'SGS', '239', 'no', '500', '.gs'),
	(207, 'KR', 'South Korea', 'Republic of Korea', 'KOR', '410', 'yes', '82', '.kr'),
	(208, 'SS', 'South Sudan', 'Republic of South Sudan', 'SSD', '728', 'yes', '211', '.ss'),
	(209, 'ES', 'Spain', 'Kingdom of Spain', 'ESP', '724', 'yes', '34', '.es'),
	(210, 'LK', 'Sri Lanka', 'Democratic Socialist Republic of Sri Lanka', 'LKA', '144', 'yes', '94', '.lk'),
	(211, 'SD', 'Sudan', 'Republic of the Sudan', 'SDN', '729', 'yes', '249', '.sd'),
	(212, 'SR', 'Suriname', 'Republic of Suriname', 'SUR', '740', 'yes', '597', '.sr'),
	(213, 'SJ', 'Svalbard and Jan Mayen', 'Svalbard and Jan Mayen', 'SJM', '744', 'no', '47', '.sj'),
	(214, 'SZ', 'Swaziland', 'Kingdom of Swaziland', 'SWZ', '748', 'yes', '268', '.sz'),
	(215, 'SE', 'Sweden', 'Kingdom of Sweden', 'SWE', '752', 'yes', '46', '.se'),
	(216, 'CH', 'Switzerland', 'Swiss Confederation', 'CHE', '756', 'yes', '41', '.ch'),
	(217, 'SY', 'Syria', 'Syrian Arab Republic', 'SYR', '760', 'yes', '963', '.sy'),
	(218, 'TW', 'Taiwan', 'Republic of China (Taiwan)', 'TWN', '158', 'former', '886', '.tw'),
	(219, 'TJ', 'Tajikistan', 'Republic of Tajikistan', 'TJK', '762', 'yes', '992', '.tj'),
	(220, 'TZ', 'Tanzania', 'United Republic of Tanzania', 'TZA', '834', 'yes', '255', '.tz'),
	(221, 'TH', 'Thailand', 'Kingdom of Thailand', 'THA', '764', 'yes', '66', '.th'),
	(222, 'TL', 'Timor-Leste (East Timor)', 'Democratic Republic of Timor-Leste', 'TLS', '626', 'yes', '670', '.tl'),
	(223, 'TG', 'Togo', 'Togolese Republic', 'TGO', '768', 'yes', '228', '.tg'),
	(224, 'TK', 'Tokelau', 'Tokelau', 'TKL', '772', 'no', '690', '.tk'),
	(225, 'TO', 'Tonga', 'Kingdom of Tonga', 'TON', '776', 'yes', '676', '.to'),
	(226, 'TT', 'Trinidad and Tobago', 'Republic of Trinidad and Tobago', 'TTO', '780', 'yes', '1+868', '.tt'),
	(227, 'TN', 'Tunisia', 'Republic of Tunisia', 'TUN', '788', 'yes', '216', '.tn'),
	(228, 'TR', 'Turkey', 'Republic of Turkey', 'TUR', '792', 'yes', '90', '.tr'),
	(229, 'TM', 'Turkmenistan', 'Turkmenistan', 'TKM', '795', 'yes', '993', '.tm'),
	(230, 'TC', 'Turks and Caicos Islands', 'Turks and Caicos Islands', 'TCA', '796', 'no', '1+649', '.tc'),
	(231, 'TV', 'Tuvalu', 'Tuvalu', 'TUV', '798', 'yes', '688', '.tv'),
	(232, 'UG', 'Uganda', 'Republic of Uganda', 'UGA', '800', 'yes', '256', '.ug'),
	(233, 'UA', 'Ukraine', 'Ukraine', 'UKR', '804', 'yes', '380', '.ua'),
	(234, 'AE', 'United Arab Emirates', 'United Arab Emirates', 'ARE', '784', 'yes', '971', '.ae'),
	(235, 'GB', 'United Kingdom', 'United Kingdom of Great Britain and Nothern Ireland', 'GBR', '826', 'yes', '44', '.uk'),
	(236, 'US', 'United States', 'United States of America', 'USA', '840', 'yes', '1', '.us'),
	(237, 'UM', 'United States Minor Outlying Islands', 'United States Minor Outlying Islands', 'UMI', '581', 'no', 'NONE', 'NONE'),
	(238, 'UY', 'Uruguay', 'Eastern Republic of Uruguay', 'URY', '858', 'yes', '598', '.uy'),
	(239, 'UZ', 'Uzbekistan', 'Republic of Uzbekistan', 'UZB', '860', 'yes', '998', '.uz'),
	(240, 'VU', 'Vanuatu', 'Republic of Vanuatu', 'VUT', '548', 'yes', '678', '.vu'),
	(241, 'VA', 'Vatican City', 'State of the Vatican City', 'VAT', '336', 'no', '39', '.va'),
	(242, 'VE', 'Venezuela', 'Bolivarian Republic of Venezuela', 'VEN', '862', 'yes', '58', '.ve'),
	(243, 'VN', 'Vietnam', 'Socialist Republic of Vietnam', 'VNM', '704', 'yes', '84', '.vn'),
	(244, 'VG', 'Virgin Islands, British', 'British Virgin Islands', 'VGB', '092', 'no', '1+284', '.vg'),
	(245, 'VI', 'Virgin Islands, US', 'Virgin Islands of the United States', 'VIR', '850', 'no', '1+340', '.vi'),
	(246, 'WF', 'Wallis and Futuna', 'Wallis and Futuna', 'WLF', '876', 'no', '681', '.wf'),
	(247, 'EH', 'Western Sahara', 'Western Sahara', 'ESH', '732', 'no', '212', '.eh'),
	(248, 'YE', 'Yemen', 'Republic of Yemen', 'YEM', '887', 'yes', '967', '.ye'),
	(249, 'ZM', 'Zambia', 'Republic of Zambia', 'ZMB', '894', 'yes', '260', '.zm'),
	(250, 'ZW', 'Zimbabwe', 'Republic of Zimbabwe', 'ZWE', '716', 'yes', '263', '.zw');
/*!40000 ALTER TABLE `tblcountries` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblcreditnotes
CREATE TABLE IF NOT EXISTS `tblcreditnotes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clientid` int(11) NOT NULL,
  `deleted_customer_name` varchar(100) DEFAULT NULL,
  `number` int(11) NOT NULL,
  `prefix` varchar(50) DEFAULT NULL,
  `number_format` int(11) NOT NULL DEFAULT '1',
  `datecreated` datetime NOT NULL,
  `date` date NOT NULL,
  `adminnote` text,
  `terms` text,
  `clientnote` text,
  `currency` int(11) NOT NULL,
  `subtotal` decimal(15,2) NOT NULL,
  `total_tax` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total` decimal(15,2) NOT NULL,
  `adjustment` decimal(15,2) DEFAULT NULL,
  `addedfrom` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `project_id` int(11) NOT NULL DEFAULT '0',
  `discount_percent` decimal(15,2) DEFAULT '0.00',
  `discount_total` decimal(15,2) DEFAULT '0.00',
  `discount_type` varchar(30) NOT NULL,
  `billing_street` varchar(200) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(100) DEFAULT NULL,
  `billing_country` int(11) DEFAULT NULL,
  `shipping_street` varchar(200) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(100) DEFAULT NULL,
  `shipping_zip` varchar(100) DEFAULT NULL,
  `shipping_country` int(11) DEFAULT NULL,
  `include_shipping` tinyint(1) NOT NULL,
  `show_shipping_on_credit_note` tinyint(1) NOT NULL DEFAULT '1',
  `show_quantity_as` int(11) NOT NULL DEFAULT '1',
  `reference_no` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `currency` (`currency`),
  KEY `clientid` (`clientid`),
  KEY `project_id` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblcreditnotes: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblcreditnotes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcreditnotes` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblcreditnote_refunds
CREATE TABLE IF NOT EXISTS `tblcreditnote_refunds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `credit_note_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `refunded_on` date NOT NULL,
  `payment_mode` varchar(40) NOT NULL,
  `note` text,
  `amount` decimal(15,2) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblcreditnote_refunds: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblcreditnote_refunds` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcreditnote_refunds` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblcredits
CREATE TABLE IF NOT EXISTS `tblcredits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_id` int(11) NOT NULL,
  `credit_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `date_applied` datetime NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblcredits: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblcredits` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcredits` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblcurrencies
CREATE TABLE IF NOT EXISTS `tblcurrencies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `symbol` varchar(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `decimal_separator` varchar(5) DEFAULT NULL,
  `thousand_separator` varchar(5) DEFAULT NULL,
  `placement` varchar(10) DEFAULT NULL,
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblcurrencies: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblcurrencies` DISABLE KEYS */;
INSERT INTO `tblcurrencies` (`id`, `symbol`, `name`, `decimal_separator`, `thousand_separator`, `placement`, `isdefault`) VALUES
	(3, 'R$', 'BRL', '.', ',', 'before', 1);
/*!40000 ALTER TABLE `tblcurrencies` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblcustomers_groups
CREATE TABLE IF NOT EXISTS `tblcustomers_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblcustomers_groups: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblcustomers_groups` DISABLE KEYS */;
INSERT INTO `tblcustomers_groups` (`id`, `name`) VALUES
	(1, 'MEGGA');
/*!40000 ALTER TABLE `tblcustomers_groups` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblcustomer_admins
CREATE TABLE IF NOT EXISTS `tblcustomer_admins` (
  `staff_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `date_assigned` text NOT NULL,
  KEY `customer_id` (`customer_id`),
  KEY `staff_id` (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblcustomer_admins: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblcustomer_admins` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcustomer_admins` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblcustomer_groups
CREATE TABLE IF NOT EXISTS `tblcustomer_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupid` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `groupid` (`groupid`),
  KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblcustomer_groups: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblcustomer_groups` DISABLE KEYS */;
INSERT INTO `tblcustomer_groups` (`id`, `groupid`, `customer_id`) VALUES
	(1, 1, 1);
/*!40000 ALTER TABLE `tblcustomer_groups` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblcustomfields
CREATE TABLE IF NOT EXISTS `tblcustomfields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldto` varchar(30) DEFAULT NULL,
  `name` varchar(150) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `type` varchar(20) NOT NULL,
  `options` mediumtext,
  `display_inline` tinyint(1) NOT NULL DEFAULT '0',
  `field_order` int(11) DEFAULT '0',
  `active` int(11) NOT NULL DEFAULT '1',
  `show_on_pdf` int(11) NOT NULL DEFAULT '0',
  `show_on_ticket_form` tinyint(1) NOT NULL DEFAULT '0',
  `only_admin` tinyint(1) NOT NULL DEFAULT '0',
  `show_on_table` tinyint(1) NOT NULL DEFAULT '0',
  `show_on_client_portal` int(11) NOT NULL DEFAULT '0',
  `disalow_client_to_edit` int(11) NOT NULL DEFAULT '0',
  `bs_column` int(11) NOT NULL DEFAULT '12',
  `default_value` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblcustomfields: ~13 rows (aproximadamente)
/*!40000 ALTER TABLE `tblcustomfields` DISABLE KEYS */;
INSERT INTO `tblcustomfields` (`id`, `fieldto`, `name`, `slug`, `required`, `type`, `options`, `display_inline`, `field_order`, `active`, `show_on_pdf`, `show_on_ticket_form`, `only_admin`, `show_on_table`, `show_on_client_portal`, `disalow_client_to_edit`, `bs_column`, `default_value`) VALUES
	(1, 'contacts', 'Data de Nascimento', 'contacts_data_de_nascimento', 1, 'date_picker', '', 0, 1, 1, 0, 0, 0, 1, 1, 0, 12, ''),
	(2, 'contacts', 'RG', 'contacts_rg', 0, 'number', '', 0, 2, 1, 0, 0, 0, 1, 1, 0, 12, ''),
	(3, 'contacts', 'CPF', 'contacts_rg_2', 0, 'number', '', 0, 3, 1, 0, 0, 0, 1, 1, 0, 12, ''),
	(4, 'staff', 'Identificador Gerencianet', 'staff_identificador_gerencianet', 1, 'input', '', 0, 0, 1, 0, 0, 1, 1, 0, 0, 12, ''),
	(5, 'staff', 'Porcentagem Gerencianet', 'staff_porcentagem_gerencianet', 1, 'input', '', 0, 1, 1, 0, 0, 1, 1, 0, 0, 12, ''),
	(6, 'staff', 'Identificador Gerencianet 2', 'staff_identificador_gerencianet_2', 0, 'input', '', 0, 2, 1, 0, 0, 1, 1, 0, 0, 12, ''),
	(7, 'staff', 'Porcentagem Gerencianet 2', 'staff_porcentagem_gerencianet_2', 0, 'input', '', 0, 3, 1, 0, 0, 1, 1, 0, 0, 12, ''),
	(8, 'staff', 'Porcentagem Gerencianet 3', 'staff_porcentagem_gerencianet_3', 0, 'input', '', 0, 5, 1, 0, 0, 1, 1, 0, 0, 12, ''),
	(9, 'staff', 'Identificador Gerencianet 3', 'staff_identificador_gerencianet_3', 0, 'input', '', 0, 4, 1, 0, 0, 1, 1, 0, 0, 12, ''),
	(10, 'customers', 'Razão Social - CNPJ', 'customers_razao_social_cnpj', 0, 'input', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 12, ''),
	(11, 'customers', 'Atividade Principal - CNPJ', 'customers_atividade_principal_cnpj', 0, 'input', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 12, ''),
	(12, 'customers', 'Email - CNPJ', 'customers_email_cnpj', 0, 'input', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 12, ''),
	(13, 'customers', 'WhatsApp', 'customers_whatsapp', 0, 'input', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 12, '');
/*!40000 ALTER TABLE `tblcustomfields` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblcustomfieldsvalues
CREATE TABLE IF NOT EXISTS `tblcustomfieldsvalues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `relid` int(11) NOT NULL,
  `fieldid` int(11) NOT NULL,
  `fieldto` varchar(15) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `relid` (`relid`),
  KEY `fieldto` (`fieldto`),
  KEY `fieldid` (`fieldid`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblcustomfieldsvalues: ~28 rows (aproximadamente)
/*!40000 ALTER TABLE `tblcustomfieldsvalues` DISABLE KEYS */;
INSERT INTO `tblcustomfieldsvalues` (`id`, `relid`, `fieldid`, `fieldto`, `value`) VALUES
	(1, 1, 4, 'staff', '70c22baf756ad50097bbb75e91912a0d'),
	(2, 1, 5, 'staff', '7000'),
	(3, 2, 10, 'customers', 'FAMEC\'S MANUTENCAO E REFORMA EM GERAL LTDA'),
	(4, 2, 11, 'customers', 'Obras de alvenaria (43.99-1-03)'),
	(5, 2, 12, 'customers', 'anderson@famecsengenharia.com.br'),
	(6, 2, 4, 'staff', '559b1b326e10a8e9a13e8d5cf62c61d0'),
	(7, 2, 5, 'staff', '1000'),
	(8, 3, 4, 'staff', '97c49d34defb17b1961026f83271d8f3'),
	(9, 3, 5, 'staff', '1000'),
	(10, 1, 1, 'contacts', '1977-10-19'),
	(11, 1, 10, 'customers', 'CLAUDINEI PALADINI'),
	(12, 1, 11, 'customers', 'Advogado'),
	(13, 1, 12, 'customers', 'claudineipaladini@gmail.com'),
	(14, 1, 13, 'customers', '(48) 98434-8774'),
	(15, 1, 2, 'contacts', '3382997'),
	(16, 1, 3, 'contacts', '02098992980'),
	(17, 3, 10, 'customers', 'ADELIR COSTA DO CARMO MARINS'),
	(18, 3, 11, 'customers', 'Obras de alvenaria (43.99-1-03)'),
	(19, 3, 13, 'customers', '(48) 98434-8775'),
	(20, 3, 12, 'customers', 'claudineip@gmail.com'),
	(21, 4, 4, 'staff', '97c49d34defb17b1961026f83271d8f3'),
	(22, 4, 5, 'staff', '2300'),
	(23, 4, 6, 'staff', '70c22baf756ad50097bbb75e91912a0d'),
	(24, 4, 7, 'staff', '0700'),
	(25, 5, 4, 'staff', '70c22baf756ad50097bbb75e91912a0d'),
	(26, 5, 5, 'staff', '2300'),
	(27, 5, 6, 'staff', '97c49d34defb17b1961026f83271d8f3'),
	(28, 5, 7, 'staff', '0700');
/*!40000 ALTER TABLE `tblcustomfieldsvalues` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblcustom_templates
CREATE TABLE IF NOT EXISTS `tblcustom_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(11) NOT NULL,
  `template_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `template_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblcustom_templates: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblcustom_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcustom_templates` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblday_off
CREATE TABLE IF NOT EXISTS `tblday_off` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `off_reason` varchar(255) NOT NULL,
  `off_type` varchar(100) NOT NULL,
  `break_date` date NOT NULL,
  `timekeeping` varchar(45) DEFAULT NULL,
  `department` int(11) DEFAULT '0',
  `position` int(11) DEFAULT '0',
  `add_from` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblday_off: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblday_off` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblday_off` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tbldepartments
CREATE TABLE IF NOT EXISTS `tbldepartments` (
  `departmentid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `imap_username` varchar(191) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `email_from_header` tinyint(1) NOT NULL DEFAULT '0',
  `host` varchar(150) DEFAULT NULL,
  `password` mediumtext,
  `encryption` varchar(3) DEFAULT NULL,
  `folder` varchar(191) NOT NULL DEFAULT 'INBOX',
  `delete_after_import` int(11) NOT NULL DEFAULT '0',
  `calendar_id` mediumtext,
  `hidefromclient` tinyint(1) NOT NULL DEFAULT '0',
  `manager_id` int(11) DEFAULT '0',
  `parent_id` int(11) DEFAULT '0',
  PRIMARY KEY (`departmentid`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tbldepartments: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tbldepartments` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbldepartments` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tbldismissed_announcements
CREATE TABLE IF NOT EXISTS `tbldismissed_announcements` (
  `dismissedannouncementid` int(11) NOT NULL AUTO_INCREMENT,
  `announcementid` int(11) NOT NULL,
  `staff` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`dismissedannouncementid`),
  KEY `announcementid` (`announcementid`),
  KEY `staff` (`staff`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tbldismissed_announcements: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tbldismissed_announcements` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbldismissed_announcements` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblemaillists
CREATE TABLE IF NOT EXISTS `tblemaillists` (
  `listid` int(11) NOT NULL AUTO_INCREMENT,
  `name` mediumtext NOT NULL,
  `creator` varchar(100) NOT NULL,
  `datecreated` datetime NOT NULL,
  PRIMARY KEY (`listid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblemaillists: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblemaillists` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblemaillists` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblemailtemplates
CREATE TABLE IF NOT EXISTS `tblemailtemplates` (
  `emailtemplateid` int(11) NOT NULL AUTO_INCREMENT,
  `type` mediumtext NOT NULL,
  `slug` varchar(100) NOT NULL,
  `language` varchar(40) DEFAULT NULL,
  `name` mediumtext NOT NULL,
  `subject` mediumtext NOT NULL,
  `message` mediumtext NOT NULL,
  `fromname` mediumtext NOT NULL,
  `fromemail` varchar(100) DEFAULT NULL,
  `plaintext` int(11) NOT NULL DEFAULT '0',
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL,
  PRIMARY KEY (`emailtemplateid`)
) ENGINE=InnoDB AUTO_INCREMENT=2113 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblemailtemplates: ~1.862 rows (aproximadamente)
/*!40000 ALTER TABLE `tblemailtemplates` DISABLE KEYS */;
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES
	(1, 'client', 'new-client-created', 'english', 'New Contact Added/Registered (Welcome Email)', 'Welcome aboard', 'Dear {contact_firstname} {contact_lastname}<br /><br />Thank you for registering on the <strong>{companyname}</strong> CRM System.<br /><br />We just wanted to say welcome.<br /><br />Please contact us if you need any help.<br /><br />Click here to view your profile: <a href="{crm_url}">{crm_url}</a><br /><br />Kind Regards, <br />{email_signature}<br /><br />(This is an automated email, so please don\'t reply to this email address)', '{companyname} | CRM', '', 0, 1, 0),
	(2, 'invoice', 'invoice-send-to-client', 'english', 'Send Invoice to Customer', 'Invoice with number {invoice_number} created', '<span style="font-size: 12pt;">Dear {contact_firstname} {contact_lastname}</span><br /><br /><span style="font-size: 12pt;">We have prepared the following invoice for you: <strong># {invoice_number}</strong></span><br /><br /><span style="font-size: 12pt;"><strong>Invoice status</strong>: {invoice_status}</span><br /><br /><span style="font-size: 12pt;">You can view the invoice on the following link: <a href="{invoice_link}">{invoice_number}</a></span><br /><br /><span style="font-size: 12pt;">Please contact us for more information.</span><br /><br /><span style="font-size: 12pt;">Kind Regards,</span><br /><span style="font-size: 12pt;">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
	(3, 'ticket', 'new-ticket-opened-admin', 'english', 'New Ticket Opened (Opened by Staff, Sent to Customer)', 'New Support Ticket Opened', '<span style="font-size: 12pt;">Hi {contact_firstname} {contact_lastname}</span><br /><br /><span style="font-size: 12pt;">New support ticket has been opened.</span><br /><br /><span style="font-size: 12pt;"><strong>Subject:</strong> {ticket_subject}</span><br /><span style="font-size: 12pt;"><strong>Department:</strong> {ticket_department}</span><br /><span style="font-size: 12pt;"><strong>Priority:</strong> {ticket_priority}<br /></span><br /><span style="font-size: 12pt;"><strong>Ticket message:</strong></span><br /><span style="font-size: 12pt;">{ticket_message}</span><br /><br /><span style="font-size: 12pt;">You can view the ticket on the following link: <a href="{ticket_public_url}">#{ticket_id}</a><br /><br />Kind Regards,</span><br /><span style="font-size: 12pt;">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
	(4, 'ticket', 'ticket-reply', 'english', 'Ticket Reply (Sent to Customer)', 'New Ticket Reply', '<span style="font-size: 12pt;">Hi {contact_firstname} {contact_lastname}</span><br /><br /><span style="font-size: 12pt;">You have a new ticket reply to ticket <a href="{ticket_public_url}">#{ticket_id}</a></span><br /><br /><span style="font-size: 12pt;"><strong>Ticket Subject:</strong> {ticket_subject}<br /></span><br /><span style="font-size: 12pt;"><strong>Ticket message:</strong></span><br /><span style="font-size: 12pt;">{ticket_message}</span><br /><br /><span style="font-size: 12pt;">You can view the ticket on the following link: <a href="{ticket_public_url}">#{ticket_id}</a></span><br /><br /><span style="font-size: 12pt;">Kind Regards,</span><br /><span style="font-size: 12pt;">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
	(5, 'ticket', 'ticket-autoresponse', 'english', 'New Ticket Opened - Autoresponse', 'New Support Ticket Opened', '<span style="font-size: 12pt;">Hi {contact_firstname} {contact_lastname}</span><br /><br /><span style="font-size: 12pt;">Thank you for contacting our support team. A support ticket has now been opened for your request. You will be notified when a response is made by email.</span><br /><br /><span style="font-size: 12pt;"><strong>Subject:</strong> {ticket_subject}</span><br /><span style="font-size: 12pt;"><strong>Department</strong>: {ticket_department}</span><br /><span style="font-size: 12pt;"><strong>Priority:</strong> {ticket_priority}</span><br /><br /><span style="font-size: 12pt;"><strong>Ticket message:</strong></span><br /><span style="font-size: 12pt;">{ticket_message}</span><br /><br /><span style="font-size: 12pt;">You can view the ticket on the following link: <a href="{ticket_public_url}">#{ticket_id}</a></span><br /><br /><span style="font-size: 12pt;">Kind Regards,</span><br /><span style="font-size: 12pt;">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
	(6, 'invoice', 'invoice-payment-recorded', 'english', 'Invoice Payment Recorded (Sent to Customer)', 'Invoice Payment Recorded', '<span style="font-size: 12pt;">Hello {contact_firstname}&nbsp;{contact_lastname}<br /><br /></span>Thank you for the payment. Find the payment details below:<br /><br />-------------------------------------------------<br /><br />Amount:&nbsp;<strong>{payment_total}<br /></strong>Date:&nbsp;<strong>{payment_date}</strong><br />Invoice number:&nbsp;<span style="font-size: 12pt;"><strong># {invoice_number}<br /><br /></strong></span>-------------------------------------------------<br /><br />You can always view the invoice for this payment at the following link:&nbsp;<a href="{invoice_link}"><span style="font-size: 12pt;">{invoice_number}</span></a><br /><br />We are looking forward working with you.<br /><br /><span style="font-size: 12pt;">Kind Regards,</span><br /><span style="font-size: 12pt;">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
	(7, 'invoice', 'invoice-overdue-notice', 'english', 'Invoice Overdue Notice', 'Invoice Overdue Notice - {invoice_number}', '<span style="font-size: 12pt;">Hi {contact_firstname} {contact_lastname}</span><br /><br /><span style="font-size: 12pt;">This is an overdue notice for invoice <strong># {invoice_number}</strong></span><br /><br /><span style="font-size: 12pt;">This invoice was due: {invoice_duedate}</span><br /><br /><span style="font-size: 12pt;">You can view the invoice on the following link: <a href="{invoice_link}">{invoice_number}</a></span><br /><br /><span style="font-size: 12pt;">Kind Regards,</span><br /><span style="font-size: 12pt;">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
	(8, 'invoice', 'invoice-already-send', 'english', 'Invoice Already Sent to Customer', 'Invoice # {invoice_number} ', '<span style="font-size: 12pt;">Hi {contact_firstname} {contact_lastname}</span><br /><br /><span style="font-size: 12pt;">At your request, here is the invoice with number <strong># {invoice_number}</strong></span><br /><br /><span style="font-size: 12pt;">You can view the invoice on the following link: <a href="{invoice_link}">{invoice_number}</a></span><br /><br /><span style="font-size: 12pt;">Please contact us for more information.</span><br /><br /><span style="font-size: 12pt;">Kind Regards,</span><br /><span style="font-size: 12pt;">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
	(9, 'ticket', 'new-ticket-created-staff', 'english', 'New Ticket Created (Opened by Customer, Sent to Staff Members)', 'New Ticket Created', '<span style="font-size: 12pt;">A new support ticket has been opened.</span><br /><br /><span style="font-size: 12pt;"><strong>Subject</strong>: {ticket_subject}</span><br /><span style="font-size: 12pt;"><strong>Department</strong>: {ticket_department}</span><br /><span style="font-size: 12pt;"><strong>Priority</strong>: {ticket_priority}<br /></span><br /><span style="font-size: 12pt;"><strong>Ticket message:</strong></span><br /><span style="font-size: 12pt;">{ticket_message}</span><br /><br /><span style="font-size: 12pt;">You can view the ticket on the following link: <a href="{ticket_url}" rel="noreferrer">#{ticket_id}</a></span><br /><span style="font-size: 12pt;">Kind Regards,</span><br /><span style="font-size: 12pt;">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
	(10, 'estimate', 'estimate-send-to-client', 'english', 'Send Estimate to Customer', 'Estimate # {estimate_number} created', '<span style="font-size: 12pt;">Dear {contact_firstname} {contact_lastname}</span><br /><br /><span style="font-size: 12pt;">Please find the attached estimate <strong># {estimate_number}</strong></span><br /><br /><span style="font-size: 12pt;"><strong>Estimate status:</strong> {estimate_status}</span><br /><br /><span style="font-size: 12pt;">You can view the estimate on the following link: <a href="{estimate_link}">{estimate_number}</a></span><br /><br /><span style="font-size: 12pt;">We look forward to your communication.</span><br /><br /><span style="font-size: 12pt;">Kind Regards,</span><br /><span style="font-size: 12pt;">{email_signature}<br /></span>', '{companyname} | CRM', '', 0, 1, 0),
	(11, 'ticket', 'ticket-reply-to-admin', 'english', 'Ticket Reply (Sent to Staff)', 'New Support Ticket Reply', '<span style="font-size: 12pt;">A new support ticket reply from {contact_firstname} {contact_lastname}</span><br /><br /><span style="font-size: 12pt;"><strong>Subject</strong>: {ticket_subject}</span><br /><span style="font-size: 12pt;"><strong>Department</strong>: {ticket_department}</span><br /><span style="font-size: 12pt;"><strong>Priority</strong>: {ticket_priority}</span><br /><br /><span style="font-size: 12pt;"><strong>Ticket message:</strong></span><br /><span style="font-size: 12pt;">{ticket_message}</span><br /><br /><span style="font-size: 12pt;">You can view the ticket on the following link: <a href="{ticket_url}">#{ticket_id}</a></span><br /><br /><span style="font-size: 12pt;">Kind Regards,</span><br /><span style="font-size: 12pt;">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
	(12, 'estimate', 'estimate-already-send', 'english', 'Estimate Already Sent to Customer', 'Estimate # {estimate_number} ', '<span style="font-size: 12pt;">Dear {contact_firstname} {contact_lastname}</span><br /> <br /><span style="font-size: 12pt;">Thank you for your estimate request.</span><br /> <br /><span style="font-size: 12pt;">You can view the estimate on the following link: <a href="{estimate_link}">{estimate_number}</a></span><br /> <br /><span style="font-size: 12pt;">Please contact us for more information.</span><br /> <br /><span style="font-size: 12pt;">Kind Regards,</span><br /><span style="font-size: 12pt;">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
	(13, 'contract', 'contract-expiration', 'english', 'Contract Expiration Reminder (Sent to Customer Contacts)', 'Contract Expiration Reminder', '<span style="font-size: 12pt;">Dear {client_company}</span><br /><br /><span style="font-size: 12pt;">This is a reminder that the following contract will expire soon:</span><br /><br /><span style="font-size: 12pt;"><strong>Subject:</strong> {contract_subject}</span><br /><span style="font-size: 12pt;"><strong>Description:</strong> {contract_description}</span><br /><span style="font-size: 12pt;"><strong>Date Start:</strong> {contract_datestart}</span><br /><span style="font-size: 12pt;"><strong>Date End:</strong> {contract_dateend}</span><br /><br /><span style="font-size: 12pt;">Please contact us for more information.</span><br /><br /><span style="font-size: 12pt;">Kind Regards,</span><br /><span style="font-size: 12pt;">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
	(14, 'tasks', 'task-assigned', 'english', 'New Task Assigned (Sent to Staff)', 'New Task Assigned to You - {task_name}', '<span style="font-size: 12pt;">Dear {staff_firstname}</span><br /><br /><span style="font-size: 12pt;">You have been assigned to a new task:</span><br /><br /><span style="font-size: 12pt;"><strong>Name:</strong> {task_name}<br /></span><strong>Start Date:</strong> {task_startdate}<br /><span style="font-size: 12pt;"><strong>Due date:</strong> {task_duedate}</span><br /><span style="font-size: 12pt;"><strong>Priority:</strong> {task_priority}<br /><br /></span><span style="font-size: 12pt;"><span>You can view the task on the following link</span>: <a href="{task_link}">{task_name}</a></span><br /><br /><span style="font-size: 12pt;">Kind Regards,</span><br /><span style="font-size: 12pt;">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
	(15, 'tasks', 'task-added-as-follower', 'english', 'Staff Member Added as Follower on Task (Sent to Staff)', 'You are added as follower on task - {task_name}', '<span style="font-size: 12pt;">Hi {staff_firstname}<br /></span><br /><span style="font-size: 12pt;">You have been added as follower on the following task:</span><br /><br /><span style="font-size: 12pt;"><strong>Name:</strong> {task_name}</span><br /><span style="font-size: 12pt;"><strong>Start date:</strong> {task_startdate}</span><br /><br /><span>You can view the task on the following link</span><span>: </span><a href="{task_link}">{task_name}</a><br /><br /><span style="font-size: 12pt;">Kind Regards,</span><br /><span style="font-size: 12pt;">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
	(16, 'tasks', 'task-commented', 'english', 'New Comment on Task (Sent to Staff)', 'New Comment on Task - {task_name}', 'Dear {staff_firstname}<br /><br />A comment has been made on the following task:<br /><br /><strong>Name:</strong> {task_name}<br /><strong>Comment:</strong> {task_comment}<br /><br />You can view the task on the following link: <a href="{task_link}">{task_name}</a><br /><br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
	(17, 'tasks', 'task-added-attachment', 'english', 'New Attachment(s) on Task (Sent to Staff)', 'New Attachment on Task - {task_name}', 'Hi {staff_firstname}<br /><br /><strong>{task_user_take_action}</strong> added an attachment on the following task:<br /><br /><strong>Name:</strong> {task_name}<br /><br />You can view the task on the following link: <a href="{task_link}">{task_name}</a><br /><br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
	(18, 'estimate', 'estimate-declined-to-staff', 'english', 'Estimate Declined (Sent to Staff)', 'Customer Declined Estimate', '<span style="font-size: 12pt;">Hi</span><br /> <br /><span style="font-size: 12pt;">Customer ({client_company}) declined estimate with number <strong># {estimate_number}</strong></span><br /> <br /><span style="font-size: 12pt;">You can view the estimate on the following link: <a href="{estimate_link}">{estimate_number}</a></span><br /> <br /><span style="font-size: 12pt;">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
	(19, 'estimate', 'estimate-accepted-to-staff', 'english', 'Estimate Accepted (Sent to Staff)', 'Customer Accepted Estimate', '<span style="font-size: 12pt;">Hi</span><br /> <br /><span style="font-size: 12pt;">Customer ({client_company}) accepted estimate with number <strong># {estimate_number}</strong></span><br /> <br /><span style="font-size: 12pt;">You can view the estimate on the following link: <a href="{estimate_link}">{estimate_number}</a></span><br /> <br /><span style="font-size: 12pt;">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
	(20, 'proposals', 'proposal-client-accepted', 'english', 'Customer Action - Accepted (Sent to Staff)', 'Customer Accepted Proposal', '<div>Hi<br /> <br />Client <strong>{proposal_proposal_to}</strong> accepted the following proposal:<br /> <br /><strong>Number:</strong> {proposal_number}<br /><strong>Subject</strong>: {proposal_subject}<br /><strong>Total</strong>: {proposal_total}<br /> <br />View the proposal on the following link: <a href="{proposal_link}">{proposal_number}</a><br /> <br />Kind Regards,<br />{email_signature}</div>\r\n<div>&nbsp;</div>\r\n<div>&nbsp;</div>\r\n<div>&nbsp;</div>', '{companyname} | CRM', '', 0, 1, 0),
	(21, 'proposals', 'proposal-send-to-customer', 'english', 'Send Proposal to Customer', 'Proposal With Number {proposal_number} Created', 'Dear {proposal_proposal_to}<br /><br />Please find our attached proposal.<br /><br />This proposal is valid until: {proposal_open_till}<br />You can view the proposal on the following link: <a href="{proposal_link}">{proposal_number}</a><br /><br />Please don\'t hesitate to comment online if you have any questions.<br /><br />We look forward to your communication.<br /><br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
	(22, 'proposals', 'proposal-client-declined', 'english', 'Customer Action - Declined (Sent to Staff)', 'Client Declined Proposal', 'Hi<br /> <br />Customer <strong>{proposal_proposal_to}</strong> declined the proposal <strong>{proposal_subject}</strong><br /> <br />View the proposal on the following link <a href="{proposal_link}">{proposal_number}</a>&nbsp;or from the admin area.<br /> <br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
	(23, 'proposals', 'proposal-client-thank-you', 'english', 'Thank You Email (Sent to Customer After Accept)', 'Thank for you accepting proposal', 'Dear {proposal_proposal_to}<br /> <br />Thank for for accepting the proposal.<br /> <br />We look forward to doing business with you.<br /> <br />We will contact you as soon as possible<br /> <br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
	(24, 'proposals', 'proposal-comment-to-client', 'english', 'New Comment Â (Sent to Customer/Lead)', 'New Proposal Comment', 'Dear {proposal_proposal_to}<br /> <br />A new comment has been made on the following proposal: <strong>{proposal_number}</strong><br /> <br />You can view and reply to the comment on the following link: <a href="{proposal_link}">{proposal_number}</a><br /> <br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
	(25, 'proposals', 'proposal-comment-to-admin', 'english', 'New Comment (Sent to Staff) ', 'New Proposal Comment', 'Hi<br /> <br />A new comment has been made to the proposal <strong>{proposal_subject}</strong><br /> <br />You can view and reply to the comment on the following link: <a href="{proposal_link}">{proposal_number}</a>&nbsp;or from the admin area.<br /> <br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
	(26, 'estimate', 'estimate-thank-you-to-customer', 'english', 'Thank You Email (Sent to Customer After Accept)', 'Thank for you accepting estimate', '<span style="font-size: 12pt;">Dear {contact_firstname} {contact_lastname}</span><br /> <br /><span style="font-size: 12pt;">Thank for for accepting the estimate.</span><br /> <br /><span style="font-size: 12pt;">We look forward to doing business with you.</span><br /> <br /><span style="font-size: 12pt;">We will contact you as soon as possible.</span><br /> <br /><span style="font-size: 12pt;">Kind Regards,</span><br /><span style="font-size: 12pt;">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
	(27, 'tasks', 'task-deadline-notification', 'english', 'Task Deadline Reminder - Sent to Assigned Members', 'Task Deadline Reminder', 'Hi {staff_firstname}&nbsp;{staff_lastname}<br /><br />This is an automated email from {companyname}.<br /><br />The task <strong>{task_name}</strong> deadline is on <strong>{task_duedate}</strong>. <br />This task is still not finished.<br /><br />You can view the task on the following link: <a href="{task_link}">{task_name}</a><br /><br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
	(28, 'contract', 'send-contract', 'english', 'Send Contract to Customer', 'Contract - {contract_subject}', '<p><span style="font-size: 12pt;">Hi&nbsp;{contact_firstname}&nbsp;{contact_lastname}</span><br /><br /><span style="font-size: 12pt;">Please find the <a href="{contract_link}">{contract_subject}</a> attached.<br /><br />Description: {contract_description}<br /><br /></span><span style="font-size: 12pt;">Looking forward to hear from you.</span><br /><br /><span style="font-size: 12pt;">Kind Regards,</span><br /><span style="font-size: 12pt;">{email_signature}</span></p>', '{companyname} | CRM', '', 0, 1, 0),
	(29, 'invoice', 'invoice-payment-recorded-to-staff', 'english', 'Invoice Payment Recorded (Sent to Staff)', 'New Invoice Payment', '<span style="font-size: 12pt;">Hi</span><br /><br /><span style="font-size: 12pt;">Customer recorded payment for invoice <strong># {invoice_number}</strong></span><br /> <br /><span style="font-size: 12pt;">You can view the invoice on the following link: <a href="{invoice_link}">{invoice_number}</a></span><br /> <br /><span style="font-size: 12pt;">Kind Regards,</span><br /><span style="font-size: 12pt;">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
	(30, 'ticket', 'auto-close-ticket', 'english', 'Auto Close Ticket', 'Ticket Auto Closed', '<p><span style="font-size: 12pt;">Hi {contact_firstname} {contact_lastname}</span><br /><br /><span style="font-size: 12pt;">Ticket {ticket_subject} has been auto close due to inactivity.</span><br /><br /><span style="font-size: 12pt;"><strong>Ticket #</strong>: <a href="{ticket_public_url}">{ticket_id}</a></span><br /><span style="font-size: 12pt;"><strong>Department</strong>: {ticket_department}</span><br /><span style="font-size: 12pt;"><strong>Priority:</strong> {ticket_priority}</span><br /><br /><span style="font-size: 12pt;">Kind Regards,</span><br /><span style="font-size: 12pt;">{email_signature}</span></p>', '{companyname} | CRM', '', 0, 1, 0),
	(31, 'project', 'new-project-discussion-created-to-staff', 'english', 'New Project Discussion (Sent to Project Members)', 'New Project Discussion Created - {project_name}', '<p>Hi {staff_firstname}<br /><br />New project discussion created from <strong>{discussion_creator}</strong><br /><br /><strong>Subject:</strong> {discussion_subject}<br /><strong>Description:</strong> {discussion_description}<br /><br />You can view the discussion on the following link: <a href="{discussion_link}">{discussion_subject}</a><br /><br />Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
	(32, 'project', 'new-project-discussion-created-to-customer', 'english', 'New Project Discussion (Sent to Customer Contacts)', 'New Project Discussion Created - {project_name}', '<p>Hello {contact_firstname} {contact_lastname}<br /><br />New project discussion created from <strong>{discussion_creator}</strong><br /><br /><strong>Subject:</strong> {discussion_subject}<br /><strong>Description:</strong> {discussion_description}<br /><br />You can view the discussion on the following link: <a href="{discussion_link}">{discussion_subject}</a><br /><br />Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
	(33, 'project', 'new-project-file-uploaded-to-customer', 'english', 'New Project File(s) Uploaded (Sent to Customer Contacts)', 'New Project File(s) Uploaded - {project_name}', '<p>Hello {contact_firstname} {contact_lastname}<br /><br />New project file is uploaded on <strong>{project_name}</strong> from <strong>{file_creator}</strong><br /><br />You can view the project on the following link: <a href="{project_link}">{project_name}</a><br /><br />To view the file in our CRM you can click on the following link: <a href="{discussion_link}">{discussion_subject}</a><br /><br />Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
	(34, 'project', 'new-project-file-uploaded-to-staff', 'english', 'New Project File(s) Uploaded (Sent to Project Members)', 'New Project File(s) Uploaded - {project_name}', '<p>Hello&nbsp;{staff_firstname}</p>\r\n<p>New project&nbsp;file is uploaded on&nbsp;<strong>{project_name}</strong> from&nbsp;<strong>{file_creator}</strong></p>\r\n<p>You can view the project on the following link: <a href="{project_link}">{project_name}<br /></a><br />To view&nbsp;the file you can click on the following link: <a href="{discussion_link}">{discussion_subject}</a></p>\r\n<p>Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
	(35, 'project', 'new-project-discussion-comment-to-customer', 'english', 'New Discussion Comment  (Sent to Customer Contacts)', 'New Discussion Comment', '<p><span style="font-size: 12pt;">Hello {contact_firstname} {contact_lastname}</span><br /><br /><span style="font-size: 12pt;">New discussion comment has been made on <strong>{discussion_subject}</strong> from <strong>{comment_creator}</strong></span><br /><br /><span style="font-size: 12pt;"><strong>Discussion subject:</strong> {discussion_subject}</span><br /><span style="font-size: 12pt;"><strong>Comment</strong>: {discussion_comment}</span><br /><br /><span style="font-size: 12pt;">You can view the discussion on the following link: <a href="{discussion_link}">{discussion_subject}</a></span><br /><br /><span style="font-size: 12pt;">Kind Regards,</span><br /><span style="font-size: 12pt;">{email_signature}</span></p>', '{companyname} | CRM', '', 0, 1, 0),
	(36, 'project', 'new-project-discussion-comment-to-staff', 'english', 'New Discussion Comment (Sent to Project Members)', 'New Discussion Comment', '<p>Hi {staff_firstname}<br /><br />New discussion comment has been made on <strong>{discussion_subject}</strong> from <strong>{comment_creator}</strong><br /><br /><strong>Discussion subject:</strong> {discussion_subject}<br /><strong>Comment:</strong> {discussion_comment}<br /><br />You can view the discussion on the following link: <a href="{discussion_link}">{discussion_subject}</a><br /><br />Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
	(37, 'project', 'staff-added-as-project-member', 'english', 'Staff Added as Project Member', 'New project assigned to you', '<p>Hi {staff_firstname}<br /><br />New project has been assigned to you.<br /><br />You can view the project on the following link <a href="{project_link}">{project_name}</a><br /><br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
	(38, 'estimate', 'estimate-expiry-reminder', 'english', 'Estimate Expiration Reminder', 'Estimate Expiration Reminder', '<p><span style="font-size: 12pt;">Hello {contact_firstname} {contact_lastname}</span><br /><br /><span style="font-size: 12pt;">The estimate with <strong># {estimate_number}</strong> will expire on <strong>{estimate_expirydate}</strong></span><br /><br /><span style="font-size: 12pt;">You can view the estimate on the following link: <a href="{estimate_link}">{estimate_number}</a></span><br /><br /><span style="font-size: 12pt;">Kind Regards,</span><br /><span style="font-size: 12pt;">{email_signature}</span></p>', '{companyname} | CRM', '', 0, 1, 0),
	(39, 'proposals', 'proposal-expiry-reminder', 'english', 'Proposal Expiration Reminder', 'Proposal Expiration Reminder', '<p>Hello {proposal_proposal_to}<br /><br />The proposal {proposal_number}&nbsp;will expire on <strong>{proposal_open_till}</strong><br /><br />You can view the proposal on the following link: <a href="{proposal_link}">{proposal_number}</a><br /><br />Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
	(40, 'staff', 'new-staff-created', 'english', 'New Staff Created (Welcome Email)', 'You are added as staff member', 'Hi {staff_firstname}<br /><br />You are added as member on our CRM.<br /><br />Please use the following logic credentials:<br /><br /><strong>Email:</strong> {staff_email}<br /><strong>Password:</strong> {password}<br /><br />Click <a href="{admin_url}">here </a>to login in the dashboard.<br /><br />Best Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
	(41, 'client', 'contact-forgot-password', 'english', 'Forgot Password', 'Create New Password', '<h2>Create a new password</h2>\r\nForgot your password?<br /> To create a new password, just follow this link:<br /> <br /><a href="{reset_password_url}">Reset Password</a><br /> <br /> You received this email, because it was requested by a {companyname}&nbsp;user. This is part of the procedure to create a new password on the system. If you DID NOT request a new password then please ignore this email and your password will remain the same. <br /><br /> {email_signature}', '{companyname} | CRM', '', 0, 1, 0),
	(42, 'client', 'contact-password-reseted', 'english', 'Password Reset - Confirmation', 'Your password has been changed', '<strong><span style="font-size: 14pt;">You have changed your password.</span><br /></strong><br /> Please, keep it in your records so you don\'t forget it.<br /> <br /> Your email address for login is: {contact_email}<br /><br />If this wasnt you, please contact us.<br /><br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
	(43, 'client', 'contact-set-password', 'english', 'Set New Password', 'Set new password on {companyname} ', '<h2><span style="font-size: 14pt;">Setup your new password on {companyname}</span></h2>\r\nPlease use the following link to set up your new password:<br /><br /><a href="{set_password_url}">Set new password</a><br /><br />Keep it in your records so you don\'t forget it.<br /><br />Please set your new password in <strong>48 hours</strong>. After that, you won\'t be able to set your password because this link will expire.<br /><br />You can login at: <a href="{crm_url}">{crm_url}</a><br />Your email address for login: {contact_email}<br /><br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
	(44, 'staff', 'staff-forgot-password', 'english', 'Forgot Password', 'Create New Password', '<h2><span style="font-size: 14pt;">Create a new password</span></h2>\r\nForgot your password?<br /> To create a new password, just follow this link:<br /> <br /><a href="{reset_password_url}">Reset Password</a><br /> <br /> You received this email, because it was requested by a <strong>{companyname}</strong>&nbsp;user. This is part of the procedure to create a new password on the system. If you DID NOT request a new password then please ignore this email and your password will remain the same. <br /><br /> {email_signature}', '{companyname} | CRM', '', 0, 1, 0),
	(45, 'staff', 'staff-password-reseted', 'english', 'Password Reset - Confirmation', 'Your password has been changed', '<span style="font-size: 14pt;"><strong>You have changed your password.<br /></strong></span><br /> Please, keep it in your records so you don\'t forget it.<br /> <br /> Your email address for login is: {staff_email}<br /><br /> If this wasnt you, please contact us.<br /><br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
	(46, 'project', 'assigned-to-project', 'english', 'New Project Created (Sent to Customer Contacts)', 'New Project Created', '<p>Hello&nbsp;{contact_firstname}&nbsp;{contact_lastname}</p>\r\n<p>New project is assigned to your company.<br /><br /><strong>Project Name:</strong>&nbsp;{project_name}<br /><strong>Project Start Date:</strong>&nbsp;{project_start_date}</p>\r\n<p>You can view the project on the following link:&nbsp;<a href="{project_link}">{project_name}</a></p>\r\n<p>We are looking forward hearing from you.<br /><br />Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
	(47, 'tasks', 'task-added-attachment-to-contacts', 'english', 'New Attachment(s) on Task (Sent to Customer Contacts)', 'New Attachment on Task - {task_name}', '<span>Hi {contact_firstname} {contact_lastname}</span><br /><br /><strong>{task_user_take_action}</strong><span> added an attachment on the following task:</span><br /><br /><strong>Name:</strong><span> {task_name}</span><br /><br /><span>You can view the task on the following link: </span><a href="{task_link}">{task_name}</a><br /><br /><span>Kind Regards,</span><br /><span>{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
	(48, 'tasks', 'task-commented-to-contacts', 'english', 'New Comment on Task (Sent to Customer Contacts)', 'New Comment on Task - {task_name}', '<span>Dear {contact_firstname} {contact_lastname}</span><br /><br /><span>A comment has been made on the following task:</span><br /><br /><strong>Name:</strong><span> {task_name}</span><br /><strong>Comment:</strong><span> {task_comment}</span><br /><br /><span>You can view the task on the following link: </span><a href="{task_link}">{task_name}</a><br /><br /><span>Kind Regards,</span><br /><span>{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
	(49, 'leads', 'new-lead-assigned', 'english', 'New Lead Assigned to Staff Member', 'New lead assigned to you', '<p>Hello {lead_assigned}<br /><br />New lead is assigned to you.<br /><br /><strong>Lead Name:</strong>&nbsp;{lead_name}<br /><strong>Lead Email:</strong>&nbsp;{lead_email}<br /><br />You can view the lead on the following link: <a href="{lead_link}">{lead_name}</a><br /><br />Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
	(50, 'client', 'client-statement', 'english', 'Statement - Account Summary', 'Account Statement from {statement_from} to {statement_to}', 'Dear {contact_firstname} {contact_lastname}, <br /><br />Its been a great experience working with you.<br /><br />Attached with this email is a list of all transactions for the period between {statement_from} to {statement_to}<br /><br />For your information your account balance due is total:&nbsp;{statement_balance_due}<br /><br />Please contact us if you need more information.<br /> <br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
	(51, 'ticket', 'ticket-assigned-to-admin', 'english', 'New Ticket Assigned (Sent to Staff)', 'New support ticket has been assigned to you', '<p><span style="font-size: 12pt;">Hi</span></p>\r\n<p><span style="font-size: 12pt;">A new support ticket&nbsp;has been assigned to you.</span><br /><br /><span style="font-size: 12pt;"><strong>Subject</strong>: {ticket_subject}</span><br /><span style="font-size: 12pt;"><strong>Department</strong>: {ticket_department}</span><br /><span style="font-size: 12pt;"><strong>Priority</strong>: {ticket_priority}</span><br /><br /><span style="font-size: 12pt;"><strong>Ticket message:</strong></span><br /><span style="font-size: 12pt;">{ticket_message}</span><br /><br /><span style="font-size: 12pt;">You can view the ticket on the following link: <a href="{ticket_url}">#{ticket_id}</a></span><br /><br /><span style="font-size: 12pt;">Kind Regards,</span><br /><span style="font-size: 12pt;">{email_signature}</span></p>', '{companyname} | CRM', '', 0, 1, 0),
	(52, 'client', 'new-client-registered-to-admin', 'english', 'New Customer Registration (Sent to admins)', 'New Customer Registration', 'Hello.<br /><br />New customer registration on your customer portal:<br /><br /><strong>Firstname:</strong>&nbsp;{contact_firstname}<br /><strong>Lastname:</strong>&nbsp;{contact_lastname}<br /><strong>Company:</strong>&nbsp;{client_company}<br /><strong>Email:</strong>&nbsp;{contact_email}<br /><br />Best Regards', '{companyname} | CRM', '', 0, 1, 0),
	(53, 'leads', 'new-web-to-lead-form-submitted', 'english', 'Web to lead form submitted - Sent to lead', '{lead_name} - We Received Your Request', 'Hello {lead_name}.<br /><br /><strong>Your request has been received.</strong><br /><br />This email is to let you know that we received your request and we will get back to you as soon as possible with more information.<br /><br />Best Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 0, 0),
	(54, 'staff', 'two-factor-authentication', 'english', 'Two Factor Authentication', 'Confirm Your Login', '<p>Hi {staff_firstname}</p>\r\n<p style="text-align: left;">You received this email because you have enabled two factor authentication in your account.<br />Use the following code to confirm your login:</p>\r\n<p style="text-align: left;"><span style="font-size: 18pt;"><strong>{two_factor_auth_code}<br /><br /></strong><span style="font-size: 12pt;">{email_signature}</span><strong><br /><br /><br /><br /></strong></span></p>', '{companyname} | CRM', '', 0, 1, 0),
	(55, 'project', 'project-finished-to-customer', 'english', 'Project Marked as Finished (Sent to Customer Contacts)', 'Project Marked as Finished', '<p>Hello&nbsp;{contact_firstname}&nbsp;{contact_lastname}</p>\r\n<p>You are receiving this email because project&nbsp;<strong>{project_name}</strong> has been marked as finished. This project is assigned under your company and we just wanted to keep you up to date.<br /><br />You can view the project on the following link:&nbsp;<a href="{project_link}">{project_name}</a></p>\r\n<p>If you have any questions don\'t hesitate to contact us.<br /><br />Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
	(56, 'credit_note', 'credit-note-send-to-client', 'english', 'Send Credit Note To Email', 'Credit Note With Number #{credit_note_number} Created', 'Dear&nbsp;{contact_firstname}&nbsp;{contact_lastname}<br /><br />We have attached the credit note with number <strong>#{credit_note_number} </strong>for your reference.<br /><br /><strong>Date:</strong>&nbsp;{credit_note_date}<br /><strong>Total Amount:</strong>&nbsp;{credit_note_total}<br /><br /><span style="font-size: 12pt;">Please contact us for more information.</span><br /> <br /><span style="font-size: 12pt;">Kind Regards,</span><br /><span style="font-size: 12pt;">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
	(57, 'tasks', 'task-status-change-to-staff', 'english', 'Task Status Changed (Sent to Staff)', 'Task Status Changed', '<span style="font-size: 12pt;">Hi {staff_firstname}</span><br /><br /><span style="font-size: 12pt;"><strong>{task_user_take_action}</strong> marked task as <strong>{task_status}</strong></span><br /><br /><span style="font-size: 12pt;"><strong>Name:</strong> {task_name}</span><br /><span style="font-size: 12pt;"><strong>Due date:</strong> {task_duedate}</span><br /><br /><span style="font-size: 12pt;">You can view the task on the following link: <a href="{task_link}">{task_name}</a></span><br /><br /><span style="font-size: 12pt;">Kind Regards,</span><br /><span style="font-size: 12pt;">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
	(58, 'tasks', 'task-status-change-to-contacts', 'english', 'Task Status Changed (Sent to Customer Contacts)', 'Task Status Changed', '<span style="font-size: 12pt;">Hi {contact_firstname} {contact_lastname}</span><br /><br /><span style="font-size: 12pt;"><strong>{task_user_take_action}</strong> marked task as <strong>{task_status}</strong></span><br /><br /><span style="font-size: 12pt;"><strong>Name:</strong> {task_name}</span><br /><span style="font-size: 12pt;"><strong>Due date:</strong> {task_duedate}</span><br /><br /><span style="font-size: 12pt;">You can view the task on the following link: <a href="{task_link}">{task_name}</a></span><br /><br /><span style="font-size: 12pt;">Kind Regards,</span><br /><span style="font-size: 12pt;">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
	(59, 'staff', 'reminder-email-staff', 'english', 'Staff Reminder Email', 'You Have a New Reminder!', '<p>Hello&nbsp;{staff_firstname}<br /><br /><strong>You have a new reminder&nbsp;linked to&nbsp;{staff_reminder_relation_name}!<br /><br />Reminder description:</strong><br />{staff_reminder_description}<br /><br />Click <a href="{staff_reminder_relation_link}">here</a> to view&nbsp;<a href="{staff_reminder_relation_link}">{staff_reminder_relation_name}</a><br /><br />Best Regards<br /><br /></p>', '{companyname} | CRM', '', 0, 1, 0),
	(60, 'contract', 'contract-comment-to-client', 'english', 'New Comment Â (Sent to Customer Contacts)', 'New Contract Comment', 'Dear {contact_firstname} {contact_lastname}<br /> <br />A new comment has been made on the following contract: <strong>{contract_subject}</strong><br /> <br />You can view and reply to the comment on the following link: <a href="{contract_link}">{contract_subject}</a><br /> <br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
	(61, 'contract', 'contract-comment-to-admin', 'english', 'New Comment (Sent to Staff) ', 'New Contract Comment', 'Hi {staff_firstname}<br /><br />A new comment has been made to the contract&nbsp;<strong>{contract_subject}</strong><br /><br />You can view and reply to the comment on the following link: <a href="{contract_link}">{contract_subject}</a>&nbsp;or from the admin area.<br /><br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
	(62, 'subscriptions', 'send-subscription', 'english', 'Send Subscription to Customer', 'Subscription Created', 'Hello&nbsp;{contact_firstname}&nbsp;{contact_lastname}<br /><br />We have prepared the subscription&nbsp;<strong>{subscription_name}</strong> for your company.<br /><br />Click <a href="{subscription_link}">here</a> to review the subscription and subscribe.<br /><br />Best Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
	(63, 'subscriptions', 'subscription-payment-failed', 'english', 'Subscription Payment Failed', 'Your most recent invoice payment failed', 'Hello&nbsp;{contact_firstname}&nbsp;{contact_lastname}<br /><br br="" />Unfortunately, your most recent invoice payment for&nbsp;<strong>{subscription_name}</strong> was declined.<br /><br />This could be due to a change in your card number, your card expiring,<br />cancellation of your credit card, or the card issuer not recognizing the<br />payment and therefore taking action to prevent it.<br /><br />Please update your payment information as soon as possible by logging in here:<br /><a href="{crm_url}/login">{crm_url}/login</a><br /><br />Best Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
	(64, 'subscriptions', 'subscription-canceled', 'english', 'Subscription Canceled (Sent to customer primary contact)', 'Your subscription has been canceled', 'Hello&nbsp;{contact_firstname}&nbsp;{contact_lastname}<br /><br />Your subscription&nbsp;<strong>{subscription_name} </strong>has been canceled, if you have any questions don\'t hesitate to contact us.<br /><br />It was a pleasure doing business with you.<br /><br />Best Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
	(65, 'subscriptions', 'subscription-payment-succeeded', 'english', 'Subscription Payment Succeeded (Sent to customer primary contact)', 'Subscription  Payment Receipt - {subscription_name}', 'Hello&nbsp;{contact_firstname}&nbsp;{contact_lastname}<br /><br />This email is to let you know that we received your payment for subscription&nbsp;<strong>{subscription_name}&nbsp;</strong>of&nbsp;<strong><span>{payment_total}<br /><br /></span></strong>The invoice associated with it is now with status&nbsp;<strong>{invoice_status}<br /></strong><br />Thank you for your confidence.<br /><br />Best Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
	(66, 'contract', 'contract-expiration-to-staff', 'english', 'Contract Expiration Reminder (Sent to Staff)', 'Contract Expiration Reminder', 'Hi {staff_firstname}<br /><br /><span style="font-size: 12pt;">This is a reminder that the following contract will expire soon:</span><br /><br /><span style="font-size: 12pt;"><strong>Subject:</strong> {contract_subject}</span><br /><span style="font-size: 12pt;"><strong>Description:</strong> {contract_description}</span><br /><span style="font-size: 12pt;"><strong>Date Start:</strong> {contract_datestart}</span><br /><span style="font-size: 12pt;"><strong>Date End:</strong> {contract_dateend}</span><br /><br /><span style="font-size: 12pt;">Kind Regards,</span><br /><span style="font-size: 12pt;">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
	(67, 'gdpr', 'gdpr-removal-request', 'english', 'Removal Request From Contact (Sent to administrators)', 'Data Removal Request Received', 'Hello&nbsp;{staff_firstname}&nbsp;{staff_lastname}<br /><br />Data removal has been requested by&nbsp;{contact_firstname} {contact_lastname}<br /><br />You can review this request and take proper actions directly from the admin area.', '{companyname} | CRM', '', 0, 1, 0),
	(68, 'gdpr', 'gdpr-removal-request-lead', 'english', 'Removal Request From Lead (Sent to administrators)', 'Data Removal Request Received', 'Hello&nbsp;{staff_firstname}&nbsp;{staff_lastname}<br /><br />Data removal has been requested by {lead_name}<br /><br />You can review this request and take proper actions directly from the admin area.<br /><br />To view the lead inside the admin area click here:&nbsp;<a href="{lead_link}">{lead_link}</a>', '{companyname} | CRM', '', 0, 1, 0),
	(69, 'client', 'client-registration-confirmed', 'english', 'Customer Registration Confirmed', 'Your registration is confirmed', '<p>Dear {contact_firstname} {contact_lastname}<br /><br />We just wanted to let you know that your registration at&nbsp;{companyname} is successfully confirmed and your account is now active.<br /><br />You can login at&nbsp;<a href="{crm_url}">{crm_url}</a> with the email and password you provided during registration.<br /><br />Please contact us if you need any help.<br /><br />Kind Regards, <br />{email_signature}</p>\r\n<p><br />(This is an automated email, so please don\'t reply to this email address)</p>', '{companyname} | CRM', '', 0, 1, 0),
	(70, 'contract', 'contract-signed-to-staff', 'english', 'Contract Signed (Sent to Staff)', 'Customer Signed a Contract', 'Hi {staff_firstname}<br /><br />A contract with subject&nbsp;<strong>{contract_subject} </strong>has been successfully signed by the customer.<br /><br />You can view the contract at the following link: <a href="{contract_link}">{contract_subject}</a>&nbsp;or from the admin area.<br /><br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
	(71, 'subscriptions', 'customer-subscribed-to-staff', 'english', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator)', 'Customer Subscribed to a Subscription', 'The customer <strong>{client_company}</strong> subscribed to a subscription with name&nbsp;<strong>{subscription_name}</strong><br /><br /><strong>ID</strong>:&nbsp;{subscription_id}<br /><strong>Subscription name</strong>:&nbsp;{subscription_name}<br /><strong>Subscription description</strong>:&nbsp;{subscription_description}<br /><br />You can view the subscription by clicking <a href="{subscription_link}">here</a><br />\r\n<div style="text-align: center;"><span style="font-size: 10pt;">&nbsp;</span></div>\r\nBest Regards,<br />{email_signature}<br /><br /><span style="font-size: 10pt;"><span style="color: #999999;">You are receiving this email because you are either administrator or you are creator of the subscription.</span></span>', '{companyname} | CRM', '', 0, 1, 0),
	(72, 'client', 'contact-verification-email', 'english', 'Email Verification (Sent to Contact After Registration)', 'Verify Email Address', '<p>Hello&nbsp;{contact_firstname}<br /><br />Please click the button below to verify your email address.<br /><br /><a href="{email_verification_url}">Verify Email Address</a><br /><br />If you did not create an account, no further action is required</p>\r\n<p><br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
	(73, 'client', 'new-customer-profile-file-uploaded-to-staff', 'english', 'New Customer Profile File(s) Uploaded (Sent to Staff)', 'Customer Uploaded New File(s) in Profile', 'Hi!<br /><br />New file(s) is uploaded into the customer ({client_company}) profile by&nbsp;{contact_firstname}<br /><br />You can check the uploaded files into the admin area by clicking <a href="{customer_profile_files_admin_link}">here</a> or at the following link:&nbsp;{customer_profile_files_admin_link}<br /><br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
	(74, 'staff', 'event-notification-to-staff', 'english', 'Event Notification (Calendar)', 'Upcoming Event - {event_title}', 'Hi {staff_firstname}! <br /><br />This is a reminder for event <a href=\\"{event_link}\\">{event_title}</a> scheduled at {event_start_date}. <br /><br />Regards.', '', '', 0, 1, 0),
	(75, 'subscriptions', 'subscription-payment-requires-action', 'english', 'Credit Card Authorization Required - SCA', 'Important: Confirm your subscription {subscription_name} payment', '<p>Hello {contact_firstname}</p>\r\n<p><strong>Your bank sometimes requires an additional step to make sure an online transaction was authorized.</strong><br /><br />Because of European regulation to protect consumers, many online payments now require two-factor authentication. Your bank ultimately decides when authentication is required to confirm a payment, but you may notice this step when you start paying for a service or when the cost changes.<br /><br />In order to pay the subscription <strong>{subscription_name}</strong>, you will need to&nbsp;confirm your payment by clicking on the follow link: <strong><a href="{subscription_authorize_payment_link}">{subscription_authorize_payment_link}</a></strong><br /><br />To view the subscription, please click at the following link: <a href="{subscription_link}"><span>{subscription_link}</span></a><br />or you can login in our dedicated area here: <a href="{crm_url}/login">{crm_url}/login</a> in case you want to update your credit card or view the subscriptions you are subscribed.<br /><br />Best Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
	(76, 'invoice', 'invoice-due-notice', 'english', 'Invoice Due Notice', 'Your {invoice_number} will be due soon', '<span style="font-size: 12pt;">Hi {contact_firstname} {contact_lastname}<br /><br /></span>You invoice <span style="font-size: 12pt;"><strong># {invoice_number} </strong>will be due on <strong>{invoice_duedate}</strong></span><br /><br /><span style="font-size: 12pt;">You can view the invoice on the following link: <a href="{invoice_link}">{invoice_number}</a></span><br /><br /><span style="font-size: 12pt;">Kind Regards,</span><br /><span style="font-size: 12pt;">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
	(77, 'estimate_request', 'estimate-request-submitted-to-staff', 'english', 'Estimate Request Submitted (Sent to Staff)', 'New Estimate Request Submitted', '<span> Hello,&nbsp;</span><br /><br />{estimate_request_email} submitted an estimate request via the {estimate_request_form_name} form.<br /><br />You can view the request at the following link: <a href="{estimate_request_link}">{estimate_request_link}</a><br /><br />==<br /><br />{estimate_request_submitted_data}<br /><br />Kind Regards,<br /><span>{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
	(78, 'estimate_request', 'estimate-request-assigned', 'english', 'Estimate Request Assigned (Sent to Staff)', 'New Estimate Request Assigned', '<span> Hello {estimate_request_assigned},&nbsp;</span><br /><br />Estimate request #{estimate_request_id} has been assigned to you.<br /><br />You can view the request at the following link: <a href="{estimate_request_link}">{estimate_request_link}</a><br /><br />Kind Regards,<br /><span>{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
	(79, 'estimate_request', 'estimate-request-received-to-user', 'english', 'Estimate Request Received (Sent to User)', 'Estimate Request Received', 'Hello,<br /><br /><strong>Your request has been received.</strong><br /><br />This email is to let you know that we received your request and we will get back to you as soon as possible with more information.<br /><br />Best Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 0, 0),
	(80, 'notifications', 'non-billed-tasks-reminder', 'english', 'Non-billed tasks reminder (sent to selected staff members)', 'Action required: Completed tasks are not billed', 'Hello {staff_firstname}<br><br>The following tasks are marked as complete but not yet billed:<br><br>{unbilled_tasks_list}<br><br>Kind Regards,<br><br>{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
	(81, 'invoice', 'invoices-batch-payments', 'english', 'Invoices Payments Recorded in Batch (Sent to Customer)', 'We have received your payments', 'Hello {contact_firstname} {contact_lastname}<br><br>Thank you for the payments. Please find the payments details below:<br><br>{batch_payments_list}<br><br>We are looking forward working with you.<br><br>Kind Regards,<br><br>{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
	(82, 'client', 'new-client-created', 'vietnamese', 'New Contact Added/Registered (Welcome Email) [vietnamese]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(83, 'invoice', 'invoice-send-to-client', 'vietnamese', 'Send Invoice to Customer [vietnamese]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(84, 'ticket', 'new-ticket-opened-admin', 'vietnamese', 'New Ticket Opened (Opened by Staff, Sent to Customer) [vietnamese]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(85, 'ticket', 'ticket-reply', 'vietnamese', 'Ticket Reply (Sent to Customer) [vietnamese]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(86, 'ticket', 'ticket-autoresponse', 'vietnamese', 'New Ticket Opened - Autoresponse [vietnamese]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(87, 'invoice', 'invoice-payment-recorded', 'vietnamese', 'Invoice Payment Recorded (Sent to Customer) [vietnamese]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(88, 'invoice', 'invoice-overdue-notice', 'vietnamese', 'Invoice Overdue Notice [vietnamese]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(89, 'invoice', 'invoice-already-send', 'vietnamese', 'Invoice Already Sent to Customer [vietnamese]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(90, 'ticket', 'new-ticket-created-staff', 'vietnamese', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [vietnamese]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(91, 'estimate', 'estimate-send-to-client', 'vietnamese', 'Send Estimate to Customer [vietnamese]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(92, 'ticket', 'ticket-reply-to-admin', 'vietnamese', 'Ticket Reply (Sent to Staff) [vietnamese]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(93, 'estimate', 'estimate-already-send', 'vietnamese', 'Estimate Already Sent to Customer [vietnamese]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(94, 'contract', 'contract-expiration', 'vietnamese', 'Contract Expiration Reminder (Sent to Customer Contacts) [vietnamese]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(95, 'tasks', 'task-assigned', 'vietnamese', 'New Task Assigned (Sent to Staff) [vietnamese]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(96, 'tasks', 'task-added-as-follower', 'vietnamese', 'Staff Member Added as Follower on Task (Sent to Staff) [vietnamese]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(97, 'tasks', 'task-commented', 'vietnamese', 'New Comment on Task (Sent to Staff) [vietnamese]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(98, 'tasks', 'task-added-attachment', 'vietnamese', 'New Attachment(s) on Task (Sent to Staff) [vietnamese]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(99, 'estimate', 'estimate-declined-to-staff', 'vietnamese', 'Estimate Declined (Sent to Staff) [vietnamese]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(100, 'estimate', 'estimate-accepted-to-staff', 'vietnamese', 'Estimate Accepted (Sent to Staff) [vietnamese]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(101, 'proposals', 'proposal-client-accepted', 'vietnamese', 'Customer Action - Accepted (Sent to Staff) [vietnamese]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(102, 'proposals', 'proposal-send-to-customer', 'vietnamese', 'Send Proposal to Customer [vietnamese]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(103, 'proposals', 'proposal-client-declined', 'vietnamese', 'Customer Action - Declined (Sent to Staff) [vietnamese]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(104, 'proposals', 'proposal-client-thank-you', 'vietnamese', 'Thank You Email (Sent to Customer After Accept) [vietnamese]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(105, 'proposals', 'proposal-comment-to-client', 'vietnamese', 'New Comment Â (Sent to Customer/Lead) [vietnamese]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(106, 'proposals', 'proposal-comment-to-admin', 'vietnamese', 'New Comment (Sent to Staff)  [vietnamese]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(107, 'estimate', 'estimate-thank-you-to-customer', 'vietnamese', 'Thank You Email (Sent to Customer After Accept) [vietnamese]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(108, 'tasks', 'task-deadline-notification', 'vietnamese', 'Task Deadline Reminder - Sent to Assigned Members [vietnamese]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(109, 'contract', 'send-contract', 'vietnamese', 'Send Contract to Customer [vietnamese]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(110, 'invoice', 'invoice-payment-recorded-to-staff', 'vietnamese', 'Invoice Payment Recorded (Sent to Staff) [vietnamese]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(111, 'ticket', 'auto-close-ticket', 'vietnamese', 'Auto Close Ticket [vietnamese]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(112, 'project', 'new-project-discussion-created-to-staff', 'vietnamese', 'New Project Discussion (Sent to Project Members) [vietnamese]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(113, 'project', 'new-project-discussion-created-to-customer', 'vietnamese', 'New Project Discussion (Sent to Customer Contacts) [vietnamese]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(114, 'project', 'new-project-file-uploaded-to-customer', 'vietnamese', 'New Project File(s) Uploaded (Sent to Customer Contacts) [vietnamese]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(115, 'project', 'new-project-file-uploaded-to-staff', 'vietnamese', 'New Project File(s) Uploaded (Sent to Project Members) [vietnamese]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(116, 'project', 'new-project-discussion-comment-to-customer', 'vietnamese', 'New Discussion Comment  (Sent to Customer Contacts) [vietnamese]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(117, 'project', 'new-project-discussion-comment-to-staff', 'vietnamese', 'New Discussion Comment (Sent to Project Members) [vietnamese]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(118, 'project', 'staff-added-as-project-member', 'vietnamese', 'Staff Added as Project Member [vietnamese]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(119, 'estimate', 'estimate-expiry-reminder', 'vietnamese', 'Estimate Expiration Reminder [vietnamese]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(120, 'proposals', 'proposal-expiry-reminder', 'vietnamese', 'Proposal Expiration Reminder [vietnamese]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(121, 'staff', 'new-staff-created', 'vietnamese', 'New Staff Created (Welcome Email) [vietnamese]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(122, 'client', 'contact-forgot-password', 'vietnamese', 'Forgot Password [vietnamese]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(123, 'client', 'contact-password-reseted', 'vietnamese', 'Password Reset - Confirmation [vietnamese]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(124, 'client', 'contact-set-password', 'vietnamese', 'Set New Password [vietnamese]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(125, 'staff', 'staff-forgot-password', 'vietnamese', 'Forgot Password [vietnamese]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(126, 'staff', 'staff-password-reseted', 'vietnamese', 'Password Reset - Confirmation [vietnamese]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(127, 'project', 'assigned-to-project', 'vietnamese', 'New Project Created (Sent to Customer Contacts) [vietnamese]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(128, 'tasks', 'task-added-attachment-to-contacts', 'vietnamese', 'New Attachment(s) on Task (Sent to Customer Contacts) [vietnamese]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(129, 'tasks', 'task-commented-to-contacts', 'vietnamese', 'New Comment on Task (Sent to Customer Contacts) [vietnamese]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(130, 'leads', 'new-lead-assigned', 'vietnamese', 'New Lead Assigned to Staff Member [vietnamese]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(131, 'client', 'client-statement', 'vietnamese', 'Statement - Account Summary [vietnamese]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(132, 'ticket', 'ticket-assigned-to-admin', 'vietnamese', 'New Ticket Assigned (Sent to Staff) [vietnamese]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(133, 'client', 'new-client-registered-to-admin', 'vietnamese', 'New Customer Registration (Sent to admins) [vietnamese]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(134, 'leads', 'new-web-to-lead-form-submitted', 'vietnamese', 'Web to lead form submitted - Sent to lead [vietnamese]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
	(135, 'staff', 'two-factor-authentication', 'vietnamese', 'Two Factor Authentication [vietnamese]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(136, 'project', 'project-finished-to-customer', 'vietnamese', 'Project Marked as Finished (Sent to Customer Contacts) [vietnamese]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(137, 'credit_note', 'credit-note-send-to-client', 'vietnamese', 'Send Credit Note To Email [vietnamese]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(138, 'tasks', 'task-status-change-to-staff', 'vietnamese', 'Task Status Changed (Sent to Staff) [vietnamese]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(139, 'tasks', 'task-status-change-to-contacts', 'vietnamese', 'Task Status Changed (Sent to Customer Contacts) [vietnamese]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(140, 'staff', 'reminder-email-staff', 'vietnamese', 'Staff Reminder Email [vietnamese]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(141, 'contract', 'contract-comment-to-client', 'vietnamese', 'New Comment Â (Sent to Customer Contacts) [vietnamese]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(142, 'contract', 'contract-comment-to-admin', 'vietnamese', 'New Comment (Sent to Staff)  [vietnamese]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(143, 'subscriptions', 'send-subscription', 'vietnamese', 'Send Subscription to Customer [vietnamese]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(144, 'subscriptions', 'subscription-payment-failed', 'vietnamese', 'Subscription Payment Failed [vietnamese]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(145, 'subscriptions', 'subscription-canceled', 'vietnamese', 'Subscription Canceled (Sent to customer primary contact) [vietnamese]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(146, 'subscriptions', 'subscription-payment-succeeded', 'vietnamese', 'Subscription Payment Succeeded (Sent to customer primary contact) [vietnamese]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(147, 'contract', 'contract-expiration-to-staff', 'vietnamese', 'Contract Expiration Reminder (Sent to Staff) [vietnamese]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(148, 'gdpr', 'gdpr-removal-request', 'vietnamese', 'Removal Request From Contact (Sent to administrators) [vietnamese]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(149, 'gdpr', 'gdpr-removal-request-lead', 'vietnamese', 'Removal Request From Lead (Sent to administrators) [vietnamese]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(150, 'client', 'client-registration-confirmed', 'vietnamese', 'Customer Registration Confirmed [vietnamese]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(151, 'contract', 'contract-signed-to-staff', 'vietnamese', 'Contract Signed (Sent to Staff) [vietnamese]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(152, 'subscriptions', 'customer-subscribed-to-staff', 'vietnamese', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [vietnamese]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(153, 'client', 'contact-verification-email', 'vietnamese', 'Email Verification (Sent to Contact After Registration) [vietnamese]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(154, 'client', 'new-customer-profile-file-uploaded-to-staff', 'vietnamese', 'New Customer Profile File(s) Uploaded (Sent to Staff) [vietnamese]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(155, 'staff', 'event-notification-to-staff', 'vietnamese', 'Event Notification (Calendar) [vietnamese]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
	(156, 'subscriptions', 'subscription-payment-requires-action', 'vietnamese', 'Credit Card Authorization Required - SCA [vietnamese]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(157, 'invoice', 'invoice-due-notice', 'vietnamese', 'Invoice Due Notice [vietnamese]', 'Your {invoice_number} will be due soon', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(158, 'estimate_request', 'estimate-request-submitted-to-staff', 'vietnamese', 'Estimate Request Submitted (Sent to Staff) [vietnamese]', 'New Estimate Request Submitted', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(159, 'estimate_request', 'estimate-request-assigned', 'vietnamese', 'Estimate Request Assigned (Sent to Staff) [vietnamese]', 'New Estimate Request Assigned', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(160, 'estimate_request', 'estimate-request-received-to-user', 'vietnamese', 'Estimate Request Received (Sent to User) [vietnamese]', 'Estimate Request Received', '', '{companyname} | CRM', NULL, 0, 0, 0),
	(161, 'notifications', 'non-billed-tasks-reminder', 'vietnamese', 'Non-billed tasks reminder (sent to selected staff members) [vietnamese]', 'Action required: Completed tasks are not billed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(162, 'invoice', 'invoices-batch-payments', 'vietnamese', 'Invoices Payments Recorded in Batch (Sent to Customer) [vietnamese]', 'We have received your payments', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(163, 'client', 'new-client-created', 'greek', 'New Contact Added/Registered (Welcome Email) [greek]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(164, 'invoice', 'invoice-send-to-client', 'greek', 'Send Invoice to Customer [greek]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(165, 'ticket', 'new-ticket-opened-admin', 'greek', 'New Ticket Opened (Opened by Staff, Sent to Customer) [greek]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(166, 'ticket', 'ticket-reply', 'greek', 'Ticket Reply (Sent to Customer) [greek]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(167, 'ticket', 'ticket-autoresponse', 'greek', 'New Ticket Opened - Autoresponse [greek]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(168, 'invoice', 'invoice-payment-recorded', 'greek', 'Invoice Payment Recorded (Sent to Customer) [greek]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(169, 'invoice', 'invoice-overdue-notice', 'greek', 'Invoice Overdue Notice [greek]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(170, 'invoice', 'invoice-already-send', 'greek', 'Invoice Already Sent to Customer [greek]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(171, 'ticket', 'new-ticket-created-staff', 'greek', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [greek]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(172, 'estimate', 'estimate-send-to-client', 'greek', 'Send Estimate to Customer [greek]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(173, 'ticket', 'ticket-reply-to-admin', 'greek', 'Ticket Reply (Sent to Staff) [greek]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(174, 'estimate', 'estimate-already-send', 'greek', 'Estimate Already Sent to Customer [greek]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(175, 'contract', 'contract-expiration', 'greek', 'Contract Expiration Reminder (Sent to Customer Contacts) [greek]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(176, 'tasks', 'task-assigned', 'greek', 'New Task Assigned (Sent to Staff) [greek]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(177, 'tasks', 'task-added-as-follower', 'greek', 'Staff Member Added as Follower on Task (Sent to Staff) [greek]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(178, 'tasks', 'task-commented', 'greek', 'New Comment on Task (Sent to Staff) [greek]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(179, 'tasks', 'task-added-attachment', 'greek', 'New Attachment(s) on Task (Sent to Staff) [greek]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(180, 'estimate', 'estimate-declined-to-staff', 'greek', 'Estimate Declined (Sent to Staff) [greek]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(181, 'estimate', 'estimate-accepted-to-staff', 'greek', 'Estimate Accepted (Sent to Staff) [greek]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(182, 'proposals', 'proposal-client-accepted', 'greek', 'Customer Action - Accepted (Sent to Staff) [greek]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(183, 'proposals', 'proposal-send-to-customer', 'greek', 'Send Proposal to Customer [greek]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(184, 'proposals', 'proposal-client-declined', 'greek', 'Customer Action - Declined (Sent to Staff) [greek]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(185, 'proposals', 'proposal-client-thank-you', 'greek', 'Thank You Email (Sent to Customer After Accept) [greek]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(186, 'proposals', 'proposal-comment-to-client', 'greek', 'New Comment Â (Sent to Customer/Lead) [greek]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(187, 'proposals', 'proposal-comment-to-admin', 'greek', 'New Comment (Sent to Staff)  [greek]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(188, 'estimate', 'estimate-thank-you-to-customer', 'greek', 'Thank You Email (Sent to Customer After Accept) [greek]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(189, 'tasks', 'task-deadline-notification', 'greek', 'Task Deadline Reminder - Sent to Assigned Members [greek]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(190, 'contract', 'send-contract', 'greek', 'Send Contract to Customer [greek]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(191, 'invoice', 'invoice-payment-recorded-to-staff', 'greek', 'Invoice Payment Recorded (Sent to Staff) [greek]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(192, 'ticket', 'auto-close-ticket', 'greek', 'Auto Close Ticket [greek]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(193, 'project', 'new-project-discussion-created-to-staff', 'greek', 'New Project Discussion (Sent to Project Members) [greek]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(194, 'project', 'new-project-discussion-created-to-customer', 'greek', 'New Project Discussion (Sent to Customer Contacts) [greek]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(195, 'project', 'new-project-file-uploaded-to-customer', 'greek', 'New Project File(s) Uploaded (Sent to Customer Contacts) [greek]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(196, 'project', 'new-project-file-uploaded-to-staff', 'greek', 'New Project File(s) Uploaded (Sent to Project Members) [greek]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(197, 'project', 'new-project-discussion-comment-to-customer', 'greek', 'New Discussion Comment  (Sent to Customer Contacts) [greek]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(198, 'project', 'new-project-discussion-comment-to-staff', 'greek', 'New Discussion Comment (Sent to Project Members) [greek]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(199, 'project', 'staff-added-as-project-member', 'greek', 'Staff Added as Project Member [greek]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(200, 'estimate', 'estimate-expiry-reminder', 'greek', 'Estimate Expiration Reminder [greek]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(201, 'proposals', 'proposal-expiry-reminder', 'greek', 'Proposal Expiration Reminder [greek]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(202, 'staff', 'new-staff-created', 'greek', 'New Staff Created (Welcome Email) [greek]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(203, 'client', 'contact-forgot-password', 'greek', 'Forgot Password [greek]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(204, 'client', 'contact-password-reseted', 'greek', 'Password Reset - Confirmation [greek]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(205, 'client', 'contact-set-password', 'greek', 'Set New Password [greek]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(206, 'staff', 'staff-forgot-password', 'greek', 'Forgot Password [greek]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(207, 'staff', 'staff-password-reseted', 'greek', 'Password Reset - Confirmation [greek]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(208, 'project', 'assigned-to-project', 'greek', 'New Project Created (Sent to Customer Contacts) [greek]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(209, 'tasks', 'task-added-attachment-to-contacts', 'greek', 'New Attachment(s) on Task (Sent to Customer Contacts) [greek]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(210, 'tasks', 'task-commented-to-contacts', 'greek', 'New Comment on Task (Sent to Customer Contacts) [greek]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(211, 'leads', 'new-lead-assigned', 'greek', 'New Lead Assigned to Staff Member [greek]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(212, 'client', 'client-statement', 'greek', 'Statement - Account Summary [greek]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(213, 'ticket', 'ticket-assigned-to-admin', 'greek', 'New Ticket Assigned (Sent to Staff) [greek]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(214, 'client', 'new-client-registered-to-admin', 'greek', 'New Customer Registration (Sent to admins) [greek]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(215, 'leads', 'new-web-to-lead-form-submitted', 'greek', 'Web to lead form submitted - Sent to lead [greek]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
	(216, 'staff', 'two-factor-authentication', 'greek', 'Two Factor Authentication [greek]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(217, 'project', 'project-finished-to-customer', 'greek', 'Project Marked as Finished (Sent to Customer Contacts) [greek]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(218, 'credit_note', 'credit-note-send-to-client', 'greek', 'Send Credit Note To Email [greek]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(219, 'tasks', 'task-status-change-to-staff', 'greek', 'Task Status Changed (Sent to Staff) [greek]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(220, 'tasks', 'task-status-change-to-contacts', 'greek', 'Task Status Changed (Sent to Customer Contacts) [greek]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(221, 'staff', 'reminder-email-staff', 'greek', 'Staff Reminder Email [greek]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(222, 'contract', 'contract-comment-to-client', 'greek', 'New Comment Â (Sent to Customer Contacts) [greek]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(223, 'contract', 'contract-comment-to-admin', 'greek', 'New Comment (Sent to Staff)  [greek]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(224, 'subscriptions', 'send-subscription', 'greek', 'Send Subscription to Customer [greek]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(225, 'subscriptions', 'subscription-payment-failed', 'greek', 'Subscription Payment Failed [greek]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(226, 'subscriptions', 'subscription-canceled', 'greek', 'Subscription Canceled (Sent to customer primary contact) [greek]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(227, 'subscriptions', 'subscription-payment-succeeded', 'greek', 'Subscription Payment Succeeded (Sent to customer primary contact) [greek]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(228, 'contract', 'contract-expiration-to-staff', 'greek', 'Contract Expiration Reminder (Sent to Staff) [greek]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(229, 'gdpr', 'gdpr-removal-request', 'greek', 'Removal Request From Contact (Sent to administrators) [greek]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(230, 'gdpr', 'gdpr-removal-request-lead', 'greek', 'Removal Request From Lead (Sent to administrators) [greek]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(231, 'client', 'client-registration-confirmed', 'greek', 'Customer Registration Confirmed [greek]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(232, 'contract', 'contract-signed-to-staff', 'greek', 'Contract Signed (Sent to Staff) [greek]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(233, 'subscriptions', 'customer-subscribed-to-staff', 'greek', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [greek]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(234, 'client', 'contact-verification-email', 'greek', 'Email Verification (Sent to Contact After Registration) [greek]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(235, 'client', 'new-customer-profile-file-uploaded-to-staff', 'greek', 'New Customer Profile File(s) Uploaded (Sent to Staff) [greek]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(236, 'staff', 'event-notification-to-staff', 'greek', 'Event Notification (Calendar) [greek]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
	(237, 'subscriptions', 'subscription-payment-requires-action', 'greek', 'Credit Card Authorization Required - SCA [greek]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(238, 'invoice', 'invoice-due-notice', 'greek', 'Invoice Due Notice [greek]', 'Your {invoice_number} will be due soon', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(239, 'estimate_request', 'estimate-request-submitted-to-staff', 'greek', 'Estimate Request Submitted (Sent to Staff) [greek]', 'New Estimate Request Submitted', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(240, 'estimate_request', 'estimate-request-assigned', 'greek', 'Estimate Request Assigned (Sent to Staff) [greek]', 'New Estimate Request Assigned', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(241, 'estimate_request', 'estimate-request-received-to-user', 'greek', 'Estimate Request Received (Sent to User) [greek]', 'Estimate Request Received', '', '{companyname} | CRM', NULL, 0, 0, 0),
	(242, 'notifications', 'non-billed-tasks-reminder', 'greek', 'Non-billed tasks reminder (sent to selected staff members) [greek]', 'Action required: Completed tasks are not billed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(243, 'invoice', 'invoices-batch-payments', 'greek', 'Invoices Payments Recorded in Batch (Sent to Customer) [greek]', 'We have received your payments', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(244, 'client', 'new-client-created', 'swedish', 'New Contact Added/Registered (Welcome Email) [swedish]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(245, 'invoice', 'invoice-send-to-client', 'swedish', 'Send Invoice to Customer [swedish]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(246, 'ticket', 'new-ticket-opened-admin', 'swedish', 'New Ticket Opened (Opened by Staff, Sent to Customer) [swedish]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(247, 'ticket', 'ticket-reply', 'swedish', 'Ticket Reply (Sent to Customer) [swedish]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(248, 'ticket', 'ticket-autoresponse', 'swedish', 'New Ticket Opened - Autoresponse [swedish]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(249, 'invoice', 'invoice-payment-recorded', 'swedish', 'Invoice Payment Recorded (Sent to Customer) [swedish]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(250, 'invoice', 'invoice-overdue-notice', 'swedish', 'Invoice Overdue Notice [swedish]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(251, 'invoice', 'invoice-already-send', 'swedish', 'Invoice Already Sent to Customer [swedish]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(252, 'ticket', 'new-ticket-created-staff', 'swedish', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [swedish]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(253, 'estimate', 'estimate-send-to-client', 'swedish', 'Send Estimate to Customer [swedish]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(254, 'ticket', 'ticket-reply-to-admin', 'swedish', 'Ticket Reply (Sent to Staff) [swedish]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(255, 'estimate', 'estimate-already-send', 'swedish', 'Estimate Already Sent to Customer [swedish]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(256, 'contract', 'contract-expiration', 'swedish', 'Contract Expiration Reminder (Sent to Customer Contacts) [swedish]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(257, 'tasks', 'task-assigned', 'swedish', 'New Task Assigned (Sent to Staff) [swedish]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(258, 'tasks', 'task-added-as-follower', 'swedish', 'Staff Member Added as Follower on Task (Sent to Staff) [swedish]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(259, 'tasks', 'task-commented', 'swedish', 'New Comment on Task (Sent to Staff) [swedish]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(260, 'tasks', 'task-added-attachment', 'swedish', 'New Attachment(s) on Task (Sent to Staff) [swedish]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(261, 'estimate', 'estimate-declined-to-staff', 'swedish', 'Estimate Declined (Sent to Staff) [swedish]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(262, 'estimate', 'estimate-accepted-to-staff', 'swedish', 'Estimate Accepted (Sent to Staff) [swedish]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(263, 'proposals', 'proposal-client-accepted', 'swedish', 'Customer Action - Accepted (Sent to Staff) [swedish]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(264, 'proposals', 'proposal-send-to-customer', 'swedish', 'Send Proposal to Customer [swedish]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(265, 'proposals', 'proposal-client-declined', 'swedish', 'Customer Action - Declined (Sent to Staff) [swedish]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(266, 'proposals', 'proposal-client-thank-you', 'swedish', 'Thank You Email (Sent to Customer After Accept) [swedish]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(267, 'proposals', 'proposal-comment-to-client', 'swedish', 'New Comment Â (Sent to Customer/Lead) [swedish]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(268, 'proposals', 'proposal-comment-to-admin', 'swedish', 'New Comment (Sent to Staff)  [swedish]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(269, 'estimate', 'estimate-thank-you-to-customer', 'swedish', 'Thank You Email (Sent to Customer After Accept) [swedish]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(270, 'tasks', 'task-deadline-notification', 'swedish', 'Task Deadline Reminder - Sent to Assigned Members [swedish]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(271, 'contract', 'send-contract', 'swedish', 'Send Contract to Customer [swedish]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(272, 'invoice', 'invoice-payment-recorded-to-staff', 'swedish', 'Invoice Payment Recorded (Sent to Staff) [swedish]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(273, 'ticket', 'auto-close-ticket', 'swedish', 'Auto Close Ticket [swedish]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(274, 'project', 'new-project-discussion-created-to-staff', 'swedish', 'New Project Discussion (Sent to Project Members) [swedish]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(275, 'project', 'new-project-discussion-created-to-customer', 'swedish', 'New Project Discussion (Sent to Customer Contacts) [swedish]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(276, 'project', 'new-project-file-uploaded-to-customer', 'swedish', 'New Project File(s) Uploaded (Sent to Customer Contacts) [swedish]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(277, 'project', 'new-project-file-uploaded-to-staff', 'swedish', 'New Project File(s) Uploaded (Sent to Project Members) [swedish]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(278, 'project', 'new-project-discussion-comment-to-customer', 'swedish', 'New Discussion Comment  (Sent to Customer Contacts) [swedish]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(279, 'project', 'new-project-discussion-comment-to-staff', 'swedish', 'New Discussion Comment (Sent to Project Members) [swedish]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(280, 'project', 'staff-added-as-project-member', 'swedish', 'Staff Added as Project Member [swedish]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(281, 'estimate', 'estimate-expiry-reminder', 'swedish', 'Estimate Expiration Reminder [swedish]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(282, 'proposals', 'proposal-expiry-reminder', 'swedish', 'Proposal Expiration Reminder [swedish]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(283, 'staff', 'new-staff-created', 'swedish', 'New Staff Created (Welcome Email) [swedish]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(284, 'client', 'contact-forgot-password', 'swedish', 'Forgot Password [swedish]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(285, 'client', 'contact-password-reseted', 'swedish', 'Password Reset - Confirmation [swedish]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(286, 'client', 'contact-set-password', 'swedish', 'Set New Password [swedish]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(287, 'staff', 'staff-forgot-password', 'swedish', 'Forgot Password [swedish]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(288, 'staff', 'staff-password-reseted', 'swedish', 'Password Reset - Confirmation [swedish]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(289, 'project', 'assigned-to-project', 'swedish', 'New Project Created (Sent to Customer Contacts) [swedish]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(290, 'tasks', 'task-added-attachment-to-contacts', 'swedish', 'New Attachment(s) on Task (Sent to Customer Contacts) [swedish]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(291, 'tasks', 'task-commented-to-contacts', 'swedish', 'New Comment on Task (Sent to Customer Contacts) [swedish]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(292, 'leads', 'new-lead-assigned', 'swedish', 'New Lead Assigned to Staff Member [swedish]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(293, 'client', 'client-statement', 'swedish', 'Statement - Account Summary [swedish]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(294, 'ticket', 'ticket-assigned-to-admin', 'swedish', 'New Ticket Assigned (Sent to Staff) [swedish]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(295, 'client', 'new-client-registered-to-admin', 'swedish', 'New Customer Registration (Sent to admins) [swedish]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(296, 'leads', 'new-web-to-lead-form-submitted', 'swedish', 'Web to lead form submitted - Sent to lead [swedish]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
	(297, 'staff', 'two-factor-authentication', 'swedish', 'Two Factor Authentication [swedish]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(298, 'project', 'project-finished-to-customer', 'swedish', 'Project Marked as Finished (Sent to Customer Contacts) [swedish]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(299, 'credit_note', 'credit-note-send-to-client', 'swedish', 'Send Credit Note To Email [swedish]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(300, 'tasks', 'task-status-change-to-staff', 'swedish', 'Task Status Changed (Sent to Staff) [swedish]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(301, 'tasks', 'task-status-change-to-contacts', 'swedish', 'Task Status Changed (Sent to Customer Contacts) [swedish]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(302, 'staff', 'reminder-email-staff', 'swedish', 'Staff Reminder Email [swedish]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(303, 'contract', 'contract-comment-to-client', 'swedish', 'New Comment Â (Sent to Customer Contacts) [swedish]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(304, 'contract', 'contract-comment-to-admin', 'swedish', 'New Comment (Sent to Staff)  [swedish]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(305, 'subscriptions', 'send-subscription', 'swedish', 'Send Subscription to Customer [swedish]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(306, 'subscriptions', 'subscription-payment-failed', 'swedish', 'Subscription Payment Failed [swedish]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(307, 'subscriptions', 'subscription-canceled', 'swedish', 'Subscription Canceled (Sent to customer primary contact) [swedish]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(308, 'subscriptions', 'subscription-payment-succeeded', 'swedish', 'Subscription Payment Succeeded (Sent to customer primary contact) [swedish]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(309, 'contract', 'contract-expiration-to-staff', 'swedish', 'Contract Expiration Reminder (Sent to Staff) [swedish]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(310, 'gdpr', 'gdpr-removal-request', 'swedish', 'Removal Request From Contact (Sent to administrators) [swedish]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(311, 'gdpr', 'gdpr-removal-request-lead', 'swedish', 'Removal Request From Lead (Sent to administrators) [swedish]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(312, 'client', 'client-registration-confirmed', 'swedish', 'Customer Registration Confirmed [swedish]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(313, 'contract', 'contract-signed-to-staff', 'swedish', 'Contract Signed (Sent to Staff) [swedish]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(314, 'subscriptions', 'customer-subscribed-to-staff', 'swedish', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [swedish]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(315, 'client', 'contact-verification-email', 'swedish', 'Email Verification (Sent to Contact After Registration) [swedish]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(316, 'client', 'new-customer-profile-file-uploaded-to-staff', 'swedish', 'New Customer Profile File(s) Uploaded (Sent to Staff) [swedish]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(317, 'staff', 'event-notification-to-staff', 'swedish', 'Event Notification (Calendar) [swedish]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
	(318, 'subscriptions', 'subscription-payment-requires-action', 'swedish', 'Credit Card Authorization Required - SCA [swedish]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(319, 'invoice', 'invoice-due-notice', 'swedish', 'Invoice Due Notice [swedish]', 'Your {invoice_number} will be due soon', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(320, 'estimate_request', 'estimate-request-submitted-to-staff', 'swedish', 'Estimate Request Submitted (Sent to Staff) [swedish]', 'New Estimate Request Submitted', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(321, 'estimate_request', 'estimate-request-assigned', 'swedish', 'Estimate Request Assigned (Sent to Staff) [swedish]', 'New Estimate Request Assigned', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(322, 'estimate_request', 'estimate-request-received-to-user', 'swedish', 'Estimate Request Received (Sent to User) [swedish]', 'Estimate Request Received', '', '{companyname} | CRM', NULL, 0, 0, 0),
	(323, 'notifications', 'non-billed-tasks-reminder', 'swedish', 'Non-billed tasks reminder (sent to selected staff members) [swedish]', 'Action required: Completed tasks are not billed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(324, 'invoice', 'invoices-batch-payments', 'swedish', 'Invoices Payments Recorded in Batch (Sent to Customer) [swedish]', 'We have received your payments', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(325, 'client', 'new-client-created', 'russian', 'New Contact Added/Registered (Welcome Email) [russian]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(326, 'invoice', 'invoice-send-to-client', 'russian', 'Send Invoice to Customer [russian]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(327, 'ticket', 'new-ticket-opened-admin', 'russian', 'New Ticket Opened (Opened by Staff, Sent to Customer) [russian]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(328, 'ticket', 'ticket-reply', 'russian', 'Ticket Reply (Sent to Customer) [russian]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(329, 'ticket', 'ticket-autoresponse', 'russian', 'New Ticket Opened - Autoresponse [russian]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(330, 'invoice', 'invoice-payment-recorded', 'russian', 'Invoice Payment Recorded (Sent to Customer) [russian]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(331, 'invoice', 'invoice-overdue-notice', 'russian', 'Invoice Overdue Notice [russian]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(332, 'invoice', 'invoice-already-send', 'russian', 'Invoice Already Sent to Customer [russian]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(333, 'ticket', 'new-ticket-created-staff', 'russian', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [russian]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(334, 'estimate', 'estimate-send-to-client', 'russian', 'Send Estimate to Customer [russian]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(335, 'ticket', 'ticket-reply-to-admin', 'russian', 'Ticket Reply (Sent to Staff) [russian]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(336, 'estimate', 'estimate-already-send', 'russian', 'Estimate Already Sent to Customer [russian]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(337, 'contract', 'contract-expiration', 'russian', 'Contract Expiration Reminder (Sent to Customer Contacts) [russian]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(338, 'tasks', 'task-assigned', 'russian', 'New Task Assigned (Sent to Staff) [russian]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(339, 'tasks', 'task-added-as-follower', 'russian', 'Staff Member Added as Follower on Task (Sent to Staff) [russian]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(340, 'tasks', 'task-commented', 'russian', 'New Comment on Task (Sent to Staff) [russian]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(341, 'tasks', 'task-added-attachment', 'russian', 'New Attachment(s) on Task (Sent to Staff) [russian]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(342, 'estimate', 'estimate-declined-to-staff', 'russian', 'Estimate Declined (Sent to Staff) [russian]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(343, 'estimate', 'estimate-accepted-to-staff', 'russian', 'Estimate Accepted (Sent to Staff) [russian]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(344, 'proposals', 'proposal-client-accepted', 'russian', 'Customer Action - Accepted (Sent to Staff) [russian]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(345, 'proposals', 'proposal-send-to-customer', 'russian', 'Send Proposal to Customer [russian]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(346, 'proposals', 'proposal-client-declined', 'russian', 'Customer Action - Declined (Sent to Staff) [russian]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(347, 'proposals', 'proposal-client-thank-you', 'russian', 'Thank You Email (Sent to Customer After Accept) [russian]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(348, 'proposals', 'proposal-comment-to-client', 'russian', 'New Comment Â (Sent to Customer/Lead) [russian]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(349, 'proposals', 'proposal-comment-to-admin', 'russian', 'New Comment (Sent to Staff)  [russian]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(350, 'estimate', 'estimate-thank-you-to-customer', 'russian', 'Thank You Email (Sent to Customer After Accept) [russian]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(351, 'tasks', 'task-deadline-notification', 'russian', 'Task Deadline Reminder - Sent to Assigned Members [russian]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(352, 'contract', 'send-contract', 'russian', 'Send Contract to Customer [russian]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(353, 'invoice', 'invoice-payment-recorded-to-staff', 'russian', 'Invoice Payment Recorded (Sent to Staff) [russian]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(354, 'ticket', 'auto-close-ticket', 'russian', 'Auto Close Ticket [russian]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(355, 'project', 'new-project-discussion-created-to-staff', 'russian', 'New Project Discussion (Sent to Project Members) [russian]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(356, 'project', 'new-project-discussion-created-to-customer', 'russian', 'New Project Discussion (Sent to Customer Contacts) [russian]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(357, 'project', 'new-project-file-uploaded-to-customer', 'russian', 'New Project File(s) Uploaded (Sent to Customer Contacts) [russian]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(358, 'project', 'new-project-file-uploaded-to-staff', 'russian', 'New Project File(s) Uploaded (Sent to Project Members) [russian]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(359, 'project', 'new-project-discussion-comment-to-customer', 'russian', 'New Discussion Comment  (Sent to Customer Contacts) [russian]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(360, 'project', 'new-project-discussion-comment-to-staff', 'russian', 'New Discussion Comment (Sent to Project Members) [russian]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(361, 'project', 'staff-added-as-project-member', 'russian', 'Staff Added as Project Member [russian]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(362, 'estimate', 'estimate-expiry-reminder', 'russian', 'Estimate Expiration Reminder [russian]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(363, 'proposals', 'proposal-expiry-reminder', 'russian', 'Proposal Expiration Reminder [russian]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(364, 'staff', 'new-staff-created', 'russian', 'New Staff Created (Welcome Email) [russian]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(365, 'client', 'contact-forgot-password', 'russian', 'Forgot Password [russian]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(366, 'client', 'contact-password-reseted', 'russian', 'Password Reset - Confirmation [russian]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(367, 'client', 'contact-set-password', 'russian', 'Set New Password [russian]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(368, 'staff', 'staff-forgot-password', 'russian', 'Forgot Password [russian]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(369, 'staff', 'staff-password-reseted', 'russian', 'Password Reset - Confirmation [russian]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(370, 'project', 'assigned-to-project', 'russian', 'New Project Created (Sent to Customer Contacts) [russian]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(371, 'tasks', 'task-added-attachment-to-contacts', 'russian', 'New Attachment(s) on Task (Sent to Customer Contacts) [russian]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(372, 'tasks', 'task-commented-to-contacts', 'russian', 'New Comment on Task (Sent to Customer Contacts) [russian]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(373, 'leads', 'new-lead-assigned', 'russian', 'New Lead Assigned to Staff Member [russian]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(374, 'client', 'client-statement', 'russian', 'Statement - Account Summary [russian]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(375, 'ticket', 'ticket-assigned-to-admin', 'russian', 'New Ticket Assigned (Sent to Staff) [russian]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(376, 'client', 'new-client-registered-to-admin', 'russian', 'New Customer Registration (Sent to admins) [russian]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(377, 'leads', 'new-web-to-lead-form-submitted', 'russian', 'Web to lead form submitted - Sent to lead [russian]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
	(378, 'staff', 'two-factor-authentication', 'russian', 'Two Factor Authentication [russian]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(379, 'project', 'project-finished-to-customer', 'russian', 'Project Marked as Finished (Sent to Customer Contacts) [russian]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(380, 'credit_note', 'credit-note-send-to-client', 'russian', 'Send Credit Note To Email [russian]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(381, 'tasks', 'task-status-change-to-staff', 'russian', 'Task Status Changed (Sent to Staff) [russian]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(382, 'tasks', 'task-status-change-to-contacts', 'russian', 'Task Status Changed (Sent to Customer Contacts) [russian]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(383, 'staff', 'reminder-email-staff', 'russian', 'Staff Reminder Email [russian]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(384, 'contract', 'contract-comment-to-client', 'russian', 'New Comment Â (Sent to Customer Contacts) [russian]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(385, 'contract', 'contract-comment-to-admin', 'russian', 'New Comment (Sent to Staff)  [russian]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(386, 'subscriptions', 'send-subscription', 'russian', 'Send Subscription to Customer [russian]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(387, 'subscriptions', 'subscription-payment-failed', 'russian', 'Subscription Payment Failed [russian]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(388, 'subscriptions', 'subscription-canceled', 'russian', 'Subscription Canceled (Sent to customer primary contact) [russian]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(389, 'subscriptions', 'subscription-payment-succeeded', 'russian', 'Subscription Payment Succeeded (Sent to customer primary contact) [russian]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(390, 'contract', 'contract-expiration-to-staff', 'russian', 'Contract Expiration Reminder (Sent to Staff) [russian]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(391, 'gdpr', 'gdpr-removal-request', 'russian', 'Removal Request From Contact (Sent to administrators) [russian]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(392, 'gdpr', 'gdpr-removal-request-lead', 'russian', 'Removal Request From Lead (Sent to administrators) [russian]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(393, 'client', 'client-registration-confirmed', 'russian', 'Customer Registration Confirmed [russian]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(394, 'contract', 'contract-signed-to-staff', 'russian', 'Contract Signed (Sent to Staff) [russian]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(395, 'subscriptions', 'customer-subscribed-to-staff', 'russian', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [russian]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(396, 'client', 'contact-verification-email', 'russian', 'Email Verification (Sent to Contact After Registration) [russian]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(397, 'client', 'new-customer-profile-file-uploaded-to-staff', 'russian', 'New Customer Profile File(s) Uploaded (Sent to Staff) [russian]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(398, 'staff', 'event-notification-to-staff', 'russian', 'Event Notification (Calendar) [russian]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
	(399, 'subscriptions', 'subscription-payment-requires-action', 'russian', 'Credit Card Authorization Required - SCA [russian]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(400, 'invoice', 'invoice-due-notice', 'russian', 'Invoice Due Notice [russian]', 'Your {invoice_number} will be due soon', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(401, 'estimate_request', 'estimate-request-submitted-to-staff', 'russian', 'Estimate Request Submitted (Sent to Staff) [russian]', 'New Estimate Request Submitted', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(402, 'estimate_request', 'estimate-request-assigned', 'russian', 'Estimate Request Assigned (Sent to Staff) [russian]', 'New Estimate Request Assigned', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(403, 'estimate_request', 'estimate-request-received-to-user', 'russian', 'Estimate Request Received (Sent to User) [russian]', 'Estimate Request Received', '', '{companyname} | CRM', NULL, 0, 0, 0),
	(404, 'notifications', 'non-billed-tasks-reminder', 'russian', 'Non-billed tasks reminder (sent to selected staff members) [russian]', 'Action required: Completed tasks are not billed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(405, 'invoice', 'invoices-batch-payments', 'russian', 'Invoices Payments Recorded in Batch (Sent to Customer) [russian]', 'We have received your payments', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(406, 'client', 'new-client-created', 'dutch', 'New Contact Added/Registered (Welcome Email) [dutch]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(407, 'invoice', 'invoice-send-to-client', 'dutch', 'Send Invoice to Customer [dutch]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(408, 'ticket', 'new-ticket-opened-admin', 'dutch', 'New Ticket Opened (Opened by Staff, Sent to Customer) [dutch]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(409, 'ticket', 'ticket-reply', 'dutch', 'Ticket Reply (Sent to Customer) [dutch]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(410, 'ticket', 'ticket-autoresponse', 'dutch', 'New Ticket Opened - Autoresponse [dutch]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(411, 'invoice', 'invoice-payment-recorded', 'dutch', 'Invoice Payment Recorded (Sent to Customer) [dutch]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(412, 'invoice', 'invoice-overdue-notice', 'dutch', 'Invoice Overdue Notice [dutch]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(413, 'invoice', 'invoice-already-send', 'dutch', 'Invoice Already Sent to Customer [dutch]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(414, 'ticket', 'new-ticket-created-staff', 'dutch', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [dutch]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(415, 'estimate', 'estimate-send-to-client', 'dutch', 'Send Estimate to Customer [dutch]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(416, 'ticket', 'ticket-reply-to-admin', 'dutch', 'Ticket Reply (Sent to Staff) [dutch]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(417, 'estimate', 'estimate-already-send', 'dutch', 'Estimate Already Sent to Customer [dutch]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(418, 'contract', 'contract-expiration', 'dutch', 'Contract Expiration Reminder (Sent to Customer Contacts) [dutch]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(419, 'tasks', 'task-assigned', 'dutch', 'New Task Assigned (Sent to Staff) [dutch]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(420, 'tasks', 'task-added-as-follower', 'dutch', 'Staff Member Added as Follower on Task (Sent to Staff) [dutch]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(421, 'tasks', 'task-commented', 'dutch', 'New Comment on Task (Sent to Staff) [dutch]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(422, 'tasks', 'task-added-attachment', 'dutch', 'New Attachment(s) on Task (Sent to Staff) [dutch]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(423, 'estimate', 'estimate-declined-to-staff', 'dutch', 'Estimate Declined (Sent to Staff) [dutch]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(424, 'estimate', 'estimate-accepted-to-staff', 'dutch', 'Estimate Accepted (Sent to Staff) [dutch]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(425, 'proposals', 'proposal-client-accepted', 'dutch', 'Customer Action - Accepted (Sent to Staff) [dutch]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(426, 'proposals', 'proposal-send-to-customer', 'dutch', 'Send Proposal to Customer [dutch]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(427, 'proposals', 'proposal-client-declined', 'dutch', 'Customer Action - Declined (Sent to Staff) [dutch]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(428, 'proposals', 'proposal-client-thank-you', 'dutch', 'Thank You Email (Sent to Customer After Accept) [dutch]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(429, 'proposals', 'proposal-comment-to-client', 'dutch', 'New Comment Â (Sent to Customer/Lead) [dutch]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(430, 'proposals', 'proposal-comment-to-admin', 'dutch', 'New Comment (Sent to Staff)  [dutch]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(431, 'estimate', 'estimate-thank-you-to-customer', 'dutch', 'Thank You Email (Sent to Customer After Accept) [dutch]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(432, 'tasks', 'task-deadline-notification', 'dutch', 'Task Deadline Reminder - Sent to Assigned Members [dutch]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(433, 'contract', 'send-contract', 'dutch', 'Send Contract to Customer [dutch]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(434, 'invoice', 'invoice-payment-recorded-to-staff', 'dutch', 'Invoice Payment Recorded (Sent to Staff) [dutch]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(435, 'ticket', 'auto-close-ticket', 'dutch', 'Auto Close Ticket [dutch]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(436, 'project', 'new-project-discussion-created-to-staff', 'dutch', 'New Project Discussion (Sent to Project Members) [dutch]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(437, 'project', 'new-project-discussion-created-to-customer', 'dutch', 'New Project Discussion (Sent to Customer Contacts) [dutch]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(438, 'project', 'new-project-file-uploaded-to-customer', 'dutch', 'New Project File(s) Uploaded (Sent to Customer Contacts) [dutch]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(439, 'project', 'new-project-file-uploaded-to-staff', 'dutch', 'New Project File(s) Uploaded (Sent to Project Members) [dutch]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(440, 'project', 'new-project-discussion-comment-to-customer', 'dutch', 'New Discussion Comment  (Sent to Customer Contacts) [dutch]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(441, 'project', 'new-project-discussion-comment-to-staff', 'dutch', 'New Discussion Comment (Sent to Project Members) [dutch]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(442, 'project', 'staff-added-as-project-member', 'dutch', 'Staff Added as Project Member [dutch]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(443, 'estimate', 'estimate-expiry-reminder', 'dutch', 'Estimate Expiration Reminder [dutch]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(444, 'proposals', 'proposal-expiry-reminder', 'dutch', 'Proposal Expiration Reminder [dutch]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(445, 'staff', 'new-staff-created', 'dutch', 'New Staff Created (Welcome Email) [dutch]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(446, 'client', 'contact-forgot-password', 'dutch', 'Forgot Password [dutch]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(447, 'client', 'contact-password-reseted', 'dutch', 'Password Reset - Confirmation [dutch]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(448, 'client', 'contact-set-password', 'dutch', 'Set New Password [dutch]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(449, 'staff', 'staff-forgot-password', 'dutch', 'Forgot Password [dutch]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(450, 'staff', 'staff-password-reseted', 'dutch', 'Password Reset - Confirmation [dutch]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(451, 'project', 'assigned-to-project', 'dutch', 'New Project Created (Sent to Customer Contacts) [dutch]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(452, 'tasks', 'task-added-attachment-to-contacts', 'dutch', 'New Attachment(s) on Task (Sent to Customer Contacts) [dutch]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(453, 'tasks', 'task-commented-to-contacts', 'dutch', 'New Comment on Task (Sent to Customer Contacts) [dutch]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(454, 'leads', 'new-lead-assigned', 'dutch', 'New Lead Assigned to Staff Member [dutch]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(455, 'client', 'client-statement', 'dutch', 'Statement - Account Summary [dutch]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(456, 'ticket', 'ticket-assigned-to-admin', 'dutch', 'New Ticket Assigned (Sent to Staff) [dutch]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(457, 'client', 'new-client-registered-to-admin', 'dutch', 'New Customer Registration (Sent to admins) [dutch]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(458, 'leads', 'new-web-to-lead-form-submitted', 'dutch', 'Web to lead form submitted - Sent to lead [dutch]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
	(459, 'staff', 'two-factor-authentication', 'dutch', 'Two Factor Authentication [dutch]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(460, 'project', 'project-finished-to-customer', 'dutch', 'Project Marked as Finished (Sent to Customer Contacts) [dutch]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(461, 'credit_note', 'credit-note-send-to-client', 'dutch', 'Send Credit Note To Email [dutch]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(462, 'tasks', 'task-status-change-to-staff', 'dutch', 'Task Status Changed (Sent to Staff) [dutch]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(463, 'tasks', 'task-status-change-to-contacts', 'dutch', 'Task Status Changed (Sent to Customer Contacts) [dutch]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(464, 'staff', 'reminder-email-staff', 'dutch', 'Staff Reminder Email [dutch]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(465, 'contract', 'contract-comment-to-client', 'dutch', 'New Comment Â (Sent to Customer Contacts) [dutch]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(466, 'contract', 'contract-comment-to-admin', 'dutch', 'New Comment (Sent to Staff)  [dutch]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(467, 'subscriptions', 'send-subscription', 'dutch', 'Send Subscription to Customer [dutch]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(468, 'subscriptions', 'subscription-payment-failed', 'dutch', 'Subscription Payment Failed [dutch]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(469, 'subscriptions', 'subscription-canceled', 'dutch', 'Subscription Canceled (Sent to customer primary contact) [dutch]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(470, 'subscriptions', 'subscription-payment-succeeded', 'dutch', 'Subscription Payment Succeeded (Sent to customer primary contact) [dutch]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(471, 'contract', 'contract-expiration-to-staff', 'dutch', 'Contract Expiration Reminder (Sent to Staff) [dutch]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(472, 'gdpr', 'gdpr-removal-request', 'dutch', 'Removal Request From Contact (Sent to administrators) [dutch]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(473, 'gdpr', 'gdpr-removal-request-lead', 'dutch', 'Removal Request From Lead (Sent to administrators) [dutch]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(474, 'client', 'client-registration-confirmed', 'dutch', 'Customer Registration Confirmed [dutch]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(475, 'contract', 'contract-signed-to-staff', 'dutch', 'Contract Signed (Sent to Staff) [dutch]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(476, 'subscriptions', 'customer-subscribed-to-staff', 'dutch', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [dutch]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(477, 'client', 'contact-verification-email', 'dutch', 'Email Verification (Sent to Contact After Registration) [dutch]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(478, 'client', 'new-customer-profile-file-uploaded-to-staff', 'dutch', 'New Customer Profile File(s) Uploaded (Sent to Staff) [dutch]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(479, 'staff', 'event-notification-to-staff', 'dutch', 'Event Notification (Calendar) [dutch]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
	(480, 'subscriptions', 'subscription-payment-requires-action', 'dutch', 'Credit Card Authorization Required - SCA [dutch]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(481, 'invoice', 'invoice-due-notice', 'dutch', 'Invoice Due Notice [dutch]', 'Your {invoice_number} will be due soon', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(482, 'estimate_request', 'estimate-request-submitted-to-staff', 'dutch', 'Estimate Request Submitted (Sent to Staff) [dutch]', 'New Estimate Request Submitted', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(483, 'estimate_request', 'estimate-request-assigned', 'dutch', 'Estimate Request Assigned (Sent to Staff) [dutch]', 'New Estimate Request Assigned', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(484, 'estimate_request', 'estimate-request-received-to-user', 'dutch', 'Estimate Request Received (Sent to User) [dutch]', 'Estimate Request Received', '', '{companyname} | CRM', NULL, 0, 0, 0),
	(485, 'notifications', 'non-billed-tasks-reminder', 'dutch', 'Non-billed tasks reminder (sent to selected staff members) [dutch]', 'Action required: Completed tasks are not billed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(486, 'invoice', 'invoices-batch-payments', 'dutch', 'Invoices Payments Recorded in Batch (Sent to Customer) [dutch]', 'We have received your payments', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(487, 'client', 'new-client-created', 'czech', 'New Contact Added/Registered (Welcome Email) [czech]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(488, 'invoice', 'invoice-send-to-client', 'czech', 'Send Invoice to Customer [czech]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(489, 'ticket', 'new-ticket-opened-admin', 'czech', 'New Ticket Opened (Opened by Staff, Sent to Customer) [czech]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(490, 'ticket', 'ticket-reply', 'czech', 'Ticket Reply (Sent to Customer) [czech]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(491, 'ticket', 'ticket-autoresponse', 'czech', 'New Ticket Opened - Autoresponse [czech]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(492, 'invoice', 'invoice-payment-recorded', 'czech', 'Invoice Payment Recorded (Sent to Customer) [czech]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(493, 'invoice', 'invoice-overdue-notice', 'czech', 'Invoice Overdue Notice [czech]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(494, 'invoice', 'invoice-already-send', 'czech', 'Invoice Already Sent to Customer [czech]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(495, 'ticket', 'new-ticket-created-staff', 'czech', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [czech]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(496, 'estimate', 'estimate-send-to-client', 'czech', 'Send Estimate to Customer [czech]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(497, 'ticket', 'ticket-reply-to-admin', 'czech', 'Ticket Reply (Sent to Staff) [czech]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(498, 'estimate', 'estimate-already-send', 'czech', 'Estimate Already Sent to Customer [czech]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(499, 'contract', 'contract-expiration', 'czech', 'Contract Expiration Reminder (Sent to Customer Contacts) [czech]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(500, 'tasks', 'task-assigned', 'czech', 'New Task Assigned (Sent to Staff) [czech]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(501, 'tasks', 'task-added-as-follower', 'czech', 'Staff Member Added as Follower on Task (Sent to Staff) [czech]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(502, 'tasks', 'task-commented', 'czech', 'New Comment on Task (Sent to Staff) [czech]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(503, 'tasks', 'task-added-attachment', 'czech', 'New Attachment(s) on Task (Sent to Staff) [czech]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(504, 'estimate', 'estimate-declined-to-staff', 'czech', 'Estimate Declined (Sent to Staff) [czech]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(505, 'estimate', 'estimate-accepted-to-staff', 'czech', 'Estimate Accepted (Sent to Staff) [czech]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(506, 'proposals', 'proposal-client-accepted', 'czech', 'Customer Action - Accepted (Sent to Staff) [czech]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(507, 'proposals', 'proposal-send-to-customer', 'czech', 'Send Proposal to Customer [czech]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(508, 'proposals', 'proposal-client-declined', 'czech', 'Customer Action - Declined (Sent to Staff) [czech]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(509, 'proposals', 'proposal-client-thank-you', 'czech', 'Thank You Email (Sent to Customer After Accept) [czech]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(510, 'proposals', 'proposal-comment-to-client', 'czech', 'New Comment Â (Sent to Customer/Lead) [czech]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(511, 'proposals', 'proposal-comment-to-admin', 'czech', 'New Comment (Sent to Staff)  [czech]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(512, 'estimate', 'estimate-thank-you-to-customer', 'czech', 'Thank You Email (Sent to Customer After Accept) [czech]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(513, 'tasks', 'task-deadline-notification', 'czech', 'Task Deadline Reminder - Sent to Assigned Members [czech]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(514, 'contract', 'send-contract', 'czech', 'Send Contract to Customer [czech]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(515, 'invoice', 'invoice-payment-recorded-to-staff', 'czech', 'Invoice Payment Recorded (Sent to Staff) [czech]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(516, 'ticket', 'auto-close-ticket', 'czech', 'Auto Close Ticket [czech]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(517, 'project', 'new-project-discussion-created-to-staff', 'czech', 'New Project Discussion (Sent to Project Members) [czech]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(518, 'project', 'new-project-discussion-created-to-customer', 'czech', 'New Project Discussion (Sent to Customer Contacts) [czech]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(519, 'project', 'new-project-file-uploaded-to-customer', 'czech', 'New Project File(s) Uploaded (Sent to Customer Contacts) [czech]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(520, 'project', 'new-project-file-uploaded-to-staff', 'czech', 'New Project File(s) Uploaded (Sent to Project Members) [czech]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(521, 'project', 'new-project-discussion-comment-to-customer', 'czech', 'New Discussion Comment  (Sent to Customer Contacts) [czech]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(522, 'project', 'new-project-discussion-comment-to-staff', 'czech', 'New Discussion Comment (Sent to Project Members) [czech]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(523, 'project', 'staff-added-as-project-member', 'czech', 'Staff Added as Project Member [czech]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(524, 'estimate', 'estimate-expiry-reminder', 'czech', 'Estimate Expiration Reminder [czech]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(525, 'proposals', 'proposal-expiry-reminder', 'czech', 'Proposal Expiration Reminder [czech]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(526, 'staff', 'new-staff-created', 'czech', 'New Staff Created (Welcome Email) [czech]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(527, 'client', 'contact-forgot-password', 'czech', 'Forgot Password [czech]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(528, 'client', 'contact-password-reseted', 'czech', 'Password Reset - Confirmation [czech]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(529, 'client', 'contact-set-password', 'czech', 'Set New Password [czech]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(530, 'staff', 'staff-forgot-password', 'czech', 'Forgot Password [czech]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(531, 'staff', 'staff-password-reseted', 'czech', 'Password Reset - Confirmation [czech]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(532, 'project', 'assigned-to-project', 'czech', 'New Project Created (Sent to Customer Contacts) [czech]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(533, 'tasks', 'task-added-attachment-to-contacts', 'czech', 'New Attachment(s) on Task (Sent to Customer Contacts) [czech]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(534, 'tasks', 'task-commented-to-contacts', 'czech', 'New Comment on Task (Sent to Customer Contacts) [czech]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(535, 'leads', 'new-lead-assigned', 'czech', 'New Lead Assigned to Staff Member [czech]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(536, 'client', 'client-statement', 'czech', 'Statement - Account Summary [czech]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(537, 'ticket', 'ticket-assigned-to-admin', 'czech', 'New Ticket Assigned (Sent to Staff) [czech]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(538, 'client', 'new-client-registered-to-admin', 'czech', 'New Customer Registration (Sent to admins) [czech]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(539, 'leads', 'new-web-to-lead-form-submitted', 'czech', 'Web to lead form submitted - Sent to lead [czech]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
	(540, 'staff', 'two-factor-authentication', 'czech', 'Two Factor Authentication [czech]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(541, 'project', 'project-finished-to-customer', 'czech', 'Project Marked as Finished (Sent to Customer Contacts) [czech]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(542, 'credit_note', 'credit-note-send-to-client', 'czech', 'Send Credit Note To Email [czech]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(543, 'tasks', 'task-status-change-to-staff', 'czech', 'Task Status Changed (Sent to Staff) [czech]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(544, 'tasks', 'task-status-change-to-contacts', 'czech', 'Task Status Changed (Sent to Customer Contacts) [czech]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(545, 'staff', 'reminder-email-staff', 'czech', 'Staff Reminder Email [czech]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(546, 'contract', 'contract-comment-to-client', 'czech', 'New Comment Â (Sent to Customer Contacts) [czech]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(547, 'contract', 'contract-comment-to-admin', 'czech', 'New Comment (Sent to Staff)  [czech]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(548, 'subscriptions', 'send-subscription', 'czech', 'Send Subscription to Customer [czech]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(549, 'subscriptions', 'subscription-payment-failed', 'czech', 'Subscription Payment Failed [czech]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(550, 'subscriptions', 'subscription-canceled', 'czech', 'Subscription Canceled (Sent to customer primary contact) [czech]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(551, 'subscriptions', 'subscription-payment-succeeded', 'czech', 'Subscription Payment Succeeded (Sent to customer primary contact) [czech]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(552, 'contract', 'contract-expiration-to-staff', 'czech', 'Contract Expiration Reminder (Sent to Staff) [czech]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(553, 'gdpr', 'gdpr-removal-request', 'czech', 'Removal Request From Contact (Sent to administrators) [czech]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(554, 'gdpr', 'gdpr-removal-request-lead', 'czech', 'Removal Request From Lead (Sent to administrators) [czech]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(555, 'client', 'client-registration-confirmed', 'czech', 'Customer Registration Confirmed [czech]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(556, 'contract', 'contract-signed-to-staff', 'czech', 'Contract Signed (Sent to Staff) [czech]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(557, 'subscriptions', 'customer-subscribed-to-staff', 'czech', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [czech]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(558, 'client', 'contact-verification-email', 'czech', 'Email Verification (Sent to Contact After Registration) [czech]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(559, 'client', 'new-customer-profile-file-uploaded-to-staff', 'czech', 'New Customer Profile File(s) Uploaded (Sent to Staff) [czech]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(560, 'staff', 'event-notification-to-staff', 'czech', 'Event Notification (Calendar) [czech]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
	(561, 'subscriptions', 'subscription-payment-requires-action', 'czech', 'Credit Card Authorization Required - SCA [czech]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(562, 'invoice', 'invoice-due-notice', 'czech', 'Invoice Due Notice [czech]', 'Your {invoice_number} will be due soon', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(563, 'estimate_request', 'estimate-request-submitted-to-staff', 'czech', 'Estimate Request Submitted (Sent to Staff) [czech]', 'New Estimate Request Submitted', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(564, 'estimate_request', 'estimate-request-assigned', 'czech', 'Estimate Request Assigned (Sent to Staff) [czech]', 'New Estimate Request Assigned', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(565, 'estimate_request', 'estimate-request-received-to-user', 'czech', 'Estimate Request Received (Sent to User) [czech]', 'Estimate Request Received', '', '{companyname} | CRM', NULL, 0, 0, 0),
	(566, 'notifications', 'non-billed-tasks-reminder', 'czech', 'Non-billed tasks reminder (sent to selected staff members) [czech]', 'Action required: Completed tasks are not billed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(567, 'invoice', 'invoices-batch-payments', 'czech', 'Invoices Payments Recorded in Batch (Sent to Customer) [czech]', 'We have received your payments', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(568, 'client', 'new-client-created', 'indonesia', 'New Contact Added/Registered (Welcome Email) [indonesia]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(569, 'invoice', 'invoice-send-to-client', 'indonesia', 'Send Invoice to Customer [indonesia]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(570, 'ticket', 'new-ticket-opened-admin', 'indonesia', 'New Ticket Opened (Opened by Staff, Sent to Customer) [indonesia]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(571, 'ticket', 'ticket-reply', 'indonesia', 'Ticket Reply (Sent to Customer) [indonesia]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(572, 'ticket', 'ticket-autoresponse', 'indonesia', 'New Ticket Opened - Autoresponse [indonesia]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(573, 'invoice', 'invoice-payment-recorded', 'indonesia', 'Invoice Payment Recorded (Sent to Customer) [indonesia]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(574, 'invoice', 'invoice-overdue-notice', 'indonesia', 'Invoice Overdue Notice [indonesia]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(575, 'invoice', 'invoice-already-send', 'indonesia', 'Invoice Already Sent to Customer [indonesia]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(576, 'ticket', 'new-ticket-created-staff', 'indonesia', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [indonesia]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(577, 'estimate', 'estimate-send-to-client', 'indonesia', 'Send Estimate to Customer [indonesia]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(578, 'ticket', 'ticket-reply-to-admin', 'indonesia', 'Ticket Reply (Sent to Staff) [indonesia]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(579, 'estimate', 'estimate-already-send', 'indonesia', 'Estimate Already Sent to Customer [indonesia]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(580, 'contract', 'contract-expiration', 'indonesia', 'Contract Expiration Reminder (Sent to Customer Contacts) [indonesia]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(581, 'tasks', 'task-assigned', 'indonesia', 'New Task Assigned (Sent to Staff) [indonesia]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(582, 'tasks', 'task-added-as-follower', 'indonesia', 'Staff Member Added as Follower on Task (Sent to Staff) [indonesia]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(583, 'tasks', 'task-commented', 'indonesia', 'New Comment on Task (Sent to Staff) [indonesia]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(584, 'tasks', 'task-added-attachment', 'indonesia', 'New Attachment(s) on Task (Sent to Staff) [indonesia]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(585, 'estimate', 'estimate-declined-to-staff', 'indonesia', 'Estimate Declined (Sent to Staff) [indonesia]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(586, 'estimate', 'estimate-accepted-to-staff', 'indonesia', 'Estimate Accepted (Sent to Staff) [indonesia]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(587, 'proposals', 'proposal-client-accepted', 'indonesia', 'Customer Action - Accepted (Sent to Staff) [indonesia]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(588, 'proposals', 'proposal-send-to-customer', 'indonesia', 'Send Proposal to Customer [indonesia]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(589, 'proposals', 'proposal-client-declined', 'indonesia', 'Customer Action - Declined (Sent to Staff) [indonesia]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(590, 'proposals', 'proposal-client-thank-you', 'indonesia', 'Thank You Email (Sent to Customer After Accept) [indonesia]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(591, 'proposals', 'proposal-comment-to-client', 'indonesia', 'New Comment Â (Sent to Customer/Lead) [indonesia]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(592, 'proposals', 'proposal-comment-to-admin', 'indonesia', 'New Comment (Sent to Staff)  [indonesia]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(593, 'estimate', 'estimate-thank-you-to-customer', 'indonesia', 'Thank You Email (Sent to Customer After Accept) [indonesia]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(594, 'tasks', 'task-deadline-notification', 'indonesia', 'Task Deadline Reminder - Sent to Assigned Members [indonesia]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(595, 'contract', 'send-contract', 'indonesia', 'Send Contract to Customer [indonesia]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(596, 'invoice', 'invoice-payment-recorded-to-staff', 'indonesia', 'Invoice Payment Recorded (Sent to Staff) [indonesia]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(597, 'ticket', 'auto-close-ticket', 'indonesia', 'Auto Close Ticket [indonesia]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(598, 'project', 'new-project-discussion-created-to-staff', 'indonesia', 'New Project Discussion (Sent to Project Members) [indonesia]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(599, 'project', 'new-project-discussion-created-to-customer', 'indonesia', 'New Project Discussion (Sent to Customer Contacts) [indonesia]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(600, 'project', 'new-project-file-uploaded-to-customer', 'indonesia', 'New Project File(s) Uploaded (Sent to Customer Contacts) [indonesia]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(601, 'project', 'new-project-file-uploaded-to-staff', 'indonesia', 'New Project File(s) Uploaded (Sent to Project Members) [indonesia]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(602, 'project', 'new-project-discussion-comment-to-customer', 'indonesia', 'New Discussion Comment  (Sent to Customer Contacts) [indonesia]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(603, 'project', 'new-project-discussion-comment-to-staff', 'indonesia', 'New Discussion Comment (Sent to Project Members) [indonesia]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(604, 'project', 'staff-added-as-project-member', 'indonesia', 'Staff Added as Project Member [indonesia]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(605, 'estimate', 'estimate-expiry-reminder', 'indonesia', 'Estimate Expiration Reminder [indonesia]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(606, 'proposals', 'proposal-expiry-reminder', 'indonesia', 'Proposal Expiration Reminder [indonesia]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(607, 'staff', 'new-staff-created', 'indonesia', 'New Staff Created (Welcome Email) [indonesia]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(608, 'client', 'contact-forgot-password', 'indonesia', 'Forgot Password [indonesia]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(609, 'client', 'contact-password-reseted', 'indonesia', 'Password Reset - Confirmation [indonesia]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(610, 'client', 'contact-set-password', 'indonesia', 'Set New Password [indonesia]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(611, 'staff', 'staff-forgot-password', 'indonesia', 'Forgot Password [indonesia]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(612, 'staff', 'staff-password-reseted', 'indonesia', 'Password Reset - Confirmation [indonesia]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(613, 'project', 'assigned-to-project', 'indonesia', 'New Project Created (Sent to Customer Contacts) [indonesia]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(614, 'tasks', 'task-added-attachment-to-contacts', 'indonesia', 'New Attachment(s) on Task (Sent to Customer Contacts) [indonesia]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(615, 'tasks', 'task-commented-to-contacts', 'indonesia', 'New Comment on Task (Sent to Customer Contacts) [indonesia]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(616, 'leads', 'new-lead-assigned', 'indonesia', 'New Lead Assigned to Staff Member [indonesia]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(617, 'client', 'client-statement', 'indonesia', 'Statement - Account Summary [indonesia]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(618, 'ticket', 'ticket-assigned-to-admin', 'indonesia', 'New Ticket Assigned (Sent to Staff) [indonesia]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(619, 'client', 'new-client-registered-to-admin', 'indonesia', 'New Customer Registration (Sent to admins) [indonesia]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(620, 'leads', 'new-web-to-lead-form-submitted', 'indonesia', 'Web to lead form submitted - Sent to lead [indonesia]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
	(621, 'staff', 'two-factor-authentication', 'indonesia', 'Two Factor Authentication [indonesia]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(622, 'project', 'project-finished-to-customer', 'indonesia', 'Project Marked as Finished (Sent to Customer Contacts) [indonesia]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(623, 'credit_note', 'credit-note-send-to-client', 'indonesia', 'Send Credit Note To Email [indonesia]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(624, 'tasks', 'task-status-change-to-staff', 'indonesia', 'Task Status Changed (Sent to Staff) [indonesia]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(625, 'tasks', 'task-status-change-to-contacts', 'indonesia', 'Task Status Changed (Sent to Customer Contacts) [indonesia]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(626, 'staff', 'reminder-email-staff', 'indonesia', 'Staff Reminder Email [indonesia]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(627, 'contract', 'contract-comment-to-client', 'indonesia', 'New Comment Â (Sent to Customer Contacts) [indonesia]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(628, 'contract', 'contract-comment-to-admin', 'indonesia', 'New Comment (Sent to Staff)  [indonesia]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(629, 'subscriptions', 'send-subscription', 'indonesia', 'Send Subscription to Customer [indonesia]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(630, 'subscriptions', 'subscription-payment-failed', 'indonesia', 'Subscription Payment Failed [indonesia]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(631, 'subscriptions', 'subscription-canceled', 'indonesia', 'Subscription Canceled (Sent to customer primary contact) [indonesia]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(632, 'subscriptions', 'subscription-payment-succeeded', 'indonesia', 'Subscription Payment Succeeded (Sent to customer primary contact) [indonesia]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(633, 'contract', 'contract-expiration-to-staff', 'indonesia', 'Contract Expiration Reminder (Sent to Staff) [indonesia]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(634, 'gdpr', 'gdpr-removal-request', 'indonesia', 'Removal Request From Contact (Sent to administrators) [indonesia]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(635, 'gdpr', 'gdpr-removal-request-lead', 'indonesia', 'Removal Request From Lead (Sent to administrators) [indonesia]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(636, 'client', 'client-registration-confirmed', 'indonesia', 'Customer Registration Confirmed [indonesia]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(637, 'contract', 'contract-signed-to-staff', 'indonesia', 'Contract Signed (Sent to Staff) [indonesia]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(638, 'subscriptions', 'customer-subscribed-to-staff', 'indonesia', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [indonesia]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(639, 'client', 'contact-verification-email', 'indonesia', 'Email Verification (Sent to Contact After Registration) [indonesia]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(640, 'client', 'new-customer-profile-file-uploaded-to-staff', 'indonesia', 'New Customer Profile File(s) Uploaded (Sent to Staff) [indonesia]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(641, 'staff', 'event-notification-to-staff', 'indonesia', 'Event Notification (Calendar) [indonesia]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
	(642, 'subscriptions', 'subscription-payment-requires-action', 'indonesia', 'Credit Card Authorization Required - SCA [indonesia]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(643, 'invoice', 'invoice-due-notice', 'indonesia', 'Invoice Due Notice [indonesia]', 'Your {invoice_number} will be due soon', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(644, 'estimate_request', 'estimate-request-submitted-to-staff', 'indonesia', 'Estimate Request Submitted (Sent to Staff) [indonesia]', 'New Estimate Request Submitted', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(645, 'estimate_request', 'estimate-request-assigned', 'indonesia', 'Estimate Request Assigned (Sent to Staff) [indonesia]', 'New Estimate Request Assigned', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(646, 'estimate_request', 'estimate-request-received-to-user', 'indonesia', 'Estimate Request Received (Sent to User) [indonesia]', 'Estimate Request Received', '', '{companyname} | CRM', NULL, 0, 0, 0),
	(647, 'notifications', 'non-billed-tasks-reminder', 'indonesia', 'Non-billed tasks reminder (sent to selected staff members) [indonesia]', 'Action required: Completed tasks are not billed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(648, 'invoice', 'invoices-batch-payments', 'indonesia', 'Invoices Payments Recorded in Batch (Sent to Customer) [indonesia]', 'We have received your payments', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(649, 'client', 'new-client-created', 'polish', 'New Contact Added/Registered (Welcome Email) [polish]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(650, 'invoice', 'invoice-send-to-client', 'polish', 'Send Invoice to Customer [polish]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(651, 'ticket', 'new-ticket-opened-admin', 'polish', 'New Ticket Opened (Opened by Staff, Sent to Customer) [polish]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(652, 'ticket', 'ticket-reply', 'polish', 'Ticket Reply (Sent to Customer) [polish]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(653, 'ticket', 'ticket-autoresponse', 'polish', 'New Ticket Opened - Autoresponse [polish]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(654, 'invoice', 'invoice-payment-recorded', 'polish', 'Invoice Payment Recorded (Sent to Customer) [polish]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(655, 'invoice', 'invoice-overdue-notice', 'polish', 'Invoice Overdue Notice [polish]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(656, 'invoice', 'invoice-already-send', 'polish', 'Invoice Already Sent to Customer [polish]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(657, 'ticket', 'new-ticket-created-staff', 'polish', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [polish]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(658, 'estimate', 'estimate-send-to-client', 'polish', 'Send Estimate to Customer [polish]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(659, 'ticket', 'ticket-reply-to-admin', 'polish', 'Ticket Reply (Sent to Staff) [polish]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(660, 'estimate', 'estimate-already-send', 'polish', 'Estimate Already Sent to Customer [polish]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(661, 'contract', 'contract-expiration', 'polish', 'Contract Expiration Reminder (Sent to Customer Contacts) [polish]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(662, 'tasks', 'task-assigned', 'polish', 'New Task Assigned (Sent to Staff) [polish]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(663, 'tasks', 'task-added-as-follower', 'polish', 'Staff Member Added as Follower on Task (Sent to Staff) [polish]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(664, 'tasks', 'task-commented', 'polish', 'New Comment on Task (Sent to Staff) [polish]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(665, 'tasks', 'task-added-attachment', 'polish', 'New Attachment(s) on Task (Sent to Staff) [polish]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(666, 'estimate', 'estimate-declined-to-staff', 'polish', 'Estimate Declined (Sent to Staff) [polish]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(667, 'estimate', 'estimate-accepted-to-staff', 'polish', 'Estimate Accepted (Sent to Staff) [polish]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(668, 'proposals', 'proposal-client-accepted', 'polish', 'Customer Action - Accepted (Sent to Staff) [polish]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(669, 'proposals', 'proposal-send-to-customer', 'polish', 'Send Proposal to Customer [polish]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(670, 'proposals', 'proposal-client-declined', 'polish', 'Customer Action - Declined (Sent to Staff) [polish]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(671, 'proposals', 'proposal-client-thank-you', 'polish', 'Thank You Email (Sent to Customer After Accept) [polish]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(672, 'proposals', 'proposal-comment-to-client', 'polish', 'New Comment Â (Sent to Customer/Lead) [polish]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(673, 'proposals', 'proposal-comment-to-admin', 'polish', 'New Comment (Sent to Staff)  [polish]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(674, 'estimate', 'estimate-thank-you-to-customer', 'polish', 'Thank You Email (Sent to Customer After Accept) [polish]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(675, 'tasks', 'task-deadline-notification', 'polish', 'Task Deadline Reminder - Sent to Assigned Members [polish]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(676, 'contract', 'send-contract', 'polish', 'Send Contract to Customer [polish]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(677, 'invoice', 'invoice-payment-recorded-to-staff', 'polish', 'Invoice Payment Recorded (Sent to Staff) [polish]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(678, 'ticket', 'auto-close-ticket', 'polish', 'Auto Close Ticket [polish]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(679, 'project', 'new-project-discussion-created-to-staff', 'polish', 'New Project Discussion (Sent to Project Members) [polish]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(680, 'project', 'new-project-discussion-created-to-customer', 'polish', 'New Project Discussion (Sent to Customer Contacts) [polish]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(681, 'project', 'new-project-file-uploaded-to-customer', 'polish', 'New Project File(s) Uploaded (Sent to Customer Contacts) [polish]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(682, 'project', 'new-project-file-uploaded-to-staff', 'polish', 'New Project File(s) Uploaded (Sent to Project Members) [polish]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(683, 'project', 'new-project-discussion-comment-to-customer', 'polish', 'New Discussion Comment  (Sent to Customer Contacts) [polish]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(684, 'project', 'new-project-discussion-comment-to-staff', 'polish', 'New Discussion Comment (Sent to Project Members) [polish]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(685, 'project', 'staff-added-as-project-member', 'polish', 'Staff Added as Project Member [polish]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(686, 'estimate', 'estimate-expiry-reminder', 'polish', 'Estimate Expiration Reminder [polish]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(687, 'proposals', 'proposal-expiry-reminder', 'polish', 'Proposal Expiration Reminder [polish]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(688, 'staff', 'new-staff-created', 'polish', 'New Staff Created (Welcome Email) [polish]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(689, 'client', 'contact-forgot-password', 'polish', 'Forgot Password [polish]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(690, 'client', 'contact-password-reseted', 'polish', 'Password Reset - Confirmation [polish]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(691, 'client', 'contact-set-password', 'polish', 'Set New Password [polish]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(692, 'staff', 'staff-forgot-password', 'polish', 'Forgot Password [polish]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(693, 'staff', 'staff-password-reseted', 'polish', 'Password Reset - Confirmation [polish]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(694, 'project', 'assigned-to-project', 'polish', 'New Project Created (Sent to Customer Contacts) [polish]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(695, 'tasks', 'task-added-attachment-to-contacts', 'polish', 'New Attachment(s) on Task (Sent to Customer Contacts) [polish]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(696, 'tasks', 'task-commented-to-contacts', 'polish', 'New Comment on Task (Sent to Customer Contacts) [polish]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(697, 'leads', 'new-lead-assigned', 'polish', 'New Lead Assigned to Staff Member [polish]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(698, 'client', 'client-statement', 'polish', 'Statement - Account Summary [polish]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(699, 'ticket', 'ticket-assigned-to-admin', 'polish', 'New Ticket Assigned (Sent to Staff) [polish]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(700, 'client', 'new-client-registered-to-admin', 'polish', 'New Customer Registration (Sent to admins) [polish]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(701, 'leads', 'new-web-to-lead-form-submitted', 'polish', 'Web to lead form submitted - Sent to lead [polish]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
	(702, 'staff', 'two-factor-authentication', 'polish', 'Two Factor Authentication [polish]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(703, 'project', 'project-finished-to-customer', 'polish', 'Project Marked as Finished (Sent to Customer Contacts) [polish]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(704, 'credit_note', 'credit-note-send-to-client', 'polish', 'Send Credit Note To Email [polish]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(705, 'tasks', 'task-status-change-to-staff', 'polish', 'Task Status Changed (Sent to Staff) [polish]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(706, 'tasks', 'task-status-change-to-contacts', 'polish', 'Task Status Changed (Sent to Customer Contacts) [polish]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(707, 'staff', 'reminder-email-staff', 'polish', 'Staff Reminder Email [polish]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(708, 'contract', 'contract-comment-to-client', 'polish', 'New Comment Â (Sent to Customer Contacts) [polish]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(709, 'contract', 'contract-comment-to-admin', 'polish', 'New Comment (Sent to Staff)  [polish]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(710, 'subscriptions', 'send-subscription', 'polish', 'Send Subscription to Customer [polish]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(711, 'subscriptions', 'subscription-payment-failed', 'polish', 'Subscription Payment Failed [polish]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(712, 'subscriptions', 'subscription-canceled', 'polish', 'Subscription Canceled (Sent to customer primary contact) [polish]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(713, 'subscriptions', 'subscription-payment-succeeded', 'polish', 'Subscription Payment Succeeded (Sent to customer primary contact) [polish]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(714, 'contract', 'contract-expiration-to-staff', 'polish', 'Contract Expiration Reminder (Sent to Staff) [polish]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(715, 'gdpr', 'gdpr-removal-request', 'polish', 'Removal Request From Contact (Sent to administrators) [polish]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(716, 'gdpr', 'gdpr-removal-request-lead', 'polish', 'Removal Request From Lead (Sent to administrators) [polish]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(717, 'client', 'client-registration-confirmed', 'polish', 'Customer Registration Confirmed [polish]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(718, 'contract', 'contract-signed-to-staff', 'polish', 'Contract Signed (Sent to Staff) [polish]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(719, 'subscriptions', 'customer-subscribed-to-staff', 'polish', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [polish]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(720, 'client', 'contact-verification-email', 'polish', 'Email Verification (Sent to Contact After Registration) [polish]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(721, 'client', 'new-customer-profile-file-uploaded-to-staff', 'polish', 'New Customer Profile File(s) Uploaded (Sent to Staff) [polish]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(722, 'staff', 'event-notification-to-staff', 'polish', 'Event Notification (Calendar) [polish]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
	(723, 'subscriptions', 'subscription-payment-requires-action', 'polish', 'Credit Card Authorization Required - SCA [polish]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(724, 'invoice', 'invoice-due-notice', 'polish', 'Invoice Due Notice [polish]', 'Your {invoice_number} will be due soon', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(725, 'estimate_request', 'estimate-request-submitted-to-staff', 'polish', 'Estimate Request Submitted (Sent to Staff) [polish]', 'New Estimate Request Submitted', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(726, 'estimate_request', 'estimate-request-assigned', 'polish', 'Estimate Request Assigned (Sent to Staff) [polish]', 'New Estimate Request Assigned', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(727, 'estimate_request', 'estimate-request-received-to-user', 'polish', 'Estimate Request Received (Sent to User) [polish]', 'Estimate Request Received', '', '{companyname} | CRM', NULL, 0, 0, 0),
	(728, 'notifications', 'non-billed-tasks-reminder', 'polish', 'Non-billed tasks reminder (sent to selected staff members) [polish]', 'Action required: Completed tasks are not billed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(729, 'invoice', 'invoices-batch-payments', 'polish', 'Invoices Payments Recorded in Batch (Sent to Customer) [polish]', 'We have received your payments', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(730, 'client', 'new-client-created', 'portuguese', 'New Contact Added/Registered (Welcome Email) [portuguese]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(731, 'invoice', 'invoice-send-to-client', 'portuguese', 'Send Invoice to Customer [portuguese]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(732, 'ticket', 'new-ticket-opened-admin', 'portuguese', 'New Ticket Opened (Opened by Staff, Sent to Customer) [portuguese]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(733, 'ticket', 'ticket-reply', 'portuguese', 'Ticket Reply (Sent to Customer) [portuguese]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(734, 'ticket', 'ticket-autoresponse', 'portuguese', 'New Ticket Opened - Autoresponse [portuguese]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(735, 'invoice', 'invoice-payment-recorded', 'portuguese', 'Invoice Payment Recorded (Sent to Customer) [portuguese]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(736, 'invoice', 'invoice-overdue-notice', 'portuguese', 'Invoice Overdue Notice [portuguese]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(737, 'invoice', 'invoice-already-send', 'portuguese', 'Invoice Already Sent to Customer [portuguese]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(738, 'ticket', 'new-ticket-created-staff', 'portuguese', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [portuguese]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(739, 'estimate', 'estimate-send-to-client', 'portuguese', 'Send Estimate to Customer [portuguese]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(740, 'ticket', 'ticket-reply-to-admin', 'portuguese', 'Ticket Reply (Sent to Staff) [portuguese]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(741, 'estimate', 'estimate-already-send', 'portuguese', 'Estimate Already Sent to Customer [portuguese]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(742, 'contract', 'contract-expiration', 'portuguese', 'Contract Expiration Reminder (Sent to Customer Contacts) [portuguese]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(743, 'tasks', 'task-assigned', 'portuguese', 'New Task Assigned (Sent to Staff) [portuguese]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(744, 'tasks', 'task-added-as-follower', 'portuguese', 'Staff Member Added as Follower on Task (Sent to Staff) [portuguese]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(745, 'tasks', 'task-commented', 'portuguese', 'New Comment on Task (Sent to Staff) [portuguese]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(746, 'tasks', 'task-added-attachment', 'portuguese', 'New Attachment(s) on Task (Sent to Staff) [portuguese]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(747, 'estimate', 'estimate-declined-to-staff', 'portuguese', 'Estimate Declined (Sent to Staff) [portuguese]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(748, 'estimate', 'estimate-accepted-to-staff', 'portuguese', 'Estimate Accepted (Sent to Staff) [portuguese]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(749, 'proposals', 'proposal-client-accepted', 'portuguese', 'Customer Action - Accepted (Sent to Staff) [portuguese]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(750, 'proposals', 'proposal-send-to-customer', 'portuguese', 'Send Proposal to Customer [portuguese]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(751, 'proposals', 'proposal-client-declined', 'portuguese', 'Customer Action - Declined (Sent to Staff) [portuguese]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(752, 'proposals', 'proposal-client-thank-you', 'portuguese', 'Thank You Email (Sent to Customer After Accept) [portuguese]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(753, 'proposals', 'proposal-comment-to-client', 'portuguese', 'New Comment Â (Sent to Customer/Lead) [portuguese]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(754, 'proposals', 'proposal-comment-to-admin', 'portuguese', 'New Comment (Sent to Staff)  [portuguese]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(755, 'estimate', 'estimate-thank-you-to-customer', 'portuguese', 'Thank You Email (Sent to Customer After Accept) [portuguese]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(756, 'tasks', 'task-deadline-notification', 'portuguese', 'Task Deadline Reminder - Sent to Assigned Members [portuguese]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(757, 'contract', 'send-contract', 'portuguese', 'Send Contract to Customer [portuguese]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(758, 'invoice', 'invoice-payment-recorded-to-staff', 'portuguese', 'Invoice Payment Recorded (Sent to Staff) [portuguese]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(759, 'ticket', 'auto-close-ticket', 'portuguese', 'Auto Close Ticket [portuguese]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(760, 'project', 'new-project-discussion-created-to-staff', 'portuguese', 'New Project Discussion (Sent to Project Members) [portuguese]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(761, 'project', 'new-project-discussion-created-to-customer', 'portuguese', 'New Project Discussion (Sent to Customer Contacts) [portuguese]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(762, 'project', 'new-project-file-uploaded-to-customer', 'portuguese', 'New Project File(s) Uploaded (Sent to Customer Contacts) [portuguese]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(763, 'project', 'new-project-file-uploaded-to-staff', 'portuguese', 'New Project File(s) Uploaded (Sent to Project Members) [portuguese]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(764, 'project', 'new-project-discussion-comment-to-customer', 'portuguese', 'New Discussion Comment  (Sent to Customer Contacts) [portuguese]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(765, 'project', 'new-project-discussion-comment-to-staff', 'portuguese', 'New Discussion Comment (Sent to Project Members) [portuguese]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(766, 'project', 'staff-added-as-project-member', 'portuguese', 'Staff Added as Project Member [portuguese]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(767, 'estimate', 'estimate-expiry-reminder', 'portuguese', 'Estimate Expiration Reminder [portuguese]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(768, 'proposals', 'proposal-expiry-reminder', 'portuguese', 'Proposal Expiration Reminder [portuguese]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(769, 'staff', 'new-staff-created', 'portuguese', 'New Staff Created (Welcome Email) [portuguese]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(770, 'client', 'contact-forgot-password', 'portuguese', 'Forgot Password [portuguese]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(771, 'client', 'contact-password-reseted', 'portuguese', 'Password Reset - Confirmation [portuguese]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(772, 'client', 'contact-set-password', 'portuguese', 'Set New Password [portuguese]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(773, 'staff', 'staff-forgot-password', 'portuguese', 'Forgot Password [portuguese]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(774, 'staff', 'staff-password-reseted', 'portuguese', 'Password Reset - Confirmation [portuguese]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(775, 'project', 'assigned-to-project', 'portuguese', 'New Project Created (Sent to Customer Contacts) [portuguese]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(776, 'tasks', 'task-added-attachment-to-contacts', 'portuguese', 'New Attachment(s) on Task (Sent to Customer Contacts) [portuguese]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(777, 'tasks', 'task-commented-to-contacts', 'portuguese', 'New Comment on Task (Sent to Customer Contacts) [portuguese]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(778, 'leads', 'new-lead-assigned', 'portuguese', 'New Lead Assigned to Staff Member [portuguese]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(779, 'client', 'client-statement', 'portuguese', 'Statement - Account Summary [portuguese]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(780, 'ticket', 'ticket-assigned-to-admin', 'portuguese', 'New Ticket Assigned (Sent to Staff) [portuguese]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(781, 'client', 'new-client-registered-to-admin', 'portuguese', 'New Customer Registration (Sent to admins) [portuguese]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(782, 'leads', 'new-web-to-lead-form-submitted', 'portuguese', 'Web to lead form submitted - Sent to lead [portuguese]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
	(783, 'staff', 'two-factor-authentication', 'portuguese', 'Two Factor Authentication [portuguese]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(784, 'project', 'project-finished-to-customer', 'portuguese', 'Project Marked as Finished (Sent to Customer Contacts) [portuguese]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(785, 'credit_note', 'credit-note-send-to-client', 'portuguese', 'Send Credit Note To Email [portuguese]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(786, 'tasks', 'task-status-change-to-staff', 'portuguese', 'Task Status Changed (Sent to Staff) [portuguese]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(787, 'tasks', 'task-status-change-to-contacts', 'portuguese', 'Task Status Changed (Sent to Customer Contacts) [portuguese]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(788, 'staff', 'reminder-email-staff', 'portuguese', 'Staff Reminder Email [portuguese]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(789, 'contract', 'contract-comment-to-client', 'portuguese', 'New Comment Â (Sent to Customer Contacts) [portuguese]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(790, 'contract', 'contract-comment-to-admin', 'portuguese', 'New Comment (Sent to Staff)  [portuguese]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(791, 'subscriptions', 'send-subscription', 'portuguese', 'Send Subscription to Customer [portuguese]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(792, 'subscriptions', 'subscription-payment-failed', 'portuguese', 'Subscription Payment Failed [portuguese]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(793, 'subscriptions', 'subscription-canceled', 'portuguese', 'Subscription Canceled (Sent to customer primary contact) [portuguese]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(794, 'subscriptions', 'subscription-payment-succeeded', 'portuguese', 'Subscription Payment Succeeded (Sent to customer primary contact) [portuguese]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(795, 'contract', 'contract-expiration-to-staff', 'portuguese', 'Contract Expiration Reminder (Sent to Staff) [portuguese]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(796, 'gdpr', 'gdpr-removal-request', 'portuguese', 'Removal Request From Contact (Sent to administrators) [portuguese]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(797, 'gdpr', 'gdpr-removal-request-lead', 'portuguese', 'Removal Request From Lead (Sent to administrators) [portuguese]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(798, 'client', 'client-registration-confirmed', 'portuguese', 'Customer Registration Confirmed [portuguese]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(799, 'contract', 'contract-signed-to-staff', 'portuguese', 'Contract Signed (Sent to Staff) [portuguese]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(800, 'subscriptions', 'customer-subscribed-to-staff', 'portuguese', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [portuguese]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(801, 'client', 'contact-verification-email', 'portuguese', 'Email Verification (Sent to Contact After Registration) [portuguese]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(802, 'client', 'new-customer-profile-file-uploaded-to-staff', 'portuguese', 'New Customer Profile File(s) Uploaded (Sent to Staff) [portuguese]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(803, 'staff', 'event-notification-to-staff', 'portuguese', 'Event Notification (Calendar) [portuguese]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
	(804, 'subscriptions', 'subscription-payment-requires-action', 'portuguese', 'Credit Card Authorization Required - SCA [portuguese]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(805, 'invoice', 'invoice-due-notice', 'portuguese', 'Invoice Due Notice [portuguese]', 'Your {invoice_number} will be due soon', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(806, 'estimate_request', 'estimate-request-submitted-to-staff', 'portuguese', 'Estimate Request Submitted (Sent to Staff) [portuguese]', 'New Estimate Request Submitted', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(807, 'estimate_request', 'estimate-request-assigned', 'portuguese', 'Estimate Request Assigned (Sent to Staff) [portuguese]', 'New Estimate Request Assigned', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(808, 'estimate_request', 'estimate-request-received-to-user', 'portuguese', 'Estimate Request Received (Sent to User) [portuguese]', 'Estimate Request Received', '', '{companyname} | CRM', NULL, 0, 0, 0),
	(809, 'notifications', 'non-billed-tasks-reminder', 'portuguese', 'Non-billed tasks reminder (sent to selected staff members) [portuguese]', 'Action required: Completed tasks are not billed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(810, 'invoice', 'invoices-batch-payments', 'portuguese', 'Invoices Payments Recorded in Batch (Sent to Customer) [portuguese]', 'We have received your payments', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(811, 'client', 'new-client-created', 'chinese', 'New Contact Added/Registered (Welcome Email) [chinese]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(812, 'invoice', 'invoice-send-to-client', 'chinese', 'Send Invoice to Customer [chinese]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(813, 'ticket', 'new-ticket-opened-admin', 'chinese', 'New Ticket Opened (Opened by Staff, Sent to Customer) [chinese]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(814, 'ticket', 'ticket-reply', 'chinese', 'Ticket Reply (Sent to Customer) [chinese]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(815, 'ticket', 'ticket-autoresponse', 'chinese', 'New Ticket Opened - Autoresponse [chinese]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(816, 'invoice', 'invoice-payment-recorded', 'chinese', 'Invoice Payment Recorded (Sent to Customer) [chinese]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(817, 'invoice', 'invoice-overdue-notice', 'chinese', 'Invoice Overdue Notice [chinese]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(818, 'invoice', 'invoice-already-send', 'chinese', 'Invoice Already Sent to Customer [chinese]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(819, 'ticket', 'new-ticket-created-staff', 'chinese', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [chinese]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(820, 'estimate', 'estimate-send-to-client', 'chinese', 'Send Estimate to Customer [chinese]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(821, 'ticket', 'ticket-reply-to-admin', 'chinese', 'Ticket Reply (Sent to Staff) [chinese]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(822, 'estimate', 'estimate-already-send', 'chinese', 'Estimate Already Sent to Customer [chinese]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(823, 'contract', 'contract-expiration', 'chinese', 'Contract Expiration Reminder (Sent to Customer Contacts) [chinese]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(824, 'tasks', 'task-assigned', 'chinese', 'New Task Assigned (Sent to Staff) [chinese]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(825, 'tasks', 'task-added-as-follower', 'chinese', 'Staff Member Added as Follower on Task (Sent to Staff) [chinese]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(826, 'tasks', 'task-commented', 'chinese', 'New Comment on Task (Sent to Staff) [chinese]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(827, 'tasks', 'task-added-attachment', 'chinese', 'New Attachment(s) on Task (Sent to Staff) [chinese]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(828, 'estimate', 'estimate-declined-to-staff', 'chinese', 'Estimate Declined (Sent to Staff) [chinese]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(829, 'estimate', 'estimate-accepted-to-staff', 'chinese', 'Estimate Accepted (Sent to Staff) [chinese]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(830, 'proposals', 'proposal-client-accepted', 'chinese', 'Customer Action - Accepted (Sent to Staff) [chinese]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(831, 'proposals', 'proposal-send-to-customer', 'chinese', 'Send Proposal to Customer [chinese]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(832, 'proposals', 'proposal-client-declined', 'chinese', 'Customer Action - Declined (Sent to Staff) [chinese]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(833, 'proposals', 'proposal-client-thank-you', 'chinese', 'Thank You Email (Sent to Customer After Accept) [chinese]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(834, 'proposals', 'proposal-comment-to-client', 'chinese', 'New Comment Â (Sent to Customer/Lead) [chinese]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(835, 'proposals', 'proposal-comment-to-admin', 'chinese', 'New Comment (Sent to Staff)  [chinese]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(836, 'estimate', 'estimate-thank-you-to-customer', 'chinese', 'Thank You Email (Sent to Customer After Accept) [chinese]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(837, 'tasks', 'task-deadline-notification', 'chinese', 'Task Deadline Reminder - Sent to Assigned Members [chinese]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(838, 'contract', 'send-contract', 'chinese', 'Send Contract to Customer [chinese]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(839, 'invoice', 'invoice-payment-recorded-to-staff', 'chinese', 'Invoice Payment Recorded (Sent to Staff) [chinese]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(840, 'ticket', 'auto-close-ticket', 'chinese', 'Auto Close Ticket [chinese]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(841, 'project', 'new-project-discussion-created-to-staff', 'chinese', 'New Project Discussion (Sent to Project Members) [chinese]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(842, 'project', 'new-project-discussion-created-to-customer', 'chinese', 'New Project Discussion (Sent to Customer Contacts) [chinese]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(843, 'project', 'new-project-file-uploaded-to-customer', 'chinese', 'New Project File(s) Uploaded (Sent to Customer Contacts) [chinese]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(844, 'project', 'new-project-file-uploaded-to-staff', 'chinese', 'New Project File(s) Uploaded (Sent to Project Members) [chinese]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(845, 'project', 'new-project-discussion-comment-to-customer', 'chinese', 'New Discussion Comment  (Sent to Customer Contacts) [chinese]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(846, 'project', 'new-project-discussion-comment-to-staff', 'chinese', 'New Discussion Comment (Sent to Project Members) [chinese]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(847, 'project', 'staff-added-as-project-member', 'chinese', 'Staff Added as Project Member [chinese]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(848, 'estimate', 'estimate-expiry-reminder', 'chinese', 'Estimate Expiration Reminder [chinese]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(849, 'proposals', 'proposal-expiry-reminder', 'chinese', 'Proposal Expiration Reminder [chinese]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(850, 'staff', 'new-staff-created', 'chinese', 'New Staff Created (Welcome Email) [chinese]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(851, 'client', 'contact-forgot-password', 'chinese', 'Forgot Password [chinese]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(852, 'client', 'contact-password-reseted', 'chinese', 'Password Reset - Confirmation [chinese]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(853, 'client', 'contact-set-password', 'chinese', 'Set New Password [chinese]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(854, 'staff', 'staff-forgot-password', 'chinese', 'Forgot Password [chinese]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(855, 'staff', 'staff-password-reseted', 'chinese', 'Password Reset - Confirmation [chinese]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(856, 'project', 'assigned-to-project', 'chinese', 'New Project Created (Sent to Customer Contacts) [chinese]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(857, 'tasks', 'task-added-attachment-to-contacts', 'chinese', 'New Attachment(s) on Task (Sent to Customer Contacts) [chinese]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(858, 'tasks', 'task-commented-to-contacts', 'chinese', 'New Comment on Task (Sent to Customer Contacts) [chinese]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(859, 'leads', 'new-lead-assigned', 'chinese', 'New Lead Assigned to Staff Member [chinese]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(860, 'client', 'client-statement', 'chinese', 'Statement - Account Summary [chinese]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(861, 'ticket', 'ticket-assigned-to-admin', 'chinese', 'New Ticket Assigned (Sent to Staff) [chinese]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(862, 'client', 'new-client-registered-to-admin', 'chinese', 'New Customer Registration (Sent to admins) [chinese]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(863, 'leads', 'new-web-to-lead-form-submitted', 'chinese', 'Web to lead form submitted - Sent to lead [chinese]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
	(864, 'staff', 'two-factor-authentication', 'chinese', 'Two Factor Authentication [chinese]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(865, 'project', 'project-finished-to-customer', 'chinese', 'Project Marked as Finished (Sent to Customer Contacts) [chinese]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(866, 'credit_note', 'credit-note-send-to-client', 'chinese', 'Send Credit Note To Email [chinese]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(867, 'tasks', 'task-status-change-to-staff', 'chinese', 'Task Status Changed (Sent to Staff) [chinese]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(868, 'tasks', 'task-status-change-to-contacts', 'chinese', 'Task Status Changed (Sent to Customer Contacts) [chinese]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(869, 'staff', 'reminder-email-staff', 'chinese', 'Staff Reminder Email [chinese]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(870, 'contract', 'contract-comment-to-client', 'chinese', 'New Comment Â (Sent to Customer Contacts) [chinese]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(871, 'contract', 'contract-comment-to-admin', 'chinese', 'New Comment (Sent to Staff)  [chinese]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(872, 'subscriptions', 'send-subscription', 'chinese', 'Send Subscription to Customer [chinese]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(873, 'subscriptions', 'subscription-payment-failed', 'chinese', 'Subscription Payment Failed [chinese]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(874, 'subscriptions', 'subscription-canceled', 'chinese', 'Subscription Canceled (Sent to customer primary contact) [chinese]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(875, 'subscriptions', 'subscription-payment-succeeded', 'chinese', 'Subscription Payment Succeeded (Sent to customer primary contact) [chinese]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(876, 'contract', 'contract-expiration-to-staff', 'chinese', 'Contract Expiration Reminder (Sent to Staff) [chinese]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(877, 'gdpr', 'gdpr-removal-request', 'chinese', 'Removal Request From Contact (Sent to administrators) [chinese]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(878, 'gdpr', 'gdpr-removal-request-lead', 'chinese', 'Removal Request From Lead (Sent to administrators) [chinese]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(879, 'client', 'client-registration-confirmed', 'chinese', 'Customer Registration Confirmed [chinese]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(880, 'contract', 'contract-signed-to-staff', 'chinese', 'Contract Signed (Sent to Staff) [chinese]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(881, 'subscriptions', 'customer-subscribed-to-staff', 'chinese', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [chinese]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(882, 'client', 'contact-verification-email', 'chinese', 'Email Verification (Sent to Contact After Registration) [chinese]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(883, 'client', 'new-customer-profile-file-uploaded-to-staff', 'chinese', 'New Customer Profile File(s) Uploaded (Sent to Staff) [chinese]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(884, 'staff', 'event-notification-to-staff', 'chinese', 'Event Notification (Calendar) [chinese]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
	(885, 'subscriptions', 'subscription-payment-requires-action', 'chinese', 'Credit Card Authorization Required - SCA [chinese]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(886, 'invoice', 'invoice-due-notice', 'chinese', 'Invoice Due Notice [chinese]', 'Your {invoice_number} will be due soon', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(887, 'estimate_request', 'estimate-request-submitted-to-staff', 'chinese', 'Estimate Request Submitted (Sent to Staff) [chinese]', 'New Estimate Request Submitted', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(888, 'estimate_request', 'estimate-request-assigned', 'chinese', 'Estimate Request Assigned (Sent to Staff) [chinese]', 'New Estimate Request Assigned', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(889, 'estimate_request', 'estimate-request-received-to-user', 'chinese', 'Estimate Request Received (Sent to User) [chinese]', 'Estimate Request Received', '', '{companyname} | CRM', NULL, 0, 0, 0),
	(890, 'notifications', 'non-billed-tasks-reminder', 'chinese', 'Non-billed tasks reminder (sent to selected staff members) [chinese]', 'Action required: Completed tasks are not billed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(891, 'invoice', 'invoices-batch-payments', 'chinese', 'Invoices Payments Recorded in Batch (Sent to Customer) [chinese]', 'We have received your payments', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(892, 'client', 'new-client-created', 'catalan', 'New Contact Added/Registered (Welcome Email) [catalan]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(893, 'invoice', 'invoice-send-to-client', 'catalan', 'Send Invoice to Customer [catalan]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(894, 'ticket', 'new-ticket-opened-admin', 'catalan', 'New Ticket Opened (Opened by Staff, Sent to Customer) [catalan]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(895, 'ticket', 'ticket-reply', 'catalan', 'Ticket Reply (Sent to Customer) [catalan]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(896, 'ticket', 'ticket-autoresponse', 'catalan', 'New Ticket Opened - Autoresponse [catalan]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(897, 'invoice', 'invoice-payment-recorded', 'catalan', 'Invoice Payment Recorded (Sent to Customer) [catalan]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(898, 'invoice', 'invoice-overdue-notice', 'catalan', 'Invoice Overdue Notice [catalan]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(899, 'invoice', 'invoice-already-send', 'catalan', 'Invoice Already Sent to Customer [catalan]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(900, 'ticket', 'new-ticket-created-staff', 'catalan', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [catalan]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(901, 'estimate', 'estimate-send-to-client', 'catalan', 'Send Estimate to Customer [catalan]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(902, 'ticket', 'ticket-reply-to-admin', 'catalan', 'Ticket Reply (Sent to Staff) [catalan]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(903, 'estimate', 'estimate-already-send', 'catalan', 'Estimate Already Sent to Customer [catalan]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(904, 'contract', 'contract-expiration', 'catalan', 'Contract Expiration Reminder (Sent to Customer Contacts) [catalan]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(905, 'tasks', 'task-assigned', 'catalan', 'New Task Assigned (Sent to Staff) [catalan]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(906, 'tasks', 'task-added-as-follower', 'catalan', 'Staff Member Added as Follower on Task (Sent to Staff) [catalan]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(907, 'tasks', 'task-commented', 'catalan', 'New Comment on Task (Sent to Staff) [catalan]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(908, 'tasks', 'task-added-attachment', 'catalan', 'New Attachment(s) on Task (Sent to Staff) [catalan]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(909, 'estimate', 'estimate-declined-to-staff', 'catalan', 'Estimate Declined (Sent to Staff) [catalan]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(910, 'estimate', 'estimate-accepted-to-staff', 'catalan', 'Estimate Accepted (Sent to Staff) [catalan]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(911, 'proposals', 'proposal-client-accepted', 'catalan', 'Customer Action - Accepted (Sent to Staff) [catalan]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(912, 'proposals', 'proposal-send-to-customer', 'catalan', 'Send Proposal to Customer [catalan]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(913, 'proposals', 'proposal-client-declined', 'catalan', 'Customer Action - Declined (Sent to Staff) [catalan]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(914, 'proposals', 'proposal-client-thank-you', 'catalan', 'Thank You Email (Sent to Customer After Accept) [catalan]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(915, 'proposals', 'proposal-comment-to-client', 'catalan', 'New Comment Â (Sent to Customer/Lead) [catalan]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(916, 'proposals', 'proposal-comment-to-admin', 'catalan', 'New Comment (Sent to Staff)  [catalan]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(917, 'estimate', 'estimate-thank-you-to-customer', 'catalan', 'Thank You Email (Sent to Customer After Accept) [catalan]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(918, 'tasks', 'task-deadline-notification', 'catalan', 'Task Deadline Reminder - Sent to Assigned Members [catalan]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(919, 'contract', 'send-contract', 'catalan', 'Send Contract to Customer [catalan]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(920, 'invoice', 'invoice-payment-recorded-to-staff', 'catalan', 'Invoice Payment Recorded (Sent to Staff) [catalan]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(921, 'ticket', 'auto-close-ticket', 'catalan', 'Auto Close Ticket [catalan]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(922, 'project', 'new-project-discussion-created-to-staff', 'catalan', 'New Project Discussion (Sent to Project Members) [catalan]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(923, 'project', 'new-project-discussion-created-to-customer', 'catalan', 'New Project Discussion (Sent to Customer Contacts) [catalan]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(924, 'project', 'new-project-file-uploaded-to-customer', 'catalan', 'New Project File(s) Uploaded (Sent to Customer Contacts) [catalan]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(925, 'project', 'new-project-file-uploaded-to-staff', 'catalan', 'New Project File(s) Uploaded (Sent to Project Members) [catalan]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(926, 'project', 'new-project-discussion-comment-to-customer', 'catalan', 'New Discussion Comment  (Sent to Customer Contacts) [catalan]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(927, 'project', 'new-project-discussion-comment-to-staff', 'catalan', 'New Discussion Comment (Sent to Project Members) [catalan]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(928, 'project', 'staff-added-as-project-member', 'catalan', 'Staff Added as Project Member [catalan]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(929, 'estimate', 'estimate-expiry-reminder', 'catalan', 'Estimate Expiration Reminder [catalan]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(930, 'proposals', 'proposal-expiry-reminder', 'catalan', 'Proposal Expiration Reminder [catalan]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(931, 'staff', 'new-staff-created', 'catalan', 'New Staff Created (Welcome Email) [catalan]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(932, 'client', 'contact-forgot-password', 'catalan', 'Forgot Password [catalan]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(933, 'client', 'contact-password-reseted', 'catalan', 'Password Reset - Confirmation [catalan]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(934, 'client', 'contact-set-password', 'catalan', 'Set New Password [catalan]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(935, 'staff', 'staff-forgot-password', 'catalan', 'Forgot Password [catalan]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(936, 'staff', 'staff-password-reseted', 'catalan', 'Password Reset - Confirmation [catalan]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(937, 'project', 'assigned-to-project', 'catalan', 'New Project Created (Sent to Customer Contacts) [catalan]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(938, 'tasks', 'task-added-attachment-to-contacts', 'catalan', 'New Attachment(s) on Task (Sent to Customer Contacts) [catalan]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(939, 'tasks', 'task-commented-to-contacts', 'catalan', 'New Comment on Task (Sent to Customer Contacts) [catalan]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(940, 'leads', 'new-lead-assigned', 'catalan', 'New Lead Assigned to Staff Member [catalan]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(941, 'client', 'client-statement', 'catalan', 'Statement - Account Summary [catalan]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(942, 'ticket', 'ticket-assigned-to-admin', 'catalan', 'New Ticket Assigned (Sent to Staff) [catalan]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(943, 'client', 'new-client-registered-to-admin', 'catalan', 'New Customer Registration (Sent to admins) [catalan]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(944, 'leads', 'new-web-to-lead-form-submitted', 'catalan', 'Web to lead form submitted - Sent to lead [catalan]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
	(945, 'staff', 'two-factor-authentication', 'catalan', 'Two Factor Authentication [catalan]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(946, 'project', 'project-finished-to-customer', 'catalan', 'Project Marked as Finished (Sent to Customer Contacts) [catalan]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(947, 'credit_note', 'credit-note-send-to-client', 'catalan', 'Send Credit Note To Email [catalan]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(948, 'tasks', 'task-status-change-to-staff', 'catalan', 'Task Status Changed (Sent to Staff) [catalan]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(949, 'tasks', 'task-status-change-to-contacts', 'catalan', 'Task Status Changed (Sent to Customer Contacts) [catalan]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(950, 'staff', 'reminder-email-staff', 'catalan', 'Staff Reminder Email [catalan]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(951, 'contract', 'contract-comment-to-client', 'catalan', 'New Comment Â (Sent to Customer Contacts) [catalan]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(952, 'contract', 'contract-comment-to-admin', 'catalan', 'New Comment (Sent to Staff)  [catalan]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(953, 'subscriptions', 'send-subscription', 'catalan', 'Send Subscription to Customer [catalan]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(954, 'subscriptions', 'subscription-payment-failed', 'catalan', 'Subscription Payment Failed [catalan]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(955, 'subscriptions', 'subscription-canceled', 'catalan', 'Subscription Canceled (Sent to customer primary contact) [catalan]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(956, 'subscriptions', 'subscription-payment-succeeded', 'catalan', 'Subscription Payment Succeeded (Sent to customer primary contact) [catalan]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(957, 'contract', 'contract-expiration-to-staff', 'catalan', 'Contract Expiration Reminder (Sent to Staff) [catalan]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(958, 'gdpr', 'gdpr-removal-request', 'catalan', 'Removal Request From Contact (Sent to administrators) [catalan]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(959, 'gdpr', 'gdpr-removal-request-lead', 'catalan', 'Removal Request From Lead (Sent to administrators) [catalan]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(960, 'client', 'client-registration-confirmed', 'catalan', 'Customer Registration Confirmed [catalan]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(961, 'contract', 'contract-signed-to-staff', 'catalan', 'Contract Signed (Sent to Staff) [catalan]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(962, 'subscriptions', 'customer-subscribed-to-staff', 'catalan', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [catalan]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(963, 'client', 'contact-verification-email', 'catalan', 'Email Verification (Sent to Contact After Registration) [catalan]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(964, 'client', 'new-customer-profile-file-uploaded-to-staff', 'catalan', 'New Customer Profile File(s) Uploaded (Sent to Staff) [catalan]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(965, 'staff', 'event-notification-to-staff', 'catalan', 'Event Notification (Calendar) [catalan]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
	(966, 'subscriptions', 'subscription-payment-requires-action', 'catalan', 'Credit Card Authorization Required - SCA [catalan]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(967, 'invoice', 'invoice-due-notice', 'catalan', 'Invoice Due Notice [catalan]', 'Your {invoice_number} will be due soon', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(968, 'estimate_request', 'estimate-request-submitted-to-staff', 'catalan', 'Estimate Request Submitted (Sent to Staff) [catalan]', 'New Estimate Request Submitted', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(969, 'estimate_request', 'estimate-request-assigned', 'catalan', 'Estimate Request Assigned (Sent to Staff) [catalan]', 'New Estimate Request Assigned', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(970, 'estimate_request', 'estimate-request-received-to-user', 'catalan', 'Estimate Request Received (Sent to User) [catalan]', 'Estimate Request Received', '', '{companyname} | CRM', NULL, 0, 0, 0),
	(971, 'notifications', 'non-billed-tasks-reminder', 'catalan', 'Non-billed tasks reminder (sent to selected staff members) [catalan]', 'Action required: Completed tasks are not billed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(972, 'invoice', 'invoices-batch-payments', 'catalan', 'Invoices Payments Recorded in Batch (Sent to Customer) [catalan]', 'We have received your payments', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(973, 'client', 'new-client-created', 'french', 'New Contact Added/Registered (Welcome Email) [french]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(974, 'invoice', 'invoice-send-to-client', 'french', 'Send Invoice to Customer [french]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(975, 'ticket', 'new-ticket-opened-admin', 'french', 'New Ticket Opened (Opened by Staff, Sent to Customer) [french]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(976, 'ticket', 'ticket-reply', 'french', 'Ticket Reply (Sent to Customer) [french]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(977, 'ticket', 'ticket-autoresponse', 'french', 'New Ticket Opened - Autoresponse [french]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(978, 'invoice', 'invoice-payment-recorded', 'french', 'Invoice Payment Recorded (Sent to Customer) [french]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(979, 'invoice', 'invoice-overdue-notice', 'french', 'Invoice Overdue Notice [french]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(980, 'invoice', 'invoice-already-send', 'french', 'Invoice Already Sent to Customer [french]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(981, 'ticket', 'new-ticket-created-staff', 'french', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [french]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(982, 'estimate', 'estimate-send-to-client', 'french', 'Send Estimate to Customer [french]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(983, 'ticket', 'ticket-reply-to-admin', 'french', 'Ticket Reply (Sent to Staff) [french]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(984, 'estimate', 'estimate-already-send', 'french', 'Estimate Already Sent to Customer [french]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(985, 'contract', 'contract-expiration', 'french', 'Contract Expiration Reminder (Sent to Customer Contacts) [french]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(986, 'tasks', 'task-assigned', 'french', 'New Task Assigned (Sent to Staff) [french]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(987, 'tasks', 'task-added-as-follower', 'french', 'Staff Member Added as Follower on Task (Sent to Staff) [french]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(988, 'tasks', 'task-commented', 'french', 'New Comment on Task (Sent to Staff) [french]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(989, 'tasks', 'task-added-attachment', 'french', 'New Attachment(s) on Task (Sent to Staff) [french]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(990, 'estimate', 'estimate-declined-to-staff', 'french', 'Estimate Declined (Sent to Staff) [french]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(991, 'estimate', 'estimate-accepted-to-staff', 'french', 'Estimate Accepted (Sent to Staff) [french]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(992, 'proposals', 'proposal-client-accepted', 'french', 'Customer Action - Accepted (Sent to Staff) [french]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(993, 'proposals', 'proposal-send-to-customer', 'french', 'Send Proposal to Customer [french]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(994, 'proposals', 'proposal-client-declined', 'french', 'Customer Action - Declined (Sent to Staff) [french]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(995, 'proposals', 'proposal-client-thank-you', 'french', 'Thank You Email (Sent to Customer After Accept) [french]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(996, 'proposals', 'proposal-comment-to-client', 'french', 'New Comment Â (Sent to Customer/Lead) [french]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(997, 'proposals', 'proposal-comment-to-admin', 'french', 'New Comment (Sent to Staff)  [french]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(998, 'estimate', 'estimate-thank-you-to-customer', 'french', 'Thank You Email (Sent to Customer After Accept) [french]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(999, 'tasks', 'task-deadline-notification', 'french', 'Task Deadline Reminder - Sent to Assigned Members [french]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1000, 'contract', 'send-contract', 'french', 'Send Contract to Customer [french]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1001, 'invoice', 'invoice-payment-recorded-to-staff', 'french', 'Invoice Payment Recorded (Sent to Staff) [french]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1002, 'ticket', 'auto-close-ticket', 'french', 'Auto Close Ticket [french]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1003, 'project', 'new-project-discussion-created-to-staff', 'french', 'New Project Discussion (Sent to Project Members) [french]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1004, 'project', 'new-project-discussion-created-to-customer', 'french', 'New Project Discussion (Sent to Customer Contacts) [french]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1005, 'project', 'new-project-file-uploaded-to-customer', 'french', 'New Project File(s) Uploaded (Sent to Customer Contacts) [french]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1006, 'project', 'new-project-file-uploaded-to-staff', 'french', 'New Project File(s) Uploaded (Sent to Project Members) [french]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1007, 'project', 'new-project-discussion-comment-to-customer', 'french', 'New Discussion Comment  (Sent to Customer Contacts) [french]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1008, 'project', 'new-project-discussion-comment-to-staff', 'french', 'New Discussion Comment (Sent to Project Members) [french]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1009, 'project', 'staff-added-as-project-member', 'french', 'Staff Added as Project Member [french]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1010, 'estimate', 'estimate-expiry-reminder', 'french', 'Estimate Expiration Reminder [french]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1011, 'proposals', 'proposal-expiry-reminder', 'french', 'Proposal Expiration Reminder [french]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1012, 'staff', 'new-staff-created', 'french', 'New Staff Created (Welcome Email) [french]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1013, 'client', 'contact-forgot-password', 'french', 'Forgot Password [french]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1014, 'client', 'contact-password-reseted', 'french', 'Password Reset - Confirmation [french]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1015, 'client', 'contact-set-password', 'french', 'Set New Password [french]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1016, 'staff', 'staff-forgot-password', 'french', 'Forgot Password [french]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1017, 'staff', 'staff-password-reseted', 'french', 'Password Reset - Confirmation [french]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1018, 'project', 'assigned-to-project', 'french', 'New Project Created (Sent to Customer Contacts) [french]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1019, 'tasks', 'task-added-attachment-to-contacts', 'french', 'New Attachment(s) on Task (Sent to Customer Contacts) [french]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1020, 'tasks', 'task-commented-to-contacts', 'french', 'New Comment on Task (Sent to Customer Contacts) [french]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1021, 'leads', 'new-lead-assigned', 'french', 'New Lead Assigned to Staff Member [french]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1022, 'client', 'client-statement', 'french', 'Statement - Account Summary [french]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1023, 'ticket', 'ticket-assigned-to-admin', 'french', 'New Ticket Assigned (Sent to Staff) [french]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1024, 'client', 'new-client-registered-to-admin', 'french', 'New Customer Registration (Sent to admins) [french]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1025, 'leads', 'new-web-to-lead-form-submitted', 'french', 'Web to lead form submitted - Sent to lead [french]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
	(1026, 'staff', 'two-factor-authentication', 'french', 'Two Factor Authentication [french]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1027, 'project', 'project-finished-to-customer', 'french', 'Project Marked as Finished (Sent to Customer Contacts) [french]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1028, 'credit_note', 'credit-note-send-to-client', 'french', 'Send Credit Note To Email [french]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1029, 'tasks', 'task-status-change-to-staff', 'french', 'Task Status Changed (Sent to Staff) [french]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1030, 'tasks', 'task-status-change-to-contacts', 'french', 'Task Status Changed (Sent to Customer Contacts) [french]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1031, 'staff', 'reminder-email-staff', 'french', 'Staff Reminder Email [french]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1032, 'contract', 'contract-comment-to-client', 'french', 'New Comment Â (Sent to Customer Contacts) [french]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1033, 'contract', 'contract-comment-to-admin', 'french', 'New Comment (Sent to Staff)  [french]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1034, 'subscriptions', 'send-subscription', 'french', 'Send Subscription to Customer [french]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1035, 'subscriptions', 'subscription-payment-failed', 'french', 'Subscription Payment Failed [french]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1036, 'subscriptions', 'subscription-canceled', 'french', 'Subscription Canceled (Sent to customer primary contact) [french]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1037, 'subscriptions', 'subscription-payment-succeeded', 'french', 'Subscription Payment Succeeded (Sent to customer primary contact) [french]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1038, 'contract', 'contract-expiration-to-staff', 'french', 'Contract Expiration Reminder (Sent to Staff) [french]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1039, 'gdpr', 'gdpr-removal-request', 'french', 'Removal Request From Contact (Sent to administrators) [french]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1040, 'gdpr', 'gdpr-removal-request-lead', 'french', 'Removal Request From Lead (Sent to administrators) [french]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1041, 'client', 'client-registration-confirmed', 'french', 'Customer Registration Confirmed [french]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1042, 'contract', 'contract-signed-to-staff', 'french', 'Contract Signed (Sent to Staff) [french]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1043, 'subscriptions', 'customer-subscribed-to-staff', 'french', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [french]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1044, 'client', 'contact-verification-email', 'french', 'Email Verification (Sent to Contact After Registration) [french]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1045, 'client', 'new-customer-profile-file-uploaded-to-staff', 'french', 'New Customer Profile File(s) Uploaded (Sent to Staff) [french]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1046, 'staff', 'event-notification-to-staff', 'french', 'Event Notification (Calendar) [french]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
	(1047, 'subscriptions', 'subscription-payment-requires-action', 'french', 'Credit Card Authorization Required - SCA [french]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1048, 'invoice', 'invoice-due-notice', 'french', 'Invoice Due Notice [french]', 'Your {invoice_number} will be due soon', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1049, 'estimate_request', 'estimate-request-submitted-to-staff', 'french', 'Estimate Request Submitted (Sent to Staff) [french]', 'New Estimate Request Submitted', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1050, 'estimate_request', 'estimate-request-assigned', 'french', 'Estimate Request Assigned (Sent to Staff) [french]', 'New Estimate Request Assigned', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1051, 'estimate_request', 'estimate-request-received-to-user', 'french', 'Estimate Request Received (Sent to User) [french]', 'Estimate Request Received', '', '{companyname} | CRM', NULL, 0, 0, 0),
	(1052, 'notifications', 'non-billed-tasks-reminder', 'french', 'Non-billed tasks reminder (sent to selected staff members) [french]', 'Action required: Completed tasks are not billed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1053, 'invoice', 'invoices-batch-payments', 'french', 'Invoices Payments Recorded in Batch (Sent to Customer) [french]', 'We have received your payments', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1054, 'client', 'new-client-created', 'turkish', 'New Contact Added/Registered (Welcome Email) [turkish]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1055, 'invoice', 'invoice-send-to-client', 'turkish', 'Send Invoice to Customer [turkish]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1056, 'ticket', 'new-ticket-opened-admin', 'turkish', 'New Ticket Opened (Opened by Staff, Sent to Customer) [turkish]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1057, 'ticket', 'ticket-reply', 'turkish', 'Ticket Reply (Sent to Customer) [turkish]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1058, 'ticket', 'ticket-autoresponse', 'turkish', 'New Ticket Opened - Autoresponse [turkish]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1059, 'invoice', 'invoice-payment-recorded', 'turkish', 'Invoice Payment Recorded (Sent to Customer) [turkish]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1060, 'invoice', 'invoice-overdue-notice', 'turkish', 'Invoice Overdue Notice [turkish]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1061, 'invoice', 'invoice-already-send', 'turkish', 'Invoice Already Sent to Customer [turkish]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1062, 'ticket', 'new-ticket-created-staff', 'turkish', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [turkish]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1063, 'estimate', 'estimate-send-to-client', 'turkish', 'Send Estimate to Customer [turkish]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1064, 'ticket', 'ticket-reply-to-admin', 'turkish', 'Ticket Reply (Sent to Staff) [turkish]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1065, 'estimate', 'estimate-already-send', 'turkish', 'Estimate Already Sent to Customer [turkish]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1066, 'contract', 'contract-expiration', 'turkish', 'Contract Expiration Reminder (Sent to Customer Contacts) [turkish]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1067, 'tasks', 'task-assigned', 'turkish', 'New Task Assigned (Sent to Staff) [turkish]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1068, 'tasks', 'task-added-as-follower', 'turkish', 'Staff Member Added as Follower on Task (Sent to Staff) [turkish]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1069, 'tasks', 'task-commented', 'turkish', 'New Comment on Task (Sent to Staff) [turkish]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1070, 'tasks', 'task-added-attachment', 'turkish', 'New Attachment(s) on Task (Sent to Staff) [turkish]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1071, 'estimate', 'estimate-declined-to-staff', 'turkish', 'Estimate Declined (Sent to Staff) [turkish]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1072, 'estimate', 'estimate-accepted-to-staff', 'turkish', 'Estimate Accepted (Sent to Staff) [turkish]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1073, 'proposals', 'proposal-client-accepted', 'turkish', 'Customer Action - Accepted (Sent to Staff) [turkish]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1074, 'proposals', 'proposal-send-to-customer', 'turkish', 'Send Proposal to Customer [turkish]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1075, 'proposals', 'proposal-client-declined', 'turkish', 'Customer Action - Declined (Sent to Staff) [turkish]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1076, 'proposals', 'proposal-client-thank-you', 'turkish', 'Thank You Email (Sent to Customer After Accept) [turkish]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1077, 'proposals', 'proposal-comment-to-client', 'turkish', 'New Comment Â (Sent to Customer/Lead) [turkish]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1078, 'proposals', 'proposal-comment-to-admin', 'turkish', 'New Comment (Sent to Staff)  [turkish]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1079, 'estimate', 'estimate-thank-you-to-customer', 'turkish', 'Thank You Email (Sent to Customer After Accept) [turkish]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1080, 'tasks', 'task-deadline-notification', 'turkish', 'Task Deadline Reminder - Sent to Assigned Members [turkish]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1081, 'contract', 'send-contract', 'turkish', 'Send Contract to Customer [turkish]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1082, 'invoice', 'invoice-payment-recorded-to-staff', 'turkish', 'Invoice Payment Recorded (Sent to Staff) [turkish]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1083, 'ticket', 'auto-close-ticket', 'turkish', 'Auto Close Ticket [turkish]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1084, 'project', 'new-project-discussion-created-to-staff', 'turkish', 'New Project Discussion (Sent to Project Members) [turkish]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1085, 'project', 'new-project-discussion-created-to-customer', 'turkish', 'New Project Discussion (Sent to Customer Contacts) [turkish]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1086, 'project', 'new-project-file-uploaded-to-customer', 'turkish', 'New Project File(s) Uploaded (Sent to Customer Contacts) [turkish]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1087, 'project', 'new-project-file-uploaded-to-staff', 'turkish', 'New Project File(s) Uploaded (Sent to Project Members) [turkish]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1088, 'project', 'new-project-discussion-comment-to-customer', 'turkish', 'New Discussion Comment  (Sent to Customer Contacts) [turkish]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1089, 'project', 'new-project-discussion-comment-to-staff', 'turkish', 'New Discussion Comment (Sent to Project Members) [turkish]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1090, 'project', 'staff-added-as-project-member', 'turkish', 'Staff Added as Project Member [turkish]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1091, 'estimate', 'estimate-expiry-reminder', 'turkish', 'Estimate Expiration Reminder [turkish]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1092, 'proposals', 'proposal-expiry-reminder', 'turkish', 'Proposal Expiration Reminder [turkish]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1093, 'staff', 'new-staff-created', 'turkish', 'New Staff Created (Welcome Email) [turkish]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1094, 'client', 'contact-forgot-password', 'turkish', 'Forgot Password [turkish]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1095, 'client', 'contact-password-reseted', 'turkish', 'Password Reset - Confirmation [turkish]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1096, 'client', 'contact-set-password', 'turkish', 'Set New Password [turkish]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1097, 'staff', 'staff-forgot-password', 'turkish', 'Forgot Password [turkish]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1098, 'staff', 'staff-password-reseted', 'turkish', 'Password Reset - Confirmation [turkish]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1099, 'project', 'assigned-to-project', 'turkish', 'New Project Created (Sent to Customer Contacts) [turkish]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1100, 'tasks', 'task-added-attachment-to-contacts', 'turkish', 'New Attachment(s) on Task (Sent to Customer Contacts) [turkish]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1101, 'tasks', 'task-commented-to-contacts', 'turkish', 'New Comment on Task (Sent to Customer Contacts) [turkish]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1102, 'leads', 'new-lead-assigned', 'turkish', 'New Lead Assigned to Staff Member [turkish]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1103, 'client', 'client-statement', 'turkish', 'Statement - Account Summary [turkish]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1104, 'ticket', 'ticket-assigned-to-admin', 'turkish', 'New Ticket Assigned (Sent to Staff) [turkish]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1105, 'client', 'new-client-registered-to-admin', 'turkish', 'New Customer Registration (Sent to admins) [turkish]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1106, 'leads', 'new-web-to-lead-form-submitted', 'turkish', 'Web to lead form submitted - Sent to lead [turkish]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
	(1107, 'staff', 'two-factor-authentication', 'turkish', 'Two Factor Authentication [turkish]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1108, 'project', 'project-finished-to-customer', 'turkish', 'Project Marked as Finished (Sent to Customer Contacts) [turkish]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1109, 'credit_note', 'credit-note-send-to-client', 'turkish', 'Send Credit Note To Email [turkish]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1110, 'tasks', 'task-status-change-to-staff', 'turkish', 'Task Status Changed (Sent to Staff) [turkish]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1111, 'tasks', 'task-status-change-to-contacts', 'turkish', 'Task Status Changed (Sent to Customer Contacts) [turkish]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1112, 'staff', 'reminder-email-staff', 'turkish', 'Staff Reminder Email [turkish]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1113, 'contract', 'contract-comment-to-client', 'turkish', 'New Comment Â (Sent to Customer Contacts) [turkish]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1114, 'contract', 'contract-comment-to-admin', 'turkish', 'New Comment (Sent to Staff)  [turkish]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1115, 'subscriptions', 'send-subscription', 'turkish', 'Send Subscription to Customer [turkish]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1116, 'subscriptions', 'subscription-payment-failed', 'turkish', 'Subscription Payment Failed [turkish]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1117, 'subscriptions', 'subscription-canceled', 'turkish', 'Subscription Canceled (Sent to customer primary contact) [turkish]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1118, 'subscriptions', 'subscription-payment-succeeded', 'turkish', 'Subscription Payment Succeeded (Sent to customer primary contact) [turkish]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1119, 'contract', 'contract-expiration-to-staff', 'turkish', 'Contract Expiration Reminder (Sent to Staff) [turkish]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1120, 'gdpr', 'gdpr-removal-request', 'turkish', 'Removal Request From Contact (Sent to administrators) [turkish]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1121, 'gdpr', 'gdpr-removal-request-lead', 'turkish', 'Removal Request From Lead (Sent to administrators) [turkish]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1122, 'client', 'client-registration-confirmed', 'turkish', 'Customer Registration Confirmed [turkish]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1123, 'contract', 'contract-signed-to-staff', 'turkish', 'Contract Signed (Sent to Staff) [turkish]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1124, 'subscriptions', 'customer-subscribed-to-staff', 'turkish', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [turkish]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1125, 'client', 'contact-verification-email', 'turkish', 'Email Verification (Sent to Contact After Registration) [turkish]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1126, 'client', 'new-customer-profile-file-uploaded-to-staff', 'turkish', 'New Customer Profile File(s) Uploaded (Sent to Staff) [turkish]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1127, 'staff', 'event-notification-to-staff', 'turkish', 'Event Notification (Calendar) [turkish]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
	(1128, 'subscriptions', 'subscription-payment-requires-action', 'turkish', 'Credit Card Authorization Required - SCA [turkish]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1129, 'invoice', 'invoice-due-notice', 'turkish', 'Invoice Due Notice [turkish]', 'Your {invoice_number} will be due soon', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1130, 'estimate_request', 'estimate-request-submitted-to-staff', 'turkish', 'Estimate Request Submitted (Sent to Staff) [turkish]', 'New Estimate Request Submitted', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1131, 'estimate_request', 'estimate-request-assigned', 'turkish', 'Estimate Request Assigned (Sent to Staff) [turkish]', 'New Estimate Request Assigned', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1132, 'estimate_request', 'estimate-request-received-to-user', 'turkish', 'Estimate Request Received (Sent to User) [turkish]', 'Estimate Request Received', '', '{companyname} | CRM', NULL, 0, 0, 0),
	(1133, 'notifications', 'non-billed-tasks-reminder', 'turkish', 'Non-billed tasks reminder (sent to selected staff members) [turkish]', 'Action required: Completed tasks are not billed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1134, 'invoice', 'invoices-batch-payments', 'turkish', 'Invoices Payments Recorded in Batch (Sent to Customer) [turkish]', 'We have received your payments', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1135, 'client', 'new-client-created', 'japanese', 'New Contact Added/Registered (Welcome Email) [japanese]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1136, 'invoice', 'invoice-send-to-client', 'japanese', 'Send Invoice to Customer [japanese]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1137, 'ticket', 'new-ticket-opened-admin', 'japanese', 'New Ticket Opened (Opened by Staff, Sent to Customer) [japanese]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1138, 'ticket', 'ticket-reply', 'japanese', 'Ticket Reply (Sent to Customer) [japanese]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1139, 'ticket', 'ticket-autoresponse', 'japanese', 'New Ticket Opened - Autoresponse [japanese]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1140, 'invoice', 'invoice-payment-recorded', 'japanese', 'Invoice Payment Recorded (Sent to Customer) [japanese]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1141, 'invoice', 'invoice-overdue-notice', 'japanese', 'Invoice Overdue Notice [japanese]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1142, 'invoice', 'invoice-already-send', 'japanese', 'Invoice Already Sent to Customer [japanese]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1143, 'ticket', 'new-ticket-created-staff', 'japanese', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [japanese]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1144, 'estimate', 'estimate-send-to-client', 'japanese', 'Send Estimate to Customer [japanese]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1145, 'ticket', 'ticket-reply-to-admin', 'japanese', 'Ticket Reply (Sent to Staff) [japanese]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1146, 'estimate', 'estimate-already-send', 'japanese', 'Estimate Already Sent to Customer [japanese]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1147, 'contract', 'contract-expiration', 'japanese', 'Contract Expiration Reminder (Sent to Customer Contacts) [japanese]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1148, 'tasks', 'task-assigned', 'japanese', 'New Task Assigned (Sent to Staff) [japanese]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1149, 'tasks', 'task-added-as-follower', 'japanese', 'Staff Member Added as Follower on Task (Sent to Staff) [japanese]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1150, 'tasks', 'task-commented', 'japanese', 'New Comment on Task (Sent to Staff) [japanese]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1151, 'tasks', 'task-added-attachment', 'japanese', 'New Attachment(s) on Task (Sent to Staff) [japanese]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1152, 'estimate', 'estimate-declined-to-staff', 'japanese', 'Estimate Declined (Sent to Staff) [japanese]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1153, 'estimate', 'estimate-accepted-to-staff', 'japanese', 'Estimate Accepted (Sent to Staff) [japanese]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1154, 'proposals', 'proposal-client-accepted', 'japanese', 'Customer Action - Accepted (Sent to Staff) [japanese]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1155, 'proposals', 'proposal-send-to-customer', 'japanese', 'Send Proposal to Customer [japanese]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1156, 'proposals', 'proposal-client-declined', 'japanese', 'Customer Action - Declined (Sent to Staff) [japanese]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1157, 'proposals', 'proposal-client-thank-you', 'japanese', 'Thank You Email (Sent to Customer After Accept) [japanese]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1158, 'proposals', 'proposal-comment-to-client', 'japanese', 'New Comment Â (Sent to Customer/Lead) [japanese]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1159, 'proposals', 'proposal-comment-to-admin', 'japanese', 'New Comment (Sent to Staff)  [japanese]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1160, 'estimate', 'estimate-thank-you-to-customer', 'japanese', 'Thank You Email (Sent to Customer After Accept) [japanese]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1161, 'tasks', 'task-deadline-notification', 'japanese', 'Task Deadline Reminder - Sent to Assigned Members [japanese]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1162, 'contract', 'send-contract', 'japanese', 'Send Contract to Customer [japanese]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1163, 'invoice', 'invoice-payment-recorded-to-staff', 'japanese', 'Invoice Payment Recorded (Sent to Staff) [japanese]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1164, 'ticket', 'auto-close-ticket', 'japanese', 'Auto Close Ticket [japanese]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1165, 'project', 'new-project-discussion-created-to-staff', 'japanese', 'New Project Discussion (Sent to Project Members) [japanese]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1166, 'project', 'new-project-discussion-created-to-customer', 'japanese', 'New Project Discussion (Sent to Customer Contacts) [japanese]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1167, 'project', 'new-project-file-uploaded-to-customer', 'japanese', 'New Project File(s) Uploaded (Sent to Customer Contacts) [japanese]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1168, 'project', 'new-project-file-uploaded-to-staff', 'japanese', 'New Project File(s) Uploaded (Sent to Project Members) [japanese]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1169, 'project', 'new-project-discussion-comment-to-customer', 'japanese', 'New Discussion Comment  (Sent to Customer Contacts) [japanese]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1170, 'project', 'new-project-discussion-comment-to-staff', 'japanese', 'New Discussion Comment (Sent to Project Members) [japanese]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1171, 'project', 'staff-added-as-project-member', 'japanese', 'Staff Added as Project Member [japanese]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1172, 'estimate', 'estimate-expiry-reminder', 'japanese', 'Estimate Expiration Reminder [japanese]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1173, 'proposals', 'proposal-expiry-reminder', 'japanese', 'Proposal Expiration Reminder [japanese]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1174, 'staff', 'new-staff-created', 'japanese', 'New Staff Created (Welcome Email) [japanese]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1175, 'client', 'contact-forgot-password', 'japanese', 'Forgot Password [japanese]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1176, 'client', 'contact-password-reseted', 'japanese', 'Password Reset - Confirmation [japanese]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1177, 'client', 'contact-set-password', 'japanese', 'Set New Password [japanese]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1178, 'staff', 'staff-forgot-password', 'japanese', 'Forgot Password [japanese]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1179, 'staff', 'staff-password-reseted', 'japanese', 'Password Reset - Confirmation [japanese]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1180, 'project', 'assigned-to-project', 'japanese', 'New Project Created (Sent to Customer Contacts) [japanese]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1181, 'tasks', 'task-added-attachment-to-contacts', 'japanese', 'New Attachment(s) on Task (Sent to Customer Contacts) [japanese]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1182, 'tasks', 'task-commented-to-contacts', 'japanese', 'New Comment on Task (Sent to Customer Contacts) [japanese]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1183, 'leads', 'new-lead-assigned', 'japanese', 'New Lead Assigned to Staff Member [japanese]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1184, 'client', 'client-statement', 'japanese', 'Statement - Account Summary [japanese]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1185, 'ticket', 'ticket-assigned-to-admin', 'japanese', 'New Ticket Assigned (Sent to Staff) [japanese]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1186, 'client', 'new-client-registered-to-admin', 'japanese', 'New Customer Registration (Sent to admins) [japanese]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1187, 'leads', 'new-web-to-lead-form-submitted', 'japanese', 'Web to lead form submitted - Sent to lead [japanese]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
	(1188, 'staff', 'two-factor-authentication', 'japanese', 'Two Factor Authentication [japanese]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1189, 'project', 'project-finished-to-customer', 'japanese', 'Project Marked as Finished (Sent to Customer Contacts) [japanese]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1190, 'credit_note', 'credit-note-send-to-client', 'japanese', 'Send Credit Note To Email [japanese]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1191, 'tasks', 'task-status-change-to-staff', 'japanese', 'Task Status Changed (Sent to Staff) [japanese]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1192, 'tasks', 'task-status-change-to-contacts', 'japanese', 'Task Status Changed (Sent to Customer Contacts) [japanese]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1193, 'staff', 'reminder-email-staff', 'japanese', 'Staff Reminder Email [japanese]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1194, 'contract', 'contract-comment-to-client', 'japanese', 'New Comment Â (Sent to Customer Contacts) [japanese]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1195, 'contract', 'contract-comment-to-admin', 'japanese', 'New Comment (Sent to Staff)  [japanese]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1196, 'subscriptions', 'send-subscription', 'japanese', 'Send Subscription to Customer [japanese]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1197, 'subscriptions', 'subscription-payment-failed', 'japanese', 'Subscription Payment Failed [japanese]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1198, 'subscriptions', 'subscription-canceled', 'japanese', 'Subscription Canceled (Sent to customer primary contact) [japanese]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1199, 'subscriptions', 'subscription-payment-succeeded', 'japanese', 'Subscription Payment Succeeded (Sent to customer primary contact) [japanese]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1200, 'contract', 'contract-expiration-to-staff', 'japanese', 'Contract Expiration Reminder (Sent to Staff) [japanese]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1201, 'gdpr', 'gdpr-removal-request', 'japanese', 'Removal Request From Contact (Sent to administrators) [japanese]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1202, 'gdpr', 'gdpr-removal-request-lead', 'japanese', 'Removal Request From Lead (Sent to administrators) [japanese]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1203, 'client', 'client-registration-confirmed', 'japanese', 'Customer Registration Confirmed [japanese]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1204, 'contract', 'contract-signed-to-staff', 'japanese', 'Contract Signed (Sent to Staff) [japanese]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1205, 'subscriptions', 'customer-subscribed-to-staff', 'japanese', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [japanese]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1206, 'client', 'contact-verification-email', 'japanese', 'Email Verification (Sent to Contact After Registration) [japanese]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1207, 'client', 'new-customer-profile-file-uploaded-to-staff', 'japanese', 'New Customer Profile File(s) Uploaded (Sent to Staff) [japanese]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1208, 'staff', 'event-notification-to-staff', 'japanese', 'Event Notification (Calendar) [japanese]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
	(1209, 'subscriptions', 'subscription-payment-requires-action', 'japanese', 'Credit Card Authorization Required - SCA [japanese]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1210, 'invoice', 'invoice-due-notice', 'japanese', 'Invoice Due Notice [japanese]', 'Your {invoice_number} will be due soon', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1211, 'estimate_request', 'estimate-request-submitted-to-staff', 'japanese', 'Estimate Request Submitted (Sent to Staff) [japanese]', 'New Estimate Request Submitted', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1212, 'estimate_request', 'estimate-request-assigned', 'japanese', 'Estimate Request Assigned (Sent to Staff) [japanese]', 'New Estimate Request Assigned', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1213, 'estimate_request', 'estimate-request-received-to-user', 'japanese', 'Estimate Request Received (Sent to User) [japanese]', 'Estimate Request Received', '', '{companyname} | CRM', NULL, 0, 0, 0),
	(1214, 'notifications', 'non-billed-tasks-reminder', 'japanese', 'Non-billed tasks reminder (sent to selected staff members) [japanese]', 'Action required: Completed tasks are not billed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1215, 'invoice', 'invoices-batch-payments', 'japanese', 'Invoices Payments Recorded in Batch (Sent to Customer) [japanese]', 'We have received your payments', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1216, 'client', 'new-client-created', 'persian', 'New Contact Added/Registered (Welcome Email) [persian]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1217, 'invoice', 'invoice-send-to-client', 'persian', 'Send Invoice to Customer [persian]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1218, 'ticket', 'new-ticket-opened-admin', 'persian', 'New Ticket Opened (Opened by Staff, Sent to Customer) [persian]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1219, 'ticket', 'ticket-reply', 'persian', 'Ticket Reply (Sent to Customer) [persian]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1220, 'ticket', 'ticket-autoresponse', 'persian', 'New Ticket Opened - Autoresponse [persian]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1221, 'invoice', 'invoice-payment-recorded', 'persian', 'Invoice Payment Recorded (Sent to Customer) [persian]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1222, 'invoice', 'invoice-overdue-notice', 'persian', 'Invoice Overdue Notice [persian]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1223, 'invoice', 'invoice-already-send', 'persian', 'Invoice Already Sent to Customer [persian]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1224, 'ticket', 'new-ticket-created-staff', 'persian', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [persian]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1225, 'estimate', 'estimate-send-to-client', 'persian', 'Send Estimate to Customer [persian]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1226, 'ticket', 'ticket-reply-to-admin', 'persian', 'Ticket Reply (Sent to Staff) [persian]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1227, 'estimate', 'estimate-already-send', 'persian', 'Estimate Already Sent to Customer [persian]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1228, 'contract', 'contract-expiration', 'persian', 'Contract Expiration Reminder (Sent to Customer Contacts) [persian]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1229, 'tasks', 'task-assigned', 'persian', 'New Task Assigned (Sent to Staff) [persian]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1230, 'tasks', 'task-added-as-follower', 'persian', 'Staff Member Added as Follower on Task (Sent to Staff) [persian]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1231, 'tasks', 'task-commented', 'persian', 'New Comment on Task (Sent to Staff) [persian]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1232, 'tasks', 'task-added-attachment', 'persian', 'New Attachment(s) on Task (Sent to Staff) [persian]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1233, 'estimate', 'estimate-declined-to-staff', 'persian', 'Estimate Declined (Sent to Staff) [persian]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1234, 'estimate', 'estimate-accepted-to-staff', 'persian', 'Estimate Accepted (Sent to Staff) [persian]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1235, 'proposals', 'proposal-client-accepted', 'persian', 'Customer Action - Accepted (Sent to Staff) [persian]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1236, 'proposals', 'proposal-send-to-customer', 'persian', 'Send Proposal to Customer [persian]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1237, 'proposals', 'proposal-client-declined', 'persian', 'Customer Action - Declined (Sent to Staff) [persian]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1238, 'proposals', 'proposal-client-thank-you', 'persian', 'Thank You Email (Sent to Customer After Accept) [persian]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1239, 'proposals', 'proposal-comment-to-client', 'persian', 'New Comment Â (Sent to Customer/Lead) [persian]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1240, 'proposals', 'proposal-comment-to-admin', 'persian', 'New Comment (Sent to Staff)  [persian]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1241, 'estimate', 'estimate-thank-you-to-customer', 'persian', 'Thank You Email (Sent to Customer After Accept) [persian]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1242, 'tasks', 'task-deadline-notification', 'persian', 'Task Deadline Reminder - Sent to Assigned Members [persian]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1243, 'contract', 'send-contract', 'persian', 'Send Contract to Customer [persian]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1244, 'invoice', 'invoice-payment-recorded-to-staff', 'persian', 'Invoice Payment Recorded (Sent to Staff) [persian]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1245, 'ticket', 'auto-close-ticket', 'persian', 'Auto Close Ticket [persian]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1246, 'project', 'new-project-discussion-created-to-staff', 'persian', 'New Project Discussion (Sent to Project Members) [persian]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1247, 'project', 'new-project-discussion-created-to-customer', 'persian', 'New Project Discussion (Sent to Customer Contacts) [persian]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1248, 'project', 'new-project-file-uploaded-to-customer', 'persian', 'New Project File(s) Uploaded (Sent to Customer Contacts) [persian]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1249, 'project', 'new-project-file-uploaded-to-staff', 'persian', 'New Project File(s) Uploaded (Sent to Project Members) [persian]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1250, 'project', 'new-project-discussion-comment-to-customer', 'persian', 'New Discussion Comment  (Sent to Customer Contacts) [persian]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1251, 'project', 'new-project-discussion-comment-to-staff', 'persian', 'New Discussion Comment (Sent to Project Members) [persian]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1252, 'project', 'staff-added-as-project-member', 'persian', 'Staff Added as Project Member [persian]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1253, 'estimate', 'estimate-expiry-reminder', 'persian', 'Estimate Expiration Reminder [persian]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1254, 'proposals', 'proposal-expiry-reminder', 'persian', 'Proposal Expiration Reminder [persian]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1255, 'staff', 'new-staff-created', 'persian', 'New Staff Created (Welcome Email) [persian]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1256, 'client', 'contact-forgot-password', 'persian', 'Forgot Password [persian]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1257, 'client', 'contact-password-reseted', 'persian', 'Password Reset - Confirmation [persian]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1258, 'client', 'contact-set-password', 'persian', 'Set New Password [persian]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1259, 'staff', 'staff-forgot-password', 'persian', 'Forgot Password [persian]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1260, 'staff', 'staff-password-reseted', 'persian', 'Password Reset - Confirmation [persian]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1261, 'project', 'assigned-to-project', 'persian', 'New Project Created (Sent to Customer Contacts) [persian]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1262, 'tasks', 'task-added-attachment-to-contacts', 'persian', 'New Attachment(s) on Task (Sent to Customer Contacts) [persian]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1263, 'tasks', 'task-commented-to-contacts', 'persian', 'New Comment on Task (Sent to Customer Contacts) [persian]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1264, 'leads', 'new-lead-assigned', 'persian', 'New Lead Assigned to Staff Member [persian]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1265, 'client', 'client-statement', 'persian', 'Statement - Account Summary [persian]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1266, 'ticket', 'ticket-assigned-to-admin', 'persian', 'New Ticket Assigned (Sent to Staff) [persian]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1267, 'client', 'new-client-registered-to-admin', 'persian', 'New Customer Registration (Sent to admins) [persian]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1268, 'leads', 'new-web-to-lead-form-submitted', 'persian', 'Web to lead form submitted - Sent to lead [persian]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
	(1269, 'staff', 'two-factor-authentication', 'persian', 'Two Factor Authentication [persian]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1270, 'project', 'project-finished-to-customer', 'persian', 'Project Marked as Finished (Sent to Customer Contacts) [persian]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1271, 'credit_note', 'credit-note-send-to-client', 'persian', 'Send Credit Note To Email [persian]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1272, 'tasks', 'task-status-change-to-staff', 'persian', 'Task Status Changed (Sent to Staff) [persian]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1273, 'tasks', 'task-status-change-to-contacts', 'persian', 'Task Status Changed (Sent to Customer Contacts) [persian]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1274, 'staff', 'reminder-email-staff', 'persian', 'Staff Reminder Email [persian]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1275, 'contract', 'contract-comment-to-client', 'persian', 'New Comment Â (Sent to Customer Contacts) [persian]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1276, 'contract', 'contract-comment-to-admin', 'persian', 'New Comment (Sent to Staff)  [persian]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1277, 'subscriptions', 'send-subscription', 'persian', 'Send Subscription to Customer [persian]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1278, 'subscriptions', 'subscription-payment-failed', 'persian', 'Subscription Payment Failed [persian]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1279, 'subscriptions', 'subscription-canceled', 'persian', 'Subscription Canceled (Sent to customer primary contact) [persian]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1280, 'subscriptions', 'subscription-payment-succeeded', 'persian', 'Subscription Payment Succeeded (Sent to customer primary contact) [persian]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1281, 'contract', 'contract-expiration-to-staff', 'persian', 'Contract Expiration Reminder (Sent to Staff) [persian]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1282, 'gdpr', 'gdpr-removal-request', 'persian', 'Removal Request From Contact (Sent to administrators) [persian]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1283, 'gdpr', 'gdpr-removal-request-lead', 'persian', 'Removal Request From Lead (Sent to administrators) [persian]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1284, 'client', 'client-registration-confirmed', 'persian', 'Customer Registration Confirmed [persian]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1285, 'contract', 'contract-signed-to-staff', 'persian', 'Contract Signed (Sent to Staff) [persian]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1286, 'subscriptions', 'customer-subscribed-to-staff', 'persian', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [persian]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1287, 'client', 'contact-verification-email', 'persian', 'Email Verification (Sent to Contact After Registration) [persian]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1288, 'client', 'new-customer-profile-file-uploaded-to-staff', 'persian', 'New Customer Profile File(s) Uploaded (Sent to Staff) [persian]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1289, 'staff', 'event-notification-to-staff', 'persian', 'Event Notification (Calendar) [persian]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
	(1290, 'subscriptions', 'subscription-payment-requires-action', 'persian', 'Credit Card Authorization Required - SCA [persian]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1291, 'invoice', 'invoice-due-notice', 'persian', 'Invoice Due Notice [persian]', 'Your {invoice_number} will be due soon', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1292, 'estimate_request', 'estimate-request-submitted-to-staff', 'persian', 'Estimate Request Submitted (Sent to Staff) [persian]', 'New Estimate Request Submitted', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1293, 'estimate_request', 'estimate-request-assigned', 'persian', 'Estimate Request Assigned (Sent to Staff) [persian]', 'New Estimate Request Assigned', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1294, 'estimate_request', 'estimate-request-received-to-user', 'persian', 'Estimate Request Received (Sent to User) [persian]', 'Estimate Request Received', '', '{companyname} | CRM', NULL, 0, 0, 0),
	(1295, 'notifications', 'non-billed-tasks-reminder', 'persian', 'Non-billed tasks reminder (sent to selected staff members) [persian]', 'Action required: Completed tasks are not billed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1296, 'invoice', 'invoices-batch-payments', 'persian', 'Invoices Payments Recorded in Batch (Sent to Customer) [persian]', 'We have received your payments', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1297, 'client', 'new-client-created', 'italian', 'New Contact Added/Registered (Welcome Email) [italian]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1298, 'invoice', 'invoice-send-to-client', 'italian', 'Send Invoice to Customer [italian]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1299, 'ticket', 'new-ticket-opened-admin', 'italian', 'New Ticket Opened (Opened by Staff, Sent to Customer) [italian]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1300, 'ticket', 'ticket-reply', 'italian', 'Ticket Reply (Sent to Customer) [italian]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1301, 'ticket', 'ticket-autoresponse', 'italian', 'New Ticket Opened - Autoresponse [italian]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1302, 'invoice', 'invoice-payment-recorded', 'italian', 'Invoice Payment Recorded (Sent to Customer) [italian]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1303, 'invoice', 'invoice-overdue-notice', 'italian', 'Invoice Overdue Notice [italian]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1304, 'invoice', 'invoice-already-send', 'italian', 'Invoice Already Sent to Customer [italian]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1305, 'ticket', 'new-ticket-created-staff', 'italian', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [italian]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1306, 'estimate', 'estimate-send-to-client', 'italian', 'Send Estimate to Customer [italian]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1307, 'ticket', 'ticket-reply-to-admin', 'italian', 'Ticket Reply (Sent to Staff) [italian]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1308, 'estimate', 'estimate-already-send', 'italian', 'Estimate Already Sent to Customer [italian]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1309, 'contract', 'contract-expiration', 'italian', 'Contract Expiration Reminder (Sent to Customer Contacts) [italian]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1310, 'tasks', 'task-assigned', 'italian', 'New Task Assigned (Sent to Staff) [italian]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1311, 'tasks', 'task-added-as-follower', 'italian', 'Staff Member Added as Follower on Task (Sent to Staff) [italian]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1312, 'tasks', 'task-commented', 'italian', 'New Comment on Task (Sent to Staff) [italian]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1313, 'tasks', 'task-added-attachment', 'italian', 'New Attachment(s) on Task (Sent to Staff) [italian]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1314, 'estimate', 'estimate-declined-to-staff', 'italian', 'Estimate Declined (Sent to Staff) [italian]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1315, 'estimate', 'estimate-accepted-to-staff', 'italian', 'Estimate Accepted (Sent to Staff) [italian]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1316, 'proposals', 'proposal-client-accepted', 'italian', 'Customer Action - Accepted (Sent to Staff) [italian]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1317, 'proposals', 'proposal-send-to-customer', 'italian', 'Send Proposal to Customer [italian]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1318, 'proposals', 'proposal-client-declined', 'italian', 'Customer Action - Declined (Sent to Staff) [italian]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1319, 'proposals', 'proposal-client-thank-you', 'italian', 'Thank You Email (Sent to Customer After Accept) [italian]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1320, 'proposals', 'proposal-comment-to-client', 'italian', 'New Comment Â (Sent to Customer/Lead) [italian]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1321, 'proposals', 'proposal-comment-to-admin', 'italian', 'New Comment (Sent to Staff)  [italian]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1322, 'estimate', 'estimate-thank-you-to-customer', 'italian', 'Thank You Email (Sent to Customer After Accept) [italian]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1323, 'tasks', 'task-deadline-notification', 'italian', 'Task Deadline Reminder - Sent to Assigned Members [italian]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1324, 'contract', 'send-contract', 'italian', 'Send Contract to Customer [italian]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1325, 'invoice', 'invoice-payment-recorded-to-staff', 'italian', 'Invoice Payment Recorded (Sent to Staff) [italian]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1326, 'ticket', 'auto-close-ticket', 'italian', 'Auto Close Ticket [italian]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1327, 'project', 'new-project-discussion-created-to-staff', 'italian', 'New Project Discussion (Sent to Project Members) [italian]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1328, 'project', 'new-project-discussion-created-to-customer', 'italian', 'New Project Discussion (Sent to Customer Contacts) [italian]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1329, 'project', 'new-project-file-uploaded-to-customer', 'italian', 'New Project File(s) Uploaded (Sent to Customer Contacts) [italian]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1330, 'project', 'new-project-file-uploaded-to-staff', 'italian', 'New Project File(s) Uploaded (Sent to Project Members) [italian]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1331, 'project', 'new-project-discussion-comment-to-customer', 'italian', 'New Discussion Comment  (Sent to Customer Contacts) [italian]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1332, 'project', 'new-project-discussion-comment-to-staff', 'italian', 'New Discussion Comment (Sent to Project Members) [italian]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1333, 'project', 'staff-added-as-project-member', 'italian', 'Staff Added as Project Member [italian]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1334, 'estimate', 'estimate-expiry-reminder', 'italian', 'Estimate Expiration Reminder [italian]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1335, 'proposals', 'proposal-expiry-reminder', 'italian', 'Proposal Expiration Reminder [italian]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1336, 'staff', 'new-staff-created', 'italian', 'New Staff Created (Welcome Email) [italian]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1337, 'client', 'contact-forgot-password', 'italian', 'Forgot Password [italian]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1338, 'client', 'contact-password-reseted', 'italian', 'Password Reset - Confirmation [italian]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1339, 'client', 'contact-set-password', 'italian', 'Set New Password [italian]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1340, 'staff', 'staff-forgot-password', 'italian', 'Forgot Password [italian]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1341, 'staff', 'staff-password-reseted', 'italian', 'Password Reset - Confirmation [italian]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1342, 'project', 'assigned-to-project', 'italian', 'New Project Created (Sent to Customer Contacts) [italian]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1343, 'tasks', 'task-added-attachment-to-contacts', 'italian', 'New Attachment(s) on Task (Sent to Customer Contacts) [italian]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1344, 'tasks', 'task-commented-to-contacts', 'italian', 'New Comment on Task (Sent to Customer Contacts) [italian]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1345, 'leads', 'new-lead-assigned', 'italian', 'New Lead Assigned to Staff Member [italian]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1346, 'client', 'client-statement', 'italian', 'Statement - Account Summary [italian]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1347, 'ticket', 'ticket-assigned-to-admin', 'italian', 'New Ticket Assigned (Sent to Staff) [italian]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1348, 'client', 'new-client-registered-to-admin', 'italian', 'New Customer Registration (Sent to admins) [italian]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1349, 'leads', 'new-web-to-lead-form-submitted', 'italian', 'Web to lead form submitted - Sent to lead [italian]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
	(1350, 'staff', 'two-factor-authentication', 'italian', 'Two Factor Authentication [italian]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1351, 'project', 'project-finished-to-customer', 'italian', 'Project Marked as Finished (Sent to Customer Contacts) [italian]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1352, 'credit_note', 'credit-note-send-to-client', 'italian', 'Send Credit Note To Email [italian]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1353, 'tasks', 'task-status-change-to-staff', 'italian', 'Task Status Changed (Sent to Staff) [italian]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1354, 'tasks', 'task-status-change-to-contacts', 'italian', 'Task Status Changed (Sent to Customer Contacts) [italian]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1355, 'staff', 'reminder-email-staff', 'italian', 'Staff Reminder Email [italian]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1356, 'contract', 'contract-comment-to-client', 'italian', 'New Comment Â (Sent to Customer Contacts) [italian]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1357, 'contract', 'contract-comment-to-admin', 'italian', 'New Comment (Sent to Staff)  [italian]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1358, 'subscriptions', 'send-subscription', 'italian', 'Send Subscription to Customer [italian]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1359, 'subscriptions', 'subscription-payment-failed', 'italian', 'Subscription Payment Failed [italian]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1360, 'subscriptions', 'subscription-canceled', 'italian', 'Subscription Canceled (Sent to customer primary contact) [italian]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1361, 'subscriptions', 'subscription-payment-succeeded', 'italian', 'Subscription Payment Succeeded (Sent to customer primary contact) [italian]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1362, 'contract', 'contract-expiration-to-staff', 'italian', 'Contract Expiration Reminder (Sent to Staff) [italian]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1363, 'gdpr', 'gdpr-removal-request', 'italian', 'Removal Request From Contact (Sent to administrators) [italian]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1364, 'gdpr', 'gdpr-removal-request-lead', 'italian', 'Removal Request From Lead (Sent to administrators) [italian]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1365, 'client', 'client-registration-confirmed', 'italian', 'Customer Registration Confirmed [italian]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1366, 'contract', 'contract-signed-to-staff', 'italian', 'Contract Signed (Sent to Staff) [italian]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1367, 'subscriptions', 'customer-subscribed-to-staff', 'italian', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [italian]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1368, 'client', 'contact-verification-email', 'italian', 'Email Verification (Sent to Contact After Registration) [italian]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1369, 'client', 'new-customer-profile-file-uploaded-to-staff', 'italian', 'New Customer Profile File(s) Uploaded (Sent to Staff) [italian]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1370, 'staff', 'event-notification-to-staff', 'italian', 'Event Notification (Calendar) [italian]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
	(1371, 'subscriptions', 'subscription-payment-requires-action', 'italian', 'Credit Card Authorization Required - SCA [italian]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1372, 'invoice', 'invoice-due-notice', 'italian', 'Invoice Due Notice [italian]', 'Your {invoice_number} will be due soon', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1373, 'estimate_request', 'estimate-request-submitted-to-staff', 'italian', 'Estimate Request Submitted (Sent to Staff) [italian]', 'New Estimate Request Submitted', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1374, 'estimate_request', 'estimate-request-assigned', 'italian', 'Estimate Request Assigned (Sent to Staff) [italian]', 'New Estimate Request Assigned', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1375, 'estimate_request', 'estimate-request-received-to-user', 'italian', 'Estimate Request Received (Sent to User) [italian]', 'Estimate Request Received', '', '{companyname} | CRM', NULL, 0, 0, 0),
	(1376, 'notifications', 'non-billed-tasks-reminder', 'italian', 'Non-billed tasks reminder (sent to selected staff members) [italian]', 'Action required: Completed tasks are not billed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1377, 'invoice', 'invoices-batch-payments', 'italian', 'Invoices Payments Recorded in Batch (Sent to Customer) [italian]', 'We have received your payments', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1378, 'client', 'new-client-created', 'german', 'New Contact Added/Registered (Welcome Email) [german]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1379, 'invoice', 'invoice-send-to-client', 'german', 'Send Invoice to Customer [german]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1380, 'ticket', 'new-ticket-opened-admin', 'german', 'New Ticket Opened (Opened by Staff, Sent to Customer) [german]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1381, 'ticket', 'ticket-reply', 'german', 'Ticket Reply (Sent to Customer) [german]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1382, 'ticket', 'ticket-autoresponse', 'german', 'New Ticket Opened - Autoresponse [german]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1383, 'invoice', 'invoice-payment-recorded', 'german', 'Invoice Payment Recorded (Sent to Customer) [german]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1384, 'invoice', 'invoice-overdue-notice', 'german', 'Invoice Overdue Notice [german]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1385, 'invoice', 'invoice-already-send', 'german', 'Invoice Already Sent to Customer [german]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1386, 'ticket', 'new-ticket-created-staff', 'german', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [german]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1387, 'estimate', 'estimate-send-to-client', 'german', 'Send Estimate to Customer [german]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1388, 'ticket', 'ticket-reply-to-admin', 'german', 'Ticket Reply (Sent to Staff) [german]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1389, 'estimate', 'estimate-already-send', 'german', 'Estimate Already Sent to Customer [german]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1390, 'contract', 'contract-expiration', 'german', 'Contract Expiration Reminder (Sent to Customer Contacts) [german]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1391, 'tasks', 'task-assigned', 'german', 'New Task Assigned (Sent to Staff) [german]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1392, 'tasks', 'task-added-as-follower', 'german', 'Staff Member Added as Follower on Task (Sent to Staff) [german]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1393, 'tasks', 'task-commented', 'german', 'New Comment on Task (Sent to Staff) [german]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1394, 'tasks', 'task-added-attachment', 'german', 'New Attachment(s) on Task (Sent to Staff) [german]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1395, 'estimate', 'estimate-declined-to-staff', 'german', 'Estimate Declined (Sent to Staff) [german]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1396, 'estimate', 'estimate-accepted-to-staff', 'german', 'Estimate Accepted (Sent to Staff) [german]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1397, 'proposals', 'proposal-client-accepted', 'german', 'Customer Action - Accepted (Sent to Staff) [german]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1398, 'proposals', 'proposal-send-to-customer', 'german', 'Send Proposal to Customer [german]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1399, 'proposals', 'proposal-client-declined', 'german', 'Customer Action - Declined (Sent to Staff) [german]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1400, 'proposals', 'proposal-client-thank-you', 'german', 'Thank You Email (Sent to Customer After Accept) [german]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1401, 'proposals', 'proposal-comment-to-client', 'german', 'New Comment Â (Sent to Customer/Lead) [german]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1402, 'proposals', 'proposal-comment-to-admin', 'german', 'New Comment (Sent to Staff)  [german]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1403, 'estimate', 'estimate-thank-you-to-customer', 'german', 'Thank You Email (Sent to Customer After Accept) [german]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1404, 'tasks', 'task-deadline-notification', 'german', 'Task Deadline Reminder - Sent to Assigned Members [german]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1405, 'contract', 'send-contract', 'german', 'Send Contract to Customer [german]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1406, 'invoice', 'invoice-payment-recorded-to-staff', 'german', 'Invoice Payment Recorded (Sent to Staff) [german]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1407, 'ticket', 'auto-close-ticket', 'german', 'Auto Close Ticket [german]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1408, 'project', 'new-project-discussion-created-to-staff', 'german', 'New Project Discussion (Sent to Project Members) [german]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1409, 'project', 'new-project-discussion-created-to-customer', 'german', 'New Project Discussion (Sent to Customer Contacts) [german]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1410, 'project', 'new-project-file-uploaded-to-customer', 'german', 'New Project File(s) Uploaded (Sent to Customer Contacts) [german]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1411, 'project', 'new-project-file-uploaded-to-staff', 'german', 'New Project File(s) Uploaded (Sent to Project Members) [german]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1412, 'project', 'new-project-discussion-comment-to-customer', 'german', 'New Discussion Comment  (Sent to Customer Contacts) [german]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1413, 'project', 'new-project-discussion-comment-to-staff', 'german', 'New Discussion Comment (Sent to Project Members) [german]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1414, 'project', 'staff-added-as-project-member', 'german', 'Staff Added as Project Member [german]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1415, 'estimate', 'estimate-expiry-reminder', 'german', 'Estimate Expiration Reminder [german]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1416, 'proposals', 'proposal-expiry-reminder', 'german', 'Proposal Expiration Reminder [german]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1417, 'staff', 'new-staff-created', 'german', 'New Staff Created (Welcome Email) [german]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1418, 'client', 'contact-forgot-password', 'german', 'Forgot Password [german]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1419, 'client', 'contact-password-reseted', 'german', 'Password Reset - Confirmation [german]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1420, 'client', 'contact-set-password', 'german', 'Set New Password [german]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1421, 'staff', 'staff-forgot-password', 'german', 'Forgot Password [german]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1422, 'staff', 'staff-password-reseted', 'german', 'Password Reset - Confirmation [german]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1423, 'project', 'assigned-to-project', 'german', 'New Project Created (Sent to Customer Contacts) [german]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1424, 'tasks', 'task-added-attachment-to-contacts', 'german', 'New Attachment(s) on Task (Sent to Customer Contacts) [german]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1425, 'tasks', 'task-commented-to-contacts', 'german', 'New Comment on Task (Sent to Customer Contacts) [german]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1426, 'leads', 'new-lead-assigned', 'german', 'New Lead Assigned to Staff Member [german]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1427, 'client', 'client-statement', 'german', 'Statement - Account Summary [german]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1428, 'ticket', 'ticket-assigned-to-admin', 'german', 'New Ticket Assigned (Sent to Staff) [german]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1429, 'client', 'new-client-registered-to-admin', 'german', 'New Customer Registration (Sent to admins) [german]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1430, 'leads', 'new-web-to-lead-form-submitted', 'german', 'Web to lead form submitted - Sent to lead [german]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
	(1431, 'staff', 'two-factor-authentication', 'german', 'Two Factor Authentication [german]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1432, 'project', 'project-finished-to-customer', 'german', 'Project Marked as Finished (Sent to Customer Contacts) [german]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1433, 'credit_note', 'credit-note-send-to-client', 'german', 'Send Credit Note To Email [german]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1434, 'tasks', 'task-status-change-to-staff', 'german', 'Task Status Changed (Sent to Staff) [german]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1435, 'tasks', 'task-status-change-to-contacts', 'german', 'Task Status Changed (Sent to Customer Contacts) [german]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1436, 'staff', 'reminder-email-staff', 'german', 'Staff Reminder Email [german]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1437, 'contract', 'contract-comment-to-client', 'german', 'New Comment Â (Sent to Customer Contacts) [german]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1438, 'contract', 'contract-comment-to-admin', 'german', 'New Comment (Sent to Staff)  [german]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1439, 'subscriptions', 'send-subscription', 'german', 'Send Subscription to Customer [german]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1440, 'subscriptions', 'subscription-payment-failed', 'german', 'Subscription Payment Failed [german]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1441, 'subscriptions', 'subscription-canceled', 'german', 'Subscription Canceled (Sent to customer primary contact) [german]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1442, 'subscriptions', 'subscription-payment-succeeded', 'german', 'Subscription Payment Succeeded (Sent to customer primary contact) [german]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1443, 'contract', 'contract-expiration-to-staff', 'german', 'Contract Expiration Reminder (Sent to Staff) [german]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1444, 'gdpr', 'gdpr-removal-request', 'german', 'Removal Request From Contact (Sent to administrators) [german]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1445, 'gdpr', 'gdpr-removal-request-lead', 'german', 'Removal Request From Lead (Sent to administrators) [german]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1446, 'client', 'client-registration-confirmed', 'german', 'Customer Registration Confirmed [german]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1447, 'contract', 'contract-signed-to-staff', 'german', 'Contract Signed (Sent to Staff) [german]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1448, 'subscriptions', 'customer-subscribed-to-staff', 'german', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [german]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1449, 'client', 'contact-verification-email', 'german', 'Email Verification (Sent to Contact After Registration) [german]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1450, 'client', 'new-customer-profile-file-uploaded-to-staff', 'german', 'New Customer Profile File(s) Uploaded (Sent to Staff) [german]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1451, 'staff', 'event-notification-to-staff', 'german', 'Event Notification (Calendar) [german]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
	(1452, 'subscriptions', 'subscription-payment-requires-action', 'german', 'Credit Card Authorization Required - SCA [german]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1453, 'invoice', 'invoice-due-notice', 'german', 'Invoice Due Notice [german]', 'Your {invoice_number} will be due soon', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1454, 'estimate_request', 'estimate-request-submitted-to-staff', 'german', 'Estimate Request Submitted (Sent to Staff) [german]', 'New Estimate Request Submitted', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1455, 'estimate_request', 'estimate-request-assigned', 'german', 'Estimate Request Assigned (Sent to Staff) [german]', 'New Estimate Request Assigned', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1456, 'estimate_request', 'estimate-request-received-to-user', 'german', 'Estimate Request Received (Sent to User) [german]', 'Estimate Request Received', '', '{companyname} | CRM', NULL, 0, 0, 0),
	(1457, 'notifications', 'non-billed-tasks-reminder', 'german', 'Non-billed tasks reminder (sent to selected staff members) [german]', 'Action required: Completed tasks are not billed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1458, 'invoice', 'invoices-batch-payments', 'german', 'Invoices Payments Recorded in Batch (Sent to Customer) [german]', 'We have received your payments', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1459, 'client', 'new-client-created', 'ukrainian', 'New Contact Added/Registered (Welcome Email) [ukrainian]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1460, 'invoice', 'invoice-send-to-client', 'ukrainian', 'Send Invoice to Customer [ukrainian]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1461, 'ticket', 'new-ticket-opened-admin', 'ukrainian', 'New Ticket Opened (Opened by Staff, Sent to Customer) [ukrainian]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1462, 'ticket', 'ticket-reply', 'ukrainian', 'Ticket Reply (Sent to Customer) [ukrainian]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1463, 'ticket', 'ticket-autoresponse', 'ukrainian', 'New Ticket Opened - Autoresponse [ukrainian]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1464, 'invoice', 'invoice-payment-recorded', 'ukrainian', 'Invoice Payment Recorded (Sent to Customer) [ukrainian]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1465, 'invoice', 'invoice-overdue-notice', 'ukrainian', 'Invoice Overdue Notice [ukrainian]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1466, 'invoice', 'invoice-already-send', 'ukrainian', 'Invoice Already Sent to Customer [ukrainian]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1467, 'ticket', 'new-ticket-created-staff', 'ukrainian', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [ukrainian]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1468, 'estimate', 'estimate-send-to-client', 'ukrainian', 'Send Estimate to Customer [ukrainian]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1469, 'ticket', 'ticket-reply-to-admin', 'ukrainian', 'Ticket Reply (Sent to Staff) [ukrainian]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1470, 'estimate', 'estimate-already-send', 'ukrainian', 'Estimate Already Sent to Customer [ukrainian]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1471, 'contract', 'contract-expiration', 'ukrainian', 'Contract Expiration Reminder (Sent to Customer Contacts) [ukrainian]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1472, 'tasks', 'task-assigned', 'ukrainian', 'New Task Assigned (Sent to Staff) [ukrainian]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1473, 'tasks', 'task-added-as-follower', 'ukrainian', 'Staff Member Added as Follower on Task (Sent to Staff) [ukrainian]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1474, 'tasks', 'task-commented', 'ukrainian', 'New Comment on Task (Sent to Staff) [ukrainian]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1475, 'tasks', 'task-added-attachment', 'ukrainian', 'New Attachment(s) on Task (Sent to Staff) [ukrainian]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1476, 'estimate', 'estimate-declined-to-staff', 'ukrainian', 'Estimate Declined (Sent to Staff) [ukrainian]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1477, 'estimate', 'estimate-accepted-to-staff', 'ukrainian', 'Estimate Accepted (Sent to Staff) [ukrainian]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1478, 'proposals', 'proposal-client-accepted', 'ukrainian', 'Customer Action - Accepted (Sent to Staff) [ukrainian]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1479, 'proposals', 'proposal-send-to-customer', 'ukrainian', 'Send Proposal to Customer [ukrainian]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1480, 'proposals', 'proposal-client-declined', 'ukrainian', 'Customer Action - Declined (Sent to Staff) [ukrainian]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1481, 'proposals', 'proposal-client-thank-you', 'ukrainian', 'Thank You Email (Sent to Customer After Accept) [ukrainian]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1482, 'proposals', 'proposal-comment-to-client', 'ukrainian', 'New Comment Â (Sent to Customer/Lead) [ukrainian]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1483, 'proposals', 'proposal-comment-to-admin', 'ukrainian', 'New Comment (Sent to Staff)  [ukrainian]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1484, 'estimate', 'estimate-thank-you-to-customer', 'ukrainian', 'Thank You Email (Sent to Customer After Accept) [ukrainian]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1485, 'tasks', 'task-deadline-notification', 'ukrainian', 'Task Deadline Reminder - Sent to Assigned Members [ukrainian]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1486, 'contract', 'send-contract', 'ukrainian', 'Send Contract to Customer [ukrainian]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1487, 'invoice', 'invoice-payment-recorded-to-staff', 'ukrainian', 'Invoice Payment Recorded (Sent to Staff) [ukrainian]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1488, 'ticket', 'auto-close-ticket', 'ukrainian', 'Auto Close Ticket [ukrainian]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1489, 'project', 'new-project-discussion-created-to-staff', 'ukrainian', 'New Project Discussion (Sent to Project Members) [ukrainian]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1490, 'project', 'new-project-discussion-created-to-customer', 'ukrainian', 'New Project Discussion (Sent to Customer Contacts) [ukrainian]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1491, 'project', 'new-project-file-uploaded-to-customer', 'ukrainian', 'New Project File(s) Uploaded (Sent to Customer Contacts) [ukrainian]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1492, 'project', 'new-project-file-uploaded-to-staff', 'ukrainian', 'New Project File(s) Uploaded (Sent to Project Members) [ukrainian]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1493, 'project', 'new-project-discussion-comment-to-customer', 'ukrainian', 'New Discussion Comment  (Sent to Customer Contacts) [ukrainian]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1494, 'project', 'new-project-discussion-comment-to-staff', 'ukrainian', 'New Discussion Comment (Sent to Project Members) [ukrainian]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1495, 'project', 'staff-added-as-project-member', 'ukrainian', 'Staff Added as Project Member [ukrainian]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1496, 'estimate', 'estimate-expiry-reminder', 'ukrainian', 'Estimate Expiration Reminder [ukrainian]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1497, 'proposals', 'proposal-expiry-reminder', 'ukrainian', 'Proposal Expiration Reminder [ukrainian]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1498, 'staff', 'new-staff-created', 'ukrainian', 'New Staff Created (Welcome Email) [ukrainian]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1499, 'client', 'contact-forgot-password', 'ukrainian', 'Forgot Password [ukrainian]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1500, 'client', 'contact-password-reseted', 'ukrainian', 'Password Reset - Confirmation [ukrainian]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1501, 'client', 'contact-set-password', 'ukrainian', 'Set New Password [ukrainian]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1502, 'staff', 'staff-forgot-password', 'ukrainian', 'Forgot Password [ukrainian]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1503, 'staff', 'staff-password-reseted', 'ukrainian', 'Password Reset - Confirmation [ukrainian]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1504, 'project', 'assigned-to-project', 'ukrainian', 'New Project Created (Sent to Customer Contacts) [ukrainian]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1505, 'tasks', 'task-added-attachment-to-contacts', 'ukrainian', 'New Attachment(s) on Task (Sent to Customer Contacts) [ukrainian]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1506, 'tasks', 'task-commented-to-contacts', 'ukrainian', 'New Comment on Task (Sent to Customer Contacts) [ukrainian]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1507, 'leads', 'new-lead-assigned', 'ukrainian', 'New Lead Assigned to Staff Member [ukrainian]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1508, 'client', 'client-statement', 'ukrainian', 'Statement - Account Summary [ukrainian]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1509, 'ticket', 'ticket-assigned-to-admin', 'ukrainian', 'New Ticket Assigned (Sent to Staff) [ukrainian]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1510, 'client', 'new-client-registered-to-admin', 'ukrainian', 'New Customer Registration (Sent to admins) [ukrainian]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1511, 'leads', 'new-web-to-lead-form-submitted', 'ukrainian', 'Web to lead form submitted - Sent to lead [ukrainian]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
	(1512, 'staff', 'two-factor-authentication', 'ukrainian', 'Two Factor Authentication [ukrainian]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1513, 'project', 'project-finished-to-customer', 'ukrainian', 'Project Marked as Finished (Sent to Customer Contacts) [ukrainian]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1514, 'credit_note', 'credit-note-send-to-client', 'ukrainian', 'Send Credit Note To Email [ukrainian]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1515, 'tasks', 'task-status-change-to-staff', 'ukrainian', 'Task Status Changed (Sent to Staff) [ukrainian]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1516, 'tasks', 'task-status-change-to-contacts', 'ukrainian', 'Task Status Changed (Sent to Customer Contacts) [ukrainian]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1517, 'staff', 'reminder-email-staff', 'ukrainian', 'Staff Reminder Email [ukrainian]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1518, 'contract', 'contract-comment-to-client', 'ukrainian', 'New Comment Â (Sent to Customer Contacts) [ukrainian]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1519, 'contract', 'contract-comment-to-admin', 'ukrainian', 'New Comment (Sent to Staff)  [ukrainian]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1520, 'subscriptions', 'send-subscription', 'ukrainian', 'Send Subscription to Customer [ukrainian]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1521, 'subscriptions', 'subscription-payment-failed', 'ukrainian', 'Subscription Payment Failed [ukrainian]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1522, 'subscriptions', 'subscription-canceled', 'ukrainian', 'Subscription Canceled (Sent to customer primary contact) [ukrainian]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1523, 'subscriptions', 'subscription-payment-succeeded', 'ukrainian', 'Subscription Payment Succeeded (Sent to customer primary contact) [ukrainian]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1524, 'contract', 'contract-expiration-to-staff', 'ukrainian', 'Contract Expiration Reminder (Sent to Staff) [ukrainian]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1525, 'gdpr', 'gdpr-removal-request', 'ukrainian', 'Removal Request From Contact (Sent to administrators) [ukrainian]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1526, 'gdpr', 'gdpr-removal-request-lead', 'ukrainian', 'Removal Request From Lead (Sent to administrators) [ukrainian]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1527, 'client', 'client-registration-confirmed', 'ukrainian', 'Customer Registration Confirmed [ukrainian]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1528, 'contract', 'contract-signed-to-staff', 'ukrainian', 'Contract Signed (Sent to Staff) [ukrainian]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1529, 'subscriptions', 'customer-subscribed-to-staff', 'ukrainian', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [ukrainian]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1530, 'client', 'contact-verification-email', 'ukrainian', 'Email Verification (Sent to Contact After Registration) [ukrainian]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1531, 'client', 'new-customer-profile-file-uploaded-to-staff', 'ukrainian', 'New Customer Profile File(s) Uploaded (Sent to Staff) [ukrainian]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1532, 'staff', 'event-notification-to-staff', 'ukrainian', 'Event Notification (Calendar) [ukrainian]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
	(1533, 'subscriptions', 'subscription-payment-requires-action', 'ukrainian', 'Credit Card Authorization Required - SCA [ukrainian]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1534, 'invoice', 'invoice-due-notice', 'ukrainian', 'Invoice Due Notice [ukrainian]', 'Your {invoice_number} will be due soon', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1535, 'estimate_request', 'estimate-request-submitted-to-staff', 'ukrainian', 'Estimate Request Submitted (Sent to Staff) [ukrainian]', 'New Estimate Request Submitted', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1536, 'estimate_request', 'estimate-request-assigned', 'ukrainian', 'Estimate Request Assigned (Sent to Staff) [ukrainian]', 'New Estimate Request Assigned', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1537, 'estimate_request', 'estimate-request-received-to-user', 'ukrainian', 'Estimate Request Received (Sent to User) [ukrainian]', 'Estimate Request Received', '', '{companyname} | CRM', NULL, 0, 0, 0),
	(1538, 'notifications', 'non-billed-tasks-reminder', 'ukrainian', 'Non-billed tasks reminder (sent to selected staff members) [ukrainian]', 'Action required: Completed tasks are not billed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1539, 'invoice', 'invoices-batch-payments', 'ukrainian', 'Invoices Payments Recorded in Batch (Sent to Customer) [ukrainian]', 'We have received your payments', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1540, 'client', 'new-client-created', 'portuguese_br', 'New Contact Added/Registered (Welcome Email) [portuguese_br]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1541, 'invoice', 'invoice-send-to-client', 'portuguese_br', 'Send Invoice to Customer [portuguese_br]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1542, 'ticket', 'new-ticket-opened-admin', 'portuguese_br', 'New Ticket Opened (Opened by Staff, Sent to Customer) [portuguese_br]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1543, 'ticket', 'ticket-reply', 'portuguese_br', 'Ticket Reply (Sent to Customer) [portuguese_br]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1544, 'ticket', 'ticket-autoresponse', 'portuguese_br', 'New Ticket Opened - Autoresponse [portuguese_br]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1545, 'invoice', 'invoice-payment-recorded', 'portuguese_br', 'Invoice Payment Recorded (Sent to Customer) [portuguese_br]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1546, 'invoice', 'invoice-overdue-notice', 'portuguese_br', 'Invoice Overdue Notice [portuguese_br]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1547, 'invoice', 'invoice-already-send', 'portuguese_br', 'Invoice Already Sent to Customer [portuguese_br]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1548, 'ticket', 'new-ticket-created-staff', 'portuguese_br', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [portuguese_br]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1549, 'estimate', 'estimate-send-to-client', 'portuguese_br', 'Send Estimate to Customer [portuguese_br]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1550, 'ticket', 'ticket-reply-to-admin', 'portuguese_br', 'Ticket Reply (Sent to Staff) [portuguese_br]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1551, 'estimate', 'estimate-already-send', 'portuguese_br', 'Estimate Already Sent to Customer [portuguese_br]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1552, 'contract', 'contract-expiration', 'portuguese_br', 'Contract Expiration Reminder (Sent to Customer Contacts) [portuguese_br]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1553, 'tasks', 'task-assigned', 'portuguese_br', 'New Task Assigned (Sent to Staff) [portuguese_br]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1554, 'tasks', 'task-added-as-follower', 'portuguese_br', 'Staff Member Added as Follower on Task (Sent to Staff) [portuguese_br]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1555, 'tasks', 'task-commented', 'portuguese_br', 'New Comment on Task (Sent to Staff) [portuguese_br]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1556, 'tasks', 'task-added-attachment', 'portuguese_br', 'New Attachment(s) on Task (Sent to Staff) [portuguese_br]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1557, 'estimate', 'estimate-declined-to-staff', 'portuguese_br', 'Estimate Declined (Sent to Staff) [portuguese_br]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1558, 'estimate', 'estimate-accepted-to-staff', 'portuguese_br', 'Estimate Accepted (Sent to Staff) [portuguese_br]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1559, 'proposals', 'proposal-client-accepted', 'portuguese_br', 'Customer Action - Accepted (Sent to Staff) [portuguese_br]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1560, 'proposals', 'proposal-send-to-customer', 'portuguese_br', 'Send Proposal to Customer [portuguese_br]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1561, 'proposals', 'proposal-client-declined', 'portuguese_br', 'Customer Action - Declined (Sent to Staff) [portuguese_br]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1562, 'proposals', 'proposal-client-thank-you', 'portuguese_br', 'Thank You Email (Sent to Customer After Accept) [portuguese_br]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1563, 'proposals', 'proposal-comment-to-client', 'portuguese_br', 'New Comment Â (Sent to Customer/Lead) [portuguese_br]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1564, 'proposals', 'proposal-comment-to-admin', 'portuguese_br', 'New Comment (Sent to Staff)  [portuguese_br]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1565, 'estimate', 'estimate-thank-you-to-customer', 'portuguese_br', 'Thank You Email (Sent to Customer After Accept) [portuguese_br]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1566, 'tasks', 'task-deadline-notification', 'portuguese_br', 'Task Deadline Reminder - Sent to Assigned Members [portuguese_br]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1567, 'contract', 'send-contract', 'portuguese_br', 'Send Contract to Customer [portuguese_br]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1568, 'invoice', 'invoice-payment-recorded-to-staff', 'portuguese_br', 'Invoice Payment Recorded (Sent to Staff) [portuguese_br]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1569, 'ticket', 'auto-close-ticket', 'portuguese_br', 'Auto Close Ticket [portuguese_br]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1570, 'project', 'new-project-discussion-created-to-staff', 'portuguese_br', 'New Project Discussion (Sent to Project Members) [portuguese_br]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1571, 'project', 'new-project-discussion-created-to-customer', 'portuguese_br', 'New Project Discussion (Sent to Customer Contacts) [portuguese_br]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1572, 'project', 'new-project-file-uploaded-to-customer', 'portuguese_br', 'New Project File(s) Uploaded (Sent to Customer Contacts) [portuguese_br]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1573, 'project', 'new-project-file-uploaded-to-staff', 'portuguese_br', 'New Project File(s) Uploaded (Sent to Project Members) [portuguese_br]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1574, 'project', 'new-project-discussion-comment-to-customer', 'portuguese_br', 'New Discussion Comment  (Sent to Customer Contacts) [portuguese_br]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1575, 'project', 'new-project-discussion-comment-to-staff', 'portuguese_br', 'New Discussion Comment (Sent to Project Members) [portuguese_br]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1576, 'project', 'staff-added-as-project-member', 'portuguese_br', 'Staff Added as Project Member [portuguese_br]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1577, 'estimate', 'estimate-expiry-reminder', 'portuguese_br', 'Estimate Expiration Reminder [portuguese_br]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1578, 'proposals', 'proposal-expiry-reminder', 'portuguese_br', 'Proposal Expiration Reminder [portuguese_br]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1579, 'staff', 'new-staff-created', 'portuguese_br', 'New Staff Created (Welcome Email) [portuguese_br]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1580, 'client', 'contact-forgot-password', 'portuguese_br', 'Forgot Password [portuguese_br]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1581, 'client', 'contact-password-reseted', 'portuguese_br', 'Password Reset - Confirmation [portuguese_br]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1582, 'client', 'contact-set-password', 'portuguese_br', 'Set New Password [portuguese_br]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1583, 'staff', 'staff-forgot-password', 'portuguese_br', 'Forgot Password [portuguese_br]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1584, 'staff', 'staff-password-reseted', 'portuguese_br', 'Password Reset - Confirmation [portuguese_br]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1585, 'project', 'assigned-to-project', 'portuguese_br', 'New Project Created (Sent to Customer Contacts) [portuguese_br]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1586, 'tasks', 'task-added-attachment-to-contacts', 'portuguese_br', 'New Attachment(s) on Task (Sent to Customer Contacts) [portuguese_br]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1587, 'tasks', 'task-commented-to-contacts', 'portuguese_br', 'New Comment on Task (Sent to Customer Contacts) [portuguese_br]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1588, 'leads', 'new-lead-assigned', 'portuguese_br', 'New Lead Assigned to Staff Member [portuguese_br]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1589, 'client', 'client-statement', 'portuguese_br', 'Statement - Account Summary [portuguese_br]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1590, 'ticket', 'ticket-assigned-to-admin', 'portuguese_br', 'New Ticket Assigned (Sent to Staff) [portuguese_br]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1591, 'client', 'new-client-registered-to-admin', 'portuguese_br', 'New Customer Registration (Sent to admins) [portuguese_br]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1592, 'leads', 'new-web-to-lead-form-submitted', 'portuguese_br', 'Web to lead form submitted - Sent to lead [portuguese_br]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
	(1593, 'staff', 'two-factor-authentication', 'portuguese_br', 'Two Factor Authentication [portuguese_br]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1594, 'project', 'project-finished-to-customer', 'portuguese_br', 'Project Marked as Finished (Sent to Customer Contacts) [portuguese_br]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1595, 'credit_note', 'credit-note-send-to-client', 'portuguese_br', 'Send Credit Note To Email [portuguese_br]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1596, 'tasks', 'task-status-change-to-staff', 'portuguese_br', 'Task Status Changed (Sent to Staff) [portuguese_br]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1597, 'tasks', 'task-status-change-to-contacts', 'portuguese_br', 'Task Status Changed (Sent to Customer Contacts) [portuguese_br]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1598, 'staff', 'reminder-email-staff', 'portuguese_br', 'Staff Reminder Email [portuguese_br]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1599, 'contract', 'contract-comment-to-client', 'portuguese_br', 'New Comment Â (Sent to Customer Contacts) [portuguese_br]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1600, 'contract', 'contract-comment-to-admin', 'portuguese_br', 'New Comment (Sent to Staff)  [portuguese_br]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1601, 'subscriptions', 'send-subscription', 'portuguese_br', 'Send Subscription to Customer [portuguese_br]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1602, 'subscriptions', 'subscription-payment-failed', 'portuguese_br', 'Subscription Payment Failed [portuguese_br]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1603, 'subscriptions', 'subscription-canceled', 'portuguese_br', 'Subscription Canceled (Sent to customer primary contact) [portuguese_br]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1604, 'subscriptions', 'subscription-payment-succeeded', 'portuguese_br', 'Subscription Payment Succeeded (Sent to customer primary contact) [portuguese_br]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1605, 'contract', 'contract-expiration-to-staff', 'portuguese_br', 'Contract Expiration Reminder (Sent to Staff) [portuguese_br]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1606, 'gdpr', 'gdpr-removal-request', 'portuguese_br', 'Removal Request From Contact (Sent to administrators) [portuguese_br]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1607, 'gdpr', 'gdpr-removal-request-lead', 'portuguese_br', 'Removal Request From Lead (Sent to administrators) [portuguese_br]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1608, 'client', 'client-registration-confirmed', 'portuguese_br', 'Customer Registration Confirmed [portuguese_br]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1609, 'contract', 'contract-signed-to-staff', 'portuguese_br', 'Contract Signed (Sent to Staff) [portuguese_br]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1610, 'subscriptions', 'customer-subscribed-to-staff', 'portuguese_br', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [portuguese_br]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1611, 'client', 'contact-verification-email', 'portuguese_br', 'Email Verification (Sent to Contact After Registration) [portuguese_br]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1612, 'client', 'new-customer-profile-file-uploaded-to-staff', 'portuguese_br', 'New Customer Profile File(s) Uploaded (Sent to Staff) [portuguese_br]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1613, 'staff', 'event-notification-to-staff', 'portuguese_br', 'Event Notification (Calendar) [portuguese_br]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
	(1614, 'subscriptions', 'subscription-payment-requires-action', 'portuguese_br', 'Credit Card Authorization Required - SCA [portuguese_br]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1615, 'invoice', 'invoice-due-notice', 'portuguese_br', 'Invoice Due Notice [portuguese_br]', 'Your {invoice_number} will be due soon', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1616, 'estimate_request', 'estimate-request-submitted-to-staff', 'portuguese_br', 'Estimate Request Submitted (Sent to Staff) [portuguese_br]', 'New Estimate Request Submitted', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1617, 'estimate_request', 'estimate-request-assigned', 'portuguese_br', 'Estimate Request Assigned (Sent to Staff) [portuguese_br]', 'New Estimate Request Assigned', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1618, 'estimate_request', 'estimate-request-received-to-user', 'portuguese_br', 'Estimate Request Received (Sent to User) [portuguese_br]', 'Estimate Request Received', '', '{companyname} | CRM', NULL, 0, 0, 0),
	(1619, 'notifications', 'non-billed-tasks-reminder', 'portuguese_br', 'Non-billed tasks reminder (sent to selected staff members) [portuguese_br]', 'Action required: Completed tasks are not billed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1620, 'invoice', 'invoices-batch-payments', 'portuguese_br', 'Invoices Payments Recorded in Batch (Sent to Customer) [portuguese_br]', 'We have received your payments', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1621, 'client', 'new-client-created', 'slovak', 'New Contact Added/Registered (Welcome Email) [slovak]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1622, 'invoice', 'invoice-send-to-client', 'slovak', 'Send Invoice to Customer [slovak]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1623, 'ticket', 'new-ticket-opened-admin', 'slovak', 'New Ticket Opened (Opened by Staff, Sent to Customer) [slovak]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1624, 'ticket', 'ticket-reply', 'slovak', 'Ticket Reply (Sent to Customer) [slovak]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1625, 'ticket', 'ticket-autoresponse', 'slovak', 'New Ticket Opened - Autoresponse [slovak]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1626, 'invoice', 'invoice-payment-recorded', 'slovak', 'Invoice Payment Recorded (Sent to Customer) [slovak]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1627, 'invoice', 'invoice-overdue-notice', 'slovak', 'Invoice Overdue Notice [slovak]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1628, 'invoice', 'invoice-already-send', 'slovak', 'Invoice Already Sent to Customer [slovak]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1629, 'ticket', 'new-ticket-created-staff', 'slovak', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [slovak]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1630, 'estimate', 'estimate-send-to-client', 'slovak', 'Send Estimate to Customer [slovak]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1631, 'ticket', 'ticket-reply-to-admin', 'slovak', 'Ticket Reply (Sent to Staff) [slovak]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1632, 'estimate', 'estimate-already-send', 'slovak', 'Estimate Already Sent to Customer [slovak]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1633, 'contract', 'contract-expiration', 'slovak', 'Contract Expiration Reminder (Sent to Customer Contacts) [slovak]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1634, 'tasks', 'task-assigned', 'slovak', 'New Task Assigned (Sent to Staff) [slovak]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1635, 'tasks', 'task-added-as-follower', 'slovak', 'Staff Member Added as Follower on Task (Sent to Staff) [slovak]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1636, 'tasks', 'task-commented', 'slovak', 'New Comment on Task (Sent to Staff) [slovak]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1637, 'tasks', 'task-added-attachment', 'slovak', 'New Attachment(s) on Task (Sent to Staff) [slovak]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1638, 'estimate', 'estimate-declined-to-staff', 'slovak', 'Estimate Declined (Sent to Staff) [slovak]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1639, 'estimate', 'estimate-accepted-to-staff', 'slovak', 'Estimate Accepted (Sent to Staff) [slovak]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1640, 'proposals', 'proposal-client-accepted', 'slovak', 'Customer Action - Accepted (Sent to Staff) [slovak]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1641, 'proposals', 'proposal-send-to-customer', 'slovak', 'Send Proposal to Customer [slovak]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1642, 'proposals', 'proposal-client-declined', 'slovak', 'Customer Action - Declined (Sent to Staff) [slovak]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1643, 'proposals', 'proposal-client-thank-you', 'slovak', 'Thank You Email (Sent to Customer After Accept) [slovak]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1644, 'proposals', 'proposal-comment-to-client', 'slovak', 'New Comment Â (Sent to Customer/Lead) [slovak]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1645, 'proposals', 'proposal-comment-to-admin', 'slovak', 'New Comment (Sent to Staff)  [slovak]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1646, 'estimate', 'estimate-thank-you-to-customer', 'slovak', 'Thank You Email (Sent to Customer After Accept) [slovak]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1647, 'tasks', 'task-deadline-notification', 'slovak', 'Task Deadline Reminder - Sent to Assigned Members [slovak]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1648, 'contract', 'send-contract', 'slovak', 'Send Contract to Customer [slovak]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1649, 'invoice', 'invoice-payment-recorded-to-staff', 'slovak', 'Invoice Payment Recorded (Sent to Staff) [slovak]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1650, 'ticket', 'auto-close-ticket', 'slovak', 'Auto Close Ticket [slovak]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1651, 'project', 'new-project-discussion-created-to-staff', 'slovak', 'New Project Discussion (Sent to Project Members) [slovak]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1652, 'project', 'new-project-discussion-created-to-customer', 'slovak', 'New Project Discussion (Sent to Customer Contacts) [slovak]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1653, 'project', 'new-project-file-uploaded-to-customer', 'slovak', 'New Project File(s) Uploaded (Sent to Customer Contacts) [slovak]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1654, 'project', 'new-project-file-uploaded-to-staff', 'slovak', 'New Project File(s) Uploaded (Sent to Project Members) [slovak]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1655, 'project', 'new-project-discussion-comment-to-customer', 'slovak', 'New Discussion Comment  (Sent to Customer Contacts) [slovak]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1656, 'project', 'new-project-discussion-comment-to-staff', 'slovak', 'New Discussion Comment (Sent to Project Members) [slovak]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1657, 'project', 'staff-added-as-project-member', 'slovak', 'Staff Added as Project Member [slovak]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1658, 'estimate', 'estimate-expiry-reminder', 'slovak', 'Estimate Expiration Reminder [slovak]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1659, 'proposals', 'proposal-expiry-reminder', 'slovak', 'Proposal Expiration Reminder [slovak]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1660, 'staff', 'new-staff-created', 'slovak', 'New Staff Created (Welcome Email) [slovak]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1661, 'client', 'contact-forgot-password', 'slovak', 'Forgot Password [slovak]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1662, 'client', 'contact-password-reseted', 'slovak', 'Password Reset - Confirmation [slovak]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1663, 'client', 'contact-set-password', 'slovak', 'Set New Password [slovak]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1664, 'staff', 'staff-forgot-password', 'slovak', 'Forgot Password [slovak]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1665, 'staff', 'staff-password-reseted', 'slovak', 'Password Reset - Confirmation [slovak]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1666, 'project', 'assigned-to-project', 'slovak', 'New Project Created (Sent to Customer Contacts) [slovak]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1667, 'tasks', 'task-added-attachment-to-contacts', 'slovak', 'New Attachment(s) on Task (Sent to Customer Contacts) [slovak]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1668, 'tasks', 'task-commented-to-contacts', 'slovak', 'New Comment on Task (Sent to Customer Contacts) [slovak]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1669, 'leads', 'new-lead-assigned', 'slovak', 'New Lead Assigned to Staff Member [slovak]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1670, 'client', 'client-statement', 'slovak', 'Statement - Account Summary [slovak]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1671, 'ticket', 'ticket-assigned-to-admin', 'slovak', 'New Ticket Assigned (Sent to Staff) [slovak]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1672, 'client', 'new-client-registered-to-admin', 'slovak', 'New Customer Registration (Sent to admins) [slovak]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1673, 'leads', 'new-web-to-lead-form-submitted', 'slovak', 'Web to lead form submitted - Sent to lead [slovak]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
	(1674, 'staff', 'two-factor-authentication', 'slovak', 'Two Factor Authentication [slovak]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1675, 'project', 'project-finished-to-customer', 'slovak', 'Project Marked as Finished (Sent to Customer Contacts) [slovak]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1676, 'credit_note', 'credit-note-send-to-client', 'slovak', 'Send Credit Note To Email [slovak]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1677, 'tasks', 'task-status-change-to-staff', 'slovak', 'Task Status Changed (Sent to Staff) [slovak]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1678, 'tasks', 'task-status-change-to-contacts', 'slovak', 'Task Status Changed (Sent to Customer Contacts) [slovak]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1679, 'staff', 'reminder-email-staff', 'slovak', 'Staff Reminder Email [slovak]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1680, 'contract', 'contract-comment-to-client', 'slovak', 'New Comment Â (Sent to Customer Contacts) [slovak]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1681, 'contract', 'contract-comment-to-admin', 'slovak', 'New Comment (Sent to Staff)  [slovak]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1682, 'subscriptions', 'send-subscription', 'slovak', 'Send Subscription to Customer [slovak]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1683, 'subscriptions', 'subscription-payment-failed', 'slovak', 'Subscription Payment Failed [slovak]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1684, 'subscriptions', 'subscription-canceled', 'slovak', 'Subscription Canceled (Sent to customer primary contact) [slovak]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1685, 'subscriptions', 'subscription-payment-succeeded', 'slovak', 'Subscription Payment Succeeded (Sent to customer primary contact) [slovak]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1686, 'contract', 'contract-expiration-to-staff', 'slovak', 'Contract Expiration Reminder (Sent to Staff) [slovak]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1687, 'gdpr', 'gdpr-removal-request', 'slovak', 'Removal Request From Contact (Sent to administrators) [slovak]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1688, 'gdpr', 'gdpr-removal-request-lead', 'slovak', 'Removal Request From Lead (Sent to administrators) [slovak]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1689, 'client', 'client-registration-confirmed', 'slovak', 'Customer Registration Confirmed [slovak]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1690, 'contract', 'contract-signed-to-staff', 'slovak', 'Contract Signed (Sent to Staff) [slovak]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1691, 'subscriptions', 'customer-subscribed-to-staff', 'slovak', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [slovak]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1692, 'client', 'contact-verification-email', 'slovak', 'Email Verification (Sent to Contact After Registration) [slovak]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1693, 'client', 'new-customer-profile-file-uploaded-to-staff', 'slovak', 'New Customer Profile File(s) Uploaded (Sent to Staff) [slovak]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1694, 'staff', 'event-notification-to-staff', 'slovak', 'Event Notification (Calendar) [slovak]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
	(1695, 'subscriptions', 'subscription-payment-requires-action', 'slovak', 'Credit Card Authorization Required - SCA [slovak]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1696, 'invoice', 'invoice-due-notice', 'slovak', 'Invoice Due Notice [slovak]', 'Your {invoice_number} will be due soon', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1697, 'estimate_request', 'estimate-request-submitted-to-staff', 'slovak', 'Estimate Request Submitted (Sent to Staff) [slovak]', 'New Estimate Request Submitted', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1698, 'estimate_request', 'estimate-request-assigned', 'slovak', 'Estimate Request Assigned (Sent to Staff) [slovak]', 'New Estimate Request Assigned', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1699, 'estimate_request', 'estimate-request-received-to-user', 'slovak', 'Estimate Request Received (Sent to User) [slovak]', 'Estimate Request Received', '', '{companyname} | CRM', NULL, 0, 0, 0),
	(1700, 'notifications', 'non-billed-tasks-reminder', 'slovak', 'Non-billed tasks reminder (sent to selected staff members) [slovak]', 'Action required: Completed tasks are not billed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1701, 'invoice', 'invoices-batch-payments', 'slovak', 'Invoices Payments Recorded in Batch (Sent to Customer) [slovak]', 'We have received your payments', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1702, 'client', 'new-client-created', 'romanian', 'New Contact Added/Registered (Welcome Email) [romanian]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1703, 'invoice', 'invoice-send-to-client', 'romanian', 'Send Invoice to Customer [romanian]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1704, 'ticket', 'new-ticket-opened-admin', 'romanian', 'New Ticket Opened (Opened by Staff, Sent to Customer) [romanian]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1705, 'ticket', 'ticket-reply', 'romanian', 'Ticket Reply (Sent to Customer) [romanian]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1706, 'ticket', 'ticket-autoresponse', 'romanian', 'New Ticket Opened - Autoresponse [romanian]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1707, 'invoice', 'invoice-payment-recorded', 'romanian', 'Invoice Payment Recorded (Sent to Customer) [romanian]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1708, 'invoice', 'invoice-overdue-notice', 'romanian', 'Invoice Overdue Notice [romanian]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1709, 'invoice', 'invoice-already-send', 'romanian', 'Invoice Already Sent to Customer [romanian]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1710, 'ticket', 'new-ticket-created-staff', 'romanian', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [romanian]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1711, 'estimate', 'estimate-send-to-client', 'romanian', 'Send Estimate to Customer [romanian]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1712, 'ticket', 'ticket-reply-to-admin', 'romanian', 'Ticket Reply (Sent to Staff) [romanian]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1713, 'estimate', 'estimate-already-send', 'romanian', 'Estimate Already Sent to Customer [romanian]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1714, 'contract', 'contract-expiration', 'romanian', 'Contract Expiration Reminder (Sent to Customer Contacts) [romanian]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1715, 'tasks', 'task-assigned', 'romanian', 'New Task Assigned (Sent to Staff) [romanian]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1716, 'tasks', 'task-added-as-follower', 'romanian', 'Staff Member Added as Follower on Task (Sent to Staff) [romanian]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1717, 'tasks', 'task-commented', 'romanian', 'New Comment on Task (Sent to Staff) [romanian]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1718, 'tasks', 'task-added-attachment', 'romanian', 'New Attachment(s) on Task (Sent to Staff) [romanian]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1719, 'estimate', 'estimate-declined-to-staff', 'romanian', 'Estimate Declined (Sent to Staff) [romanian]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1720, 'estimate', 'estimate-accepted-to-staff', 'romanian', 'Estimate Accepted (Sent to Staff) [romanian]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1721, 'proposals', 'proposal-client-accepted', 'romanian', 'Customer Action - Accepted (Sent to Staff) [romanian]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1722, 'proposals', 'proposal-send-to-customer', 'romanian', 'Send Proposal to Customer [romanian]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1723, 'proposals', 'proposal-client-declined', 'romanian', 'Customer Action - Declined (Sent to Staff) [romanian]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1724, 'proposals', 'proposal-client-thank-you', 'romanian', 'Thank You Email (Sent to Customer After Accept) [romanian]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1725, 'proposals', 'proposal-comment-to-client', 'romanian', 'New Comment Â (Sent to Customer/Lead) [romanian]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1726, 'proposals', 'proposal-comment-to-admin', 'romanian', 'New Comment (Sent to Staff)  [romanian]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1727, 'estimate', 'estimate-thank-you-to-customer', 'romanian', 'Thank You Email (Sent to Customer After Accept) [romanian]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1728, 'tasks', 'task-deadline-notification', 'romanian', 'Task Deadline Reminder - Sent to Assigned Members [romanian]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1729, 'contract', 'send-contract', 'romanian', 'Send Contract to Customer [romanian]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1730, 'invoice', 'invoice-payment-recorded-to-staff', 'romanian', 'Invoice Payment Recorded (Sent to Staff) [romanian]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1731, 'ticket', 'auto-close-ticket', 'romanian', 'Auto Close Ticket [romanian]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1732, 'project', 'new-project-discussion-created-to-staff', 'romanian', 'New Project Discussion (Sent to Project Members) [romanian]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1733, 'project', 'new-project-discussion-created-to-customer', 'romanian', 'New Project Discussion (Sent to Customer Contacts) [romanian]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1734, 'project', 'new-project-file-uploaded-to-customer', 'romanian', 'New Project File(s) Uploaded (Sent to Customer Contacts) [romanian]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1735, 'project', 'new-project-file-uploaded-to-staff', 'romanian', 'New Project File(s) Uploaded (Sent to Project Members) [romanian]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1736, 'project', 'new-project-discussion-comment-to-customer', 'romanian', 'New Discussion Comment  (Sent to Customer Contacts) [romanian]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1737, 'project', 'new-project-discussion-comment-to-staff', 'romanian', 'New Discussion Comment (Sent to Project Members) [romanian]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1738, 'project', 'staff-added-as-project-member', 'romanian', 'Staff Added as Project Member [romanian]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1739, 'estimate', 'estimate-expiry-reminder', 'romanian', 'Estimate Expiration Reminder [romanian]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1740, 'proposals', 'proposal-expiry-reminder', 'romanian', 'Proposal Expiration Reminder [romanian]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1741, 'staff', 'new-staff-created', 'romanian', 'New Staff Created (Welcome Email) [romanian]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1742, 'client', 'contact-forgot-password', 'romanian', 'Forgot Password [romanian]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1743, 'client', 'contact-password-reseted', 'romanian', 'Password Reset - Confirmation [romanian]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1744, 'client', 'contact-set-password', 'romanian', 'Set New Password [romanian]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1745, 'staff', 'staff-forgot-password', 'romanian', 'Forgot Password [romanian]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1746, 'staff', 'staff-password-reseted', 'romanian', 'Password Reset - Confirmation [romanian]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1747, 'project', 'assigned-to-project', 'romanian', 'New Project Created (Sent to Customer Contacts) [romanian]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1748, 'tasks', 'task-added-attachment-to-contacts', 'romanian', 'New Attachment(s) on Task (Sent to Customer Contacts) [romanian]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1749, 'tasks', 'task-commented-to-contacts', 'romanian', 'New Comment on Task (Sent to Customer Contacts) [romanian]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1750, 'leads', 'new-lead-assigned', 'romanian', 'New Lead Assigned to Staff Member [romanian]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1751, 'client', 'client-statement', 'romanian', 'Statement - Account Summary [romanian]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1752, 'ticket', 'ticket-assigned-to-admin', 'romanian', 'New Ticket Assigned (Sent to Staff) [romanian]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1753, 'client', 'new-client-registered-to-admin', 'romanian', 'New Customer Registration (Sent to admins) [romanian]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1754, 'leads', 'new-web-to-lead-form-submitted', 'romanian', 'Web to lead form submitted - Sent to lead [romanian]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
	(1755, 'staff', 'two-factor-authentication', 'romanian', 'Two Factor Authentication [romanian]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1756, 'project', 'project-finished-to-customer', 'romanian', 'Project Marked as Finished (Sent to Customer Contacts) [romanian]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1757, 'credit_note', 'credit-note-send-to-client', 'romanian', 'Send Credit Note To Email [romanian]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1758, 'tasks', 'task-status-change-to-staff', 'romanian', 'Task Status Changed (Sent to Staff) [romanian]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1759, 'tasks', 'task-status-change-to-contacts', 'romanian', 'Task Status Changed (Sent to Customer Contacts) [romanian]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1760, 'staff', 'reminder-email-staff', 'romanian', 'Staff Reminder Email [romanian]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1761, 'contract', 'contract-comment-to-client', 'romanian', 'New Comment Â (Sent to Customer Contacts) [romanian]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1762, 'contract', 'contract-comment-to-admin', 'romanian', 'New Comment (Sent to Staff)  [romanian]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1763, 'subscriptions', 'send-subscription', 'romanian', 'Send Subscription to Customer [romanian]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1764, 'subscriptions', 'subscription-payment-failed', 'romanian', 'Subscription Payment Failed [romanian]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1765, 'subscriptions', 'subscription-canceled', 'romanian', 'Subscription Canceled (Sent to customer primary contact) [romanian]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1766, 'subscriptions', 'subscription-payment-succeeded', 'romanian', 'Subscription Payment Succeeded (Sent to customer primary contact) [romanian]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1767, 'contract', 'contract-expiration-to-staff', 'romanian', 'Contract Expiration Reminder (Sent to Staff) [romanian]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1768, 'gdpr', 'gdpr-removal-request', 'romanian', 'Removal Request From Contact (Sent to administrators) [romanian]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1769, 'gdpr', 'gdpr-removal-request-lead', 'romanian', 'Removal Request From Lead (Sent to administrators) [romanian]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1770, 'client', 'client-registration-confirmed', 'romanian', 'Customer Registration Confirmed [romanian]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1771, 'contract', 'contract-signed-to-staff', 'romanian', 'Contract Signed (Sent to Staff) [romanian]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1772, 'subscriptions', 'customer-subscribed-to-staff', 'romanian', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [romanian]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1773, 'client', 'contact-verification-email', 'romanian', 'Email Verification (Sent to Contact After Registration) [romanian]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1774, 'client', 'new-customer-profile-file-uploaded-to-staff', 'romanian', 'New Customer Profile File(s) Uploaded (Sent to Staff) [romanian]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1775, 'staff', 'event-notification-to-staff', 'romanian', 'Event Notification (Calendar) [romanian]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
	(1776, 'subscriptions', 'subscription-payment-requires-action', 'romanian', 'Credit Card Authorization Required - SCA [romanian]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1777, 'invoice', 'invoice-due-notice', 'romanian', 'Invoice Due Notice [romanian]', 'Your {invoice_number} will be due soon', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1778, 'estimate_request', 'estimate-request-submitted-to-staff', 'romanian', 'Estimate Request Submitted (Sent to Staff) [romanian]', 'New Estimate Request Submitted', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1779, 'estimate_request', 'estimate-request-assigned', 'romanian', 'Estimate Request Assigned (Sent to Staff) [romanian]', 'New Estimate Request Assigned', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1780, 'estimate_request', 'estimate-request-received-to-user', 'romanian', 'Estimate Request Received (Sent to User) [romanian]', 'Estimate Request Received', '', '{companyname} | CRM', NULL, 0, 0, 0),
	(1781, 'notifications', 'non-billed-tasks-reminder', 'romanian', 'Non-billed tasks reminder (sent to selected staff members) [romanian]', 'Action required: Completed tasks are not billed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1782, 'invoice', 'invoices-batch-payments', 'romanian', 'Invoices Payments Recorded in Batch (Sent to Customer) [romanian]', 'We have received your payments', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1783, 'client', 'new-client-created', 'bulgarian', 'New Contact Added/Registered (Welcome Email) [bulgarian]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1784, 'invoice', 'invoice-send-to-client', 'bulgarian', 'Send Invoice to Customer [bulgarian]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1785, 'ticket', 'new-ticket-opened-admin', 'bulgarian', 'New Ticket Opened (Opened by Staff, Sent to Customer) [bulgarian]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1786, 'ticket', 'ticket-reply', 'bulgarian', 'Ticket Reply (Sent to Customer) [bulgarian]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1787, 'ticket', 'ticket-autoresponse', 'bulgarian', 'New Ticket Opened - Autoresponse [bulgarian]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1788, 'invoice', 'invoice-payment-recorded', 'bulgarian', 'Invoice Payment Recorded (Sent to Customer) [bulgarian]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1789, 'invoice', 'invoice-overdue-notice', 'bulgarian', 'Invoice Overdue Notice [bulgarian]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1790, 'invoice', 'invoice-already-send', 'bulgarian', 'Invoice Already Sent to Customer [bulgarian]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1791, 'ticket', 'new-ticket-created-staff', 'bulgarian', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [bulgarian]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1792, 'estimate', 'estimate-send-to-client', 'bulgarian', 'Send Estimate to Customer [bulgarian]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1793, 'ticket', 'ticket-reply-to-admin', 'bulgarian', 'Ticket Reply (Sent to Staff) [bulgarian]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1794, 'estimate', 'estimate-already-send', 'bulgarian', 'Estimate Already Sent to Customer [bulgarian]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1795, 'contract', 'contract-expiration', 'bulgarian', 'Contract Expiration Reminder (Sent to Customer Contacts) [bulgarian]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1796, 'tasks', 'task-assigned', 'bulgarian', 'New Task Assigned (Sent to Staff) [bulgarian]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1797, 'tasks', 'task-added-as-follower', 'bulgarian', 'Staff Member Added as Follower on Task (Sent to Staff) [bulgarian]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1798, 'tasks', 'task-commented', 'bulgarian', 'New Comment on Task (Sent to Staff) [bulgarian]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1799, 'tasks', 'task-added-attachment', 'bulgarian', 'New Attachment(s) on Task (Sent to Staff) [bulgarian]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1800, 'estimate', 'estimate-declined-to-staff', 'bulgarian', 'Estimate Declined (Sent to Staff) [bulgarian]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1801, 'estimate', 'estimate-accepted-to-staff', 'bulgarian', 'Estimate Accepted (Sent to Staff) [bulgarian]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1802, 'proposals', 'proposal-client-accepted', 'bulgarian', 'Customer Action - Accepted (Sent to Staff) [bulgarian]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1803, 'proposals', 'proposal-send-to-customer', 'bulgarian', 'Send Proposal to Customer [bulgarian]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1804, 'proposals', 'proposal-client-declined', 'bulgarian', 'Customer Action - Declined (Sent to Staff) [bulgarian]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1805, 'proposals', 'proposal-client-thank-you', 'bulgarian', 'Thank You Email (Sent to Customer After Accept) [bulgarian]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1806, 'proposals', 'proposal-comment-to-client', 'bulgarian', 'New Comment Â (Sent to Customer/Lead) [bulgarian]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1807, 'proposals', 'proposal-comment-to-admin', 'bulgarian', 'New Comment (Sent to Staff)  [bulgarian]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1808, 'estimate', 'estimate-thank-you-to-customer', 'bulgarian', 'Thank You Email (Sent to Customer After Accept) [bulgarian]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1809, 'tasks', 'task-deadline-notification', 'bulgarian', 'Task Deadline Reminder - Sent to Assigned Members [bulgarian]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1810, 'contract', 'send-contract', 'bulgarian', 'Send Contract to Customer [bulgarian]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1811, 'invoice', 'invoice-payment-recorded-to-staff', 'bulgarian', 'Invoice Payment Recorded (Sent to Staff) [bulgarian]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1812, 'ticket', 'auto-close-ticket', 'bulgarian', 'Auto Close Ticket [bulgarian]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1813, 'project', 'new-project-discussion-created-to-staff', 'bulgarian', 'New Project Discussion (Sent to Project Members) [bulgarian]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1814, 'project', 'new-project-discussion-created-to-customer', 'bulgarian', 'New Project Discussion (Sent to Customer Contacts) [bulgarian]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1815, 'project', 'new-project-file-uploaded-to-customer', 'bulgarian', 'New Project File(s) Uploaded (Sent to Customer Contacts) [bulgarian]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1816, 'project', 'new-project-file-uploaded-to-staff', 'bulgarian', 'New Project File(s) Uploaded (Sent to Project Members) [bulgarian]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1817, 'project', 'new-project-discussion-comment-to-customer', 'bulgarian', 'New Discussion Comment  (Sent to Customer Contacts) [bulgarian]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1818, 'project', 'new-project-discussion-comment-to-staff', 'bulgarian', 'New Discussion Comment (Sent to Project Members) [bulgarian]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1819, 'project', 'staff-added-as-project-member', 'bulgarian', 'Staff Added as Project Member [bulgarian]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1820, 'estimate', 'estimate-expiry-reminder', 'bulgarian', 'Estimate Expiration Reminder [bulgarian]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1821, 'proposals', 'proposal-expiry-reminder', 'bulgarian', 'Proposal Expiration Reminder [bulgarian]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1822, 'staff', 'new-staff-created', 'bulgarian', 'New Staff Created (Welcome Email) [bulgarian]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1823, 'client', 'contact-forgot-password', 'bulgarian', 'Forgot Password [bulgarian]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1824, 'client', 'contact-password-reseted', 'bulgarian', 'Password Reset - Confirmation [bulgarian]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1825, 'client', 'contact-set-password', 'bulgarian', 'Set New Password [bulgarian]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1826, 'staff', 'staff-forgot-password', 'bulgarian', 'Forgot Password [bulgarian]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1827, 'staff', 'staff-password-reseted', 'bulgarian', 'Password Reset - Confirmation [bulgarian]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1828, 'project', 'assigned-to-project', 'bulgarian', 'New Project Created (Sent to Customer Contacts) [bulgarian]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1829, 'tasks', 'task-added-attachment-to-contacts', 'bulgarian', 'New Attachment(s) on Task (Sent to Customer Contacts) [bulgarian]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1830, 'tasks', 'task-commented-to-contacts', 'bulgarian', 'New Comment on Task (Sent to Customer Contacts) [bulgarian]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1831, 'leads', 'new-lead-assigned', 'bulgarian', 'New Lead Assigned to Staff Member [bulgarian]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1832, 'client', 'client-statement', 'bulgarian', 'Statement - Account Summary [bulgarian]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1833, 'ticket', 'ticket-assigned-to-admin', 'bulgarian', 'New Ticket Assigned (Sent to Staff) [bulgarian]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1834, 'client', 'new-client-registered-to-admin', 'bulgarian', 'New Customer Registration (Sent to admins) [bulgarian]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1835, 'leads', 'new-web-to-lead-form-submitted', 'bulgarian', 'Web to lead form submitted - Sent to lead [bulgarian]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
	(1836, 'staff', 'two-factor-authentication', 'bulgarian', 'Two Factor Authentication [bulgarian]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1837, 'project', 'project-finished-to-customer', 'bulgarian', 'Project Marked as Finished (Sent to Customer Contacts) [bulgarian]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1838, 'credit_note', 'credit-note-send-to-client', 'bulgarian', 'Send Credit Note To Email [bulgarian]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1839, 'tasks', 'task-status-change-to-staff', 'bulgarian', 'Task Status Changed (Sent to Staff) [bulgarian]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1840, 'tasks', 'task-status-change-to-contacts', 'bulgarian', 'Task Status Changed (Sent to Customer Contacts) [bulgarian]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1841, 'staff', 'reminder-email-staff', 'bulgarian', 'Staff Reminder Email [bulgarian]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1842, 'contract', 'contract-comment-to-client', 'bulgarian', 'New Comment Â (Sent to Customer Contacts) [bulgarian]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1843, 'contract', 'contract-comment-to-admin', 'bulgarian', 'New Comment (Sent to Staff)  [bulgarian]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1844, 'subscriptions', 'send-subscription', 'bulgarian', 'Send Subscription to Customer [bulgarian]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1845, 'subscriptions', 'subscription-payment-failed', 'bulgarian', 'Subscription Payment Failed [bulgarian]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1846, 'subscriptions', 'subscription-canceled', 'bulgarian', 'Subscription Canceled (Sent to customer primary contact) [bulgarian]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1847, 'subscriptions', 'subscription-payment-succeeded', 'bulgarian', 'Subscription Payment Succeeded (Sent to customer primary contact) [bulgarian]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1848, 'contract', 'contract-expiration-to-staff', 'bulgarian', 'Contract Expiration Reminder (Sent to Staff) [bulgarian]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1849, 'gdpr', 'gdpr-removal-request', 'bulgarian', 'Removal Request From Contact (Sent to administrators) [bulgarian]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1850, 'gdpr', 'gdpr-removal-request-lead', 'bulgarian', 'Removal Request From Lead (Sent to administrators) [bulgarian]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1851, 'client', 'client-registration-confirmed', 'bulgarian', 'Customer Registration Confirmed [bulgarian]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1852, 'contract', 'contract-signed-to-staff', 'bulgarian', 'Contract Signed (Sent to Staff) [bulgarian]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1853, 'subscriptions', 'customer-subscribed-to-staff', 'bulgarian', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [bulgarian]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1854, 'client', 'contact-verification-email', 'bulgarian', 'Email Verification (Sent to Contact After Registration) [bulgarian]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1855, 'client', 'new-customer-profile-file-uploaded-to-staff', 'bulgarian', 'New Customer Profile File(s) Uploaded (Sent to Staff) [bulgarian]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1856, 'staff', 'event-notification-to-staff', 'bulgarian', 'Event Notification (Calendar) [bulgarian]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
	(1857, 'subscriptions', 'subscription-payment-requires-action', 'bulgarian', 'Credit Card Authorization Required - SCA [bulgarian]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1858, 'invoice', 'invoice-due-notice', 'bulgarian', 'Invoice Due Notice [bulgarian]', 'Your {invoice_number} will be due soon', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1859, 'estimate_request', 'estimate-request-submitted-to-staff', 'bulgarian', 'Estimate Request Submitted (Sent to Staff) [bulgarian]', 'New Estimate Request Submitted', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1860, 'estimate_request', 'estimate-request-assigned', 'bulgarian', 'Estimate Request Assigned (Sent to Staff) [bulgarian]', 'New Estimate Request Assigned', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1861, 'estimate_request', 'estimate-request-received-to-user', 'bulgarian', 'Estimate Request Received (Sent to User) [bulgarian]', 'Estimate Request Received', '', '{companyname} | CRM', NULL, 0, 0, 0),
	(1862, 'notifications', 'non-billed-tasks-reminder', 'bulgarian', 'Non-billed tasks reminder (sent to selected staff members) [bulgarian]', 'Action required: Completed tasks are not billed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1863, 'invoice', 'invoices-batch-payments', 'bulgarian', 'Invoices Payments Recorded in Batch (Sent to Customer) [bulgarian]', 'We have received your payments', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1864, 'client', 'new-client-created', 'spanish', 'New Contact Added/Registered (Welcome Email) [spanish]', 'Welcome aboard', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1865, 'invoice', 'invoice-send-to-client', 'spanish', 'Send Invoice to Customer [spanish]', 'Invoice with number {invoice_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1866, 'ticket', 'new-ticket-opened-admin', 'spanish', 'New Ticket Opened (Opened by Staff, Sent to Customer) [spanish]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1867, 'ticket', 'ticket-reply', 'spanish', 'Ticket Reply (Sent to Customer) [spanish]', 'New Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1868, 'ticket', 'ticket-autoresponse', 'spanish', 'New Ticket Opened - Autoresponse [spanish]', 'New Support Ticket Opened', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1869, 'invoice', 'invoice-payment-recorded', 'spanish', 'Invoice Payment Recorded (Sent to Customer) [spanish]', 'Invoice Payment Recorded', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1870, 'invoice', 'invoice-overdue-notice', 'spanish', 'Invoice Overdue Notice [spanish]', 'Invoice Overdue Notice - {invoice_number}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1871, 'invoice', 'invoice-already-send', 'spanish', 'Invoice Already Sent to Customer [spanish]', 'Invoice # {invoice_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1872, 'ticket', 'new-ticket-created-staff', 'spanish', 'New Ticket Created (Opened by Customer, Sent to Staff Members) [spanish]', 'New Ticket Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1873, 'estimate', 'estimate-send-to-client', 'spanish', 'Send Estimate to Customer [spanish]', 'Estimate # {estimate_number} created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1874, 'ticket', 'ticket-reply-to-admin', 'spanish', 'Ticket Reply (Sent to Staff) [spanish]', 'New Support Ticket Reply', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1875, 'estimate', 'estimate-already-send', 'spanish', 'Estimate Already Sent to Customer [spanish]', 'Estimate # {estimate_number} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1876, 'contract', 'contract-expiration', 'spanish', 'Contract Expiration Reminder (Sent to Customer Contacts) [spanish]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1877, 'tasks', 'task-assigned', 'spanish', 'New Task Assigned (Sent to Staff) [spanish]', 'New Task Assigned to You - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1878, 'tasks', 'task-added-as-follower', 'spanish', 'Staff Member Added as Follower on Task (Sent to Staff) [spanish]', 'You are added as follower on task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1879, 'tasks', 'task-commented', 'spanish', 'New Comment on Task (Sent to Staff) [spanish]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1880, 'tasks', 'task-added-attachment', 'spanish', 'New Attachment(s) on Task (Sent to Staff) [spanish]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1881, 'estimate', 'estimate-declined-to-staff', 'spanish', 'Estimate Declined (Sent to Staff) [spanish]', 'Customer Declined Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1882, 'estimate', 'estimate-accepted-to-staff', 'spanish', 'Estimate Accepted (Sent to Staff) [spanish]', 'Customer Accepted Estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1883, 'proposals', 'proposal-client-accepted', 'spanish', 'Customer Action - Accepted (Sent to Staff) [spanish]', 'Customer Accepted Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1884, 'proposals', 'proposal-send-to-customer', 'spanish', 'Send Proposal to Customer [spanish]', 'Proposal With Number {proposal_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1885, 'proposals', 'proposal-client-declined', 'spanish', 'Customer Action - Declined (Sent to Staff) [spanish]', 'Client Declined Proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1886, 'proposals', 'proposal-client-thank-you', 'spanish', 'Thank You Email (Sent to Customer After Accept) [spanish]', 'Thank for you accepting proposal', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1887, 'proposals', 'proposal-comment-to-client', 'spanish', 'New Comment Â (Sent to Customer/Lead) [spanish]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1888, 'proposals', 'proposal-comment-to-admin', 'spanish', 'New Comment (Sent to Staff)  [spanish]', 'New Proposal Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1889, 'estimate', 'estimate-thank-you-to-customer', 'spanish', 'Thank You Email (Sent to Customer After Accept) [spanish]', 'Thank for you accepting estimate', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1890, 'tasks', 'task-deadline-notification', 'spanish', 'Task Deadline Reminder - Sent to Assigned Members [spanish]', 'Task Deadline Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1891, 'contract', 'send-contract', 'spanish', 'Send Contract to Customer [spanish]', 'Contract - {contract_subject}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1892, 'invoice', 'invoice-payment-recorded-to-staff', 'spanish', 'Invoice Payment Recorded (Sent to Staff) [spanish]', 'New Invoice Payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1893, 'ticket', 'auto-close-ticket', 'spanish', 'Auto Close Ticket [spanish]', 'Ticket Auto Closed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1894, 'project', 'new-project-discussion-created-to-staff', 'spanish', 'New Project Discussion (Sent to Project Members) [spanish]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1895, 'project', 'new-project-discussion-created-to-customer', 'spanish', 'New Project Discussion (Sent to Customer Contacts) [spanish]', 'New Project Discussion Created - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1896, 'project', 'new-project-file-uploaded-to-customer', 'spanish', 'New Project File(s) Uploaded (Sent to Customer Contacts) [spanish]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1897, 'project', 'new-project-file-uploaded-to-staff', 'spanish', 'New Project File(s) Uploaded (Sent to Project Members) [spanish]', 'New Project File(s) Uploaded - {project_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1898, 'project', 'new-project-discussion-comment-to-customer', 'spanish', 'New Discussion Comment  (Sent to Customer Contacts) [spanish]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1899, 'project', 'new-project-discussion-comment-to-staff', 'spanish', 'New Discussion Comment (Sent to Project Members) [spanish]', 'New Discussion Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1900, 'project', 'staff-added-as-project-member', 'spanish', 'Staff Added as Project Member [spanish]', 'New project assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1901, 'estimate', 'estimate-expiry-reminder', 'spanish', 'Estimate Expiration Reminder [spanish]', 'Estimate Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1902, 'proposals', 'proposal-expiry-reminder', 'spanish', 'Proposal Expiration Reminder [spanish]', 'Proposal Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1903, 'staff', 'new-staff-created', 'spanish', 'New Staff Created (Welcome Email) [spanish]', 'You are added as staff member', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1904, 'client', 'contact-forgot-password', 'spanish', 'Forgot Password [spanish]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1905, 'client', 'contact-password-reseted', 'spanish', 'Password Reset - Confirmation [spanish]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1906, 'client', 'contact-set-password', 'spanish', 'Set New Password [spanish]', 'Set new password on {companyname} ', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1907, 'staff', 'staff-forgot-password', 'spanish', 'Forgot Password [spanish]', 'Create New Password', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1908, 'staff', 'staff-password-reseted', 'spanish', 'Password Reset - Confirmation [spanish]', 'Your password has been changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1909, 'project', 'assigned-to-project', 'spanish', 'New Project Created (Sent to Customer Contacts) [spanish]', 'New Project Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1910, 'tasks', 'task-added-attachment-to-contacts', 'spanish', 'New Attachment(s) on Task (Sent to Customer Contacts) [spanish]', 'New Attachment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1911, 'tasks', 'task-commented-to-contacts', 'spanish', 'New Comment on Task (Sent to Customer Contacts) [spanish]', 'New Comment on Task - {task_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1912, 'leads', 'new-lead-assigned', 'spanish', 'New Lead Assigned to Staff Member [spanish]', 'New lead assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1913, 'client', 'client-statement', 'spanish', 'Statement - Account Summary [spanish]', 'Account Statement from {statement_from} to {statement_to}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1914, 'ticket', 'ticket-assigned-to-admin', 'spanish', 'New Ticket Assigned (Sent to Staff) [spanish]', 'New support ticket has been assigned to you', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1915, 'client', 'new-client-registered-to-admin', 'spanish', 'New Customer Registration (Sent to admins) [spanish]', 'New Customer Registration', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1916, 'leads', 'new-web-to-lead-form-submitted', 'spanish', 'Web to lead form submitted - Sent to lead [spanish]', '{lead_name} - We Received Your Request', '', '{companyname} | CRM', NULL, 0, 0, 0),
	(1917, 'staff', 'two-factor-authentication', 'spanish', 'Two Factor Authentication [spanish]', 'Confirm Your Login', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1918, 'project', 'project-finished-to-customer', 'spanish', 'Project Marked as Finished (Sent to Customer Contacts) [spanish]', 'Project Marked as Finished', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1919, 'credit_note', 'credit-note-send-to-client', 'spanish', 'Send Credit Note To Email [spanish]', 'Credit Note With Number #{credit_note_number} Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1920, 'tasks', 'task-status-change-to-staff', 'spanish', 'Task Status Changed (Sent to Staff) [spanish]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1921, 'tasks', 'task-status-change-to-contacts', 'spanish', 'Task Status Changed (Sent to Customer Contacts) [spanish]', 'Task Status Changed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1922, 'staff', 'reminder-email-staff', 'spanish', 'Staff Reminder Email [spanish]', 'You Have a New Reminder!', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1923, 'contract', 'contract-comment-to-client', 'spanish', 'New Comment Â (Sent to Customer Contacts) [spanish]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1924, 'contract', 'contract-comment-to-admin', 'spanish', 'New Comment (Sent to Staff)  [spanish]', 'New Contract Comment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1925, 'subscriptions', 'send-subscription', 'spanish', 'Send Subscription to Customer [spanish]', 'Subscription Created', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1926, 'subscriptions', 'subscription-payment-failed', 'spanish', 'Subscription Payment Failed [spanish]', 'Your most recent invoice payment failed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1927, 'subscriptions', 'subscription-canceled', 'spanish', 'Subscription Canceled (Sent to customer primary contact) [spanish]', 'Your subscription has been canceled', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1928, 'subscriptions', 'subscription-payment-succeeded', 'spanish', 'Subscription Payment Succeeded (Sent to customer primary contact) [spanish]', 'Subscription  Payment Receipt - {subscription_name}', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1929, 'contract', 'contract-expiration-to-staff', 'spanish', 'Contract Expiration Reminder (Sent to Staff) [spanish]', 'Contract Expiration Reminder', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1930, 'gdpr', 'gdpr-removal-request', 'spanish', 'Removal Request From Contact (Sent to administrators) [spanish]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1931, 'gdpr', 'gdpr-removal-request-lead', 'spanish', 'Removal Request From Lead (Sent to administrators) [spanish]', 'Data Removal Request Received', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1932, 'client', 'client-registration-confirmed', 'spanish', 'Customer Registration Confirmed [spanish]', 'Your registration is confirmed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1933, 'contract', 'contract-signed-to-staff', 'spanish', 'Contract Signed (Sent to Staff) [spanish]', 'Customer Signed a Contract', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1934, 'subscriptions', 'customer-subscribed-to-staff', 'spanish', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator) [spanish]', 'Customer Subscribed to a Subscription', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1935, 'client', 'contact-verification-email', 'spanish', 'Email Verification (Sent to Contact After Registration) [spanish]', 'Verify Email Address', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1936, 'client', 'new-customer-profile-file-uploaded-to-staff', 'spanish', 'New Customer Profile File(s) Uploaded (Sent to Staff) [spanish]', 'Customer Uploaded New File(s) in Profile', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1937, 'staff', 'event-notification-to-staff', 'spanish', 'Event Notification (Calendar) [spanish]', 'Upcoming Event - {event_title}', '', '', NULL, 0, 1, 0),
	(1938, 'subscriptions', 'subscription-payment-requires-action', 'spanish', 'Credit Card Authorization Required - SCA [spanish]', 'Important: Confirm your subscription {subscription_name} payment', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1939, 'invoice', 'invoice-due-notice', 'spanish', 'Invoice Due Notice [spanish]', 'Your {invoice_number} will be due soon', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1940, 'estimate_request', 'estimate-request-submitted-to-staff', 'spanish', 'Estimate Request Submitted (Sent to Staff) [spanish]', 'New Estimate Request Submitted', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1941, 'estimate_request', 'estimate-request-assigned', 'spanish', 'Estimate Request Assigned (Sent to Staff) [spanish]', 'New Estimate Request Assigned', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1942, 'estimate_request', 'estimate-request-received-to-user', 'spanish', 'Estimate Request Received (Sent to User) [spanish]', 'Estimate Request Received', '', '{companyname} | CRM', NULL, 0, 0, 0),
	(1943, 'notifications', 'non-billed-tasks-reminder', 'spanish', 'Non-billed tasks reminder (sent to selected staff members) [spanish]', 'Action required: Completed tasks are not billed', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1944, 'invoice', 'invoices-batch-payments', 'spanish', 'Invoices Payments Recorded in Batch (Sent to Customer) [spanish]', 'We have received your payments', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1945, 'approve', 'send-request-approve', 'english', 'Send Approval Request', 'Require Approval', '<p>Hi {staff_firstname}<br /><br />You have received a request to approve the {object_type}.<br /><br />You can view the {object_type} on the following link <a href="{object_link}">{object_name}</a><br /><br />{email_signature}</p>', '{companyname} | CRM', NULL, 0, 1, 0),
	(1946, 'approve', 'send-request-approve', 'vietnamese', 'Gửi yêu cầu phê duyệt', 'Yêu cầu phê duyệt', 'Xin ch&agrave;o {staff_firstname} {staff_lastname}<br /><br />Bạn đã nhận được yêu cầu phê duyệt {object_type} mới.<br /><br />Bạn c&oacute; thể xem hóa đơn tại đ&acirc;y&nbsp;<a href="{object_link}">{object_name}</a><br /><br />{email_signature}', '{companyname} | CRM', NULL, 0, 1, 0),
	(1947, 'approve', 'send_rejected', 'english', 'Send Rejected', 'The {object_type} has been rejected', '<p>Hi {staff_firstname}<br /><br />Your {object_type} has been rejected.<br /><br />You can view the {object_type} on the following link <a href="{object_link}">{object_name}</a><br /><br />{email_signature}</p>', '{companyname} | CRM', NULL, 0, 1, 0),
	(1948, 'approve', 'send_rejected', 'vietnamese', 'Gửi từ chối', '{object_type} đã bị từ chối', 'Xin ch&agrave;o {staff_firstname} {staff_lastname}<br /><br />{object_type} của bạn đã bị từ chối.<br /><br />Bạn c&oacute; thể xem {object_type} tại đ&acirc;y&nbsp;<a href="{object_link}">{object_name}</a><br /><br />{email_signature}', '{companyname} | CRM', NULL, 0, 1, 0),
	(1949, 'approve', 'send_approve', 'english', 'Send Approve', 'The {object_type} has been approved', '<p>Hi {staff_firstname}<br /><br />Your {object_type} has been approved.<br /><br />You can view the {object_type} on the following link <a href="{object_link}">{object_name}</a><br /><br />{email_signature}</p>', '{companyname} | CRM', NULL, 0, 1, 0),
	(1950, 'approve', 'send_approve', 'vietnamese', 'Gửi phê duyệt', '{object_type} đã được phê duyệt', 'Xin ch&agrave;o {staff_firstname} {staff_lastname}<br /><br />{object_type} của bạn đã được phê duyệt.<br /><br />Bạn c&oacute; thể xem {object_type} tại đ&acirc;y&nbsp;<a href="{object_link}">{object_name}</a><br /><br />{email_signature}', '{companyname} | CRM', NULL, 0, 1, 0),
	(1951, 'purchase_order', 'purchase-order-to-contact', 'english', 'Purchase Order (Sent to contact)', 'Purchase Order', '<span style=\\"font-size: 12pt;\\"> Hello !. </span><br /><br /><span style=\\"font-size: 12pt;\\"> We would like to share with you a link of Purchase Order information with the number {po_number} </span><br /><br /><span style=\\"font-size: 12pt;\\"><br />Please click on the link to view information: {public_link}\r\n  </span><br /><br />', '{companyname} | CRM', NULL, 0, 1, 0),
	(1952, 'file_sharing', 'fs-share-staff', 'english', 'Shared to staff', 'File Sharing', '<span></span><br /><br /><span>Have files that have just been shared with you: {share_link}.</span>', '{companyname} | CRM', NULL, 0, 1, 0),
	(1953, 'file_sharing', 'fs-share-client', 'english', 'Shared to client', 'File Sharing', '<span></span><br /><br /><span>Have files that have just been shared with you: {share_link}.</span>', '{companyname} | CRM', NULL, 0, 1, 0),
	(1954, 'file_sharing', 'fs-share-public', 'english', 'Shared to public', 'File Sharing', '<span></span><br /><br /><span>Have files that have just been shared with you: {share_link}.</span>', '{companyname} | CRM', NULL, 0, 1, 0),
	(1955, 'purchase_order', 'purchase-order-to-contact', 'vietnamese', 'Purchase Order (Sent to contact) [vietnamese]', 'Purchase Order', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1956, 'file_sharing', 'fs-share-staff', 'vietnamese', 'Shared to staff [vietnamese]', 'File Sharing', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1957, 'file_sharing', 'fs-share-client', 'vietnamese', 'Shared to client [vietnamese]', 'File Sharing', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1958, 'file_sharing', 'fs-share-public', 'vietnamese', 'Shared to public [vietnamese]', 'File Sharing', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1959, 'approve', 'send-request-approve', 'greek', 'Send Approval Request [greek]', 'Require Approval', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1960, 'approve', 'send_rejected', 'greek', 'Send Rejected [greek]', 'The {object_type} has been rejected', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1961, 'approve', 'send_approve', 'greek', 'Send Approve [greek]', 'The {object_type} has been approved', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1962, 'purchase_order', 'purchase-order-to-contact', 'greek', 'Purchase Order (Sent to contact) [greek]', 'Purchase Order', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1963, 'file_sharing', 'fs-share-staff', 'greek', 'Shared to staff [greek]', 'File Sharing', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1964, 'file_sharing', 'fs-share-client', 'greek', 'Shared to client [greek]', 'File Sharing', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1965, 'file_sharing', 'fs-share-public', 'greek', 'Shared to public [greek]', 'File Sharing', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1966, 'approve', 'send-request-approve', 'swedish', 'Send Approval Request [swedish]', 'Require Approval', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1967, 'approve', 'send_rejected', 'swedish', 'Send Rejected [swedish]', 'The {object_type} has been rejected', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1968, 'approve', 'send_approve', 'swedish', 'Send Approve [swedish]', 'The {object_type} has been approved', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1969, 'purchase_order', 'purchase-order-to-contact', 'swedish', 'Purchase Order (Sent to contact) [swedish]', 'Purchase Order', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1970, 'file_sharing', 'fs-share-staff', 'swedish', 'Shared to staff [swedish]', 'File Sharing', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1971, 'file_sharing', 'fs-share-client', 'swedish', 'Shared to client [swedish]', 'File Sharing', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1972, 'file_sharing', 'fs-share-public', 'swedish', 'Shared to public [swedish]', 'File Sharing', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1973, 'approve', 'send-request-approve', 'russian', 'Send Approval Request [russian]', 'Require Approval', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1974, 'approve', 'send_rejected', 'russian', 'Send Rejected [russian]', 'The {object_type} has been rejected', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1975, 'approve', 'send_approve', 'russian', 'Send Approve [russian]', 'The {object_type} has been approved', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1976, 'purchase_order', 'purchase-order-to-contact', 'russian', 'Purchase Order (Sent to contact) [russian]', 'Purchase Order', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1977, 'file_sharing', 'fs-share-staff', 'russian', 'Shared to staff [russian]', 'File Sharing', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1978, 'file_sharing', 'fs-share-client', 'russian', 'Shared to client [russian]', 'File Sharing', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1979, 'file_sharing', 'fs-share-public', 'russian', 'Shared to public [russian]', 'File Sharing', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1980, 'approve', 'send-request-approve', 'dutch', 'Send Approval Request [dutch]', 'Require Approval', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1981, 'approve', 'send_rejected', 'dutch', 'Send Rejected [dutch]', 'The {object_type} has been rejected', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1982, 'approve', 'send_approve', 'dutch', 'Send Approve [dutch]', 'The {object_type} has been approved', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1983, 'purchase_order', 'purchase-order-to-contact', 'dutch', 'Purchase Order (Sent to contact) [dutch]', 'Purchase Order', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1984, 'file_sharing', 'fs-share-staff', 'dutch', 'Shared to staff [dutch]', 'File Sharing', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1985, 'file_sharing', 'fs-share-client', 'dutch', 'Shared to client [dutch]', 'File Sharing', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1986, 'file_sharing', 'fs-share-public', 'dutch', 'Shared to public [dutch]', 'File Sharing', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1987, 'approve', 'send-request-approve', 'czech', 'Send Approval Request [czech]', 'Require Approval', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1988, 'approve', 'send_rejected', 'czech', 'Send Rejected [czech]', 'The {object_type} has been rejected', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1989, 'approve', 'send_approve', 'czech', 'Send Approve [czech]', 'The {object_type} has been approved', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1990, 'purchase_order', 'purchase-order-to-contact', 'czech', 'Purchase Order (Sent to contact) [czech]', 'Purchase Order', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1991, 'file_sharing', 'fs-share-staff', 'czech', 'Shared to staff [czech]', 'File Sharing', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1992, 'file_sharing', 'fs-share-client', 'czech', 'Shared to client [czech]', 'File Sharing', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1993, 'file_sharing', 'fs-share-public', 'czech', 'Shared to public [czech]', 'File Sharing', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1994, 'approve', 'send-request-approve', 'indonesia', 'Send Approval Request [indonesia]', 'Require Approval', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1995, 'approve', 'send_rejected', 'indonesia', 'Send Rejected [indonesia]', 'The {object_type} has been rejected', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1996, 'approve', 'send_approve', 'indonesia', 'Send Approve [indonesia]', 'The {object_type} has been approved', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1997, 'purchase_order', 'purchase-order-to-contact', 'indonesia', 'Purchase Order (Sent to contact) [indonesia]', 'Purchase Order', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1998, 'file_sharing', 'fs-share-staff', 'indonesia', 'Shared to staff [indonesia]', 'File Sharing', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(1999, 'file_sharing', 'fs-share-client', 'indonesia', 'Shared to client [indonesia]', 'File Sharing', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2000, 'file_sharing', 'fs-share-public', 'indonesia', 'Shared to public [indonesia]', 'File Sharing', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2001, 'approve', 'send-request-approve', 'polish', 'Send Approval Request [polish]', 'Require Approval', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2002, 'approve', 'send_rejected', 'polish', 'Send Rejected [polish]', 'The {object_type} has been rejected', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2003, 'approve', 'send_approve', 'polish', 'Send Approve [polish]', 'The {object_type} has been approved', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2004, 'purchase_order', 'purchase-order-to-contact', 'polish', 'Purchase Order (Sent to contact) [polish]', 'Purchase Order', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2005, 'file_sharing', 'fs-share-staff', 'polish', 'Shared to staff [polish]', 'File Sharing', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2006, 'file_sharing', 'fs-share-client', 'polish', 'Shared to client [polish]', 'File Sharing', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2007, 'file_sharing', 'fs-share-public', 'polish', 'Shared to public [polish]', 'File Sharing', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2008, 'approve', 'send-request-approve', 'portuguese', 'Send Approval Request [portuguese]', 'Require Approval', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2009, 'approve', 'send_rejected', 'portuguese', 'Send Rejected [portuguese]', 'The {object_type} has been rejected', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2010, 'approve', 'send_approve', 'portuguese', 'Send Approve [portuguese]', 'The {object_type} has been approved', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2011, 'purchase_order', 'purchase-order-to-contact', 'portuguese', 'Purchase Order (Sent to contact) [portuguese]', 'Purchase Order', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2012, 'file_sharing', 'fs-share-staff', 'portuguese', 'Shared to staff [portuguese]', 'File Sharing', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2013, 'file_sharing', 'fs-share-client', 'portuguese', 'Shared to client [portuguese]', 'File Sharing', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2014, 'file_sharing', 'fs-share-public', 'portuguese', 'Shared to public [portuguese]', 'File Sharing', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2015, 'approve', 'send-request-approve', 'chinese', 'Send Approval Request [chinese]', 'Require Approval', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2016, 'approve', 'send_rejected', 'chinese', 'Send Rejected [chinese]', 'The {object_type} has been rejected', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2017, 'approve', 'send_approve', 'chinese', 'Send Approve [chinese]', 'The {object_type} has been approved', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2018, 'purchase_order', 'purchase-order-to-contact', 'chinese', 'Purchase Order (Sent to contact) [chinese]', 'Purchase Order', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2019, 'file_sharing', 'fs-share-staff', 'chinese', 'Shared to staff [chinese]', 'File Sharing', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2020, 'file_sharing', 'fs-share-client', 'chinese', 'Shared to client [chinese]', 'File Sharing', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2021, 'file_sharing', 'fs-share-public', 'chinese', 'Shared to public [chinese]', 'File Sharing', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2022, 'approve', 'send-request-approve', 'catalan', 'Send Approval Request [catalan]', 'Require Approval', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2023, 'approve', 'send_rejected', 'catalan', 'Send Rejected [catalan]', 'The {object_type} has been rejected', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2024, 'approve', 'send_approve', 'catalan', 'Send Approve [catalan]', 'The {object_type} has been approved', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2025, 'purchase_order', 'purchase-order-to-contact', 'catalan', 'Purchase Order (Sent to contact) [catalan]', 'Purchase Order', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2026, 'file_sharing', 'fs-share-staff', 'catalan', 'Shared to staff [catalan]', 'File Sharing', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2027, 'file_sharing', 'fs-share-client', 'catalan', 'Shared to client [catalan]', 'File Sharing', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2028, 'file_sharing', 'fs-share-public', 'catalan', 'Shared to public [catalan]', 'File Sharing', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2029, 'approve', 'send-request-approve', 'french', 'Send Approval Request [french]', 'Require Approval', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2030, 'approve', 'send_rejected', 'french', 'Send Rejected [french]', 'The {object_type} has been rejected', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2031, 'approve', 'send_approve', 'french', 'Send Approve [french]', 'The {object_type} has been approved', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2032, 'purchase_order', 'purchase-order-to-contact', 'french', 'Purchase Order (Sent to contact) [french]', 'Purchase Order', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2033, 'file_sharing', 'fs-share-staff', 'french', 'Shared to staff [french]', 'File Sharing', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2034, 'file_sharing', 'fs-share-client', 'french', 'Shared to client [french]', 'File Sharing', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2035, 'file_sharing', 'fs-share-public', 'french', 'Shared to public [french]', 'File Sharing', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2036, 'approve', 'send-request-approve', 'turkish', 'Send Approval Request [turkish]', 'Require Approval', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2037, 'approve', 'send_rejected', 'turkish', 'Send Rejected [turkish]', 'The {object_type} has been rejected', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2038, 'approve', 'send_approve', 'turkish', 'Send Approve [turkish]', 'The {object_type} has been approved', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2039, 'purchase_order', 'purchase-order-to-contact', 'turkish', 'Purchase Order (Sent to contact) [turkish]', 'Purchase Order', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2040, 'file_sharing', 'fs-share-staff', 'turkish', 'Shared to staff [turkish]', 'File Sharing', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2041, 'file_sharing', 'fs-share-client', 'turkish', 'Shared to client [turkish]', 'File Sharing', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2042, 'file_sharing', 'fs-share-public', 'turkish', 'Shared to public [turkish]', 'File Sharing', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2043, 'approve', 'send-request-approve', 'japanese', 'Send Approval Request [japanese]', 'Require Approval', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2044, 'approve', 'send_rejected', 'japanese', 'Send Rejected [japanese]', 'The {object_type} has been rejected', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2045, 'approve', 'send_approve', 'japanese', 'Send Approve [japanese]', 'The {object_type} has been approved', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2046, 'purchase_order', 'purchase-order-to-contact', 'japanese', 'Purchase Order (Sent to contact) [japanese]', 'Purchase Order', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2047, 'file_sharing', 'fs-share-staff', 'japanese', 'Shared to staff [japanese]', 'File Sharing', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2048, 'file_sharing', 'fs-share-client', 'japanese', 'Shared to client [japanese]', 'File Sharing', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2049, 'file_sharing', 'fs-share-public', 'japanese', 'Shared to public [japanese]', 'File Sharing', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2050, 'approve', 'send-request-approve', 'persian', 'Send Approval Request [persian]', 'Require Approval', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2051, 'approve', 'send_rejected', 'persian', 'Send Rejected [persian]', 'The {object_type} has been rejected', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2052, 'approve', 'send_approve', 'persian', 'Send Approve [persian]', 'The {object_type} has been approved', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2053, 'purchase_order', 'purchase-order-to-contact', 'persian', 'Purchase Order (Sent to contact) [persian]', 'Purchase Order', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2054, 'file_sharing', 'fs-share-staff', 'persian', 'Shared to staff [persian]', 'File Sharing', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2055, 'file_sharing', 'fs-share-client', 'persian', 'Shared to client [persian]', 'File Sharing', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2056, 'file_sharing', 'fs-share-public', 'persian', 'Shared to public [persian]', 'File Sharing', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2057, 'approve', 'send-request-approve', 'italian', 'Send Approval Request [italian]', 'Require Approval', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2058, 'approve', 'send_rejected', 'italian', 'Send Rejected [italian]', 'The {object_type} has been rejected', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2059, 'approve', 'send_approve', 'italian', 'Send Approve [italian]', 'The {object_type} has been approved', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2060, 'purchase_order', 'purchase-order-to-contact', 'italian', 'Purchase Order (Sent to contact) [italian]', 'Purchase Order', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2061, 'file_sharing', 'fs-share-staff', 'italian', 'Shared to staff [italian]', 'File Sharing', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2062, 'file_sharing', 'fs-share-client', 'italian', 'Shared to client [italian]', 'File Sharing', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2063, 'file_sharing', 'fs-share-public', 'italian', 'Shared to public [italian]', 'File Sharing', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2064, 'approve', 'send-request-approve', 'german', 'Send Approval Request [german]', 'Require Approval', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2065, 'approve', 'send_rejected', 'german', 'Send Rejected [german]', 'The {object_type} has been rejected', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2066, 'approve', 'send_approve', 'german', 'Send Approve [german]', 'The {object_type} has been approved', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2067, 'purchase_order', 'purchase-order-to-contact', 'german', 'Purchase Order (Sent to contact) [german]', 'Purchase Order', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2068, 'file_sharing', 'fs-share-staff', 'german', 'Shared to staff [german]', 'File Sharing', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2069, 'file_sharing', 'fs-share-client', 'german', 'Shared to client [german]', 'File Sharing', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2070, 'file_sharing', 'fs-share-public', 'german', 'Shared to public [german]', 'File Sharing', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2071, 'approve', 'send-request-approve', 'ukrainian', 'Send Approval Request [ukrainian]', 'Require Approval', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2072, 'approve', 'send_rejected', 'ukrainian', 'Send Rejected [ukrainian]', 'The {object_type} has been rejected', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2073, 'approve', 'send_approve', 'ukrainian', 'Send Approve [ukrainian]', 'The {object_type} has been approved', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2074, 'purchase_order', 'purchase-order-to-contact', 'ukrainian', 'Purchase Order (Sent to contact) [ukrainian]', 'Purchase Order', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2075, 'file_sharing', 'fs-share-staff', 'ukrainian', 'Shared to staff [ukrainian]', 'File Sharing', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2076, 'file_sharing', 'fs-share-client', 'ukrainian', 'Shared to client [ukrainian]', 'File Sharing', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2077, 'file_sharing', 'fs-share-public', 'ukrainian', 'Shared to public [ukrainian]', 'File Sharing', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2078, 'approve', 'send-request-approve', 'portuguese_br', 'Send Approval Request [portuguese_br]', 'Require Approval', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2079, 'approve', 'send_rejected', 'portuguese_br', 'Send Rejected [portuguese_br]', 'The {object_type} has been rejected', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2080, 'approve', 'send_approve', 'portuguese_br', 'Send Approve [portuguese_br]', 'The {object_type} has been approved', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2081, 'purchase_order', 'purchase-order-to-contact', 'portuguese_br', 'Purchase Order (Sent to contact) [portuguese_br]', 'Purchase Order', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2082, 'file_sharing', 'fs-share-staff', 'portuguese_br', 'Shared to staff [portuguese_br]', 'File Sharing', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2083, 'file_sharing', 'fs-share-client', 'portuguese_br', 'Shared to client [portuguese_br]', 'File Sharing', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2084, 'file_sharing', 'fs-share-public', 'portuguese_br', 'Shared to public [portuguese_br]', 'File Sharing', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2085, 'approve', 'send-request-approve', 'slovak', 'Send Approval Request [slovak]', 'Require Approval', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2086, 'approve', 'send_rejected', 'slovak', 'Send Rejected [slovak]', 'The {object_type} has been rejected', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2087, 'approve', 'send_approve', 'slovak', 'Send Approve [slovak]', 'The {object_type} has been approved', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2088, 'purchase_order', 'purchase-order-to-contact', 'slovak', 'Purchase Order (Sent to contact) [slovak]', 'Purchase Order', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2089, 'file_sharing', 'fs-share-staff', 'slovak', 'Shared to staff [slovak]', 'File Sharing', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2090, 'file_sharing', 'fs-share-client', 'slovak', 'Shared to client [slovak]', 'File Sharing', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2091, 'file_sharing', 'fs-share-public', 'slovak', 'Shared to public [slovak]', 'File Sharing', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2092, 'approve', 'send-request-approve', 'romanian', 'Send Approval Request [romanian]', 'Require Approval', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2093, 'approve', 'send_rejected', 'romanian', 'Send Rejected [romanian]', 'The {object_type} has been rejected', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2094, 'approve', 'send_approve', 'romanian', 'Send Approve [romanian]', 'The {object_type} has been approved', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2095, 'purchase_order', 'purchase-order-to-contact', 'romanian', 'Purchase Order (Sent to contact) [romanian]', 'Purchase Order', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2096, 'file_sharing', 'fs-share-staff', 'romanian', 'Shared to staff [romanian]', 'File Sharing', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2097, 'file_sharing', 'fs-share-client', 'romanian', 'Shared to client [romanian]', 'File Sharing', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2098, 'file_sharing', 'fs-share-public', 'romanian', 'Shared to public [romanian]', 'File Sharing', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2099, 'approve', 'send-request-approve', 'bulgarian', 'Send Approval Request [bulgarian]', 'Require Approval', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2100, 'approve', 'send_rejected', 'bulgarian', 'Send Rejected [bulgarian]', 'The {object_type} has been rejected', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2101, 'approve', 'send_approve', 'bulgarian', 'Send Approve [bulgarian]', 'The {object_type} has been approved', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2102, 'purchase_order', 'purchase-order-to-contact', 'bulgarian', 'Purchase Order (Sent to contact) [bulgarian]', 'Purchase Order', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2103, 'file_sharing', 'fs-share-staff', 'bulgarian', 'Shared to staff [bulgarian]', 'File Sharing', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2104, 'file_sharing', 'fs-share-client', 'bulgarian', 'Shared to client [bulgarian]', 'File Sharing', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2105, 'file_sharing', 'fs-share-public', 'bulgarian', 'Shared to public [bulgarian]', 'File Sharing', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2106, 'approve', 'send-request-approve', 'spanish', 'Send Approval Request [spanish]', 'Require Approval', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2107, 'approve', 'send_rejected', 'spanish', 'Send Rejected [spanish]', 'The {object_type} has been rejected', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2108, 'approve', 'send_approve', 'spanish', 'Send Approve [spanish]', 'The {object_type} has been approved', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2109, 'purchase_order', 'purchase-order-to-contact', 'spanish', 'Purchase Order (Sent to contact) [spanish]', 'Purchase Order', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2110, 'file_sharing', 'fs-share-staff', 'spanish', 'Shared to staff [spanish]', 'File Sharing', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2111, 'file_sharing', 'fs-share-client', 'spanish', 'Shared to client [spanish]', 'File Sharing', '', '{companyname} | CRM', NULL, 0, 1, 0),
	(2112, 'file_sharing', 'fs-share-public', 'spanish', 'Shared to public [spanish]', 'File Sharing', '', '{companyname} | CRM', NULL, 0, 1, 0);
/*!40000 ALTER TABLE `tblemailtemplates` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblestimates
CREATE TABLE IF NOT EXISTS `tblestimates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sent` tinyint(1) NOT NULL DEFAULT '0',
  `datesend` datetime DEFAULT NULL,
  `clientid` int(11) NOT NULL,
  `deleted_customer_name` varchar(100) DEFAULT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `number` int(11) NOT NULL,
  `prefix` varchar(50) DEFAULT NULL,
  `number_format` int(11) NOT NULL DEFAULT '0',
  `hash` varchar(32) DEFAULT NULL,
  `datecreated` datetime NOT NULL,
  `date` date NOT NULL,
  `expirydate` date DEFAULT NULL,
  `currency` int(11) NOT NULL,
  `subtotal` decimal(15,2) NOT NULL,
  `total_tax` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total` decimal(15,2) NOT NULL,
  `adjustment` decimal(15,2) DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `clientnote` text,
  `adminnote` text,
  `discount_percent` decimal(15,2) DEFAULT '0.00',
  `discount_total` decimal(15,2) DEFAULT '0.00',
  `discount_type` varchar(30) DEFAULT NULL,
  `invoiceid` int(11) DEFAULT NULL,
  `invoiced_date` datetime DEFAULT NULL,
  `terms` text,
  `reference_no` varchar(100) DEFAULT NULL,
  `sale_agent` int(11) NOT NULL DEFAULT '0',
  `billing_street` varchar(200) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(100) DEFAULT NULL,
  `billing_country` int(11) DEFAULT NULL,
  `shipping_street` varchar(200) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(100) DEFAULT NULL,
  `shipping_zip` varchar(100) DEFAULT NULL,
  `shipping_country` int(11) DEFAULT NULL,
  `include_shipping` tinyint(1) NOT NULL,
  `show_shipping_on_estimate` tinyint(1) NOT NULL DEFAULT '1',
  `show_quantity_as` int(11) NOT NULL DEFAULT '1',
  `pipeline_order` int(11) DEFAULT '1',
  `is_expiry_notified` int(11) NOT NULL DEFAULT '0',
  `acceptance_firstname` varchar(50) DEFAULT NULL,
  `acceptance_lastname` varchar(50) DEFAULT NULL,
  `acceptance_email` varchar(100) DEFAULT NULL,
  `acceptance_date` datetime DEFAULT NULL,
  `acceptance_ip` varchar(40) DEFAULT NULL,
  `signature` varchar(40) DEFAULT NULL,
  `short_link` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `clientid` (`clientid`),
  KEY `currency` (`currency`),
  KEY `project_id` (`project_id`),
  KEY `sale_agent` (`sale_agent`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblestimates: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblestimates` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblestimates` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblestimate_requests
CREATE TABLE IF NOT EXISTS `tblestimate_requests` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `submission` longtext NOT NULL,
  `last_status_change` datetime DEFAULT NULL,
  `date_estimated` datetime DEFAULT NULL,
  `from_form_id` int(11) DEFAULT NULL,
  `assigned` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `default_language` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblestimate_requests: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblestimate_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblestimate_requests` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblestimate_request_forms
CREATE TABLE IF NOT EXISTS `tblestimate_request_forms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `form_key` varchar(32) NOT NULL,
  `type` varchar(100) NOT NULL,
  `name` varchar(191) NOT NULL,
  `form_data` mediumtext,
  `recaptcha` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `submit_btn_name` varchar(100) DEFAULT NULL,
  `submit_btn_bg_color` varchar(10) DEFAULT '#84c529',
  `submit_btn_text_color` varchar(10) DEFAULT '#ffffff',
  `success_submit_msg` text,
  `submit_action` int(11) DEFAULT '0',
  `submit_redirect_url` mediumtext,
  `language` varchar(100) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `notify_type` varchar(100) DEFAULT NULL,
  `notify_ids` mediumtext,
  `responsible` int(11) DEFAULT NULL,
  `notify_request_submitted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblestimate_request_forms: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblestimate_request_forms` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblestimate_request_forms` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblestimate_request_status
CREATE TABLE IF NOT EXISTS `tblestimate_request_status` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `statusorder` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL,
  `flag` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblestimate_request_status: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `tblestimate_request_status` DISABLE KEYS */;
INSERT INTO `tblestimate_request_status` (`id`, `name`, `statusorder`, `color`, `flag`) VALUES
	(1, 'Cancelled', 1, '#808080', 'cancelled'),
	(2, 'Processing', 2, '#007bff', 'processing'),
	(3, 'Completed', 3, '#28a745', 'completed');
/*!40000 ALTER TABLE `tblestimate_request_status` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblevents
CREATE TABLE IF NOT EXISTS `tblevents` (
  `eventid` int(11) NOT NULL AUTO_INCREMENT,
  `title` mediumtext NOT NULL,
  `description` text,
  `userid` int(11) NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime DEFAULT NULL,
  `public` int(11) NOT NULL DEFAULT '0',
  `color` varchar(10) DEFAULT NULL,
  `isstartnotified` tinyint(1) NOT NULL DEFAULT '0',
  `reminder_before` int(11) NOT NULL DEFAULT '0',
  `reminder_before_type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`eventid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblevents: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblevents` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblevents` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblexpenses
CREATE TABLE IF NOT EXISTS `tblexpenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` int(11) NOT NULL,
  `currency` int(11) NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  `tax` int(11) DEFAULT NULL,
  `tax2` int(11) NOT NULL DEFAULT '0',
  `reference_no` varchar(100) DEFAULT NULL,
  `note` text,
  `expense_name` varchar(191) DEFAULT NULL,
  `clientid` int(11) NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `billable` int(11) DEFAULT '0',
  `invoiceid` int(11) DEFAULT NULL,
  `paymentmode` varchar(50) DEFAULT NULL,
  `date` date NOT NULL,
  `recurring_type` varchar(10) DEFAULT NULL,
  `repeat_every` int(11) DEFAULT NULL,
  `recurring` int(11) NOT NULL DEFAULT '0',
  `cycles` int(11) NOT NULL DEFAULT '0',
  `total_cycles` int(11) NOT NULL DEFAULT '0',
  `custom_recurring` int(11) NOT NULL DEFAULT '0',
  `last_recurring_date` date DEFAULT NULL,
  `create_invoice_billable` tinyint(1) DEFAULT NULL,
  `send_invoice_to_customer` tinyint(1) NOT NULL,
  `recurring_from` int(11) DEFAULT NULL,
  `dateadded` datetime NOT NULL,
  `addedfrom` int(11) NOT NULL,
  `vendor` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `clientid` (`clientid`),
  KEY `project_id` (`project_id`),
  KEY `category` (`category`),
  KEY `currency` (`currency`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblexpenses: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblexpenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblexpenses` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblexpenses_categories
CREATE TABLE IF NOT EXISTS `tblexpenses_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblexpenses_categories: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblexpenses_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblexpenses_categories` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblfiles
CREATE TABLE IF NOT EXISTS `tblfiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) NOT NULL,
  `file_name` varchar(191) NOT NULL,
  `filetype` varchar(40) DEFAULT NULL,
  `visible_to_customer` int(11) NOT NULL DEFAULT '0',
  `attachment_key` varchar(32) DEFAULT NULL,
  `external` varchar(40) DEFAULT NULL,
  `external_link` text,
  `thumbnail_link` text COMMENT 'For external usage',
  `staffid` int(11) NOT NULL,
  `contact_id` int(11) DEFAULT '0',
  `task_comment_id` int(11) NOT NULL DEFAULT '0',
  `dateadded` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rel_id` (`rel_id`),
  KEY `rel_type` (`rel_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblfiles: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblfiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblfiles` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblform_questions
CREATE TABLE IF NOT EXISTS `tblform_questions` (
  `questionid` int(11) NOT NULL AUTO_INCREMENT,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) DEFAULT NULL,
  `question` mediumtext NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `question_order` int(11) NOT NULL,
  PRIMARY KEY (`questionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblform_questions: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblform_questions` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblform_questions` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblform_question_box
CREATE TABLE IF NOT EXISTS `tblform_question_box` (
  `boxid` int(11) NOT NULL AUTO_INCREMENT,
  `boxtype` varchar(10) NOT NULL,
  `questionid` int(11) NOT NULL,
  PRIMARY KEY (`boxid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblform_question_box: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblform_question_box` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblform_question_box` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblform_question_box_description
CREATE TABLE IF NOT EXISTS `tblform_question_box_description` (
  `questionboxdescriptionid` int(11) NOT NULL AUTO_INCREMENT,
  `description` mediumtext NOT NULL,
  `boxid` mediumtext NOT NULL,
  `questionid` int(11) NOT NULL,
  PRIMARY KEY (`questionboxdescriptionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblform_question_box_description: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblform_question_box_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblform_question_box_description` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblform_results
CREATE TABLE IF NOT EXISTS `tblform_results` (
  `resultid` int(11) NOT NULL AUTO_INCREMENT,
  `boxid` int(11) NOT NULL,
  `boxdescriptionid` int(11) DEFAULT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) DEFAULT NULL,
  `questionid` int(11) NOT NULL,
  `answer` text,
  `resultsetid` int(11) NOT NULL,
  PRIMARY KEY (`resultid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblform_results: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblform_results` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblform_results` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblfs_downloads
CREATE TABLE IF NOT EXISTS `tblfs_downloads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hash_share` varchar(255) NOT NULL,
  `time` datetime NOT NULL,
  `ip` varchar(255) NOT NULL,
  `browser_name` varchar(45) DEFAULT NULL,
  `http_user_agent` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblfs_downloads: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblfs_downloads` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblfs_downloads` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblfs_file_overview
CREATE TABLE IF NOT EXISTS `tblfs_file_overview` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fileid` varchar(255) NOT NULL,
  `type` varchar(20) DEFAULT NULL,
  `path` text,
  `number` int(255) NOT NULL DEFAULT '0',
  `created_at` varchar(11) DEFAULT NULL,
  `inserted_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `hash` varchar(250) NOT NULL DEFAULT '',
  `dir` int(1) NOT NULL DEFAULT '0',
  `hash_share` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblfs_file_overview: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `tblfs_file_overview` DISABLE KEYS */;
INSERT INTO `tblfs_file_overview` (`id`, `fileid`, `type`, `path`, `number`, `created_at`, `inserted_at`, `updated_at`, `hash`, `dir`, `hash_share`) VALUES
	(1, '1649818787', 'directory', 'Main File Sharing/claudinei-paladini', 0, '1', '2022-04-12 23:59:47', '2022-04-12 23:59:47', '', 1, 'A2aRQZ'),
	(2, '1649818787100', 'directory', 'modules/file_sharing/uploads/Main File Sharing/claudinei-paladini/Shared', 0, '1', '2022-04-12 23:59:47', '2022-04-12 23:59:47', '', 1, 'ccIfqL'),
	(3, '164981878797', 'directory', 'modules/file_sharing/uploads/Main File Sharing/.trash/claudinei-paladini', 0, '1', '2022-04-12 23:59:47', '2022-04-12 23:59:47', '', 1, 'aCRcK3'),
	(4, '1649818788', 'directory', '/home/storage/5/39/57/paladiniadv1/public_html/crm_paladini/modules/file_sharing/uploads/Main File Sharing/claudinei-paladini', 0, '1', '2022-04-12 23:59:48', '2022-04-12 23:59:48', '', 1, 'WQjxyQ'),
	(5, '164981878810', 'directory', 'modules/file_sharing/uploads/Main File Sharing/claudinei-paladini/Shared', 0, '1', '2022-04-12 23:59:48', '2022-04-12 23:59:48', '', 1, 'O5ysXn');
/*!40000 ALTER TABLE `tblfs_file_overview` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblfs_genenal_ip_share
CREATE TABLE IF NOT EXISTS `tblfs_genenal_ip_share` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parrent_id` varchar(11) NOT NULL,
  `ip_share` varchar(20) DEFAULT NULL,
  `inserted_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblfs_genenal_ip_share: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblfs_genenal_ip_share` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblfs_genenal_ip_share` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblfs_setting_configuration
CREATE TABLE IF NOT EXISTS `tblfs_setting_configuration` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(20) DEFAULT NULL,
  `is_read` int(1) NOT NULL DEFAULT '0',
  `is_upload` int(1) NOT NULL DEFAULT '0',
  `is_download` int(1) NOT NULL DEFAULT '0',
  `is_delete` int(1) NOT NULL DEFAULT '0',
  `is_write` int(1) NOT NULL DEFAULT '0',
  `password` varchar(255) DEFAULT NULL,
  `max_size` int(255) NOT NULL DEFAULT '2',
  `min_size` int(255) NOT NULL DEFAULT '1',
  `created_at` varchar(11) DEFAULT NULL,
  `inserted_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_share` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblfs_setting_configuration: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblfs_setting_configuration` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblfs_setting_configuration` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblfs_setting_configuration_relationship
CREATE TABLE IF NOT EXISTS `tblfs_setting_configuration_relationship` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `configuration_id` int(11) NOT NULL,
  `rel_type` varchar(45) NOT NULL,
  `rel_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblfs_setting_configuration_relationship: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblfs_setting_configuration_relationship` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblfs_setting_configuration_relationship` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblfs_sharings
CREATE TABLE IF NOT EXISTS `tblfs_sharings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_read` int(1) NOT NULL DEFAULT '0',
  `is_upload` int(1) NOT NULL DEFAULT '0',
  `is_download` int(1) NOT NULL DEFAULT '0',
  `is_delete` int(1) NOT NULL DEFAULT '0',
  `is_write` int(1) NOT NULL DEFAULT '0',
  `password` varchar(255) DEFAULT NULL,
  `expiration_date_apply` int(1) DEFAULT NULL,
  `expiration_date` date DEFAULT NULL,
  `expiration_date_delete` int(1) DEFAULT NULL,
  `download_limits_apply` int(1) DEFAULT NULL,
  `download_limits` int(11) DEFAULT NULL,
  `download_limits_delete` int(1) DEFAULT NULL,
  `hash_share` varchar(255) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `type` varchar(45) NOT NULL,
  `inserted_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `isowner` tinyint(4) DEFAULT NULL,
  `phash` text,
  `locked` tinyint(4) DEFAULT NULL,
  `mime` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `read` tinyint(4) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `ts` varchar(255) DEFAULT NULL,
  `write` tinyint(4) DEFAULT NULL,
  `hash` text,
  `url` text,
  `has_been_deleted` int(1) NOT NULL DEFAULT '0',
  `downloads` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblfs_sharings: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblfs_sharings` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblfs_sharings` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblfs_sharing_relationship
CREATE TABLE IF NOT EXISTS `tblfs_sharing_relationship` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `share_id` int(11) NOT NULL,
  `type` varchar(45) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblfs_sharing_relationship: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblfs_sharing_relationship` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblfs_sharing_relationship` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblgdpr_requests
CREATE TABLE IF NOT EXISTS `tblgdpr_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clientid` int(11) NOT NULL DEFAULT '0',
  `contact_id` int(11) NOT NULL DEFAULT '0',
  `lead_id` int(11) NOT NULL DEFAULT '0',
  `request_type` varchar(191) DEFAULT NULL,
  `status` varchar(40) DEFAULT NULL,
  `request_date` datetime NOT NULL,
  `request_from` varchar(150) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblgdpr_requests: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblgdpr_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblgdpr_requests` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblgoals
CREATE TABLE IF NOT EXISTS `tblgoals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(191) NOT NULL,
  `description` text NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `goal_type` int(11) NOT NULL,
  `contract_type` int(11) NOT NULL DEFAULT '0',
  `achievement` int(11) NOT NULL,
  `notify_when_fail` tinyint(1) NOT NULL DEFAULT '1',
  `notify_when_achieve` tinyint(1) NOT NULL DEFAULT '1',
  `notified` int(11) NOT NULL DEFAULT '0',
  `staff_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `staff_id` (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblgoals: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblgoals` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblgoals` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblgoods_delivery
CREATE TABLE IF NOT EXISTS `tblgoods_delivery` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `rel_type` int(11) DEFAULT NULL COMMENT 'type goods delivery',
  `rel_document` int(11) DEFAULT NULL COMMENT 'document id of goods delivery',
  `customer_code` text,
  `customer_name` varchar(100) DEFAULT NULL,
  `to_` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `description` text COMMENT 'the reason delivery',
  `staff_id` int(11) DEFAULT NULL COMMENT 'salesman',
  `date_c` date DEFAULT NULL,
  `date_add` date DEFAULT NULL,
  `goods_delivery_code` varchar(100) DEFAULT NULL COMMENT 'số chứng từ xuất kho',
  `warehouse_id` int(11) DEFAULT NULL,
  `total_money` varchar(200) DEFAULT NULL,
  `approval` int(11) DEFAULT '0' COMMENT 'status approval ',
  `addedfrom` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblgoods_delivery: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblgoods_delivery` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblgoods_delivery` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblgoods_delivery_detail
CREATE TABLE IF NOT EXISTS `tblgoods_delivery_detail` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `goods_delivery_id` int(11) NOT NULL,
  `commodity_code` varchar(100) DEFAULT NULL,
  `commodity_name` text,
  `warehouse_id` text,
  `unit_id` text,
  `quantities` text,
  `unit_price` varchar(100) DEFAULT NULL,
  `total_money` varchar(200) DEFAULT NULL,
  `note` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblgoods_delivery_detail: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblgoods_delivery_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblgoods_delivery_detail` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblgoods_receipt
CREATE TABLE IF NOT EXISTS `tblgoods_receipt` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `supplier_code` varchar(100) DEFAULT NULL,
  `supplier_name` text,
  `deliver_name` text,
  `buyer_id` int(11) DEFAULT NULL,
  `description` text,
  `pr_order_id` int(11) DEFAULT NULL COMMENT 'code puchase request agree',
  `date_c` date DEFAULT NULL,
  `date_add` date DEFAULT NULL,
  `goods_receipt_code` varchar(100) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `total_tax_money` varchar(100) DEFAULT NULL,
  `total_goods_money` varchar(100) DEFAULT NULL,
  `value_of_inventory` varchar(100) DEFAULT NULL,
  `total_money` varchar(100) DEFAULT NULL COMMENT 'total_money = total_tax_money +total_goods_money ',
  `addedfrom` int(11) DEFAULT NULL,
  `approval` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblgoods_receipt: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblgoods_receipt` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblgoods_receipt` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblgoods_receipt_detail
CREATE TABLE IF NOT EXISTS `tblgoods_receipt_detail` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `goods_receipt_id` int(11) NOT NULL,
  `commodity_code` varchar(100) DEFAULT NULL,
  `commodity_name` text,
  `warehouse_id` text,
  `unit_id` text,
  `quantities` text,
  `unit_price` varchar(100) DEFAULT NULL,
  `tax` varchar(100) DEFAULT NULL,
  `tax_money` varchar(100) DEFAULT NULL,
  `goods_money` varchar(100) DEFAULT NULL,
  `date_manufacture` date DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `note` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblgoods_receipt_detail: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblgoods_receipt_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblgoods_receipt_detail` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblgoods_transaction_detail
CREATE TABLE IF NOT EXISTS `tblgoods_transaction_detail` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `goods_receipt_id` int(11) DEFAULT NULL COMMENT 'id_goods_receipt_id or goods_delivery_id',
  `goods_id` int(11) NOT NULL COMMENT ' is id commodity',
  `old_quantity` varchar(100) DEFAULT NULL,
  `quantity` varchar(100) DEFAULT NULL,
  `date_add` datetime DEFAULT NULL,
  `commodity_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `note` text,
  `status` int(2) DEFAULT NULL COMMENT '1:Goods receipt note 2:Goods delivery note',
  PRIMARY KEY (`id`,`commodity_id`,`warehouse_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblgoods_transaction_detail: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblgoods_transaction_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblgoods_transaction_detail` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblhrm_option
CREATE TABLE IF NOT EXISTS `tblhrm_option` (
  `option_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(200) NOT NULL,
  `option_val` longtext,
  `auto` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblhrm_option: ~28 rows (aproximadamente)
/*!40000 ALTER TABLE `tblhrm_option` DISABLE KEYS */;
INSERT INTO `tblhrm_option` (`option_id`, `option_name`, `option_val`, `auto`) VALUES
	(1, 'hrm_contract_form', '[]', 1),
	(2, 'hrm_leave_position', '[]', 1),
	(3, 'hrm_leave_contract_type', '[]', 1),
	(4, 'hrm_leave_start_date', NULL, 1),
	(5, 'hrm_max_leave_in_year', NULL, 1),
	(6, 'hrm_start_leave_from_month', NULL, 1),
	(7, 'hrm_start_leave_to_month', NULL, 1),
	(8, 'hrm_add_new_leave_month_from_date', NULL, 1),
	(9, 'hrm_accumulated_leave_to_month', NULL, 1),
	(10, 'hrm_leave_contract_sign_day', NULL, 1),
	(11, 'hrm_start_date_seniority', NULL, 1),
	(12, 'hrm_seniority_year', NULL, 1),
	(13, 'hrm_seniority_year_leave', NULL, 1),
	(14, 'hrm_next_year', NULL, 1),
	(15, 'hrm_next_year_leave', NULL, 1),
	(16, 'alow_borrow_leave', NULL, 1),
	(17, 'contract_type_borrow', '[]', 1),
	(18, 'max_leave_borrow', NULL, 1),
	(19, 'day_increases_monthly', '15', 1),
	(20, 'sign_a_labor_contract', '1', 1),
	(21, 'maternity_leave_to_return_to_work', '1', 1),
	(22, 'unpaid_leave_to_return_to_work', '1', 1),
	(23, 'increase_the_premium', '1', 1),
	(24, 'day_decreases_monthly', '5', 1),
	(25, 'contract_paid_for_unemployment', '1', 1),
	(26, 'maternity_leave_regime', '1', 1),
	(27, 'unpaid_leave_of_more_than', '10', 1),
	(28, 'reduced_premiums', '1', 1);
/*!40000 ALTER TABLE `tblhrm_option` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblhrm_timesheet
CREATE TABLE IF NOT EXISTS `tblhrm_timesheet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(11) NOT NULL,
  `date_work` date NOT NULL,
  `value` text,
  `type` varchar(45) DEFAULT NULL,
  `add_from` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblhrm_timesheet: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblhrm_timesheet` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblhrm_timesheet` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblinsurance_type
CREATE TABLE IF NOT EXISTS `tblinsurance_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_month` date NOT NULL,
  `social_company` varchar(15) DEFAULT NULL,
  `social_staff` varchar(15) DEFAULT NULL,
  `labor_accident_company` varchar(15) DEFAULT NULL,
  `labor_accident_staff` varchar(15) DEFAULT NULL,
  `health_company` varchar(15) DEFAULT NULL,
  `health_staff` varchar(15) DEFAULT NULL,
  `unemployment_company` varchar(15) DEFAULT NULL,
  `unemployment_staff` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblinsurance_type: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblinsurance_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblinsurance_type` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblinventory_commodity_min
CREATE TABLE IF NOT EXISTS `tblinventory_commodity_min` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `commodity_id` int(11) NOT NULL,
  `commodity_code` varchar(100) DEFAULT NULL,
  `commodity_name` varchar(100) DEFAULT NULL,
  `inventory_number_min` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`,`commodity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblinventory_commodity_min: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblinventory_commodity_min` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblinventory_commodity_min` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblinventory_manage
CREATE TABLE IF NOT EXISTS `tblinventory_manage` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `warehouse_id` int(11) NOT NULL,
  `commodity_id` int(11) NOT NULL,
  `inventory_number` varchar(100) DEFAULT NULL,
  `date_manufacture` date DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  PRIMARY KEY (`id`,`commodity_id`,`warehouse_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblinventory_manage: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblinventory_manage` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblinventory_manage` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblinvoicepaymentrecords
CREATE TABLE IF NOT EXISTS `tblinvoicepaymentrecords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoiceid` int(11) NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  `paymentmode` varchar(40) DEFAULT NULL,
  `paymentmethod` varchar(191) DEFAULT NULL,
  `date` date NOT NULL,
  `daterecorded` datetime NOT NULL,
  `note` text NOT NULL,
  `transactionid` mediumtext,
  PRIMARY KEY (`id`),
  KEY `invoiceid` (`invoiceid`),
  KEY `paymentmethod` (`paymentmethod`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblinvoicepaymentrecords: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblinvoicepaymentrecords` DISABLE KEYS */;
INSERT INTO `tblinvoicepaymentrecords` (`id`, `invoiceid`, `amount`, `paymentmode`, `paymentmethod`, `date`, `daterecorded`, `note`, `transactionid`) VALUES
	(2, 8, 10.00, '1', NULL, '2022-04-13', '2022-04-13 19:26:02', '', '');
/*!40000 ALTER TABLE `tblinvoicepaymentrecords` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblinvoices
CREATE TABLE IF NOT EXISTS `tblinvoices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sent` tinyint(1) NOT NULL DEFAULT '0',
  `datesend` datetime DEFAULT NULL,
  `clientid` int(11) NOT NULL,
  `deleted_customer_name` varchar(100) DEFAULT NULL,
  `number` int(11) NOT NULL,
  `prefix` varchar(50) DEFAULT NULL,
  `number_format` int(11) NOT NULL DEFAULT '0',
  `datecreated` datetime NOT NULL,
  `date` date NOT NULL,
  `duedate` date DEFAULT NULL,
  `currency` int(11) NOT NULL,
  `subtotal` decimal(15,2) NOT NULL,
  `total_tax` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total` decimal(15,2) NOT NULL,
  `adjustment` decimal(15,2) DEFAULT NULL,
  `addedfrom` int(11) DEFAULT NULL,
  `hash` varchar(32) NOT NULL,
  `status` int(11) DEFAULT '1',
  `clientnote` text,
  `adminnote` text,
  `last_overdue_reminder` date DEFAULT NULL,
  `last_due_reminder` date DEFAULT NULL,
  `cancel_overdue_reminders` int(11) NOT NULL DEFAULT '0',
  `allowed_payment_modes` mediumtext,
  `token` mediumtext,
  `discount_percent` decimal(15,2) DEFAULT '0.00',
  `discount_total` decimal(15,2) DEFAULT '0.00',
  `discount_type` varchar(30) NOT NULL,
  `recurring` int(11) NOT NULL DEFAULT '0',
  `recurring_type` varchar(10) DEFAULT NULL,
  `custom_recurring` tinyint(1) NOT NULL DEFAULT '0',
  `cycles` int(11) NOT NULL DEFAULT '0',
  `total_cycles` int(11) NOT NULL DEFAULT '0',
  `is_recurring_from` int(11) DEFAULT NULL,
  `last_recurring_date` date DEFAULT NULL,
  `terms` text,
  `sale_agent` int(11) NOT NULL DEFAULT '0',
  `billing_street` varchar(200) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(100) DEFAULT NULL,
  `billing_country` int(11) DEFAULT NULL,
  `shipping_street` varchar(200) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(100) DEFAULT NULL,
  `shipping_zip` varchar(100) DEFAULT NULL,
  `shipping_country` int(11) DEFAULT NULL,
  `include_shipping` tinyint(1) NOT NULL,
  `show_shipping_on_invoice` tinyint(1) NOT NULL DEFAULT '1',
  `show_quantity_as` int(11) NOT NULL DEFAULT '1',
  `project_id` int(11) DEFAULT '0',
  `subscription_id` int(11) NOT NULL DEFAULT '0',
  `short_link` varchar(100) DEFAULT NULL,
  `bill` varchar(20) DEFAULT '0',
  `wco_id` int(9) DEFAULT NULL,
  `store_id` int(9) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `currency` (`currency`),
  KEY `clientid` (`clientid`),
  KEY `project_id` (`project_id`),
  KEY `sale_agent` (`sale_agent`),
  KEY `total` (`total`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblinvoices: ~7 rows (aproximadamente)
/*!40000 ALTER TABLE `tblinvoices` DISABLE KEYS */;
INSERT INTO `tblinvoices` (`id`, `sent`, `datesend`, `clientid`, `deleted_customer_name`, `number`, `prefix`, `number_format`, `datecreated`, `date`, `duedate`, `currency`, `subtotal`, `total_tax`, `total`, `adjustment`, `addedfrom`, `hash`, `status`, `clientnote`, `adminnote`, `last_overdue_reminder`, `last_due_reminder`, `cancel_overdue_reminders`, `allowed_payment_modes`, `token`, `discount_percent`, `discount_total`, `discount_type`, `recurring`, `recurring_type`, `custom_recurring`, `cycles`, `total_cycles`, `is_recurring_from`, `last_recurring_date`, `terms`, `sale_agent`, `billing_street`, `billing_city`, `billing_state`, `billing_zip`, `billing_country`, `shipping_street`, `shipping_city`, `shipping_state`, `shipping_zip`, `shipping_country`, `include_shipping`, `show_shipping_on_invoice`, `show_quantity_as`, `project_id`, `subscription_id`, `short_link`, `bill`, `wco_id`, `store_id`) VALUES
	(2, 0, NULL, 1, NULL, 1, 'INV-', 1, '2022-04-09 13:49:56', '2022-04-09', '2022-05-09', 3, 10.00, 0.00, 10.00, 0.00, 1, 'c2059c84e48cec00b142adff37e73ea0', 1, '', '', NULL, NULL, 0, 'a:1:{i:0;s:11:"gerencianet";}', NULL, 0.00, 0.00, '', 0, NULL, 0, 0, 0, NULL, NULL, '', 1, 'Rua Prefeito Paulo Frederico Alves Wildner<br />\r\n279', 'Biguaçu', 'Santa Catarina', '88161-048', 32, 'Rua Prefeito Paulo Frederico Alves Wildner<br />\r\n279', 'Biguaçu', 'Santa Catarina', '88161-048', 32, 1, 1, 1, 0, 0, NULL, '0', NULL, NULL),
	(4, 1, '2022-04-11 14:42:13', 1, NULL, 2, 'INV-', 1, '2022-04-10 15:33:07', '2022-04-10', '2022-05-10', 3, 15.00, 0.00, 15.00, 0.00, 1, '73027ac6dae5f31e6e3382ae2b0bb42c', 1, '', '', NULL, NULL, 0, 'a:2:{i:0;s:1:"1";i:1;s:11:"gerencianet";}', NULL, 0.00, 0.00, '', 0, NULL, 0, 0, 0, NULL, NULL, '', 1, 'Rua Prefeito Paulo Frederico Alves Wildner<br />\r\n279', 'Biguaçu', 'Santa Catarina', '88161-048', 32, 'Rua Prefeito Paulo Frederico Alves Wildner<br />\r\n279', 'Biguaçu', 'Santa Catarina', '88161-048', 32, 1, 1, 1, 0, 0, NULL, '0', NULL, NULL),
	(5, 0, NULL, 2, NULL, 3, 'INV-', 1, '2022-04-11 10:27:07', '2022-04-11', '2022-05-11', 3, 10.00, 0.00, 10.00, 0.00, 1, '21130650451596680e358ff87f10e4ce', 1, '', '', NULL, NULL, 0, 'a:2:{i:0;s:1:"1";i:1;s:11:"gerencianet";}', '427079183', 0.00, 0.00, '', 0, NULL, 0, 0, 0, NULL, NULL, '', 0, 'Avenida Senador Vergueiro, Nº 3071 – Complemento: SALA 21 – Rudge Ramos', 'São Bernardo do Campo', 'SP', '09602-000', 32, 'Avenida Senador Vergueiro, Nº 3071 – Complemento: SALA 21 – Rudge Ramos', 'São Bernardo do Campo', 'SP', '09602-000', 32, 1, 1, 1, 0, 0, NULL, '0', NULL, NULL),
	(6, 0, NULL, 2, NULL, 4, 'INV-', 1, '2022-04-11 10:39:06', '2022-04-11', '2022-05-11', 3, 12.00, 0.00, 12.00, 0.00, 1, 'eb25eb44bd0343b374ed04163caf6971', 1, '', '', NULL, NULL, 0, 'a:2:{i:0;s:1:"1";i:1;s:11:"gerencianet";}', '427080908', 0.00, 0.00, '', 0, NULL, 0, 0, 0, NULL, NULL, '', 0, 'Avenida Senador Vergueiro, Nº 3071 – Complemento: SALA 21 – Rudge Ramos', 'São Bernardo do Campo', 'SP', '09602-000', 32, 'Avenida Senador Vergueiro, Nº 3071 – Complemento: SALA 21 – Rudge Ramos', 'São Bernardo do Campo', 'SP', '09602-000', 32, 1, 1, 1, 0, 0, NULL, '0', NULL, NULL),
	(7, 0, NULL, 1, NULL, 5, 'INV-', 1, '2022-04-11 17:01:20', '2022-04-11', '2022-05-11', 3, 15.00, 0.00, 15.00, 0.00, 1, '412b2bce2aff7e6d6eea9b843deeecfe', 1, '', '', NULL, NULL, 0, 'a:2:{i:0;s:1:"1";i:1;s:11:"gerencianet";}', NULL, 0.00, 0.00, '', 0, NULL, 0, 0, 0, NULL, NULL, '', 0, 'Rua Prefeito Paulo Frederico Alves Wildner<br />\r\n279', 'Biguaçu', 'Santa Catarina', '88161-048', 32, 'Rua Prefeito Paulo Frederico Alves Wildner<br />\r\n279', 'Biguaçu', 'Santa Catarina', '88161-048', 32, 1, 1, 1, 0, 0, NULL, '0', NULL, NULL),
	(8, 0, NULL, 2, NULL, 6, 'INV-', 1, '2022-04-11 17:02:58', '2022-04-11', '2022-05-11', 3, 10.00, 0.00, 10.00, 0.00, 1, '315da0b93e4269956691caf83faaa2d1', 2, '', '', NULL, NULL, 0, 'a:2:{i:0;s:1:"1";i:1;s:11:"gerencianet";}', '427278210', 0.00, 0.00, '', 0, NULL, 0, 0, 0, NULL, NULL, '', 0, 'Avenida Senador Vergueiro, Nº 3071 – Complemento: SALA 21 – Rudge Ramos', 'São Bernardo do Campo', 'SP', '09602-000', 32, 'Avenida Senador Vergueiro, Nº 3071 – Complemento: SALA 21 – Rudge Ramos', 'São Bernardo do Campo', 'SP', '09602-000', 32, 1, 1, 1, 0, 0, NULL, '0', NULL, NULL),
	(9, 0, NULL, 3, NULL, 7, 'INV-', 1, '2022-04-11 17:06:00', '2022-04-11', '2022-05-11', 3, 10.00, 0.00, 10.00, 0.00, 1, '4877b62cdfb1f0119a5297b7c9008f79', 1, '', '', NULL, NULL, 0, 'a:2:{i:0;s:1:"1";i:1;s:11:"gerencianet";}', '427283216', 0.00, 0.00, '', 0, NULL, 0, 0, 0, NULL, NULL, '', 0, 'Rua Jornalista Sardo Filho – Ilha da Conceição', 'Niterói', 'RJ', '24050-100', 32, 'Rua Jornalista Sardo Filho – Ilha da Conceição', 'Niterói', 'RJ', '24050-100', 32, 1, 1, 1, 0, 0, NULL, '0', NULL, NULL),
	(11, 0, NULL, 1, NULL, 8, 'INV-', 1, '2022-04-18 00:18:54', '2022-04-18', '2022-05-18', 3, 10.00, 0.00, 10.00, 0.00, 1, '49bc4110c7a80421e8f0711b2e65bffc', 1, '', '', NULL, NULL, 0, 'a:1:{i:0;s:11:"gerencianet";}', NULL, 0.00, 0.00, '', 0, NULL, 0, 0, 0, NULL, NULL, '', 4, 'Rua Prefeito Paulo Frederico Alves Wildner<br />\r\n279', 'Biguaçu', 'Santa Catarina', '88161-048', 32, 'Rua Prefeito Paulo Frederico Alves Wildner<br />\r\n279', 'Biguaçu', 'Santa Catarina', '88161-048', 32, 1, 1, 1, 0, 0, NULL, '0', NULL, NULL);
/*!40000 ALTER TABLE `tblinvoices` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblitemable
CREATE TABLE IF NOT EXISTS `tblitemable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(15) NOT NULL,
  `description` mediumtext NOT NULL,
  `long_description` mediumtext,
  `qty` decimal(15,2) NOT NULL,
  `rate` decimal(15,2) NOT NULL,
  `unit` varchar(40) DEFAULT NULL,
  `item_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rel_id` (`rel_id`),
  KEY `rel_type` (`rel_type`),
  KEY `qty` (`qty`),
  KEY `rate` (`rate`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblitemable: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `tblitemable` DISABLE KEYS */;
INSERT INTO `tblitemable` (`id`, `rel_id`, `rel_type`, `description`, `long_description`, `qty`, `rate`, `unit`, `item_order`) VALUES
	(2, 2, 'invoice', 'boleto teste', '', 1.00, 10.00, '', 1),
	(4, 4, 'invoice', '', '', 1.00, 15.00, '', 1),
	(5, 5, 'invoice', 'Teste PIX', '', 1.00, 10.00, '', 1),
	(6, 6, 'invoice', 'Teste boleto', '', 1.00, 12.00, '', 1),
	(7, 7, 'invoice', 'Teste', 'boleto', 1.00, 15.00, '', 1),
	(8, 8, 'invoice', 'teste 1702', 'teste boleto 1702', 1.00, 10.00, '', 1),
	(9, 9, 'invoice', 'boleto', 'boleto', 1.00, 10.00, '', 1),
	(11, 11, 'invoice', 'BOLETO', 'TESTE 18042022', 1.00, 10.00, '', 1);
/*!40000 ALTER TABLE `tblitemable` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblitems
CREATE TABLE IF NOT EXISTS `tblitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` mediumtext NOT NULL,
  `long_description` text,
  `rate` decimal(15,2) NOT NULL,
  `tax` int(11) DEFAULT NULL,
  `tax2` int(11) DEFAULT NULL,
  `unit` varchar(40) DEFAULT NULL,
  `group_id` int(11) NOT NULL DEFAULT '0',
  `commodity_code` varchar(100) NOT NULL,
  `commodity_barcode` text,
  `unit_id` int(11) DEFAULT NULL,
  `sku_code` varchar(200) DEFAULT NULL,
  `sku_name` varchar(200) DEFAULT NULL,
  `purchase_price` decimal(15,2) DEFAULT NULL,
  `sub_group` varchar(200) DEFAULT NULL,
  `commodity_type` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `origin` varchar(100) DEFAULT NULL,
  `color_id` int(11) DEFAULT NULL,
  `style_id` int(11) DEFAULT NULL,
  `model_id` int(11) DEFAULT NULL,
  `size_id` int(11) DEFAULT NULL,
  `commodity_name` varchar(200) NOT NULL,
  `color` text,
  PRIMARY KEY (`id`),
  KEY `tax` (`tax`),
  KEY `tax2` (`tax2`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblitems: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblitems` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblitems_groups
CREATE TABLE IF NOT EXISTS `tblitems_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `commodity_group_code` varchar(100) DEFAULT NULL,
  `order` int(10) DEFAULT NULL,
  `display` int(1) DEFAULT NULL,
  `note` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblitems_groups: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblitems_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblitems_groups` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblitem_tax
CREATE TABLE IF NOT EXISTS `tblitem_tax` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemid` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) NOT NULL,
  `taxrate` decimal(15,2) NOT NULL,
  `taxname` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `itemid` (`itemid`),
  KEY `rel_id` (`rel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblitem_tax: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblitem_tax` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblitem_tax` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tbljob_position
CREATE TABLE IF NOT EXISTS `tbljob_position` (
  `position_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `position_name` varchar(200) NOT NULL,
  PRIMARY KEY (`position_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tbljob_position: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tbljob_position` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbljob_position` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblknowedge_base_article_feedback
CREATE TABLE IF NOT EXISTS `tblknowedge_base_article_feedback` (
  `articleanswerid` int(11) NOT NULL AUTO_INCREMENT,
  `articleid` int(11) NOT NULL,
  `answer` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`articleanswerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblknowedge_base_article_feedback: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblknowedge_base_article_feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblknowedge_base_article_feedback` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblknowledge_base
CREATE TABLE IF NOT EXISTS `tblknowledge_base` (
  `articleid` int(11) NOT NULL AUTO_INCREMENT,
  `articlegroup` int(11) NOT NULL,
  `subject` mediumtext NOT NULL,
  `description` text NOT NULL,
  `slug` mediumtext NOT NULL,
  `active` tinyint(4) NOT NULL,
  `datecreated` datetime NOT NULL,
  `article_order` int(11) NOT NULL DEFAULT '0',
  `staff_article` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`articleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblknowledge_base: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblknowledge_base` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblknowledge_base` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblknowledge_base_groups
CREATE TABLE IF NOT EXISTS `tblknowledge_base_groups` (
  `groupid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `group_slug` text,
  `description` mediumtext,
  `active` tinyint(4) NOT NULL,
  `color` varchar(10) DEFAULT '#28B8DA',
  `group_order` int(11) DEFAULT '0',
  PRIMARY KEY (`groupid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblknowledge_base_groups: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblknowledge_base_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblknowledge_base_groups` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblleads
CREATE TABLE IF NOT EXISTS `tblleads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hash` varchar(65) DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `company` varchar(191) DEFAULT NULL,
  `description` text,
  `country` int(11) NOT NULL DEFAULT '0',
  `zip` varchar(15) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `assigned` int(11) NOT NULL DEFAULT '0',
  `dateadded` datetime NOT NULL,
  `from_form_id` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL,
  `source` int(11) NOT NULL,
  `lastcontact` datetime DEFAULT NULL,
  `dateassigned` date DEFAULT NULL,
  `last_status_change` datetime DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `website` varchar(150) DEFAULT NULL,
  `leadorder` int(11) DEFAULT '1',
  `phonenumber` varchar(50) DEFAULT NULL,
  `date_converted` datetime DEFAULT NULL,
  `lost` tinyint(1) NOT NULL DEFAULT '0',
  `junk` int(11) NOT NULL DEFAULT '0',
  `last_lead_status` int(11) NOT NULL DEFAULT '0',
  `is_imported_from_email_integration` tinyint(1) NOT NULL DEFAULT '0',
  `email_integration_uid` varchar(30) DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT '0',
  `default_language` varchar(40) DEFAULT NULL,
  `client_id` int(11) NOT NULL DEFAULT '0',
  `lead_value` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `company` (`company`),
  KEY `email` (`email`),
  KEY `assigned` (`assigned`),
  KEY `status` (`status`),
  KEY `source` (`source`),
  KEY `lastcontact` (`lastcontact`),
  KEY `dateadded` (`dateadded`),
  KEY `leadorder` (`leadorder`),
  KEY `from_form_id` (`from_form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblleads: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblleads` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblleads` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblleads_email_integration
CREATE TABLE IF NOT EXISTS `tblleads_email_integration` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'the ID always must be 1',
  `active` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `imap_server` varchar(100) NOT NULL,
  `password` mediumtext NOT NULL,
  `check_every` int(11) NOT NULL DEFAULT '5',
  `responsible` int(11) NOT NULL,
  `lead_source` int(11) NOT NULL,
  `lead_status` int(11) NOT NULL,
  `encryption` varchar(3) DEFAULT NULL,
  `folder` varchar(100) NOT NULL,
  `last_run` varchar(50) DEFAULT NULL,
  `notify_lead_imported` tinyint(1) NOT NULL DEFAULT '1',
  `notify_lead_contact_more_times` tinyint(1) NOT NULL DEFAULT '1',
  `notify_type` varchar(20) DEFAULT NULL,
  `notify_ids` mediumtext,
  `mark_public` int(11) NOT NULL DEFAULT '0',
  `only_loop_on_unseen_emails` tinyint(1) NOT NULL DEFAULT '1',
  `delete_after_import` int(11) NOT NULL DEFAULT '0',
  `create_task_if_customer` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblleads_email_integration: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblleads_email_integration` DISABLE KEYS */;
INSERT INTO `tblleads_email_integration` (`id`, `active`, `email`, `imap_server`, `password`, `check_every`, `responsible`, `lead_source`, `lead_status`, `encryption`, `folder`, `last_run`, `notify_lead_imported`, `notify_lead_contact_more_times`, `notify_type`, `notify_ids`, `mark_public`, `only_loop_on_unseen_emails`, `delete_after_import`, `create_task_if_customer`) VALUES
	(1, 1, 'claudinei@paladiniadv.com.br', 'email-ssl.com.br', '085d48a03d5f61bd377c432d00634ffb1ba1d9db803e34c955f06c6a365524b65a3a25197c6597ebe7dcdb166c97447a1e49e7025eeb0f0b48e5c28b36a67a1fyBdm0msBhN7M0SgaP8HlMyS8UWTK9aPYohO4GGy4e1k=', 10, 1, 1, 2, 'ssl', 'INBOX', '', 1, 1, 'assigned', 'a:0:{}', 0, 1, 0, 1);
/*!40000 ALTER TABLE `tblleads_email_integration` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblleads_sources
CREATE TABLE IF NOT EXISTS `tblleads_sources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblleads_sources: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `tblleads_sources` DISABLE KEYS */;
INSERT INTO `tblleads_sources` (`id`, `name`) VALUES
	(2, 'Facebook'),
	(1, 'Google');
/*!40000 ALTER TABLE `tblleads_sources` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblleads_status
CREATE TABLE IF NOT EXISTS `tblleads_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `statusorder` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT '#28B8DA',
  `isdefault` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblleads_status: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblleads_status` DISABLE KEYS */;
INSERT INTO `tblleads_status` (`id`, `name`, `statusorder`, `color`, `isdefault`) VALUES
	(1, 'Customer', 1000, '#7cb342', 1),
	(2, '0', 2, '#28B8DA', 0);
/*!40000 ALTER TABLE `tblleads_status` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tbllead_activity_log
CREATE TABLE IF NOT EXISTS `tbllead_activity_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `leadid` int(11) NOT NULL,
  `description` mediumtext NOT NULL,
  `additional_data` text,
  `date` datetime NOT NULL,
  `staffid` int(11) NOT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `custom_activity` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tbllead_activity_log: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tbllead_activity_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbllead_activity_log` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tbllead_integration_emails
CREATE TABLE IF NOT EXISTS `tbllead_integration_emails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` mediumtext,
  `body` mediumtext,
  `dateadded` datetime NOT NULL,
  `leadid` int(11) NOT NULL,
  `emailid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tbllead_integration_emails: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tbllead_integration_emails` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbllead_integration_emails` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tbllistemails
CREATE TABLE IF NOT EXISTS `tbllistemails` (
  `emailid` int(11) NOT NULL AUTO_INCREMENT,
  `listid` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `dateadded` datetime NOT NULL,
  PRIMARY KEY (`emailid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tbllistemails: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tbllistemails` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbllistemails` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tbllist_widget
CREATE TABLE IF NOT EXISTS `tbllist_widget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_from` int(11) NOT NULL,
  `rel_id` int(11) DEFAULT NULL,
  `rel_type` varchar(45) DEFAULT NULL,
  `layout` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tbllist_widget: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tbllist_widget` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbllist_widget` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblmaillistscustomfields
CREATE TABLE IF NOT EXISTS `tblmaillistscustomfields` (
  `customfieldid` int(11) NOT NULL AUTO_INCREMENT,
  `listid` int(11) NOT NULL,
  `fieldname` varchar(150) NOT NULL,
  `fieldslug` varchar(100) NOT NULL,
  PRIMARY KEY (`customfieldid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblmaillistscustomfields: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblmaillistscustomfields` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblmaillistscustomfields` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblmaillistscustomfieldvalues
CREATE TABLE IF NOT EXISTS `tblmaillistscustomfieldvalues` (
  `customfieldvalueid` int(11) NOT NULL AUTO_INCREMENT,
  `listid` int(11) NOT NULL,
  `customfieldid` int(11) NOT NULL,
  `emailid` int(11) NOT NULL,
  `value` varchar(100) NOT NULL,
  PRIMARY KEY (`customfieldvalueid`),
  KEY `listid` (`listid`),
  KEY `customfieldid` (`customfieldid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblmaillistscustomfieldvalues: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblmaillistscustomfieldvalues` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblmaillistscustomfieldvalues` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblmail_queue
CREATE TABLE IF NOT EXISTS `tblmail_queue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `engine` varchar(40) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `cc` text,
  `bcc` text,
  `message` mediumtext NOT NULL,
  `alt_message` mediumtext,
  `status` enum('pending','sending','sent','failed') DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `headers` text,
  `attachments` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblmail_queue: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblmail_queue` DISABLE KEYS */;
INSERT INTO `tblmail_queue` (`id`, `engine`, `email`, `cc`, `bcc`, `message`, `alt_message`, `status`, `date`, `headers`, `attachments`) VALUES
	(1, 'phpmailer', 'claudinei@paladiniadv.com.br', '', '', '<!doctype html>\n                            <html>\n                            <head>\n                              <meta name="viewport" content="width=device-width" />\n                              <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />\n                              <style>\n                                body {\n                                 background-color: #f6f6f6;\n                                 font-family: sans-serif;\n                                 -webkit-font-smoothing: antialiased;\n                                 font-size: 14px;\n                                 line-height: 1.4;\n                                 margin: 0;\n                                 padding: 0;\n                                 -ms-text-size-adjust: 100%;\n                                 -webkit-text-size-adjust: 100%;\n                               }\n                               table {\n                                 border-collapse: separate;\n                                 mso-table-lspace: 0pt;\n                                 mso-table-rspace: 0pt;\n                                 width: 100%;\n                               }\n                               table td {\n                                 font-family: sans-serif;\n                                 font-size: 14px;\n                                 vertical-align: top;\n                               }\n                                   /* -------------------------------------\n                                     BODY & CONTAINER\n                                     ------------------------------------- */\n                                     .body {\n                                       background-color: #f6f6f6;\n                                       width: 100%;\n                                     }\n                                     /* Set a max-width, and make it display as block so it will automatically stretch to that width, but will also shrink down on a phone or something */\n\n                                     .container {\n                                       display: block;\n                                       margin: 0 auto !important;\n                                       /* makes it centered */\n                                       max-width: 680px;\n                                       padding: 10px;\n                                       width: 680px;\n                                     }\n                                     /* This should also be a block element, so that it will fill 100% of the .container */\n\n                                     .content {\n                                       box-sizing: border-box;\n                                       display: block;\n                                       margin: 0 auto;\n                                       max-width: 680px;\n                                       padding: 10px;\n                                     }\n                                   /* -------------------------------------\n                                     HEADER, FOOTER, MAIN\n                                     ------------------------------------- */\n\n                                     .main {\n                                       background: #fff;\n                                       border-radius: 3px;\n                                       width: 100%;\n                                     }\n                                     .wrapper {\n                                       box-sizing: border-box;\n                                       padding: 20px;\n                                     }\n                                     .footer {\n                                       clear: both;\n                                       padding-top: 10px;\n                                       text-align: center;\n                                       width: 100%;\n                                     }\n                                     .footer td,\n                                     .footer p,\n                                     .footer span,\n                                     .footer a {\n                                       color: #999999;\n                                       font-size: 12px;\n                                       text-align: center;\n                                     }\n                                     hr {\n                                       border: 0;\n                                       border-bottom: 1px solid #f6f6f6;\n                                       margin: 20px 0;\n                                     }\n                                   /* -------------------------------------\n                                     RESPONSIVE AND MOBILE FRIENDLY STYLES\n                                     ------------------------------------- */\n\n                                     @media only screen and (max-width: 620px) {\n                                       table[class=body] .content {\n                                         padding: 0 !important;\n                                       }\n                                       table[class=body] .container {\n                                         padding: 0 !important;\n                                         width: 100% !important;\n                                       }\n                                       table[class=body] .main {\n                                         border-left-width: 0 !important;\n                                         border-radius: 0 !important;\n                                         border-right-width: 0 !important;\n                                       }\n                                     }\n                                   </style>\n                                 </head>\n                                 <body class="">\n                                  <table border="0" cellpadding="0" cellspacing="0" class="body">\n                                    <tr>\n                                     <td>&nbsp;</td>\n                                     <td class="container">\n                                      <div class="content">\n                                        <!-- START CENTERED WHITE CONTAINER -->\n                                        <table class="main">\n                                          <!-- START MAIN CONTENT AREA -->\n                                          <tr>\n                                           <td class="wrapper">\n                                            <table border="0" cellpadding="0" cellspacing="0">\n                                              <tr>\n                                               <td>Dear Claudinei Paladini<br /><br />Thank you for registering on the <strong>CLAUDINEI PALADINI</strong> CRM System.<br /><br />We just wanted to say welcome.<br /><br />Please contact us if you need any help.<br /><br />Click here to view your profile: <a href="https://www.paladiniadv.com.br/crm_mgal">https://www.paladiniadv.com.br/crm_mgal</a><br /><br />Kind Regards, <br /><br /><br />(This is an automated email, so please don\'t reply to this email address)</td>\n                             </tr>\n                           </table>\n                         </td>\n                       </tr>\n                       <!-- END MAIN CONTENT AREA -->\n                     </table>\n                     <!-- START FOOTER -->\n                     <div class="footer">\n                      <table border="0" cellpadding="0" cellspacing="0">\n                        <tr>\n                          <td class="content-block">\n                            <span>CLAUDINEI PALADINI</span>\n                          </td>\n                        </tr>\n                      </table>\n                    </div>\n                    <!-- END FOOTER -->\n                    <!-- END CENTERED WHITE CONTAINER -->\n                  </div>\n                </td>\n                <td>&nbsp;</td>\n              </tr>\n            </table>\n            </body>\n            </html>', 'Dear Claudinei Paladini\r\n\r\nThank you for registering on the CLAUDINEI PALADINI CRM System.\r\n\r\nWe just wanted to say welcome.\r\n\r\nPlease contact us if you need any help.\r\n\r\nClick here to view your profile: https://www.paladiniadv.com.br/crm_mgal\r\n\r\nKind Regards, \r\n\r\n\r\n(This is an automated email, so please don\'t reply to this email address)\n\r\n                             \r\n                           \n\r\n                         \n\r\n                       \r\n                       \r\n                     \n\r\n                     \r\n                     \n\r\n                      \n\r\n                        \r\n                          \n\r\n                            CLAUDINEI PALADINI', 'pending', '2022-04-11 14:33:37', 'a:4:{s:4:"Date";s:31:"Mon, 11 Apr 2022 14:33:37 -0300";s:4:"from";s:28:"claudinei@paladiniadv.com.br";s:8:"fromName";s:24:"CLAUDINEI PALADINI | CRM";s:7:"subject";s:14:"Welcome aboard";}', 'YTowOnt9'),
	(2, 'phpmailer', 'maury.oliveira@grupomoliver.com.br', '', '', '<!doctype html>\n                            <html>\n                            <head>\n                              <meta name="viewport" content="width=device-width" />\n                              <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />\n                              <style>\n                                body {\n                                 background-color: #f6f6f6;\n                                 font-family: sans-serif;\n                                 -webkit-font-smoothing: antialiased;\n                                 font-size: 14px;\n                                 line-height: 1.4;\n                                 margin: 0;\n                                 padding: 0;\n                                 -ms-text-size-adjust: 100%;\n                                 -webkit-text-size-adjust: 100%;\n                               }\n                               table {\n                                 border-collapse: separate;\n                                 mso-table-lspace: 0pt;\n                                 mso-table-rspace: 0pt;\n                                 width: 100%;\n                               }\n                               table td {\n                                 font-family: sans-serif;\n                                 font-size: 14px;\n                                 vertical-align: top;\n                               }\n                                   /* -------------------------------------\n                                     BODY & CONTAINER\n                                     ------------------------------------- */\n                                     .body {\n                                       background-color: #f6f6f6;\n                                       width: 100%;\n                                     }\n                                     /* Set a max-width, and make it display as block so it will automatically stretch to that width, but will also shrink down on a phone or something */\n\n                                     .container {\n                                       display: block;\n                                       margin: 0 auto !important;\n                                       /* makes it centered */\n                                       max-width: 680px;\n                                       padding: 10px;\n                                       width: 680px;\n                                     }\n                                     /* This should also be a block element, so that it will fill 100% of the .container */\n\n                                     .content {\n                                       box-sizing: border-box;\n                                       display: block;\n                                       margin: 0 auto;\n                                       max-width: 680px;\n                                       padding: 10px;\n                                     }\n                                   /* -------------------------------------\n                                     HEADER, FOOTER, MAIN\n                                     ------------------------------------- */\n\n                                     .main {\n                                       background: #fff;\n                                       border-radius: 3px;\n                                       width: 100%;\n                                     }\n                                     .wrapper {\n                                       box-sizing: border-box;\n                                       padding: 20px;\n                                     }\n                                     .footer {\n                                       clear: both;\n                                       padding-top: 10px;\n                                       text-align: center;\n                                       width: 100%;\n                                     }\n                                     .footer td,\n                                     .footer p,\n                                     .footer span,\n                                     .footer a {\n                                       color: #999999;\n                                       font-size: 12px;\n                                       text-align: center;\n                                     }\n                                     hr {\n                                       border: 0;\n                                       border-bottom: 1px solid #f6f6f6;\n                                       margin: 20px 0;\n                                     }\n                                   /* -------------------------------------\n                                     RESPONSIVE AND MOBILE FRIENDLY STYLES\n                                     ------------------------------------- */\n\n                                     @media only screen and (max-width: 620px) {\n                                       table[class=body] .content {\n                                         padding: 0 !important;\n                                       }\n                                       table[class=body] .container {\n                                         padding: 0 !important;\n                                         width: 100% !important;\n                                       }\n                                       table[class=body] .main {\n                                         border-left-width: 0 !important;\n                                         border-radius: 0 !important;\n                                         border-right-width: 0 !important;\n                                       }\n                                     }\n                                   </style>\n                                 </head>\n                                 <body class="">\n                                  <table border="0" cellpadding="0" cellspacing="0" class="body">\n                                    <tr>\n                                     <td>&nbsp;</td>\n                                     <td class="container">\n                                      <div class="content">\n                                        <!-- START CENTERED WHITE CONTAINER -->\n                                        <table class="main">\n                                          <!-- START MAIN CONTENT AREA -->\n                                          <tr>\n                                           <td class="wrapper">\n                                            <table border="0" cellpadding="0" cellspacing="0">\n                                              <tr>\n                                               <td>Hi SPLIT<br /><br />You are added as member on our CRM.<br /><br />Please use the following logic credentials:<br /><br /><strong>Email:</strong> <a href="mailto:maury.oliveira@grupomoliver.com.br">maury.oliveira@grupomoliver.com.br</a><br /><strong>Password:</strong> 123456<br /><br />Click <a href="https://www.paladiniadv.com.br/crm_paladini/admin/">here </a>to login in the dashboard.<br /><br />Best Regards,<br /></td>\n                             </tr>\n                           </table>\n                         </td>\n                       </tr>\n                       <!-- END MAIN CONTENT AREA -->\n                     </table>\n                     <!-- START FOOTER -->\n                     <div class="footer">\n                      <table border="0" cellpadding="0" cellspacing="0">\n                        <tr>\n                          <td class="content-block">\n                            <span>CLAUDINEI PALADINI ADVOCACIA & ASSESSORIA JURÍDICA</span>\n                          </td>\n                        </tr>\n                      </table>\n                    </div>\n                    <!-- END FOOTER -->\n                    <!-- END CENTERED WHITE CONTAINER -->\n                  </div>\n                </td>\n                <td>&nbsp;</td>\n              </tr>\n            </table>\n            </body>\n            </html>', 'Hi SPLIT\r\n\r\nYou are added as member on our CRM.\r\n\r\nPlease use the following logic credentials:\r\n\r\nEmail: maury.oliveira@grupomoliver.com.br\r\nPassword: 123456\r\n\r\nClick here to login in the dashboard.\r\n\r\nBest Regards,\r\n\n\r\n                             \r\n                           \n\r\n                         \n\r\n                       \r\n                       \r\n                     \n\r\n                     \r\n                     \n\r\n                      \n\r\n                        \r\n                          \n\r\n                            CLAUDINEI PALADINI ADVOCACIA & ASSESSORIA JURÍDICA', 'pending', '2022-04-14 11:28:01', 'a:4:{s:4:"Date";s:31:"Thu, 14 Apr 2022 11:28:01 -0300";s:4:"from";s:28:"claudinei@paladiniadv.com.br";s:8:"fromName";s:57:"CLAUDINEI PALADINI ADVOCACIA & ASSESSORIA JURÍDICA | CRM";s:7:"subject";s:29:"You are added as staff member";}', 'YTowOnt9'),
	(3, 'phpmailer', 'atendimento@paladiniadv.com.br', '', '', '<!doctype html>\n                            <html>\n                            <head>\n                              <meta name="viewport" content="width=device-width" />\n                              <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />\n                              <style>\n                                body {\n                                 background-color: #f6f6f6;\n                                 font-family: sans-serif;\n                                 -webkit-font-smoothing: antialiased;\n                                 font-size: 14px;\n                                 line-height: 1.4;\n                                 margin: 0;\n                                 padding: 0;\n                                 -ms-text-size-adjust: 100%;\n                                 -webkit-text-size-adjust: 100%;\n                               }\n                               table {\n                                 border-collapse: separate;\n                                 mso-table-lspace: 0pt;\n                                 mso-table-rspace: 0pt;\n                                 width: 100%;\n                               }\n                               table td {\n                                 font-family: sans-serif;\n                                 font-size: 14px;\n                                 vertical-align: top;\n                               }\n                                   /* -------------------------------------\n                                     BODY & CONTAINER\n                                     ------------------------------------- */\n                                     .body {\n                                       background-color: #f6f6f6;\n                                       width: 100%;\n                                     }\n                                     /* Set a max-width, and make it display as block so it will automatically stretch to that width, but will also shrink down on a phone or something */\n\n                                     .container {\n                                       display: block;\n                                       margin: 0 auto !important;\n                                       /* makes it centered */\n                                       max-width: 680px;\n                                       padding: 10px;\n                                       width: 680px;\n                                     }\n                                     /* This should also be a block element, so that it will fill 100% of the .container */\n\n                                     .content {\n                                       box-sizing: border-box;\n                                       display: block;\n                                       margin: 0 auto;\n                                       max-width: 680px;\n                                       padding: 10px;\n                                     }\n                                   /* -------------------------------------\n                                     HEADER, FOOTER, MAIN\n                                     ------------------------------------- */\n\n                                     .main {\n                                       background: #fff;\n                                       border-radius: 3px;\n                                       width: 100%;\n                                     }\n                                     .wrapper {\n                                       box-sizing: border-box;\n                                       padding: 20px;\n                                     }\n                                     .footer {\n                                       clear: both;\n                                       padding-top: 10px;\n                                       text-align: center;\n                                       width: 100%;\n                                     }\n                                     .footer td,\n                                     .footer p,\n                                     .footer span,\n                                     .footer a {\n                                       color: #999999;\n                                       font-size: 12px;\n                                       text-align: center;\n                                     }\n                                     hr {\n                                       border: 0;\n                                       border-bottom: 1px solid #f6f6f6;\n                                       margin: 20px 0;\n                                     }\n                                   /* -------------------------------------\n                                     RESPONSIVE AND MOBILE FRIENDLY STYLES\n                                     ------------------------------------- */\n\n                                     @media only screen and (max-width: 620px) {\n                                       table[class=body] .content {\n                                         padding: 0 !important;\n                                       }\n                                       table[class=body] .container {\n                                         padding: 0 !important;\n                                         width: 100% !important;\n                                       }\n                                       table[class=body] .main {\n                                         border-left-width: 0 !important;\n                                         border-radius: 0 !important;\n                                         border-right-width: 0 !important;\n                                       }\n                                     }\n                                   </style>\n                                 </head>\n                                 <body class="">\n                                  <table border="0" cellpadding="0" cellspacing="0" class="body">\n                                    <tr>\n                                     <td>&nbsp;</td>\n                                     <td class="container">\n                                      <div class="content">\n                                        <!-- START CENTERED WHITE CONTAINER -->\n                                        <table class="main">\n                                          <!-- START MAIN CONTENT AREA -->\n                                          <tr>\n                                           <td class="wrapper">\n                                            <table border="0" cellpadding="0" cellspacing="0">\n                                              <tr>\n                                               <td>Hi SPLIT - <br /><br />You are added as member on our CRM.<br /><br />Please use the following logic credentials:<br /><br /><strong>Email:</strong> <a href="mailto:atendimento@paladiniadv.com.br">atendimento@paladiniadv.com.br</a><br /><strong>Password:</strong> 123456<br /><br />Click <a href="https://www.paladiniadv.com.br/crm_paladini/admin/">here </a>to login in the dashboard.<br /><br />Best Regards,<br /></td>\n                             </tr>\n                           </table>\n                         </td>\n                       </tr>\n                       <!-- END MAIN CONTENT AREA -->\n                     </table>\n                     <!-- START FOOTER -->\n                     <div class="footer">\n                      <table border="0" cellpadding="0" cellspacing="0">\n                        <tr>\n                          <td class="content-block">\n                            <span>CLAUDINEI PALADINI ADVOCACIA & ASSESSORIA JURÍDICA</span>\n                          </td>\n                        </tr>\n                      </table>\n                    </div>\n                    <!-- END FOOTER -->\n                    <!-- END CENTERED WHITE CONTAINER -->\n                  </div>\n                </td>\n                <td>&nbsp;</td>\n              </tr>\n            </table>\n            </body>\n            </html>', 'Hi SPLIT - \r\n\r\nYou are added as member on our CRM.\r\n\r\nPlease use the following logic credentials:\r\n\r\nEmail: atendimento@paladiniadv.com.br\r\nPassword: 123456\r\n\r\nClick here to login in the dashboard.\r\n\r\nBest Regards,\r\n\n\r\n                             \r\n                           \n\r\n                         \n\r\n                       \r\n                       \r\n                     \n\r\n                     \r\n                     \n\r\n                      \n\r\n                        \r\n                          \n\r\n                            CLAUDINEI PALADINI ADVOCACIA & ASSESSORIA JURÍDICA', 'pending', '2022-04-14 11:44:15', 'a:4:{s:4:"Date";s:31:"Thu, 14 Apr 2022 11:44:15 -0300";s:4:"from";s:28:"claudinei@paladiniadv.com.br";s:8:"fromName";s:57:"CLAUDINEI PALADINI ADVOCACIA & ASSESSORIA JURÍDICA | CRM";s:7:"subject";s:29:"You are added as staff member";}', 'YTowOnt9');
/*!40000 ALTER TABLE `tblmail_queue` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblmanage_leave
CREATE TABLE IF NOT EXISTS `tblmanage_leave` (
  `leave_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_staff` int(11) NOT NULL,
  `leave_date` int(11) DEFAULT NULL,
  `leave_year` int(11) DEFAULT NULL,
  `accumulated_leave` int(11) DEFAULT NULL,
  `seniority_leave` int(11) DEFAULT NULL,
  `borrow_leave` int(11) DEFAULT NULL,
  `actual_leave` int(11) DEFAULT NULL,
  `expected_leave` int(11) DEFAULT NULL,
  PRIMARY KEY (`leave_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblmanage_leave: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblmanage_leave` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblmanage_leave` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblmigrations
CREATE TABLE IF NOT EXISTS `tblmigrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblmigrations: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblmigrations` DISABLE KEYS */;
INSERT INTO `tblmigrations` (`version`) VALUES
	(293);
/*!40000 ALTER TABLE `tblmigrations` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblmilestones
CREATE TABLE IF NOT EXISTS `tblmilestones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `description` text,
  `description_visible_to_customer` tinyint(1) DEFAULT '0',
  `start_date` date DEFAULT NULL,
  `due_date` date NOT NULL,
  `project_id` int(11) NOT NULL,
  `color` varchar(10) DEFAULT NULL,
  `milestone_order` int(11) NOT NULL DEFAULT '0',
  `datecreated` date NOT NULL,
  `hide_from_customer` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblmilestones: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblmilestones` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblmilestones` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblmodules
CREATE TABLE IF NOT EXISTS `tblmodules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_name` varchar(55) NOT NULL,
  `installed_version` varchar(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblmodules: ~13 rows (aproximadamente)
/*!40000 ALTER TABLE `tblmodules` DISABLE KEYS */;
INSERT INTO `tblmodules` (`id`, `module_name`, `installed_version`, `active`) VALUES
	(2, 'backup', '2.3.0', 1),
	(3, 'menu_setup', '2.3.0', 1),
	(4, 'surveys', '2.3.0', 1),
	(5, 'theme_style', '2.3.0', 1),
	(6, 'commission', '1.0.7', 1),
	(7, 'gerencianet_gateway', '1.0.0', 1),
	(8, 'prchat', '1.4.6', 1),
	(9, 'ultimate_purple_theme', '2.2.0', 0),
	(10, 'ultimate_dark_theme', '2.2.0', 0),
	(11, 'perfex_office_theme', '1.2.3', 1),
	(12, 'social_media_login', '1.0.0', 1),
	(13, 'goals', '2.3.0', 1),
	(14, 'custom_email_and_sms_notifications', '2.3.2', 0),
	(15, 'bills', '2.3.0', 1),
	(16, 'hrm', '2.3.0', 1),
	(17, 'sendin', '2.1.2', 1),
	(18, 'recruitment', '1.0.0', 0),
	(20, 'multi_page_wtl', '1.0.3', 1),
	(21, 'purchase', '1.0.9', 1),
	(22, 'warehouse', '1.0.0', 0),
	(23, 'accounting', '1.0.8', 1),
	(24, 'file_sharing', '1.0.6', 1);
/*!40000 ALTER TABLE `tblmodules` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblnewsfeed_comment_likes
CREATE TABLE IF NOT EXISTS `tblnewsfeed_comment_likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `postid` int(11) NOT NULL,
  `commentid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `dateliked` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblnewsfeed_comment_likes: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblnewsfeed_comment_likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblnewsfeed_comment_likes` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblnewsfeed_posts
CREATE TABLE IF NOT EXISTS `tblnewsfeed_posts` (
  `postid` int(11) NOT NULL AUTO_INCREMENT,
  `creator` int(11) NOT NULL,
  `datecreated` datetime NOT NULL,
  `visibility` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `pinned` int(11) NOT NULL,
  `datepinned` datetime DEFAULT NULL,
  PRIMARY KEY (`postid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblnewsfeed_posts: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblnewsfeed_posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblnewsfeed_posts` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblnewsfeed_post_comments
CREATE TABLE IF NOT EXISTS `tblnewsfeed_post_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text,
  `userid` int(11) NOT NULL,
  `postid` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblnewsfeed_post_comments: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblnewsfeed_post_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblnewsfeed_post_comments` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblnewsfeed_post_likes
CREATE TABLE IF NOT EXISTS `tblnewsfeed_post_likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `postid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `dateliked` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblnewsfeed_post_likes: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblnewsfeed_post_likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblnewsfeed_post_likes` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblnotes
CREATE TABLE IF NOT EXISTS `tblnotes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) NOT NULL,
  `description` text,
  `date_contacted` datetime DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rel_id` (`rel_id`),
  KEY `rel_type` (`rel_type`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblnotes: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblnotes` DISABLE KEYS */;
INSERT INTO `tblnotes` (`id`, `rel_id`, `rel_type`, `description`, `date_contacted`, `addedfrom`, `dateadded`) VALUES
	(1, 1, 'customer', 'teste', NULL, 1, '2022-04-11 11:11:38');
/*!40000 ALTER TABLE `tblnotes` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblnotifications
CREATE TABLE IF NOT EXISTS `tblnotifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isread` int(11) NOT NULL DEFAULT '0',
  `isread_inline` tinyint(1) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL,
  `description` text NOT NULL,
  `fromuserid` int(11) NOT NULL,
  `fromclientid` int(11) NOT NULL DEFAULT '0',
  `from_fullname` varchar(100) NOT NULL,
  `touserid` int(11) NOT NULL,
  `fromcompany` int(11) DEFAULT NULL,
  `link` mediumtext,
  `additional_data` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblnotifications: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `tblnotifications` DISABLE KEYS */;
INSERT INTO `tblnotifications` (`id`, `isread`, `isread_inline`, `date`, `description`, `fromuserid`, `fromclientid`, `from_fullname`, `touserid`, `fromcompany`, `link`, `additional_data`) VALUES
	(1, 1, 1, '2022-04-11 12:55:34', 'not_new_reminder_for', 0, 0, '', 1, 1, 'invoices/list_invoices/4', 'a:1:{i:0;s:43:"INV-000002 - Teste de lembrete de fatura...";}'),
	(2, 1, 0, '2022-04-14 16:10:53', 'not_customer_viewed_invoice', 0, 1, 'Claudinei Paladini', 1, NULL, 'invoices/list_invoices/7', 'a:1:{i:0;s:10:"INV-000005";}'),
	(3, 1, 0, '2022-04-14 16:11:09', 'not_customer_viewed_invoice', 0, 1, 'Claudinei Paladini', 1, NULL, 'invoices/list_invoices/4', 'a:1:{i:0;s:10:"INV-000002";}');
/*!40000 ALTER TABLE `tblnotifications` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tbloptions
CREATE TABLE IF NOT EXISTS `tbloptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `value` longtext NOT NULL,
  `autoload` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=597 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tbloptions: ~577 rows (aproximadamente)
/*!40000 ALTER TABLE `tbloptions` DISABLE KEYS */;
INSERT INTO `tbloptions` (`id`, `name`, `value`, `autoload`) VALUES
	(1, 'dateformat', 'd/m/Y|%d/%m/%Y', 1),
	(2, 'companyname', 'CLAUDINEI PALADINI ADVOCACIA & ASSESSORIA JURÍDICA', 1),
	(3, 'services', '1', 1),
	(4, 'maximum_allowed_ticket_attachments', '4', 1),
	(5, 'ticket_attachments_file_extensions', '.jpg,.png,.pdf,.doc,.zip,.rar', 1),
	(6, 'staff_access_only_assigned_departments', '1', 1),
	(7, 'use_knowledge_base', '1', 1),
	(8, 'smtp_email', 'claudinei@paladiniadv.com.br', 1),
	(9, 'smtp_password', 'e6aecff9c55bb74e0e182d88de05c7ef325df9157f4d95778e1868193fe6c43419667d75e2069f75ef56ea498c7156f166102bd89170560821697eb7fc7dc2741zk4FKPJpVrPZ2OZHKx5AVigjJELcoCx7ZBnKXdckHY=', 1),
	(10, 'company_info_format', '{company_name}<br />\r\n{address}<br />\r\n{city} {state}<br />\r\n{country_code} {zip_code}<br />\r\n{vat_number_with_label}', 0),
	(11, 'smtp_port', '465', 1),
	(12, 'smtp_host', 'email-ssl.com.br', 1),
	(13, 'smtp_email_charset', 'utf-8', 1),
	(14, 'default_timezone', 'America/Sao_Paulo', 1),
	(15, 'clients_default_theme', 'perfex', 1),
	(16, 'company_logo', '', 1),
	(17, 'tables_pagination_limit', '25', 1),
	(18, 'main_domain', 'https://paladiniadv.com.br', 1),
	(19, 'allow_registration', '0', 1),
	(20, 'knowledge_base_without_registration', '1', 1),
	(21, 'email_signature', '', 1),
	(22, 'default_staff_role', '1', 1),
	(23, 'newsfeed_maximum_files_upload', '10', 1),
	(24, 'contract_expiration_before', '4', 1),
	(25, 'invoice_prefix', 'INV-', 1),
	(26, 'decimal_separator', '.', 1),
	(27, 'thousand_separator', ',', 1),
	(28, 'invoice_company_name', 'CLAUDINEI PALADINI ADVOCACIA & ASSESSORIA JURÍDICA', 1),
	(29, 'invoice_company_address', 'Rua Prefeito Paulo Frederico Alves Wildner – Universitário', 1),
	(30, 'invoice_company_city', 'Biguaçu', 1),
	(31, 'invoice_company_country_code', 'Brasil', 1),
	(32, 'invoice_company_postal_code', '88161-048', 1),
	(33, 'invoice_company_phonenumber', '48991321495', 1),
	(34, 'view_invoice_only_logged_in', '0', 1),
	(35, 'invoice_number_format', '1', 1),
	(36, 'next_invoice_number', '9', 0),
	(37, 'active_language', 'portuguese_br', 1),
	(38, 'invoice_number_decrement_on_delete', '1', 1),
	(39, 'automatically_send_invoice_overdue_reminder_after', '1', 1),
	(40, 'automatically_resend_invoice_overdue_reminder_after', '3', 1),
	(41, 'expenses_auto_operations_hour', '21', 1),
	(42, 'delete_only_on_last_invoice', '1', 1),
	(43, 'delete_only_on_last_estimate', '1', 1),
	(44, 'create_invoice_from_recurring_only_on_paid_invoices', '0', 1),
	(45, 'allow_payment_amount_to_be_modified', '0', 1),
	(46, 'rtl_support_client', '0', 1),
	(47, 'limit_top_search_bar_results_to', '10', 1),
	(48, 'estimate_prefix', 'EST-', 1),
	(49, 'next_estimate_number', '1', 0),
	(50, 'estimate_number_decrement_on_delete', '1', 1),
	(51, 'estimate_number_format', '1', 1),
	(52, 'estimate_auto_convert_to_invoice_on_client_accept', '1', 1),
	(53, 'exclude_estimate_from_client_area_with_draft_status', '1', 1),
	(54, 'rtl_support_admin', '0', 1),
	(55, 'last_cron_run', '1649697645', 1),
	(56, 'show_sale_agent_on_estimates', '1', 1),
	(57, 'show_sale_agent_on_invoices', '1', 1),
	(58, 'predefined_terms_invoice', '', 1),
	(59, 'predefined_terms_estimate', '', 1),
	(60, 'default_task_priority', '2', 1),
	(61, 'dropbox_app_key', '', 1),
	(62, 'show_expense_reminders_on_calendar', '1', 1),
	(63, 'only_show_contact_tickets', '1', 1),
	(64, 'predefined_clientnote_invoice', '', 1),
	(65, 'predefined_clientnote_estimate', '', 1),
	(66, 'custom_pdf_logo_image_url', '', 1),
	(67, 'favicon', '', 1),
	(68, 'invoice_due_after', '30', 1),
	(69, 'google_api_key', '', 1),
	(70, 'google_calendar_main_calendar', '', 1),
	(71, 'default_tax', 'a:0:{}', 1),
	(72, 'show_invoices_on_calendar', '1', 1),
	(73, 'show_estimates_on_calendar', '1', 1),
	(74, 'show_contracts_on_calendar', '1', 1),
	(75, 'show_tasks_on_calendar', '1', 1),
	(76, 'show_customer_reminders_on_calendar', '1', 1),
	(77, 'output_client_pdfs_from_admin_area_in_client_language', '0', 1),
	(78, 'show_lead_reminders_on_calendar', '1', 1),
	(79, 'send_estimate_expiry_reminder_before', '4', 1),
	(80, 'leads_default_source', '', 1),
	(81, 'leads_default_status', '', 1),
	(82, 'proposal_expiry_reminder_enabled', '1', 1),
	(83, 'send_proposal_expiry_reminder_before', '4', 1),
	(84, 'default_contact_permissions', 'a:6:{i:0;s:1:"1";i:1;s:1:"2";i:2;s:1:"3";i:3;s:1:"4";i:4;s:1:"5";i:5;s:1:"6";}', 1),
	(85, 'pdf_logo_width', '150', 1),
	(86, 'access_tickets_to_none_staff_members', '0', 1),
	(87, 'customer_default_country', '32', 1),
	(88, 'view_estimate_only_logged_in', '0', 1),
	(89, 'show_status_on_pdf_ei', '1', 1),
	(90, 'email_piping_only_replies', '0', 1),
	(91, 'email_piping_only_registered', '0', 1),
	(92, 'default_view_calendar', 'dayGridMonth', 1),
	(93, 'email_piping_default_priority', '2', 1),
	(94, 'total_to_words_lowercase', '0', 1),
	(95, 'show_tax_per_item', '1', 1),
	(96, 'total_to_words_enabled', '0', 1),
	(97, 'receive_notification_on_new_ticket', '1', 0),
	(98, 'autoclose_tickets_after', '0', 1),
	(99, 'media_max_file_size_upload', '10', 1),
	(100, 'client_staff_add_edit_delete_task_comments_first_hour', '0', 1),
	(101, 'show_projects_on_calendar', '1', 1),
	(102, 'leads_kanban_limit', '50', 1),
	(103, 'tasks_reminder_notification_before', '2', 1),
	(104, 'pdf_font', 'freesans', 1),
	(105, 'pdf_table_heading_color', '#323a45', 1),
	(106, 'pdf_table_heading_text_color', '#ffffff', 1),
	(107, 'pdf_font_size', '10', 1),
	(108, 'default_leads_kanban_sort', 'leadorder', 1),
	(109, 'default_leads_kanban_sort_type', 'asc', 1),
	(110, 'allowed_files', '.png,.jpg,.pdf,.doc,.docx,.xls,.xlsx,.zip,.rar,.txt', 1),
	(111, 'show_all_tasks_for_project_member', '1', 1),
	(112, 'email_protocol', 'smtp', 1),
	(113, 'calendar_first_day', '0', 1),
	(114, 'recaptcha_secret_key', '', 1),
	(115, 'show_help_on_setup_menu', '1', 1),
	(116, 'show_proposals_on_calendar', '1', 1),
	(117, 'smtp_encryption', 'ssl', 1),
	(118, 'recaptcha_site_key', '', 1),
	(119, 'smtp_username', 'claudinei@paladiniadv.com.br', 1),
	(120, 'auto_stop_tasks_timers_on_new_timer', '1', 1),
	(121, 'notification_when_customer_pay_invoice', '1', 1),
	(122, 'calendar_invoice_color', '#FF6F00', 1),
	(123, 'calendar_estimate_color', '#FF6F00', 1),
	(124, 'calendar_proposal_color', '#84c529', 1),
	(125, 'new_task_auto_assign_current_member', '1', 1),
	(126, 'calendar_reminder_color', '#03A9F4', 1),
	(127, 'calendar_contract_color', '#B72974', 1),
	(128, 'calendar_project_color', '#B72974', 1),
	(129, 'update_info_message', '', 1),
	(130, 'show_estimate_reminders_on_calendar', '1', 1),
	(131, 'show_invoice_reminders_on_calendar', '1', 1),
	(132, 'show_proposal_reminders_on_calendar', '1', 1),
	(133, 'proposal_due_after', '7', 1),
	(134, 'allow_customer_to_change_ticket_status', '0', 1),
	(135, 'lead_lock_after_convert_to_customer', '0', 1),
	(136, 'default_proposals_pipeline_sort', 'pipeline_order', 1),
	(137, 'default_proposals_pipeline_sort_type', 'asc', 1),
	(138, 'default_estimates_pipeline_sort', 'pipeline_order', 1),
	(139, 'default_estimates_pipeline_sort_type', 'asc', 1),
	(140, 'use_recaptcha_customers_area', '0', 1),
	(141, 'remove_decimals_on_zero', '0', 1),
	(142, 'remove_tax_name_from_item_table', '0', 1),
	(143, 'pdf_format_invoice', 'A4-PORTRAIT', 1),
	(144, 'pdf_format_estimate', 'A4-PORTRAIT', 1),
	(145, 'pdf_format_proposal', 'A4-PORTRAIT', 1),
	(146, 'pdf_format_payment', 'A4-PORTRAIT', 1),
	(147, 'pdf_format_contract', 'A4-PORTRAIT', 1),
	(148, 'swap_pdf_info', '0', 1),
	(149, 'exclude_invoice_from_client_area_with_draft_status', '1', 1),
	(150, 'cron_has_run_from_cli', '0', 1),
	(151, 'hide_cron_is_required_message', '1', 0),
	(152, 'auto_assign_customer_admin_after_lead_convert', '1', 1),
	(153, 'show_transactions_on_invoice_pdf', '1', 1),
	(154, 'show_pay_link_to_invoice_pdf', '1', 1),
	(155, 'tasks_kanban_limit', '50', 1),
	(156, 'purchase_key', '', 1),
	(157, 'estimates_pipeline_limit', '50', 1),
	(158, 'proposals_pipeline_limit', '50', 1),
	(159, 'proposal_number_prefix', 'PRO-', 1),
	(160, 'number_padding_prefixes', '6', 1),
	(161, 'show_page_number_on_pdf', '0', 1),
	(162, 'calendar_events_limit', '4', 1),
	(163, 'show_setup_menu_item_only_on_hover', '0', 1),
	(164, 'company_requires_vat_number_field', '1', 1),
	(165, 'company_is_required', '1', 1),
	(166, 'allow_contact_to_delete_files', '0', 1),
	(167, 'company_vat', '02098992980', 1),
	(168, 'di', '1649512025', 1),
	(169, 'invoice_auto_operations_hour', '21', 1),
	(170, 'use_minified_files', '1', 1),
	(171, 'only_own_files_contacts', '0', 1),
	(172, 'allow_primary_contact_to_view_edit_billing_and_shipping', '0', 1),
	(173, 'estimate_due_after', '7', 1),
	(174, 'staff_members_open_tickets_to_all_contacts', '1', 1),
	(175, 'time_format', '24', 1),
	(176, 'delete_activity_log_older_then', '1', 1),
	(177, 'disable_language', '0', 1),
	(178, 'company_state', 'SC', 1),
	(179, 'email_header', '<!doctype html>\r\n                            <html>\r\n                            <head>\r\n                              <meta name="viewport" content="width=device-width" />\r\n                              <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />\r\n                              <style>\r\n                                body {\r\n                                 background-color: #f6f6f6;\r\n                                 font-family: sans-serif;\r\n                                 -webkit-font-smoothing: antialiased;\r\n                                 font-size: 14px;\r\n                                 line-height: 1.4;\r\n                                 margin: 0;\r\n                                 padding: 0;\r\n                                 -ms-text-size-adjust: 100%;\r\n                                 -webkit-text-size-adjust: 100%;\r\n                               }\r\n                               table {\r\n                                 border-collapse: separate;\r\n                                 mso-table-lspace: 0pt;\r\n                                 mso-table-rspace: 0pt;\r\n                                 width: 100%;\r\n                               }\r\n                               table td {\r\n                                 font-family: sans-serif;\r\n                                 font-size: 14px;\r\n                                 vertical-align: top;\r\n                               }\r\n                                   /* -------------------------------------\r\n                                     BODY & CONTAINER\r\n                                     ------------------------------------- */\r\n                                     .body {\r\n                                       background-color: #f6f6f6;\r\n                                       width: 100%;\r\n                                     }\r\n                                     /* Set a max-width, and make it display as block so it will automatically stretch to that width, but will also shrink down on a phone or something */\r\n\r\n                                     .container {\r\n                                       display: block;\r\n                                       margin: 0 auto !important;\r\n                                       /* makes it centered */\r\n                                       max-width: 680px;\r\n                                       padding: 10px;\r\n                                       width: 680px;\r\n                                     }\r\n                                     /* This should also be a block element, so that it will fill 100% of the .container */\r\n\r\n                                     .content {\r\n                                       box-sizing: border-box;\r\n                                       display: block;\r\n                                       margin: 0 auto;\r\n                                       max-width: 680px;\r\n                                       padding: 10px;\r\n                                     }\r\n                                   /* -------------------------------------\r\n                                     HEADER, FOOTER, MAIN\r\n                                     ------------------------------------- */\r\n\r\n                                     .main {\r\n                                       background: #fff;\r\n                                       border-radius: 3px;\r\n                                       width: 100%;\r\n                                     }\r\n                                     .wrapper {\r\n                                       box-sizing: border-box;\r\n                                       padding: 20px;\r\n                                     }\r\n                                     .footer {\r\n                                       clear: both;\r\n                                       padding-top: 10px;\r\n                                       text-align: center;\r\n                                       width: 100%;\r\n                                     }\r\n                                     .footer td,\r\n                                     .footer p,\r\n                                     .footer span,\r\n                                     .footer a {\r\n                                       color: #999999;\r\n                                       font-size: 12px;\r\n                                       text-align: center;\r\n                                     }\r\n                                     hr {\r\n                                       border: 0;\r\n                                       border-bottom: 1px solid #f6f6f6;\r\n                                       margin: 20px 0;\r\n                                     }\r\n                                   /* -------------------------------------\r\n                                     RESPONSIVE AND MOBILE FRIENDLY STYLES\r\n                                     ------------------------------------- */\r\n\r\n                                     @media only screen and (max-width: 620px) {\r\n                                       table[class=body] .content {\r\n                                         padding: 0 !important;\r\n                                       }\r\n                                       table[class=body] .container {\r\n                                         padding: 0 !important;\r\n                                         width: 100% !important;\r\n                                       }\r\n                                       table[class=body] .main {\r\n                                         border-left-width: 0 !important;\r\n                                         border-radius: 0 !important;\r\n                                         border-right-width: 0 !important;\r\n                                       }\r\n                                     }\r\n                                   </style>\r\n                                 </head>\r\n                                 <body class="">\r\n                                  <table border="0" cellpadding="0" cellspacing="0" class="body">\r\n                                    <tr>\r\n                                     <td>&nbsp;</td>\r\n                                     <td class="container">\r\n                                      <div class="content">\r\n                                        <!-- START CENTERED WHITE CONTAINER -->\r\n                                        <table class="main">\r\n                                          <!-- START MAIN CONTENT AREA -->\r\n                                          <tr>\r\n                                           <td class="wrapper">\r\n                                            <table border="0" cellpadding="0" cellspacing="0">\r\n                                              <tr>\r\n                                               <td>', 1),
	(180, 'show_pdf_signature_invoice', '1', 0),
	(181, 'show_pdf_signature_estimate', '1', 0),
	(182, 'signature_image', '', 0),
	(183, 'email_footer', '</td>\r\n                             </tr>\r\n                           </table>\r\n                         </td>\r\n                       </tr>\r\n                       <!-- END MAIN CONTENT AREA -->\r\n                     </table>\r\n                     <!-- START FOOTER -->\r\n                     <div class="footer">\r\n                      <table border="0" cellpadding="0" cellspacing="0">\r\n                        <tr>\r\n                          <td class="content-block">\r\n                            <span>{companyname}</span>\r\n                          </td>\r\n                        </tr>\r\n                      </table>\r\n                    </div>\r\n                    <!-- END FOOTER -->\r\n                    <!-- END CENTERED WHITE CONTAINER -->\r\n                  </div>\r\n                </td>\r\n                <td>&nbsp;</td>\r\n              </tr>\r\n            </table>\r\n            </body>\r\n            </html>', 1),
	(184, 'exclude_proposal_from_client_area_with_draft_status', '1', 1),
	(185, 'pusher_app_key', '1dd9899477661394a2ce', 1),
	(186, 'pusher_app_secret', '00ce26c58e991cee224d', 1),
	(187, 'pusher_app_id', '1384672', 1),
	(188, 'pusher_realtime_notifications', '1', 1),
	(189, 'pdf_format_statement', 'A4-PORTRAIT', 1),
	(190, 'pusher_cluster', 'sa1', 1),
	(191, 'show_table_export_button', 'to_all', 1),
	(192, 'allow_staff_view_proposals_assigned', '1', 1),
	(193, 'show_cloudflare_notice', '1', 0),
	(194, 'task_modal_class', 'modal-lg', 1),
	(195, 'lead_modal_class', 'modal-lg', 1),
	(196, 'show_timesheets_overview_all_members_notice_admins', '1', 0),
	(197, 'desktop_notifications', '1', 1),
	(198, 'hide_notified_reminders_from_calendar', '1', 0),
	(199, 'customer_info_format', '{company_name}<br />\r\n{street}<br />\r\n{city} {state}<br />\r\n{country_code} {zip_code}<br />\r\n{vat_number_with_label}', 0),
	(200, 'timer_started_change_status_in_progress', '1', 0),
	(201, 'default_ticket_reply_status', '3', 1),
	(202, 'default_task_status', 'auto', 1),
	(203, 'email_queue_skip_with_attachments', '1', 1),
	(204, 'email_queue_enabled', '1', 1),
	(205, 'last_email_queue_retry', '1649697646', 1),
	(206, 'auto_dismiss_desktop_notifications_after', '0', 1),
	(207, 'proposal_info_format', '{proposal_to}<br />\r\n{address}<br />\r\n{city} {state}<br />\r\n{country_code} {zip_code}<br />\r\n{phone}<br />\r\n{email}', 0),
	(208, 'ticket_replies_order', 'asc', 1),
	(209, 'new_recurring_invoice_action', 'generate_and_send', 0),
	(210, 'bcc_emails', '', 0),
	(211, 'email_templates_language_checks', 'a:2024:{s:29:"new-client-created-vietnamese";i:1;s:33:"invoice-send-to-client-vietnamese";i:1;s:34:"new-ticket-opened-admin-vietnamese";i:1;s:23:"ticket-reply-vietnamese";i:1;s:30:"ticket-autoresponse-vietnamese";i:1;s:35:"invoice-payment-recorded-vietnamese";i:1;s:33:"invoice-overdue-notice-vietnamese";i:1;s:31:"invoice-already-send-vietnamese";i:1;s:35:"new-ticket-created-staff-vietnamese";i:1;s:34:"estimate-send-to-client-vietnamese";i:1;s:32:"ticket-reply-to-admin-vietnamese";i:1;s:32:"estimate-already-send-vietnamese";i:1;s:30:"contract-expiration-vietnamese";i:1;s:24:"task-assigned-vietnamese";i:1;s:33:"task-added-as-follower-vietnamese";i:1;s:25:"task-commented-vietnamese";i:1;s:32:"task-added-attachment-vietnamese";i:1;s:37:"estimate-declined-to-staff-vietnamese";i:1;s:37:"estimate-accepted-to-staff-vietnamese";i:1;s:35:"proposal-client-accepted-vietnamese";i:1;s:36:"proposal-send-to-customer-vietnamese";i:1;s:35:"proposal-client-declined-vietnamese";i:1;s:36:"proposal-client-thank-you-vietnamese";i:1;s:37:"proposal-comment-to-client-vietnamese";i:1;s:36:"proposal-comment-to-admin-vietnamese";i:1;s:41:"estimate-thank-you-to-customer-vietnamese";i:1;s:37:"task-deadline-notification-vietnamese";i:1;s:24:"send-contract-vietnamese";i:1;s:44:"invoice-payment-recorded-to-staff-vietnamese";i:1;s:28:"auto-close-ticket-vietnamese";i:1;s:50:"new-project-discussion-created-to-staff-vietnamese";i:1;s:53:"new-project-discussion-created-to-customer-vietnamese";i:1;s:48:"new-project-file-uploaded-to-customer-vietnamese";i:1;s:45:"new-project-file-uploaded-to-staff-vietnamese";i:1;s:53:"new-project-discussion-comment-to-customer-vietnamese";i:1;s:50:"new-project-discussion-comment-to-staff-vietnamese";i:1;s:40:"staff-added-as-project-member-vietnamese";i:1;s:35:"estimate-expiry-reminder-vietnamese";i:1;s:35:"proposal-expiry-reminder-vietnamese";i:1;s:28:"new-staff-created-vietnamese";i:1;s:34:"contact-forgot-password-vietnamese";i:1;s:35:"contact-password-reseted-vietnamese";i:1;s:31:"contact-set-password-vietnamese";i:1;s:32:"staff-forgot-password-vietnamese";i:1;s:33:"staff-password-reseted-vietnamese";i:1;s:30:"assigned-to-project-vietnamese";i:1;s:44:"task-added-attachment-to-contacts-vietnamese";i:1;s:37:"task-commented-to-contacts-vietnamese";i:1;s:28:"new-lead-assigned-vietnamese";i:1;s:27:"client-statement-vietnamese";i:1;s:35:"ticket-assigned-to-admin-vietnamese";i:1;s:41:"new-client-registered-to-admin-vietnamese";i:1;s:41:"new-web-to-lead-form-submitted-vietnamese";i:1;s:36:"two-factor-authentication-vietnamese";i:1;s:39:"project-finished-to-customer-vietnamese";i:1;s:37:"credit-note-send-to-client-vietnamese";i:1;s:38:"task-status-change-to-staff-vietnamese";i:1;s:41:"task-status-change-to-contacts-vietnamese";i:1;s:31:"reminder-email-staff-vietnamese";i:1;s:37:"contract-comment-to-client-vietnamese";i:1;s:36:"contract-comment-to-admin-vietnamese";i:1;s:28:"send-subscription-vietnamese";i:1;s:38:"subscription-payment-failed-vietnamese";i:1;s:32:"subscription-canceled-vietnamese";i:1;s:41:"subscription-payment-succeeded-vietnamese";i:1;s:39:"contract-expiration-to-staff-vietnamese";i:1;s:31:"gdpr-removal-request-vietnamese";i:1;s:36:"gdpr-removal-request-lead-vietnamese";i:1;s:40:"client-registration-confirmed-vietnamese";i:1;s:35:"contract-signed-to-staff-vietnamese";i:1;s:39:"customer-subscribed-to-staff-vietnamese";i:1;s:37:"contact-verification-email-vietnamese";i:1;s:54:"new-customer-profile-file-uploaded-to-staff-vietnamese";i:1;s:38:"event-notification-to-staff-vietnamese";i:1;s:47:"subscription-payment-requires-action-vietnamese";i:1;s:29:"invoice-due-notice-vietnamese";i:1;s:46:"estimate-request-submitted-to-staff-vietnamese";i:1;s:36:"estimate-request-assigned-vietnamese";i:1;s:44:"estimate-request-received-to-user-vietnamese";i:1;s:36:"non-billed-tasks-reminder-vietnamese";i:1;s:34:"invoices-batch-payments-vietnamese";i:1;s:24:"new-client-created-greek";i:1;s:28:"invoice-send-to-client-greek";i:1;s:29:"new-ticket-opened-admin-greek";i:1;s:18:"ticket-reply-greek";i:1;s:25:"ticket-autoresponse-greek";i:1;s:30:"invoice-payment-recorded-greek";i:1;s:28:"invoice-overdue-notice-greek";i:1;s:26:"invoice-already-send-greek";i:1;s:30:"new-ticket-created-staff-greek";i:1;s:29:"estimate-send-to-client-greek";i:1;s:27:"ticket-reply-to-admin-greek";i:1;s:27:"estimate-already-send-greek";i:1;s:25:"contract-expiration-greek";i:1;s:19:"task-assigned-greek";i:1;s:28:"task-added-as-follower-greek";i:1;s:20:"task-commented-greek";i:1;s:27:"task-added-attachment-greek";i:1;s:32:"estimate-declined-to-staff-greek";i:1;s:32:"estimate-accepted-to-staff-greek";i:1;s:30:"proposal-client-accepted-greek";i:1;s:31:"proposal-send-to-customer-greek";i:1;s:30:"proposal-client-declined-greek";i:1;s:31:"proposal-client-thank-you-greek";i:1;s:32:"proposal-comment-to-client-greek";i:1;s:31:"proposal-comment-to-admin-greek";i:1;s:36:"estimate-thank-you-to-customer-greek";i:1;s:32:"task-deadline-notification-greek";i:1;s:19:"send-contract-greek";i:1;s:39:"invoice-payment-recorded-to-staff-greek";i:1;s:23:"auto-close-ticket-greek";i:1;s:45:"new-project-discussion-created-to-staff-greek";i:1;s:48:"new-project-discussion-created-to-customer-greek";i:1;s:43:"new-project-file-uploaded-to-customer-greek";i:1;s:40:"new-project-file-uploaded-to-staff-greek";i:1;s:48:"new-project-discussion-comment-to-customer-greek";i:1;s:45:"new-project-discussion-comment-to-staff-greek";i:1;s:35:"staff-added-as-project-member-greek";i:1;s:30:"estimate-expiry-reminder-greek";i:1;s:30:"proposal-expiry-reminder-greek";i:1;s:23:"new-staff-created-greek";i:1;s:29:"contact-forgot-password-greek";i:1;s:30:"contact-password-reseted-greek";i:1;s:26:"contact-set-password-greek";i:1;s:27:"staff-forgot-password-greek";i:1;s:28:"staff-password-reseted-greek";i:1;s:25:"assigned-to-project-greek";i:1;s:39:"task-added-attachment-to-contacts-greek";i:1;s:32:"task-commented-to-contacts-greek";i:1;s:23:"new-lead-assigned-greek";i:1;s:22:"client-statement-greek";i:1;s:30:"ticket-assigned-to-admin-greek";i:1;s:36:"new-client-registered-to-admin-greek";i:1;s:36:"new-web-to-lead-form-submitted-greek";i:1;s:31:"two-factor-authentication-greek";i:1;s:34:"project-finished-to-customer-greek";i:1;s:32:"credit-note-send-to-client-greek";i:1;s:33:"task-status-change-to-staff-greek";i:1;s:36:"task-status-change-to-contacts-greek";i:1;s:26:"reminder-email-staff-greek";i:1;s:32:"contract-comment-to-client-greek";i:1;s:31:"contract-comment-to-admin-greek";i:1;s:23:"send-subscription-greek";i:1;s:33:"subscription-payment-failed-greek";i:1;s:27:"subscription-canceled-greek";i:1;s:36:"subscription-payment-succeeded-greek";i:1;s:34:"contract-expiration-to-staff-greek";i:1;s:26:"gdpr-removal-request-greek";i:1;s:31:"gdpr-removal-request-lead-greek";i:1;s:35:"client-registration-confirmed-greek";i:1;s:30:"contract-signed-to-staff-greek";i:1;s:34:"customer-subscribed-to-staff-greek";i:1;s:32:"contact-verification-email-greek";i:1;s:49:"new-customer-profile-file-uploaded-to-staff-greek";i:1;s:33:"event-notification-to-staff-greek";i:1;s:42:"subscription-payment-requires-action-greek";i:1;s:24:"invoice-due-notice-greek";i:1;s:41:"estimate-request-submitted-to-staff-greek";i:1;s:31:"estimate-request-assigned-greek";i:1;s:39:"estimate-request-received-to-user-greek";i:1;s:31:"non-billed-tasks-reminder-greek";i:1;s:29:"invoices-batch-payments-greek";i:1;s:26:"new-client-created-swedish";i:1;s:30:"invoice-send-to-client-swedish";i:1;s:31:"new-ticket-opened-admin-swedish";i:1;s:20:"ticket-reply-swedish";i:1;s:27:"ticket-autoresponse-swedish";i:1;s:32:"invoice-payment-recorded-swedish";i:1;s:30:"invoice-overdue-notice-swedish";i:1;s:28:"invoice-already-send-swedish";i:1;s:32:"new-ticket-created-staff-swedish";i:1;s:31:"estimate-send-to-client-swedish";i:1;s:29:"ticket-reply-to-admin-swedish";i:1;s:29:"estimate-already-send-swedish";i:1;s:27:"contract-expiration-swedish";i:1;s:21:"task-assigned-swedish";i:1;s:30:"task-added-as-follower-swedish";i:1;s:22:"task-commented-swedish";i:1;s:29:"task-added-attachment-swedish";i:1;s:34:"estimate-declined-to-staff-swedish";i:1;s:34:"estimate-accepted-to-staff-swedish";i:1;s:32:"proposal-client-accepted-swedish";i:1;s:33:"proposal-send-to-customer-swedish";i:1;s:32:"proposal-client-declined-swedish";i:1;s:33:"proposal-client-thank-you-swedish";i:1;s:34:"proposal-comment-to-client-swedish";i:1;s:33:"proposal-comment-to-admin-swedish";i:1;s:38:"estimate-thank-you-to-customer-swedish";i:1;s:34:"task-deadline-notification-swedish";i:1;s:21:"send-contract-swedish";i:1;s:41:"invoice-payment-recorded-to-staff-swedish";i:1;s:25:"auto-close-ticket-swedish";i:1;s:47:"new-project-discussion-created-to-staff-swedish";i:1;s:50:"new-project-discussion-created-to-customer-swedish";i:1;s:45:"new-project-file-uploaded-to-customer-swedish";i:1;s:42:"new-project-file-uploaded-to-staff-swedish";i:1;s:50:"new-project-discussion-comment-to-customer-swedish";i:1;s:47:"new-project-discussion-comment-to-staff-swedish";i:1;s:37:"staff-added-as-project-member-swedish";i:1;s:32:"estimate-expiry-reminder-swedish";i:1;s:32:"proposal-expiry-reminder-swedish";i:1;s:25:"new-staff-created-swedish";i:1;s:31:"contact-forgot-password-swedish";i:1;s:32:"contact-password-reseted-swedish";i:1;s:28:"contact-set-password-swedish";i:1;s:29:"staff-forgot-password-swedish";i:1;s:30:"staff-password-reseted-swedish";i:1;s:27:"assigned-to-project-swedish";i:1;s:41:"task-added-attachment-to-contacts-swedish";i:1;s:34:"task-commented-to-contacts-swedish";i:1;s:25:"new-lead-assigned-swedish";i:1;s:24:"client-statement-swedish";i:1;s:32:"ticket-assigned-to-admin-swedish";i:1;s:38:"new-client-registered-to-admin-swedish";i:1;s:38:"new-web-to-lead-form-submitted-swedish";i:1;s:33:"two-factor-authentication-swedish";i:1;s:36:"project-finished-to-customer-swedish";i:1;s:34:"credit-note-send-to-client-swedish";i:1;s:35:"task-status-change-to-staff-swedish";i:1;s:38:"task-status-change-to-contacts-swedish";i:1;s:28:"reminder-email-staff-swedish";i:1;s:34:"contract-comment-to-client-swedish";i:1;s:33:"contract-comment-to-admin-swedish";i:1;s:25:"send-subscription-swedish";i:1;s:35:"subscription-payment-failed-swedish";i:1;s:29:"subscription-canceled-swedish";i:1;s:38:"subscription-payment-succeeded-swedish";i:1;s:36:"contract-expiration-to-staff-swedish";i:1;s:28:"gdpr-removal-request-swedish";i:1;s:33:"gdpr-removal-request-lead-swedish";i:1;s:37:"client-registration-confirmed-swedish";i:1;s:32:"contract-signed-to-staff-swedish";i:1;s:36:"customer-subscribed-to-staff-swedish";i:1;s:34:"contact-verification-email-swedish";i:1;s:51:"new-customer-profile-file-uploaded-to-staff-swedish";i:1;s:35:"event-notification-to-staff-swedish";i:1;s:44:"subscription-payment-requires-action-swedish";i:1;s:26:"invoice-due-notice-swedish";i:1;s:43:"estimate-request-submitted-to-staff-swedish";i:1;s:33:"estimate-request-assigned-swedish";i:1;s:41:"estimate-request-received-to-user-swedish";i:1;s:33:"non-billed-tasks-reminder-swedish";i:1;s:31:"invoices-batch-payments-swedish";i:1;s:26:"new-client-created-russian";i:1;s:30:"invoice-send-to-client-russian";i:1;s:31:"new-ticket-opened-admin-russian";i:1;s:20:"ticket-reply-russian";i:1;s:27:"ticket-autoresponse-russian";i:1;s:32:"invoice-payment-recorded-russian";i:1;s:30:"invoice-overdue-notice-russian";i:1;s:28:"invoice-already-send-russian";i:1;s:32:"new-ticket-created-staff-russian";i:1;s:31:"estimate-send-to-client-russian";i:1;s:29:"ticket-reply-to-admin-russian";i:1;s:29:"estimate-already-send-russian";i:1;s:27:"contract-expiration-russian";i:1;s:21:"task-assigned-russian";i:1;s:30:"task-added-as-follower-russian";i:1;s:22:"task-commented-russian";i:1;s:29:"task-added-attachment-russian";i:1;s:34:"estimate-declined-to-staff-russian";i:1;s:34:"estimate-accepted-to-staff-russian";i:1;s:32:"proposal-client-accepted-russian";i:1;s:33:"proposal-send-to-customer-russian";i:1;s:32:"proposal-client-declined-russian";i:1;s:33:"proposal-client-thank-you-russian";i:1;s:34:"proposal-comment-to-client-russian";i:1;s:33:"proposal-comment-to-admin-russian";i:1;s:38:"estimate-thank-you-to-customer-russian";i:1;s:34:"task-deadline-notification-russian";i:1;s:21:"send-contract-russian";i:1;s:41:"invoice-payment-recorded-to-staff-russian";i:1;s:25:"auto-close-ticket-russian";i:1;s:47:"new-project-discussion-created-to-staff-russian";i:1;s:50:"new-project-discussion-created-to-customer-russian";i:1;s:45:"new-project-file-uploaded-to-customer-russian";i:1;s:42:"new-project-file-uploaded-to-staff-russian";i:1;s:50:"new-project-discussion-comment-to-customer-russian";i:1;s:47:"new-project-discussion-comment-to-staff-russian";i:1;s:37:"staff-added-as-project-member-russian";i:1;s:32:"estimate-expiry-reminder-russian";i:1;s:32:"proposal-expiry-reminder-russian";i:1;s:25:"new-staff-created-russian";i:1;s:31:"contact-forgot-password-russian";i:1;s:32:"contact-password-reseted-russian";i:1;s:28:"contact-set-password-russian";i:1;s:29:"staff-forgot-password-russian";i:1;s:30:"staff-password-reseted-russian";i:1;s:27:"assigned-to-project-russian";i:1;s:41:"task-added-attachment-to-contacts-russian";i:1;s:34:"task-commented-to-contacts-russian";i:1;s:25:"new-lead-assigned-russian";i:1;s:24:"client-statement-russian";i:1;s:32:"ticket-assigned-to-admin-russian";i:1;s:38:"new-client-registered-to-admin-russian";i:1;s:38:"new-web-to-lead-form-submitted-russian";i:1;s:33:"two-factor-authentication-russian";i:1;s:36:"project-finished-to-customer-russian";i:1;s:34:"credit-note-send-to-client-russian";i:1;s:35:"task-status-change-to-staff-russian";i:1;s:38:"task-status-change-to-contacts-russian";i:1;s:28:"reminder-email-staff-russian";i:1;s:34:"contract-comment-to-client-russian";i:1;s:33:"contract-comment-to-admin-russian";i:1;s:25:"send-subscription-russian";i:1;s:35:"subscription-payment-failed-russian";i:1;s:29:"subscription-canceled-russian";i:1;s:38:"subscription-payment-succeeded-russian";i:1;s:36:"contract-expiration-to-staff-russian";i:1;s:28:"gdpr-removal-request-russian";i:1;s:33:"gdpr-removal-request-lead-russian";i:1;s:37:"client-registration-confirmed-russian";i:1;s:32:"contract-signed-to-staff-russian";i:1;s:36:"customer-subscribed-to-staff-russian";i:1;s:34:"contact-verification-email-russian";i:1;s:51:"new-customer-profile-file-uploaded-to-staff-russian";i:1;s:35:"event-notification-to-staff-russian";i:1;s:44:"subscription-payment-requires-action-russian";i:1;s:26:"invoice-due-notice-russian";i:1;s:43:"estimate-request-submitted-to-staff-russian";i:1;s:33:"estimate-request-assigned-russian";i:1;s:41:"estimate-request-received-to-user-russian";i:1;s:33:"non-billed-tasks-reminder-russian";i:1;s:31:"invoices-batch-payments-russian";i:1;s:24:"new-client-created-dutch";i:1;s:28:"invoice-send-to-client-dutch";i:1;s:29:"new-ticket-opened-admin-dutch";i:1;s:18:"ticket-reply-dutch";i:1;s:25:"ticket-autoresponse-dutch";i:1;s:30:"invoice-payment-recorded-dutch";i:1;s:28:"invoice-overdue-notice-dutch";i:1;s:26:"invoice-already-send-dutch";i:1;s:30:"new-ticket-created-staff-dutch";i:1;s:29:"estimate-send-to-client-dutch";i:1;s:27:"ticket-reply-to-admin-dutch";i:1;s:27:"estimate-already-send-dutch";i:1;s:25:"contract-expiration-dutch";i:1;s:19:"task-assigned-dutch";i:1;s:28:"task-added-as-follower-dutch";i:1;s:20:"task-commented-dutch";i:1;s:27:"task-added-attachment-dutch";i:1;s:32:"estimate-declined-to-staff-dutch";i:1;s:32:"estimate-accepted-to-staff-dutch";i:1;s:30:"proposal-client-accepted-dutch";i:1;s:31:"proposal-send-to-customer-dutch";i:1;s:30:"proposal-client-declined-dutch";i:1;s:31:"proposal-client-thank-you-dutch";i:1;s:32:"proposal-comment-to-client-dutch";i:1;s:31:"proposal-comment-to-admin-dutch";i:1;s:36:"estimate-thank-you-to-customer-dutch";i:1;s:32:"task-deadline-notification-dutch";i:1;s:19:"send-contract-dutch";i:1;s:39:"invoice-payment-recorded-to-staff-dutch";i:1;s:23:"auto-close-ticket-dutch";i:1;s:45:"new-project-discussion-created-to-staff-dutch";i:1;s:48:"new-project-discussion-created-to-customer-dutch";i:1;s:43:"new-project-file-uploaded-to-customer-dutch";i:1;s:40:"new-project-file-uploaded-to-staff-dutch";i:1;s:48:"new-project-discussion-comment-to-customer-dutch";i:1;s:45:"new-project-discussion-comment-to-staff-dutch";i:1;s:35:"staff-added-as-project-member-dutch";i:1;s:30:"estimate-expiry-reminder-dutch";i:1;s:30:"proposal-expiry-reminder-dutch";i:1;s:23:"new-staff-created-dutch";i:1;s:29:"contact-forgot-password-dutch";i:1;s:30:"contact-password-reseted-dutch";i:1;s:26:"contact-set-password-dutch";i:1;s:27:"staff-forgot-password-dutch";i:1;s:28:"staff-password-reseted-dutch";i:1;s:25:"assigned-to-project-dutch";i:1;s:39:"task-added-attachment-to-contacts-dutch";i:1;s:32:"task-commented-to-contacts-dutch";i:1;s:23:"new-lead-assigned-dutch";i:1;s:22:"client-statement-dutch";i:1;s:30:"ticket-assigned-to-admin-dutch";i:1;s:36:"new-client-registered-to-admin-dutch";i:1;s:36:"new-web-to-lead-form-submitted-dutch";i:1;s:31:"two-factor-authentication-dutch";i:1;s:34:"project-finished-to-customer-dutch";i:1;s:32:"credit-note-send-to-client-dutch";i:1;s:33:"task-status-change-to-staff-dutch";i:1;s:36:"task-status-change-to-contacts-dutch";i:1;s:26:"reminder-email-staff-dutch";i:1;s:32:"contract-comment-to-client-dutch";i:1;s:31:"contract-comment-to-admin-dutch";i:1;s:23:"send-subscription-dutch";i:1;s:33:"subscription-payment-failed-dutch";i:1;s:27:"subscription-canceled-dutch";i:1;s:36:"subscription-payment-succeeded-dutch";i:1;s:34:"contract-expiration-to-staff-dutch";i:1;s:26:"gdpr-removal-request-dutch";i:1;s:31:"gdpr-removal-request-lead-dutch";i:1;s:35:"client-registration-confirmed-dutch";i:1;s:30:"contract-signed-to-staff-dutch";i:1;s:34:"customer-subscribed-to-staff-dutch";i:1;s:32:"contact-verification-email-dutch";i:1;s:49:"new-customer-profile-file-uploaded-to-staff-dutch";i:1;s:33:"event-notification-to-staff-dutch";i:1;s:42:"subscription-payment-requires-action-dutch";i:1;s:24:"invoice-due-notice-dutch";i:1;s:41:"estimate-request-submitted-to-staff-dutch";i:1;s:31:"estimate-request-assigned-dutch";i:1;s:39:"estimate-request-received-to-user-dutch";i:1;s:31:"non-billed-tasks-reminder-dutch";i:1;s:29:"invoices-batch-payments-dutch";i:1;s:24:"new-client-created-czech";i:1;s:28:"invoice-send-to-client-czech";i:1;s:29:"new-ticket-opened-admin-czech";i:1;s:18:"ticket-reply-czech";i:1;s:25:"ticket-autoresponse-czech";i:1;s:30:"invoice-payment-recorded-czech";i:1;s:28:"invoice-overdue-notice-czech";i:1;s:26:"invoice-already-send-czech";i:1;s:30:"new-ticket-created-staff-czech";i:1;s:29:"estimate-send-to-client-czech";i:1;s:27:"ticket-reply-to-admin-czech";i:1;s:27:"estimate-already-send-czech";i:1;s:25:"contract-expiration-czech";i:1;s:19:"task-assigned-czech";i:1;s:28:"task-added-as-follower-czech";i:1;s:20:"task-commented-czech";i:1;s:27:"task-added-attachment-czech";i:1;s:32:"estimate-declined-to-staff-czech";i:1;s:32:"estimate-accepted-to-staff-czech";i:1;s:30:"proposal-client-accepted-czech";i:1;s:31:"proposal-send-to-customer-czech";i:1;s:30:"proposal-client-declined-czech";i:1;s:31:"proposal-client-thank-you-czech";i:1;s:32:"proposal-comment-to-client-czech";i:1;s:31:"proposal-comment-to-admin-czech";i:1;s:36:"estimate-thank-you-to-customer-czech";i:1;s:32:"task-deadline-notification-czech";i:1;s:19:"send-contract-czech";i:1;s:39:"invoice-payment-recorded-to-staff-czech";i:1;s:23:"auto-close-ticket-czech";i:1;s:45:"new-project-discussion-created-to-staff-czech";i:1;s:48:"new-project-discussion-created-to-customer-czech";i:1;s:43:"new-project-file-uploaded-to-customer-czech";i:1;s:40:"new-project-file-uploaded-to-staff-czech";i:1;s:48:"new-project-discussion-comment-to-customer-czech";i:1;s:45:"new-project-discussion-comment-to-staff-czech";i:1;s:35:"staff-added-as-project-member-czech";i:1;s:30:"estimate-expiry-reminder-czech";i:1;s:30:"proposal-expiry-reminder-czech";i:1;s:23:"new-staff-created-czech";i:1;s:29:"contact-forgot-password-czech";i:1;s:30:"contact-password-reseted-czech";i:1;s:26:"contact-set-password-czech";i:1;s:27:"staff-forgot-password-czech";i:1;s:28:"staff-password-reseted-czech";i:1;s:25:"assigned-to-project-czech";i:1;s:39:"task-added-attachment-to-contacts-czech";i:1;s:32:"task-commented-to-contacts-czech";i:1;s:23:"new-lead-assigned-czech";i:1;s:22:"client-statement-czech";i:1;s:30:"ticket-assigned-to-admin-czech";i:1;s:36:"new-client-registered-to-admin-czech";i:1;s:36:"new-web-to-lead-form-submitted-czech";i:1;s:31:"two-factor-authentication-czech";i:1;s:34:"project-finished-to-customer-czech";i:1;s:32:"credit-note-send-to-client-czech";i:1;s:33:"task-status-change-to-staff-czech";i:1;s:36:"task-status-change-to-contacts-czech";i:1;s:26:"reminder-email-staff-czech";i:1;s:32:"contract-comment-to-client-czech";i:1;s:31:"contract-comment-to-admin-czech";i:1;s:23:"send-subscription-czech";i:1;s:33:"subscription-payment-failed-czech";i:1;s:27:"subscription-canceled-czech";i:1;s:36:"subscription-payment-succeeded-czech";i:1;s:34:"contract-expiration-to-staff-czech";i:1;s:26:"gdpr-removal-request-czech";i:1;s:31:"gdpr-removal-request-lead-czech";i:1;s:35:"client-registration-confirmed-czech";i:1;s:30:"contract-signed-to-staff-czech";i:1;s:34:"customer-subscribed-to-staff-czech";i:1;s:32:"contact-verification-email-czech";i:1;s:49:"new-customer-profile-file-uploaded-to-staff-czech";i:1;s:33:"event-notification-to-staff-czech";i:1;s:42:"subscription-payment-requires-action-czech";i:1;s:24:"invoice-due-notice-czech";i:1;s:41:"estimate-request-submitted-to-staff-czech";i:1;s:31:"estimate-request-assigned-czech";i:1;s:39:"estimate-request-received-to-user-czech";i:1;s:31:"non-billed-tasks-reminder-czech";i:1;s:29:"invoices-batch-payments-czech";i:1;s:28:"new-client-created-indonesia";i:1;s:32:"invoice-send-to-client-indonesia";i:1;s:33:"new-ticket-opened-admin-indonesia";i:1;s:22:"ticket-reply-indonesia";i:1;s:29:"ticket-autoresponse-indonesia";i:1;s:34:"invoice-payment-recorded-indonesia";i:1;s:32:"invoice-overdue-notice-indonesia";i:1;s:30:"invoice-already-send-indonesia";i:1;s:34:"new-ticket-created-staff-indonesia";i:1;s:33:"estimate-send-to-client-indonesia";i:1;s:31:"ticket-reply-to-admin-indonesia";i:1;s:31:"estimate-already-send-indonesia";i:1;s:29:"contract-expiration-indonesia";i:1;s:23:"task-assigned-indonesia";i:1;s:32:"task-added-as-follower-indonesia";i:1;s:24:"task-commented-indonesia";i:1;s:31:"task-added-attachment-indonesia";i:1;s:36:"estimate-declined-to-staff-indonesia";i:1;s:36:"estimate-accepted-to-staff-indonesia";i:1;s:34:"proposal-client-accepted-indonesia";i:1;s:35:"proposal-send-to-customer-indonesia";i:1;s:34:"proposal-client-declined-indonesia";i:1;s:35:"proposal-client-thank-you-indonesia";i:1;s:36:"proposal-comment-to-client-indonesia";i:1;s:35:"proposal-comment-to-admin-indonesia";i:1;s:40:"estimate-thank-you-to-customer-indonesia";i:1;s:36:"task-deadline-notification-indonesia";i:1;s:23:"send-contract-indonesia";i:1;s:43:"invoice-payment-recorded-to-staff-indonesia";i:1;s:27:"auto-close-ticket-indonesia";i:1;s:49:"new-project-discussion-created-to-staff-indonesia";i:1;s:52:"new-project-discussion-created-to-customer-indonesia";i:1;s:47:"new-project-file-uploaded-to-customer-indonesia";i:1;s:44:"new-project-file-uploaded-to-staff-indonesia";i:1;s:52:"new-project-discussion-comment-to-customer-indonesia";i:1;s:49:"new-project-discussion-comment-to-staff-indonesia";i:1;s:39:"staff-added-as-project-member-indonesia";i:1;s:34:"estimate-expiry-reminder-indonesia";i:1;s:34:"proposal-expiry-reminder-indonesia";i:1;s:27:"new-staff-created-indonesia";i:1;s:33:"contact-forgot-password-indonesia";i:1;s:34:"contact-password-reseted-indonesia";i:1;s:30:"contact-set-password-indonesia";i:1;s:31:"staff-forgot-password-indonesia";i:1;s:32:"staff-password-reseted-indonesia";i:1;s:29:"assigned-to-project-indonesia";i:1;s:43:"task-added-attachment-to-contacts-indonesia";i:1;s:36:"task-commented-to-contacts-indonesia";i:1;s:27:"new-lead-assigned-indonesia";i:1;s:26:"client-statement-indonesia";i:1;s:34:"ticket-assigned-to-admin-indonesia";i:1;s:40:"new-client-registered-to-admin-indonesia";i:1;s:40:"new-web-to-lead-form-submitted-indonesia";i:1;s:35:"two-factor-authentication-indonesia";i:1;s:38:"project-finished-to-customer-indonesia";i:1;s:36:"credit-note-send-to-client-indonesia";i:1;s:37:"task-status-change-to-staff-indonesia";i:1;s:40:"task-status-change-to-contacts-indonesia";i:1;s:30:"reminder-email-staff-indonesia";i:1;s:36:"contract-comment-to-client-indonesia";i:1;s:35:"contract-comment-to-admin-indonesia";i:1;s:27:"send-subscription-indonesia";i:1;s:37:"subscription-payment-failed-indonesia";i:1;s:31:"subscription-canceled-indonesia";i:1;s:40:"subscription-payment-succeeded-indonesia";i:1;s:38:"contract-expiration-to-staff-indonesia";i:1;s:30:"gdpr-removal-request-indonesia";i:1;s:35:"gdpr-removal-request-lead-indonesia";i:1;s:39:"client-registration-confirmed-indonesia";i:1;s:34:"contract-signed-to-staff-indonesia";i:1;s:38:"customer-subscribed-to-staff-indonesia";i:1;s:36:"contact-verification-email-indonesia";i:1;s:53:"new-customer-profile-file-uploaded-to-staff-indonesia";i:1;s:37:"event-notification-to-staff-indonesia";i:1;s:46:"subscription-payment-requires-action-indonesia";i:1;s:28:"invoice-due-notice-indonesia";i:1;s:45:"estimate-request-submitted-to-staff-indonesia";i:1;s:35:"estimate-request-assigned-indonesia";i:1;s:43:"estimate-request-received-to-user-indonesia";i:1;s:35:"non-billed-tasks-reminder-indonesia";i:1;s:33:"invoices-batch-payments-indonesia";i:1;s:25:"new-client-created-polish";i:1;s:29:"invoice-send-to-client-polish";i:1;s:30:"new-ticket-opened-admin-polish";i:1;s:19:"ticket-reply-polish";i:1;s:26:"ticket-autoresponse-polish";i:1;s:31:"invoice-payment-recorded-polish";i:1;s:29:"invoice-overdue-notice-polish";i:1;s:27:"invoice-already-send-polish";i:1;s:31:"new-ticket-created-staff-polish";i:1;s:30:"estimate-send-to-client-polish";i:1;s:28:"ticket-reply-to-admin-polish";i:1;s:28:"estimate-already-send-polish";i:1;s:26:"contract-expiration-polish";i:1;s:20:"task-assigned-polish";i:1;s:29:"task-added-as-follower-polish";i:1;s:21:"task-commented-polish";i:1;s:28:"task-added-attachment-polish";i:1;s:33:"estimate-declined-to-staff-polish";i:1;s:33:"estimate-accepted-to-staff-polish";i:1;s:31:"proposal-client-accepted-polish";i:1;s:32:"proposal-send-to-customer-polish";i:1;s:31:"proposal-client-declined-polish";i:1;s:32:"proposal-client-thank-you-polish";i:1;s:33:"proposal-comment-to-client-polish";i:1;s:32:"proposal-comment-to-admin-polish";i:1;s:37:"estimate-thank-you-to-customer-polish";i:1;s:33:"task-deadline-notification-polish";i:1;s:20:"send-contract-polish";i:1;s:40:"invoice-payment-recorded-to-staff-polish";i:1;s:24:"auto-close-ticket-polish";i:1;s:46:"new-project-discussion-created-to-staff-polish";i:1;s:49:"new-project-discussion-created-to-customer-polish";i:1;s:44:"new-project-file-uploaded-to-customer-polish";i:1;s:41:"new-project-file-uploaded-to-staff-polish";i:1;s:49:"new-project-discussion-comment-to-customer-polish";i:1;s:46:"new-project-discussion-comment-to-staff-polish";i:1;s:36:"staff-added-as-project-member-polish";i:1;s:31:"estimate-expiry-reminder-polish";i:1;s:31:"proposal-expiry-reminder-polish";i:1;s:24:"new-staff-created-polish";i:1;s:30:"contact-forgot-password-polish";i:1;s:31:"contact-password-reseted-polish";i:1;s:27:"contact-set-password-polish";i:1;s:28:"staff-forgot-password-polish";i:1;s:29:"staff-password-reseted-polish";i:1;s:26:"assigned-to-project-polish";i:1;s:40:"task-added-attachment-to-contacts-polish";i:1;s:33:"task-commented-to-contacts-polish";i:1;s:24:"new-lead-assigned-polish";i:1;s:23:"client-statement-polish";i:1;s:31:"ticket-assigned-to-admin-polish";i:1;s:37:"new-client-registered-to-admin-polish";i:1;s:37:"new-web-to-lead-form-submitted-polish";i:1;s:32:"two-factor-authentication-polish";i:1;s:35:"project-finished-to-customer-polish";i:1;s:33:"credit-note-send-to-client-polish";i:1;s:34:"task-status-change-to-staff-polish";i:1;s:37:"task-status-change-to-contacts-polish";i:1;s:27:"reminder-email-staff-polish";i:1;s:33:"contract-comment-to-client-polish";i:1;s:32:"contract-comment-to-admin-polish";i:1;s:24:"send-subscription-polish";i:1;s:34:"subscription-payment-failed-polish";i:1;s:28:"subscription-canceled-polish";i:1;s:37:"subscription-payment-succeeded-polish";i:1;s:35:"contract-expiration-to-staff-polish";i:1;s:27:"gdpr-removal-request-polish";i:1;s:32:"gdpr-removal-request-lead-polish";i:1;s:36:"client-registration-confirmed-polish";i:1;s:31:"contract-signed-to-staff-polish";i:1;s:35:"customer-subscribed-to-staff-polish";i:1;s:33:"contact-verification-email-polish";i:1;s:50:"new-customer-profile-file-uploaded-to-staff-polish";i:1;s:34:"event-notification-to-staff-polish";i:1;s:43:"subscription-payment-requires-action-polish";i:1;s:25:"invoice-due-notice-polish";i:1;s:42:"estimate-request-submitted-to-staff-polish";i:1;s:32:"estimate-request-assigned-polish";i:1;s:40:"estimate-request-received-to-user-polish";i:1;s:32:"non-billed-tasks-reminder-polish";i:1;s:30:"invoices-batch-payments-polish";i:1;s:29:"new-client-created-portuguese";i:1;s:33:"invoice-send-to-client-portuguese";i:1;s:34:"new-ticket-opened-admin-portuguese";i:1;s:23:"ticket-reply-portuguese";i:1;s:30:"ticket-autoresponse-portuguese";i:1;s:35:"invoice-payment-recorded-portuguese";i:1;s:33:"invoice-overdue-notice-portuguese";i:1;s:31:"invoice-already-send-portuguese";i:1;s:35:"new-ticket-created-staff-portuguese";i:1;s:34:"estimate-send-to-client-portuguese";i:1;s:32:"ticket-reply-to-admin-portuguese";i:1;s:32:"estimate-already-send-portuguese";i:1;s:30:"contract-expiration-portuguese";i:1;s:24:"task-assigned-portuguese";i:1;s:33:"task-added-as-follower-portuguese";i:1;s:25:"task-commented-portuguese";i:1;s:32:"task-added-attachment-portuguese";i:1;s:37:"estimate-declined-to-staff-portuguese";i:1;s:37:"estimate-accepted-to-staff-portuguese";i:1;s:35:"proposal-client-accepted-portuguese";i:1;s:36:"proposal-send-to-customer-portuguese";i:1;s:35:"proposal-client-declined-portuguese";i:1;s:36:"proposal-client-thank-you-portuguese";i:1;s:37:"proposal-comment-to-client-portuguese";i:1;s:36:"proposal-comment-to-admin-portuguese";i:1;s:41:"estimate-thank-you-to-customer-portuguese";i:1;s:37:"task-deadline-notification-portuguese";i:1;s:24:"send-contract-portuguese";i:1;s:44:"invoice-payment-recorded-to-staff-portuguese";i:1;s:28:"auto-close-ticket-portuguese";i:1;s:50:"new-project-discussion-created-to-staff-portuguese";i:1;s:53:"new-project-discussion-created-to-customer-portuguese";i:1;s:48:"new-project-file-uploaded-to-customer-portuguese";i:1;s:45:"new-project-file-uploaded-to-staff-portuguese";i:1;s:53:"new-project-discussion-comment-to-customer-portuguese";i:1;s:50:"new-project-discussion-comment-to-staff-portuguese";i:1;s:40:"staff-added-as-project-member-portuguese";i:1;s:35:"estimate-expiry-reminder-portuguese";i:1;s:35:"proposal-expiry-reminder-portuguese";i:1;s:28:"new-staff-created-portuguese";i:1;s:34:"contact-forgot-password-portuguese";i:1;s:35:"contact-password-reseted-portuguese";i:1;s:31:"contact-set-password-portuguese";i:1;s:32:"staff-forgot-password-portuguese";i:1;s:33:"staff-password-reseted-portuguese";i:1;s:30:"assigned-to-project-portuguese";i:1;s:44:"task-added-attachment-to-contacts-portuguese";i:1;s:37:"task-commented-to-contacts-portuguese";i:1;s:28:"new-lead-assigned-portuguese";i:1;s:27:"client-statement-portuguese";i:1;s:35:"ticket-assigned-to-admin-portuguese";i:1;s:41:"new-client-registered-to-admin-portuguese";i:1;s:41:"new-web-to-lead-form-submitted-portuguese";i:1;s:36:"two-factor-authentication-portuguese";i:1;s:39:"project-finished-to-customer-portuguese";i:1;s:37:"credit-note-send-to-client-portuguese";i:1;s:38:"task-status-change-to-staff-portuguese";i:1;s:41:"task-status-change-to-contacts-portuguese";i:1;s:31:"reminder-email-staff-portuguese";i:1;s:37:"contract-comment-to-client-portuguese";i:1;s:36:"contract-comment-to-admin-portuguese";i:1;s:28:"send-subscription-portuguese";i:1;s:38:"subscription-payment-failed-portuguese";i:1;s:32:"subscription-canceled-portuguese";i:1;s:41:"subscription-payment-succeeded-portuguese";i:1;s:39:"contract-expiration-to-staff-portuguese";i:1;s:31:"gdpr-removal-request-portuguese";i:1;s:36:"gdpr-removal-request-lead-portuguese";i:1;s:40:"client-registration-confirmed-portuguese";i:1;s:35:"contract-signed-to-staff-portuguese";i:1;s:39:"customer-subscribed-to-staff-portuguese";i:1;s:37:"contact-verification-email-portuguese";i:1;s:54:"new-customer-profile-file-uploaded-to-staff-portuguese";i:1;s:38:"event-notification-to-staff-portuguese";i:1;s:47:"subscription-payment-requires-action-portuguese";i:1;s:29:"invoice-due-notice-portuguese";i:1;s:46:"estimate-request-submitted-to-staff-portuguese";i:1;s:36:"estimate-request-assigned-portuguese";i:1;s:44:"estimate-request-received-to-user-portuguese";i:1;s:36:"non-billed-tasks-reminder-portuguese";i:1;s:34:"invoices-batch-payments-portuguese";i:1;s:26:"new-client-created-chinese";i:1;s:30:"invoice-send-to-client-chinese";i:1;s:31:"new-ticket-opened-admin-chinese";i:1;s:20:"ticket-reply-chinese";i:1;s:27:"ticket-autoresponse-chinese";i:1;s:32:"invoice-payment-recorded-chinese";i:1;s:30:"invoice-overdue-notice-chinese";i:1;s:28:"invoice-already-send-chinese";i:1;s:32:"new-ticket-created-staff-chinese";i:1;s:31:"estimate-send-to-client-chinese";i:1;s:29:"ticket-reply-to-admin-chinese";i:1;s:29:"estimate-already-send-chinese";i:1;s:27:"contract-expiration-chinese";i:1;s:21:"task-assigned-chinese";i:1;s:30:"task-added-as-follower-chinese";i:1;s:22:"task-commented-chinese";i:1;s:29:"task-added-attachment-chinese";i:1;s:34:"estimate-declined-to-staff-chinese";i:1;s:34:"estimate-accepted-to-staff-chinese";i:1;s:32:"proposal-client-accepted-chinese";i:1;s:33:"proposal-send-to-customer-chinese";i:1;s:32:"proposal-client-declined-chinese";i:1;s:33:"proposal-client-thank-you-chinese";i:1;s:34:"proposal-comment-to-client-chinese";i:1;s:33:"proposal-comment-to-admin-chinese";i:1;s:38:"estimate-thank-you-to-customer-chinese";i:1;s:34:"task-deadline-notification-chinese";i:1;s:21:"send-contract-chinese";i:1;s:41:"invoice-payment-recorded-to-staff-chinese";i:1;s:25:"auto-close-ticket-chinese";i:1;s:47:"new-project-discussion-created-to-staff-chinese";i:1;s:50:"new-project-discussion-created-to-customer-chinese";i:1;s:45:"new-project-file-uploaded-to-customer-chinese";i:1;s:42:"new-project-file-uploaded-to-staff-chinese";i:1;s:50:"new-project-discussion-comment-to-customer-chinese";i:1;s:47:"new-project-discussion-comment-to-staff-chinese";i:1;s:37:"staff-added-as-project-member-chinese";i:1;s:32:"estimate-expiry-reminder-chinese";i:1;s:32:"proposal-expiry-reminder-chinese";i:1;s:25:"new-staff-created-chinese";i:1;s:31:"contact-forgot-password-chinese";i:1;s:32:"contact-password-reseted-chinese";i:1;s:28:"contact-set-password-chinese";i:1;s:29:"staff-forgot-password-chinese";i:1;s:30:"staff-password-reseted-chinese";i:1;s:27:"assigned-to-project-chinese";i:1;s:41:"task-added-attachment-to-contacts-chinese";i:1;s:34:"task-commented-to-contacts-chinese";i:1;s:25:"new-lead-assigned-chinese";i:1;s:24:"client-statement-chinese";i:1;s:32:"ticket-assigned-to-admin-chinese";i:1;s:38:"new-client-registered-to-admin-chinese";i:1;s:38:"new-web-to-lead-form-submitted-chinese";i:1;s:33:"two-factor-authentication-chinese";i:1;s:36:"project-finished-to-customer-chinese";i:1;s:34:"credit-note-send-to-client-chinese";i:1;s:35:"task-status-change-to-staff-chinese";i:1;s:38:"task-status-change-to-contacts-chinese";i:1;s:28:"reminder-email-staff-chinese";i:1;s:34:"contract-comment-to-client-chinese";i:1;s:33:"contract-comment-to-admin-chinese";i:1;s:25:"send-subscription-chinese";i:1;s:35:"subscription-payment-failed-chinese";i:1;s:29:"subscription-canceled-chinese";i:1;s:38:"subscription-payment-succeeded-chinese";i:1;s:36:"contract-expiration-to-staff-chinese";i:1;s:28:"gdpr-removal-request-chinese";i:1;s:33:"gdpr-removal-request-lead-chinese";i:1;s:37:"client-registration-confirmed-chinese";i:1;s:32:"contract-signed-to-staff-chinese";i:1;s:36:"customer-subscribed-to-staff-chinese";i:1;s:34:"contact-verification-email-chinese";i:1;s:51:"new-customer-profile-file-uploaded-to-staff-chinese";i:1;s:35:"event-notification-to-staff-chinese";i:1;s:44:"subscription-payment-requires-action-chinese";i:1;s:26:"invoice-due-notice-chinese";i:1;s:43:"estimate-request-submitted-to-staff-chinese";i:1;s:33:"estimate-request-assigned-chinese";i:1;s:41:"estimate-request-received-to-user-chinese";i:1;s:33:"non-billed-tasks-reminder-chinese";i:1;s:31:"invoices-batch-payments-chinese";i:1;s:26:"new-client-created-catalan";i:1;s:30:"invoice-send-to-client-catalan";i:1;s:31:"new-ticket-opened-admin-catalan";i:1;s:20:"ticket-reply-catalan";i:1;s:27:"ticket-autoresponse-catalan";i:1;s:32:"invoice-payment-recorded-catalan";i:1;s:30:"invoice-overdue-notice-catalan";i:1;s:28:"invoice-already-send-catalan";i:1;s:32:"new-ticket-created-staff-catalan";i:1;s:31:"estimate-send-to-client-catalan";i:1;s:29:"ticket-reply-to-admin-catalan";i:1;s:29:"estimate-already-send-catalan";i:1;s:27:"contract-expiration-catalan";i:1;s:21:"task-assigned-catalan";i:1;s:30:"task-added-as-follower-catalan";i:1;s:22:"task-commented-catalan";i:1;s:29:"task-added-attachment-catalan";i:1;s:34:"estimate-declined-to-staff-catalan";i:1;s:34:"estimate-accepted-to-staff-catalan";i:1;s:32:"proposal-client-accepted-catalan";i:1;s:33:"proposal-send-to-customer-catalan";i:1;s:32:"proposal-client-declined-catalan";i:1;s:33:"proposal-client-thank-you-catalan";i:1;s:34:"proposal-comment-to-client-catalan";i:1;s:33:"proposal-comment-to-admin-catalan";i:1;s:38:"estimate-thank-you-to-customer-catalan";i:1;s:34:"task-deadline-notification-catalan";i:1;s:21:"send-contract-catalan";i:1;s:41:"invoice-payment-recorded-to-staff-catalan";i:1;s:25:"auto-close-ticket-catalan";i:1;s:47:"new-project-discussion-created-to-staff-catalan";i:1;s:50:"new-project-discussion-created-to-customer-catalan";i:1;s:45:"new-project-file-uploaded-to-customer-catalan";i:1;s:42:"new-project-file-uploaded-to-staff-catalan";i:1;s:50:"new-project-discussion-comment-to-customer-catalan";i:1;s:47:"new-project-discussion-comment-to-staff-catalan";i:1;s:37:"staff-added-as-project-member-catalan";i:1;s:32:"estimate-expiry-reminder-catalan";i:1;s:32:"proposal-expiry-reminder-catalan";i:1;s:25:"new-staff-created-catalan";i:1;s:31:"contact-forgot-password-catalan";i:1;s:32:"contact-password-reseted-catalan";i:1;s:28:"contact-set-password-catalan";i:1;s:29:"staff-forgot-password-catalan";i:1;s:30:"staff-password-reseted-catalan";i:1;s:27:"assigned-to-project-catalan";i:1;s:41:"task-added-attachment-to-contacts-catalan";i:1;s:34:"task-commented-to-contacts-catalan";i:1;s:25:"new-lead-assigned-catalan";i:1;s:24:"client-statement-catalan";i:1;s:32:"ticket-assigned-to-admin-catalan";i:1;s:38:"new-client-registered-to-admin-catalan";i:1;s:38:"new-web-to-lead-form-submitted-catalan";i:1;s:33:"two-factor-authentication-catalan";i:1;s:36:"project-finished-to-customer-catalan";i:1;s:34:"credit-note-send-to-client-catalan";i:1;s:35:"task-status-change-to-staff-catalan";i:1;s:38:"task-status-change-to-contacts-catalan";i:1;s:28:"reminder-email-staff-catalan";i:1;s:34:"contract-comment-to-client-catalan";i:1;s:33:"contract-comment-to-admin-catalan";i:1;s:25:"send-subscription-catalan";i:1;s:35:"subscription-payment-failed-catalan";i:1;s:29:"subscription-canceled-catalan";i:1;s:38:"subscription-payment-succeeded-catalan";i:1;s:36:"contract-expiration-to-staff-catalan";i:1;s:28:"gdpr-removal-request-catalan";i:1;s:33:"gdpr-removal-request-lead-catalan";i:1;s:37:"client-registration-confirmed-catalan";i:1;s:32:"contract-signed-to-staff-catalan";i:1;s:36:"customer-subscribed-to-staff-catalan";i:1;s:34:"contact-verification-email-catalan";i:1;s:51:"new-customer-profile-file-uploaded-to-staff-catalan";i:1;s:35:"event-notification-to-staff-catalan";i:1;s:44:"subscription-payment-requires-action-catalan";i:1;s:26:"invoice-due-notice-catalan";i:1;s:43:"estimate-request-submitted-to-staff-catalan";i:1;s:33:"estimate-request-assigned-catalan";i:1;s:41:"estimate-request-received-to-user-catalan";i:1;s:33:"non-billed-tasks-reminder-catalan";i:1;s:31:"invoices-batch-payments-catalan";i:1;s:25:"new-client-created-french";i:1;s:29:"invoice-send-to-client-french";i:1;s:30:"new-ticket-opened-admin-french";i:1;s:19:"ticket-reply-french";i:1;s:26:"ticket-autoresponse-french";i:1;s:31:"invoice-payment-recorded-french";i:1;s:29:"invoice-overdue-notice-french";i:1;s:27:"invoice-already-send-french";i:1;s:31:"new-ticket-created-staff-french";i:1;s:30:"estimate-send-to-client-french";i:1;s:28:"ticket-reply-to-admin-french";i:1;s:28:"estimate-already-send-french";i:1;s:26:"contract-expiration-french";i:1;s:20:"task-assigned-french";i:1;s:29:"task-added-as-follower-french";i:1;s:21:"task-commented-french";i:1;s:28:"task-added-attachment-french";i:1;s:33:"estimate-declined-to-staff-french";i:1;s:33:"estimate-accepted-to-staff-french";i:1;s:31:"proposal-client-accepted-french";i:1;s:32:"proposal-send-to-customer-french";i:1;s:31:"proposal-client-declined-french";i:1;s:32:"proposal-client-thank-you-french";i:1;s:33:"proposal-comment-to-client-french";i:1;s:32:"proposal-comment-to-admin-french";i:1;s:37:"estimate-thank-you-to-customer-french";i:1;s:33:"task-deadline-notification-french";i:1;s:20:"send-contract-french";i:1;s:40:"invoice-payment-recorded-to-staff-french";i:1;s:24:"auto-close-ticket-french";i:1;s:46:"new-project-discussion-created-to-staff-french";i:1;s:49:"new-project-discussion-created-to-customer-french";i:1;s:44:"new-project-file-uploaded-to-customer-french";i:1;s:41:"new-project-file-uploaded-to-staff-french";i:1;s:49:"new-project-discussion-comment-to-customer-french";i:1;s:46:"new-project-discussion-comment-to-staff-french";i:1;s:36:"staff-added-as-project-member-french";i:1;s:31:"estimate-expiry-reminder-french";i:1;s:31:"proposal-expiry-reminder-french";i:1;s:24:"new-staff-created-french";i:1;s:30:"contact-forgot-password-french";i:1;s:31:"contact-password-reseted-french";i:1;s:27:"contact-set-password-french";i:1;s:28:"staff-forgot-password-french";i:1;s:29:"staff-password-reseted-french";i:1;s:26:"assigned-to-project-french";i:1;s:40:"task-added-attachment-to-contacts-french";i:1;s:33:"task-commented-to-contacts-french";i:1;s:24:"new-lead-assigned-french";i:1;s:23:"client-statement-french";i:1;s:31:"ticket-assigned-to-admin-french";i:1;s:37:"new-client-registered-to-admin-french";i:1;s:37:"new-web-to-lead-form-submitted-french";i:1;s:32:"two-factor-authentication-french";i:1;s:35:"project-finished-to-customer-french";i:1;s:33:"credit-note-send-to-client-french";i:1;s:34:"task-status-change-to-staff-french";i:1;s:37:"task-status-change-to-contacts-french";i:1;s:27:"reminder-email-staff-french";i:1;s:33:"contract-comment-to-client-french";i:1;s:32:"contract-comment-to-admin-french";i:1;s:24:"send-subscription-french";i:1;s:34:"subscription-payment-failed-french";i:1;s:28:"subscription-canceled-french";i:1;s:37:"subscription-payment-succeeded-french";i:1;s:35:"contract-expiration-to-staff-french";i:1;s:27:"gdpr-removal-request-french";i:1;s:32:"gdpr-removal-request-lead-french";i:1;s:36:"client-registration-confirmed-french";i:1;s:31:"contract-signed-to-staff-french";i:1;s:35:"customer-subscribed-to-staff-french";i:1;s:33:"contact-verification-email-french";i:1;s:50:"new-customer-profile-file-uploaded-to-staff-french";i:1;s:34:"event-notification-to-staff-french";i:1;s:43:"subscription-payment-requires-action-french";i:1;s:25:"invoice-due-notice-french";i:1;s:42:"estimate-request-submitted-to-staff-french";i:1;s:32:"estimate-request-assigned-french";i:1;s:40:"estimate-request-received-to-user-french";i:1;s:32:"non-billed-tasks-reminder-french";i:1;s:30:"invoices-batch-payments-french";i:1;s:26:"new-client-created-turkish";i:1;s:30:"invoice-send-to-client-turkish";i:1;s:31:"new-ticket-opened-admin-turkish";i:1;s:20:"ticket-reply-turkish";i:1;s:27:"ticket-autoresponse-turkish";i:1;s:32:"invoice-payment-recorded-turkish";i:1;s:30:"invoice-overdue-notice-turkish";i:1;s:28:"invoice-already-send-turkish";i:1;s:32:"new-ticket-created-staff-turkish";i:1;s:31:"estimate-send-to-client-turkish";i:1;s:29:"ticket-reply-to-admin-turkish";i:1;s:29:"estimate-already-send-turkish";i:1;s:27:"contract-expiration-turkish";i:1;s:21:"task-assigned-turkish";i:1;s:30:"task-added-as-follower-turkish";i:1;s:22:"task-commented-turkish";i:1;s:29:"task-added-attachment-turkish";i:1;s:34:"estimate-declined-to-staff-turkish";i:1;s:34:"estimate-accepted-to-staff-turkish";i:1;s:32:"proposal-client-accepted-turkish";i:1;s:33:"proposal-send-to-customer-turkish";i:1;s:32:"proposal-client-declined-turkish";i:1;s:33:"proposal-client-thank-you-turkish";i:1;s:34:"proposal-comment-to-client-turkish";i:1;s:33:"proposal-comment-to-admin-turkish";i:1;s:38:"estimate-thank-you-to-customer-turkish";i:1;s:34:"task-deadline-notification-turkish";i:1;s:21:"send-contract-turkish";i:1;s:41:"invoice-payment-recorded-to-staff-turkish";i:1;s:25:"auto-close-ticket-turkish";i:1;s:47:"new-project-discussion-created-to-staff-turkish";i:1;s:50:"new-project-discussion-created-to-customer-turkish";i:1;s:45:"new-project-file-uploaded-to-customer-turkish";i:1;s:42:"new-project-file-uploaded-to-staff-turkish";i:1;s:50:"new-project-discussion-comment-to-customer-turkish";i:1;s:47:"new-project-discussion-comment-to-staff-turkish";i:1;s:37:"staff-added-as-project-member-turkish";i:1;s:32:"estimate-expiry-reminder-turkish";i:1;s:32:"proposal-expiry-reminder-turkish";i:1;s:25:"new-staff-created-turkish";i:1;s:31:"contact-forgot-password-turkish";i:1;s:32:"contact-password-reseted-turkish";i:1;s:28:"contact-set-password-turkish";i:1;s:29:"staff-forgot-password-turkish";i:1;s:30:"staff-password-reseted-turkish";i:1;s:27:"assigned-to-project-turkish";i:1;s:41:"task-added-attachment-to-contacts-turkish";i:1;s:34:"task-commented-to-contacts-turkish";i:1;s:25:"new-lead-assigned-turkish";i:1;s:24:"client-statement-turkish";i:1;s:32:"ticket-assigned-to-admin-turkish";i:1;s:38:"new-client-registered-to-admin-turkish";i:1;s:38:"new-web-to-lead-form-submitted-turkish";i:1;s:33:"two-factor-authentication-turkish";i:1;s:36:"project-finished-to-customer-turkish";i:1;s:34:"credit-note-send-to-client-turkish";i:1;s:35:"task-status-change-to-staff-turkish";i:1;s:38:"task-status-change-to-contacts-turkish";i:1;s:28:"reminder-email-staff-turkish";i:1;s:34:"contract-comment-to-client-turkish";i:1;s:33:"contract-comment-to-admin-turkish";i:1;s:25:"send-subscription-turkish";i:1;s:35:"subscription-payment-failed-turkish";i:1;s:29:"subscription-canceled-turkish";i:1;s:38:"subscription-payment-succeeded-turkish";i:1;s:36:"contract-expiration-to-staff-turkish";i:1;s:28:"gdpr-removal-request-turkish";i:1;s:33:"gdpr-removal-request-lead-turkish";i:1;s:37:"client-registration-confirmed-turkish";i:1;s:32:"contract-signed-to-staff-turkish";i:1;s:36:"customer-subscribed-to-staff-turkish";i:1;s:34:"contact-verification-email-turkish";i:1;s:51:"new-customer-profile-file-uploaded-to-staff-turkish";i:1;s:35:"event-notification-to-staff-turkish";i:1;s:44:"subscription-payment-requires-action-turkish";i:1;s:26:"invoice-due-notice-turkish";i:1;s:43:"estimate-request-submitted-to-staff-turkish";i:1;s:33:"estimate-request-assigned-turkish";i:1;s:41:"estimate-request-received-to-user-turkish";i:1;s:33:"non-billed-tasks-reminder-turkish";i:1;s:31:"invoices-batch-payments-turkish";i:1;s:27:"new-client-created-japanese";i:1;s:31:"invoice-send-to-client-japanese";i:1;s:32:"new-ticket-opened-admin-japanese";i:1;s:21:"ticket-reply-japanese";i:1;s:28:"ticket-autoresponse-japanese";i:1;s:33:"invoice-payment-recorded-japanese";i:1;s:31:"invoice-overdue-notice-japanese";i:1;s:29:"invoice-already-send-japanese";i:1;s:33:"new-ticket-created-staff-japanese";i:1;s:32:"estimate-send-to-client-japanese";i:1;s:30:"ticket-reply-to-admin-japanese";i:1;s:30:"estimate-already-send-japanese";i:1;s:28:"contract-expiration-japanese";i:1;s:22:"task-assigned-japanese";i:1;s:31:"task-added-as-follower-japanese";i:1;s:23:"task-commented-japanese";i:1;s:30:"task-added-attachment-japanese";i:1;s:35:"estimate-declined-to-staff-japanese";i:1;s:35:"estimate-accepted-to-staff-japanese";i:1;s:33:"proposal-client-accepted-japanese";i:1;s:34:"proposal-send-to-customer-japanese";i:1;s:33:"proposal-client-declined-japanese";i:1;s:34:"proposal-client-thank-you-japanese";i:1;s:35:"proposal-comment-to-client-japanese";i:1;s:34:"proposal-comment-to-admin-japanese";i:1;s:39:"estimate-thank-you-to-customer-japanese";i:1;s:35:"task-deadline-notification-japanese";i:1;s:22:"send-contract-japanese";i:1;s:42:"invoice-payment-recorded-to-staff-japanese";i:1;s:26:"auto-close-ticket-japanese";i:1;s:48:"new-project-discussion-created-to-staff-japanese";i:1;s:51:"new-project-discussion-created-to-customer-japanese";i:1;s:46:"new-project-file-uploaded-to-customer-japanese";i:1;s:43:"new-project-file-uploaded-to-staff-japanese";i:1;s:51:"new-project-discussion-comment-to-customer-japanese";i:1;s:48:"new-project-discussion-comment-to-staff-japanese";i:1;s:38:"staff-added-as-project-member-japanese";i:1;s:33:"estimate-expiry-reminder-japanese";i:1;s:33:"proposal-expiry-reminder-japanese";i:1;s:26:"new-staff-created-japanese";i:1;s:32:"contact-forgot-password-japanese";i:1;s:33:"contact-password-reseted-japanese";i:1;s:29:"contact-set-password-japanese";i:1;s:30:"staff-forgot-password-japanese";i:1;s:31:"staff-password-reseted-japanese";i:1;s:28:"assigned-to-project-japanese";i:1;s:42:"task-added-attachment-to-contacts-japanese";i:1;s:35:"task-commented-to-contacts-japanese";i:1;s:26:"new-lead-assigned-japanese";i:1;s:25:"client-statement-japanese";i:1;s:33:"ticket-assigned-to-admin-japanese";i:1;s:39:"new-client-registered-to-admin-japanese";i:1;s:39:"new-web-to-lead-form-submitted-japanese";i:1;s:34:"two-factor-authentication-japanese";i:1;s:37:"project-finished-to-customer-japanese";i:1;s:35:"credit-note-send-to-client-japanese";i:1;s:36:"task-status-change-to-staff-japanese";i:1;s:39:"task-status-change-to-contacts-japanese";i:1;s:29:"reminder-email-staff-japanese";i:1;s:35:"contract-comment-to-client-japanese";i:1;s:34:"contract-comment-to-admin-japanese";i:1;s:26:"send-subscription-japanese";i:1;s:36:"subscription-payment-failed-japanese";i:1;s:30:"subscription-canceled-japanese";i:1;s:39:"subscription-payment-succeeded-japanese";i:1;s:37:"contract-expiration-to-staff-japanese";i:1;s:29:"gdpr-removal-request-japanese";i:1;s:34:"gdpr-removal-request-lead-japanese";i:1;s:38:"client-registration-confirmed-japanese";i:1;s:33:"contract-signed-to-staff-japanese";i:1;s:37:"customer-subscribed-to-staff-japanese";i:1;s:35:"contact-verification-email-japanese";i:1;s:52:"new-customer-profile-file-uploaded-to-staff-japanese";i:1;s:36:"event-notification-to-staff-japanese";i:1;s:45:"subscription-payment-requires-action-japanese";i:1;s:27:"invoice-due-notice-japanese";i:1;s:44:"estimate-request-submitted-to-staff-japanese";i:1;s:34:"estimate-request-assigned-japanese";i:1;s:42:"estimate-request-received-to-user-japanese";i:1;s:34:"non-billed-tasks-reminder-japanese";i:1;s:32:"invoices-batch-payments-japanese";i:1;s:26:"new-client-created-persian";i:1;s:30:"invoice-send-to-client-persian";i:1;s:31:"new-ticket-opened-admin-persian";i:1;s:20:"ticket-reply-persian";i:1;s:27:"ticket-autoresponse-persian";i:1;s:32:"invoice-payment-recorded-persian";i:1;s:30:"invoice-overdue-notice-persian";i:1;s:28:"invoice-already-send-persian";i:1;s:32:"new-ticket-created-staff-persian";i:1;s:31:"estimate-send-to-client-persian";i:1;s:29:"ticket-reply-to-admin-persian";i:1;s:29:"estimate-already-send-persian";i:1;s:27:"contract-expiration-persian";i:1;s:21:"task-assigned-persian";i:1;s:30:"task-added-as-follower-persian";i:1;s:22:"task-commented-persian";i:1;s:29:"task-added-attachment-persian";i:1;s:34:"estimate-declined-to-staff-persian";i:1;s:34:"estimate-accepted-to-staff-persian";i:1;s:32:"proposal-client-accepted-persian";i:1;s:33:"proposal-send-to-customer-persian";i:1;s:32:"proposal-client-declined-persian";i:1;s:33:"proposal-client-thank-you-persian";i:1;s:34:"proposal-comment-to-client-persian";i:1;s:33:"proposal-comment-to-admin-persian";i:1;s:38:"estimate-thank-you-to-customer-persian";i:1;s:34:"task-deadline-notification-persian";i:1;s:21:"send-contract-persian";i:1;s:41:"invoice-payment-recorded-to-staff-persian";i:1;s:25:"auto-close-ticket-persian";i:1;s:47:"new-project-discussion-created-to-staff-persian";i:1;s:50:"new-project-discussion-created-to-customer-persian";i:1;s:45:"new-project-file-uploaded-to-customer-persian";i:1;s:42:"new-project-file-uploaded-to-staff-persian";i:1;s:50:"new-project-discussion-comment-to-customer-persian";i:1;s:47:"new-project-discussion-comment-to-staff-persian";i:1;s:37:"staff-added-as-project-member-persian";i:1;s:32:"estimate-expiry-reminder-persian";i:1;s:32:"proposal-expiry-reminder-persian";i:1;s:25:"new-staff-created-persian";i:1;s:31:"contact-forgot-password-persian";i:1;s:32:"contact-password-reseted-persian";i:1;s:28:"contact-set-password-persian";i:1;s:29:"staff-forgot-password-persian";i:1;s:30:"staff-password-reseted-persian";i:1;s:27:"assigned-to-project-persian";i:1;s:41:"task-added-attachment-to-contacts-persian";i:1;s:34:"task-commented-to-contacts-persian";i:1;s:25:"new-lead-assigned-persian";i:1;s:24:"client-statement-persian";i:1;s:32:"ticket-assigned-to-admin-persian";i:1;s:38:"new-client-registered-to-admin-persian";i:1;s:38:"new-web-to-lead-form-submitted-persian";i:1;s:33:"two-factor-authentication-persian";i:1;s:36:"project-finished-to-customer-persian";i:1;s:34:"credit-note-send-to-client-persian";i:1;s:35:"task-status-change-to-staff-persian";i:1;s:38:"task-status-change-to-contacts-persian";i:1;s:28:"reminder-email-staff-persian";i:1;s:34:"contract-comment-to-client-persian";i:1;s:33:"contract-comment-to-admin-persian";i:1;s:25:"send-subscription-persian";i:1;s:35:"subscription-payment-failed-persian";i:1;s:29:"subscription-canceled-persian";i:1;s:38:"subscription-payment-succeeded-persian";i:1;s:36:"contract-expiration-to-staff-persian";i:1;s:28:"gdpr-removal-request-persian";i:1;s:33:"gdpr-removal-request-lead-persian";i:1;s:37:"client-registration-confirmed-persian";i:1;s:32:"contract-signed-to-staff-persian";i:1;s:36:"customer-subscribed-to-staff-persian";i:1;s:34:"contact-verification-email-persian";i:1;s:51:"new-customer-profile-file-uploaded-to-staff-persian";i:1;s:35:"event-notification-to-staff-persian";i:1;s:44:"subscription-payment-requires-action-persian";i:1;s:26:"invoice-due-notice-persian";i:1;s:43:"estimate-request-submitted-to-staff-persian";i:1;s:33:"estimate-request-assigned-persian";i:1;s:41:"estimate-request-received-to-user-persian";i:1;s:33:"non-billed-tasks-reminder-persian";i:1;s:31:"invoices-batch-payments-persian";i:1;s:26:"new-client-created-italian";i:1;s:30:"invoice-send-to-client-italian";i:1;s:31:"new-ticket-opened-admin-italian";i:1;s:20:"ticket-reply-italian";i:1;s:27:"ticket-autoresponse-italian";i:1;s:32:"invoice-payment-recorded-italian";i:1;s:30:"invoice-overdue-notice-italian";i:1;s:28:"invoice-already-send-italian";i:1;s:32:"new-ticket-created-staff-italian";i:1;s:31:"estimate-send-to-client-italian";i:1;s:29:"ticket-reply-to-admin-italian";i:1;s:29:"estimate-already-send-italian";i:1;s:27:"contract-expiration-italian";i:1;s:21:"task-assigned-italian";i:1;s:30:"task-added-as-follower-italian";i:1;s:22:"task-commented-italian";i:1;s:29:"task-added-attachment-italian";i:1;s:34:"estimate-declined-to-staff-italian";i:1;s:34:"estimate-accepted-to-staff-italian";i:1;s:32:"proposal-client-accepted-italian";i:1;s:33:"proposal-send-to-customer-italian";i:1;s:32:"proposal-client-declined-italian";i:1;s:33:"proposal-client-thank-you-italian";i:1;s:34:"proposal-comment-to-client-italian";i:1;s:33:"proposal-comment-to-admin-italian";i:1;s:38:"estimate-thank-you-to-customer-italian";i:1;s:34:"task-deadline-notification-italian";i:1;s:21:"send-contract-italian";i:1;s:41:"invoice-payment-recorded-to-staff-italian";i:1;s:25:"auto-close-ticket-italian";i:1;s:47:"new-project-discussion-created-to-staff-italian";i:1;s:50:"new-project-discussion-created-to-customer-italian";i:1;s:45:"new-project-file-uploaded-to-customer-italian";i:1;s:42:"new-project-file-uploaded-to-staff-italian";i:1;s:50:"new-project-discussion-comment-to-customer-italian";i:1;s:47:"new-project-discussion-comment-to-staff-italian";i:1;s:37:"staff-added-as-project-member-italian";i:1;s:32:"estimate-expiry-reminder-italian";i:1;s:32:"proposal-expiry-reminder-italian";i:1;s:25:"new-staff-created-italian";i:1;s:31:"contact-forgot-password-italian";i:1;s:32:"contact-password-reseted-italian";i:1;s:28:"contact-set-password-italian";i:1;s:29:"staff-forgot-password-italian";i:1;s:30:"staff-password-reseted-italian";i:1;s:27:"assigned-to-project-italian";i:1;s:41:"task-added-attachment-to-contacts-italian";i:1;s:34:"task-commented-to-contacts-italian";i:1;s:25:"new-lead-assigned-italian";i:1;s:24:"client-statement-italian";i:1;s:32:"ticket-assigned-to-admin-italian";i:1;s:38:"new-client-registered-to-admin-italian";i:1;s:38:"new-web-to-lead-form-submitted-italian";i:1;s:33:"two-factor-authentication-italian";i:1;s:36:"project-finished-to-customer-italian";i:1;s:34:"credit-note-send-to-client-italian";i:1;s:35:"task-status-change-to-staff-italian";i:1;s:38:"task-status-change-to-contacts-italian";i:1;s:28:"reminder-email-staff-italian";i:1;s:34:"contract-comment-to-client-italian";i:1;s:33:"contract-comment-to-admin-italian";i:1;s:25:"send-subscription-italian";i:1;s:35:"subscription-payment-failed-italian";i:1;s:29:"subscription-canceled-italian";i:1;s:38:"subscription-payment-succeeded-italian";i:1;s:36:"contract-expiration-to-staff-italian";i:1;s:28:"gdpr-removal-request-italian";i:1;s:33:"gdpr-removal-request-lead-italian";i:1;s:37:"client-registration-confirmed-italian";i:1;s:32:"contract-signed-to-staff-italian";i:1;s:36:"customer-subscribed-to-staff-italian";i:1;s:34:"contact-verification-email-italian";i:1;s:51:"new-customer-profile-file-uploaded-to-staff-italian";i:1;s:35:"event-notification-to-staff-italian";i:1;s:44:"subscription-payment-requires-action-italian";i:1;s:26:"invoice-due-notice-italian";i:1;s:43:"estimate-request-submitted-to-staff-italian";i:1;s:33:"estimate-request-assigned-italian";i:1;s:41:"estimate-request-received-to-user-italian";i:1;s:33:"non-billed-tasks-reminder-italian";i:1;s:31:"invoices-batch-payments-italian";i:1;s:25:"new-client-created-german";i:1;s:29:"invoice-send-to-client-german";i:1;s:30:"new-ticket-opened-admin-german";i:1;s:19:"ticket-reply-german";i:1;s:26:"ticket-autoresponse-german";i:1;s:31:"invoice-payment-recorded-german";i:1;s:29:"invoice-overdue-notice-german";i:1;s:27:"invoice-already-send-german";i:1;s:31:"new-ticket-created-staff-german";i:1;s:30:"estimate-send-to-client-german";i:1;s:28:"ticket-reply-to-admin-german";i:1;s:28:"estimate-already-send-german";i:1;s:26:"contract-expiration-german";i:1;s:20:"task-assigned-german";i:1;s:29:"task-added-as-follower-german";i:1;s:21:"task-commented-german";i:1;s:28:"task-added-attachment-german";i:1;s:33:"estimate-declined-to-staff-german";i:1;s:33:"estimate-accepted-to-staff-german";i:1;s:31:"proposal-client-accepted-german";i:1;s:32:"proposal-send-to-customer-german";i:1;s:31:"proposal-client-declined-german";i:1;s:32:"proposal-client-thank-you-german";i:1;s:33:"proposal-comment-to-client-german";i:1;s:32:"proposal-comment-to-admin-german";i:1;s:37:"estimate-thank-you-to-customer-german";i:1;s:33:"task-deadline-notification-german";i:1;s:20:"send-contract-german";i:1;s:40:"invoice-payment-recorded-to-staff-german";i:1;s:24:"auto-close-ticket-german";i:1;s:46:"new-project-discussion-created-to-staff-german";i:1;s:49:"new-project-discussion-created-to-customer-german";i:1;s:44:"new-project-file-uploaded-to-customer-german";i:1;s:41:"new-project-file-uploaded-to-staff-german";i:1;s:49:"new-project-discussion-comment-to-customer-german";i:1;s:46:"new-project-discussion-comment-to-staff-german";i:1;s:36:"staff-added-as-project-member-german";i:1;s:31:"estimate-expiry-reminder-german";i:1;s:31:"proposal-expiry-reminder-german";i:1;s:24:"new-staff-created-german";i:1;s:30:"contact-forgot-password-german";i:1;s:31:"contact-password-reseted-german";i:1;s:27:"contact-set-password-german";i:1;s:28:"staff-forgot-password-german";i:1;s:29:"staff-password-reseted-german";i:1;s:26:"assigned-to-project-german";i:1;s:40:"task-added-attachment-to-contacts-german";i:1;s:33:"task-commented-to-contacts-german";i:1;s:24:"new-lead-assigned-german";i:1;s:23:"client-statement-german";i:1;s:31:"ticket-assigned-to-admin-german";i:1;s:37:"new-client-registered-to-admin-german";i:1;s:37:"new-web-to-lead-form-submitted-german";i:1;s:32:"two-factor-authentication-german";i:1;s:35:"project-finished-to-customer-german";i:1;s:33:"credit-note-send-to-client-german";i:1;s:34:"task-status-change-to-staff-german";i:1;s:37:"task-status-change-to-contacts-german";i:1;s:27:"reminder-email-staff-german";i:1;s:33:"contract-comment-to-client-german";i:1;s:32:"contract-comment-to-admin-german";i:1;s:24:"send-subscription-german";i:1;s:34:"subscription-payment-failed-german";i:1;s:28:"subscription-canceled-german";i:1;s:37:"subscription-payment-succeeded-german";i:1;s:35:"contract-expiration-to-staff-german";i:1;s:27:"gdpr-removal-request-german";i:1;s:32:"gdpr-removal-request-lead-german";i:1;s:36:"client-registration-confirmed-german";i:1;s:31:"contract-signed-to-staff-german";i:1;s:35:"customer-subscribed-to-staff-german";i:1;s:33:"contact-verification-email-german";i:1;s:50:"new-customer-profile-file-uploaded-to-staff-german";i:1;s:34:"event-notification-to-staff-german";i:1;s:43:"subscription-payment-requires-action-german";i:1;s:25:"invoice-due-notice-german";i:1;s:42:"estimate-request-submitted-to-staff-german";i:1;s:32:"estimate-request-assigned-german";i:1;s:40:"estimate-request-received-to-user-german";i:1;s:32:"non-billed-tasks-reminder-german";i:1;s:30:"invoices-batch-payments-german";i:1;s:28:"new-client-created-ukrainian";i:1;s:32:"invoice-send-to-client-ukrainian";i:1;s:33:"new-ticket-opened-admin-ukrainian";i:1;s:22:"ticket-reply-ukrainian";i:1;s:29:"ticket-autoresponse-ukrainian";i:1;s:34:"invoice-payment-recorded-ukrainian";i:1;s:32:"invoice-overdue-notice-ukrainian";i:1;s:30:"invoice-already-send-ukrainian";i:1;s:34:"new-ticket-created-staff-ukrainian";i:1;s:33:"estimate-send-to-client-ukrainian";i:1;s:31:"ticket-reply-to-admin-ukrainian";i:1;s:31:"estimate-already-send-ukrainian";i:1;s:29:"contract-expiration-ukrainian";i:1;s:23:"task-assigned-ukrainian";i:1;s:32:"task-added-as-follower-ukrainian";i:1;s:24:"task-commented-ukrainian";i:1;s:31:"task-added-attachment-ukrainian";i:1;s:36:"estimate-declined-to-staff-ukrainian";i:1;s:36:"estimate-accepted-to-staff-ukrainian";i:1;s:34:"proposal-client-accepted-ukrainian";i:1;s:35:"proposal-send-to-customer-ukrainian";i:1;s:34:"proposal-client-declined-ukrainian";i:1;s:35:"proposal-client-thank-you-ukrainian";i:1;s:36:"proposal-comment-to-client-ukrainian";i:1;s:35:"proposal-comment-to-admin-ukrainian";i:1;s:40:"estimate-thank-you-to-customer-ukrainian";i:1;s:36:"task-deadline-notification-ukrainian";i:1;s:23:"send-contract-ukrainian";i:1;s:43:"invoice-payment-recorded-to-staff-ukrainian";i:1;s:27:"auto-close-ticket-ukrainian";i:1;s:49:"new-project-discussion-created-to-staff-ukrainian";i:1;s:52:"new-project-discussion-created-to-customer-ukrainian";i:1;s:47:"new-project-file-uploaded-to-customer-ukrainian";i:1;s:44:"new-project-file-uploaded-to-staff-ukrainian";i:1;s:52:"new-project-discussion-comment-to-customer-ukrainian";i:1;s:49:"new-project-discussion-comment-to-staff-ukrainian";i:1;s:39:"staff-added-as-project-member-ukrainian";i:1;s:34:"estimate-expiry-reminder-ukrainian";i:1;s:34:"proposal-expiry-reminder-ukrainian";i:1;s:27:"new-staff-created-ukrainian";i:1;s:33:"contact-forgot-password-ukrainian";i:1;s:34:"contact-password-reseted-ukrainian";i:1;s:30:"contact-set-password-ukrainian";i:1;s:31:"staff-forgot-password-ukrainian";i:1;s:32:"staff-password-reseted-ukrainian";i:1;s:29:"assigned-to-project-ukrainian";i:1;s:43:"task-added-attachment-to-contacts-ukrainian";i:1;s:36:"task-commented-to-contacts-ukrainian";i:1;s:27:"new-lead-assigned-ukrainian";i:1;s:26:"client-statement-ukrainian";i:1;s:34:"ticket-assigned-to-admin-ukrainian";i:1;s:40:"new-client-registered-to-admin-ukrainian";i:1;s:40:"new-web-to-lead-form-submitted-ukrainian";i:1;s:35:"two-factor-authentication-ukrainian";i:1;s:38:"project-finished-to-customer-ukrainian";i:1;s:36:"credit-note-send-to-client-ukrainian";i:1;s:37:"task-status-change-to-staff-ukrainian";i:1;s:40:"task-status-change-to-contacts-ukrainian";i:1;s:30:"reminder-email-staff-ukrainian";i:1;s:36:"contract-comment-to-client-ukrainian";i:1;s:35:"contract-comment-to-admin-ukrainian";i:1;s:27:"send-subscription-ukrainian";i:1;s:37:"subscription-payment-failed-ukrainian";i:1;s:31:"subscription-canceled-ukrainian";i:1;s:40:"subscription-payment-succeeded-ukrainian";i:1;s:38:"contract-expiration-to-staff-ukrainian";i:1;s:30:"gdpr-removal-request-ukrainian";i:1;s:35:"gdpr-removal-request-lead-ukrainian";i:1;s:39:"client-registration-confirmed-ukrainian";i:1;s:34:"contract-signed-to-staff-ukrainian";i:1;s:38:"customer-subscribed-to-staff-ukrainian";i:1;s:36:"contact-verification-email-ukrainian";i:1;s:53:"new-customer-profile-file-uploaded-to-staff-ukrainian";i:1;s:37:"event-notification-to-staff-ukrainian";i:1;s:46:"subscription-payment-requires-action-ukrainian";i:1;s:28:"invoice-due-notice-ukrainian";i:1;s:45:"estimate-request-submitted-to-staff-ukrainian";i:1;s:35:"estimate-request-assigned-ukrainian";i:1;s:43:"estimate-request-received-to-user-ukrainian";i:1;s:35:"non-billed-tasks-reminder-ukrainian";i:1;s:33:"invoices-batch-payments-ukrainian";i:1;s:32:"new-client-created-portuguese_br";i:1;s:36:"invoice-send-to-client-portuguese_br";i:1;s:37:"new-ticket-opened-admin-portuguese_br";i:1;s:26:"ticket-reply-portuguese_br";i:1;s:33:"ticket-autoresponse-portuguese_br";i:1;s:38:"invoice-payment-recorded-portuguese_br";i:1;s:36:"invoice-overdue-notice-portuguese_br";i:1;s:34:"invoice-already-send-portuguese_br";i:1;s:38:"new-ticket-created-staff-portuguese_br";i:1;s:37:"estimate-send-to-client-portuguese_br";i:1;s:35:"ticket-reply-to-admin-portuguese_br";i:1;s:35:"estimate-already-send-portuguese_br";i:1;s:33:"contract-expiration-portuguese_br";i:1;s:27:"task-assigned-portuguese_br";i:1;s:36:"task-added-as-follower-portuguese_br";i:1;s:28:"task-commented-portuguese_br";i:1;s:35:"task-added-attachment-portuguese_br";i:1;s:40:"estimate-declined-to-staff-portuguese_br";i:1;s:40:"estimate-accepted-to-staff-portuguese_br";i:1;s:38:"proposal-client-accepted-portuguese_br";i:1;s:39:"proposal-send-to-customer-portuguese_br";i:1;s:38:"proposal-client-declined-portuguese_br";i:1;s:39:"proposal-client-thank-you-portuguese_br";i:1;s:40:"proposal-comment-to-client-portuguese_br";i:1;s:39:"proposal-comment-to-admin-portuguese_br";i:1;s:44:"estimate-thank-you-to-customer-portuguese_br";i:1;s:40:"task-deadline-notification-portuguese_br";i:1;s:27:"send-contract-portuguese_br";i:1;s:47:"invoice-payment-recorded-to-staff-portuguese_br";i:1;s:31:"auto-close-ticket-portuguese_br";i:1;s:53:"new-project-discussion-created-to-staff-portuguese_br";i:1;s:56:"new-project-discussion-created-to-customer-portuguese_br";i:1;s:51:"new-project-file-uploaded-to-customer-portuguese_br";i:1;s:48:"new-project-file-uploaded-to-staff-portuguese_br";i:1;s:56:"new-project-discussion-comment-to-customer-portuguese_br";i:1;s:53:"new-project-discussion-comment-to-staff-portuguese_br";i:1;s:43:"staff-added-as-project-member-portuguese_br";i:1;s:38:"estimate-expiry-reminder-portuguese_br";i:1;s:38:"proposal-expiry-reminder-portuguese_br";i:1;s:31:"new-staff-created-portuguese_br";i:1;s:37:"contact-forgot-password-portuguese_br";i:1;s:38:"contact-password-reseted-portuguese_br";i:1;s:34:"contact-set-password-portuguese_br";i:1;s:35:"staff-forgot-password-portuguese_br";i:1;s:36:"staff-password-reseted-portuguese_br";i:1;s:33:"assigned-to-project-portuguese_br";i:1;s:47:"task-added-attachment-to-contacts-portuguese_br";i:1;s:40:"task-commented-to-contacts-portuguese_br";i:1;s:31:"new-lead-assigned-portuguese_br";i:1;s:30:"client-statement-portuguese_br";i:1;s:38:"ticket-assigned-to-admin-portuguese_br";i:1;s:44:"new-client-registered-to-admin-portuguese_br";i:1;s:44:"new-web-to-lead-form-submitted-portuguese_br";i:1;s:39:"two-factor-authentication-portuguese_br";i:1;s:42:"project-finished-to-customer-portuguese_br";i:1;s:40:"credit-note-send-to-client-portuguese_br";i:1;s:41:"task-status-change-to-staff-portuguese_br";i:1;s:44:"task-status-change-to-contacts-portuguese_br";i:1;s:34:"reminder-email-staff-portuguese_br";i:1;s:40:"contract-comment-to-client-portuguese_br";i:1;s:39:"contract-comment-to-admin-portuguese_br";i:1;s:31:"send-subscription-portuguese_br";i:1;s:41:"subscription-payment-failed-portuguese_br";i:1;s:35:"subscription-canceled-portuguese_br";i:1;s:44:"subscription-payment-succeeded-portuguese_br";i:1;s:42:"contract-expiration-to-staff-portuguese_br";i:1;s:34:"gdpr-removal-request-portuguese_br";i:1;s:39:"gdpr-removal-request-lead-portuguese_br";i:1;s:43:"client-registration-confirmed-portuguese_br";i:1;s:38:"contract-signed-to-staff-portuguese_br";i:1;s:42:"customer-subscribed-to-staff-portuguese_br";i:1;s:40:"contact-verification-email-portuguese_br";i:1;s:57:"new-customer-profile-file-uploaded-to-staff-portuguese_br";i:1;s:41:"event-notification-to-staff-portuguese_br";i:1;s:50:"subscription-payment-requires-action-portuguese_br";i:1;s:32:"invoice-due-notice-portuguese_br";i:1;s:49:"estimate-request-submitted-to-staff-portuguese_br";i:1;s:39:"estimate-request-assigned-portuguese_br";i:1;s:47:"estimate-request-received-to-user-portuguese_br";i:1;s:39:"non-billed-tasks-reminder-portuguese_br";i:1;s:37:"invoices-batch-payments-portuguese_br";i:1;s:25:"new-client-created-slovak";i:1;s:29:"invoice-send-to-client-slovak";i:1;s:30:"new-ticket-opened-admin-slovak";i:1;s:19:"ticket-reply-slovak";i:1;s:26:"ticket-autoresponse-slovak";i:1;s:31:"invoice-payment-recorded-slovak";i:1;s:29:"invoice-overdue-notice-slovak";i:1;s:27:"invoice-already-send-slovak";i:1;s:31:"new-ticket-created-staff-slovak";i:1;s:30:"estimate-send-to-client-slovak";i:1;s:28:"ticket-reply-to-admin-slovak";i:1;s:28:"estimate-already-send-slovak";i:1;s:26:"contract-expiration-slovak";i:1;s:20:"task-assigned-slovak";i:1;s:29:"task-added-as-follower-slovak";i:1;s:21:"task-commented-slovak";i:1;s:28:"task-added-attachment-slovak";i:1;s:33:"estimate-declined-to-staff-slovak";i:1;s:33:"estimate-accepted-to-staff-slovak";i:1;s:31:"proposal-client-accepted-slovak";i:1;s:32:"proposal-send-to-customer-slovak";i:1;s:31:"proposal-client-declined-slovak";i:1;s:32:"proposal-client-thank-you-slovak";i:1;s:33:"proposal-comment-to-client-slovak";i:1;s:32:"proposal-comment-to-admin-slovak";i:1;s:37:"estimate-thank-you-to-customer-slovak";i:1;s:33:"task-deadline-notification-slovak";i:1;s:20:"send-contract-slovak";i:1;s:40:"invoice-payment-recorded-to-staff-slovak";i:1;s:24:"auto-close-ticket-slovak";i:1;s:46:"new-project-discussion-created-to-staff-slovak";i:1;s:49:"new-project-discussion-created-to-customer-slovak";i:1;s:44:"new-project-file-uploaded-to-customer-slovak";i:1;s:41:"new-project-file-uploaded-to-staff-slovak";i:1;s:49:"new-project-discussion-comment-to-customer-slovak";i:1;s:46:"new-project-discussion-comment-to-staff-slovak";i:1;s:36:"staff-added-as-project-member-slovak";i:1;s:31:"estimate-expiry-reminder-slovak";i:1;s:31:"proposal-expiry-reminder-slovak";i:1;s:24:"new-staff-created-slovak";i:1;s:30:"contact-forgot-password-slovak";i:1;s:31:"contact-password-reseted-slovak";i:1;s:27:"contact-set-password-slovak";i:1;s:28:"staff-forgot-password-slovak";i:1;s:29:"staff-password-reseted-slovak";i:1;s:26:"assigned-to-project-slovak";i:1;s:40:"task-added-attachment-to-contacts-slovak";i:1;s:33:"task-commented-to-contacts-slovak";i:1;s:24:"new-lead-assigned-slovak";i:1;s:23:"client-statement-slovak";i:1;s:31:"ticket-assigned-to-admin-slovak";i:1;s:37:"new-client-registered-to-admin-slovak";i:1;s:37:"new-web-to-lead-form-submitted-slovak";i:1;s:32:"two-factor-authentication-slovak";i:1;s:35:"project-finished-to-customer-slovak";i:1;s:33:"credit-note-send-to-client-slovak";i:1;s:34:"task-status-change-to-staff-slovak";i:1;s:37:"task-status-change-to-contacts-slovak";i:1;s:27:"reminder-email-staff-slovak";i:1;s:33:"contract-comment-to-client-slovak";i:1;s:32:"contract-comment-to-admin-slovak";i:1;s:24:"send-subscription-slovak";i:1;s:34:"subscription-payment-failed-slovak";i:1;s:28:"subscription-canceled-slovak";i:1;s:37:"subscription-payment-succeeded-slovak";i:1;s:35:"contract-expiration-to-staff-slovak";i:1;s:27:"gdpr-removal-request-slovak";i:1;s:32:"gdpr-removal-request-lead-slovak";i:1;s:36:"client-registration-confirmed-slovak";i:1;s:31:"contract-signed-to-staff-slovak";i:1;s:35:"customer-subscribed-to-staff-slovak";i:1;s:33:"contact-verification-email-slovak";i:1;s:50:"new-customer-profile-file-uploaded-to-staff-slovak";i:1;s:34:"event-notification-to-staff-slovak";i:1;s:43:"subscription-payment-requires-action-slovak";i:1;s:25:"invoice-due-notice-slovak";i:1;s:42:"estimate-request-submitted-to-staff-slovak";i:1;s:32:"estimate-request-assigned-slovak";i:1;s:40:"estimate-request-received-to-user-slovak";i:1;s:32:"non-billed-tasks-reminder-slovak";i:1;s:30:"invoices-batch-payments-slovak";i:1;s:27:"new-client-created-romanian";i:1;s:31:"invoice-send-to-client-romanian";i:1;s:32:"new-ticket-opened-admin-romanian";i:1;s:21:"ticket-reply-romanian";i:1;s:28:"ticket-autoresponse-romanian";i:1;s:33:"invoice-payment-recorded-romanian";i:1;s:31:"invoice-overdue-notice-romanian";i:1;s:29:"invoice-already-send-romanian";i:1;s:33:"new-ticket-created-staff-romanian";i:1;s:32:"estimate-send-to-client-romanian";i:1;s:30:"ticket-reply-to-admin-romanian";i:1;s:30:"estimate-already-send-romanian";i:1;s:28:"contract-expiration-romanian";i:1;s:22:"task-assigned-romanian";i:1;s:31:"task-added-as-follower-romanian";i:1;s:23:"task-commented-romanian";i:1;s:30:"task-added-attachment-romanian";i:1;s:35:"estimate-declined-to-staff-romanian";i:1;s:35:"estimate-accepted-to-staff-romanian";i:1;s:33:"proposal-client-accepted-romanian";i:1;s:34:"proposal-send-to-customer-romanian";i:1;s:33:"proposal-client-declined-romanian";i:1;s:34:"proposal-client-thank-you-romanian";i:1;s:35:"proposal-comment-to-client-romanian";i:1;s:34:"proposal-comment-to-admin-romanian";i:1;s:39:"estimate-thank-you-to-customer-romanian";i:1;s:35:"task-deadline-notification-romanian";i:1;s:22:"send-contract-romanian";i:1;s:42:"invoice-payment-recorded-to-staff-romanian";i:1;s:26:"auto-close-ticket-romanian";i:1;s:48:"new-project-discussion-created-to-staff-romanian";i:1;s:51:"new-project-discussion-created-to-customer-romanian";i:1;s:46:"new-project-file-uploaded-to-customer-romanian";i:1;s:43:"new-project-file-uploaded-to-staff-romanian";i:1;s:51:"new-project-discussion-comment-to-customer-romanian";i:1;s:48:"new-project-discussion-comment-to-staff-romanian";i:1;s:38:"staff-added-as-project-member-romanian";i:1;s:33:"estimate-expiry-reminder-romanian";i:1;s:33:"proposal-expiry-reminder-romanian";i:1;s:26:"new-staff-created-romanian";i:1;s:32:"contact-forgot-password-romanian";i:1;s:33:"contact-password-reseted-romanian";i:1;s:29:"contact-set-password-romanian";i:1;s:30:"staff-forgot-password-romanian";i:1;s:31:"staff-password-reseted-romanian";i:1;s:28:"assigned-to-project-romanian";i:1;s:42:"task-added-attachment-to-contacts-romanian";i:1;s:35:"task-commented-to-contacts-romanian";i:1;s:26:"new-lead-assigned-romanian";i:1;s:25:"client-statement-romanian";i:1;s:33:"ticket-assigned-to-admin-romanian";i:1;s:39:"new-client-registered-to-admin-romanian";i:1;s:39:"new-web-to-lead-form-submitted-romanian";i:1;s:34:"two-factor-authentication-romanian";i:1;s:37:"project-finished-to-customer-romanian";i:1;s:35:"credit-note-send-to-client-romanian";i:1;s:36:"task-status-change-to-staff-romanian";i:1;s:39:"task-status-change-to-contacts-romanian";i:1;s:29:"reminder-email-staff-romanian";i:1;s:35:"contract-comment-to-client-romanian";i:1;s:34:"contract-comment-to-admin-romanian";i:1;s:26:"send-subscription-romanian";i:1;s:36:"subscription-payment-failed-romanian";i:1;s:30:"subscription-canceled-romanian";i:1;s:39:"subscription-payment-succeeded-romanian";i:1;s:37:"contract-expiration-to-staff-romanian";i:1;s:29:"gdpr-removal-request-romanian";i:1;s:34:"gdpr-removal-request-lead-romanian";i:1;s:38:"client-registration-confirmed-romanian";i:1;s:33:"contract-signed-to-staff-romanian";i:1;s:37:"customer-subscribed-to-staff-romanian";i:1;s:35:"contact-verification-email-romanian";i:1;s:52:"new-customer-profile-file-uploaded-to-staff-romanian";i:1;s:36:"event-notification-to-staff-romanian";i:1;s:45:"subscription-payment-requires-action-romanian";i:1;s:27:"invoice-due-notice-romanian";i:1;s:44:"estimate-request-submitted-to-staff-romanian";i:1;s:34:"estimate-request-assigned-romanian";i:1;s:42:"estimate-request-received-to-user-romanian";i:1;s:34:"non-billed-tasks-reminder-romanian";i:1;s:32:"invoices-batch-payments-romanian";i:1;s:28:"new-client-created-bulgarian";i:1;s:32:"invoice-send-to-client-bulgarian";i:1;s:33:"new-ticket-opened-admin-bulgarian";i:1;s:22:"ticket-reply-bulgarian";i:1;s:29:"ticket-autoresponse-bulgarian";i:1;s:34:"invoice-payment-recorded-bulgarian";i:1;s:32:"invoice-overdue-notice-bulgarian";i:1;s:30:"invoice-already-send-bulgarian";i:1;s:34:"new-ticket-created-staff-bulgarian";i:1;s:33:"estimate-send-to-client-bulgarian";i:1;s:31:"ticket-reply-to-admin-bulgarian";i:1;s:31:"estimate-already-send-bulgarian";i:1;s:29:"contract-expiration-bulgarian";i:1;s:23:"task-assigned-bulgarian";i:1;s:32:"task-added-as-follower-bulgarian";i:1;s:24:"task-commented-bulgarian";i:1;s:31:"task-added-attachment-bulgarian";i:1;s:36:"estimate-declined-to-staff-bulgarian";i:1;s:36:"estimate-accepted-to-staff-bulgarian";i:1;s:34:"proposal-client-accepted-bulgarian";i:1;s:35:"proposal-send-to-customer-bulgarian";i:1;s:34:"proposal-client-declined-bulgarian";i:1;s:35:"proposal-client-thank-you-bulgarian";i:1;s:36:"proposal-comment-to-client-bulgarian";i:1;s:35:"proposal-comment-to-admin-bulgarian";i:1;s:40:"estimate-thank-you-to-customer-bulgarian";i:1;s:36:"task-deadline-notification-bulgarian";i:1;s:23:"send-contract-bulgarian";i:1;s:43:"invoice-payment-recorded-to-staff-bulgarian";i:1;s:27:"auto-close-ticket-bulgarian";i:1;s:49:"new-project-discussion-created-to-staff-bulgarian";i:1;s:52:"new-project-discussion-created-to-customer-bulgarian";i:1;s:47:"new-project-file-uploaded-to-customer-bulgarian";i:1;s:44:"new-project-file-uploaded-to-staff-bulgarian";i:1;s:52:"new-project-discussion-comment-to-customer-bulgarian";i:1;s:49:"new-project-discussion-comment-to-staff-bulgarian";i:1;s:39:"staff-added-as-project-member-bulgarian";i:1;s:34:"estimate-expiry-reminder-bulgarian";i:1;s:34:"proposal-expiry-reminder-bulgarian";i:1;s:27:"new-staff-created-bulgarian";i:1;s:33:"contact-forgot-password-bulgarian";i:1;s:34:"contact-password-reseted-bulgarian";i:1;s:30:"contact-set-password-bulgarian";i:1;s:31:"staff-forgot-password-bulgarian";i:1;s:32:"staff-password-reseted-bulgarian";i:1;s:29:"assigned-to-project-bulgarian";i:1;s:43:"task-added-attachment-to-contacts-bulgarian";i:1;s:36:"task-commented-to-contacts-bulgarian";i:1;s:27:"new-lead-assigned-bulgarian";i:1;s:26:"client-statement-bulgarian";i:1;s:34:"ticket-assigned-to-admin-bulgarian";i:1;s:40:"new-client-registered-to-admin-bulgarian";i:1;s:40:"new-web-to-lead-form-submitted-bulgarian";i:1;s:35:"two-factor-authentication-bulgarian";i:1;s:38:"project-finished-to-customer-bulgarian";i:1;s:36:"credit-note-send-to-client-bulgarian";i:1;s:37:"task-status-change-to-staff-bulgarian";i:1;s:40:"task-status-change-to-contacts-bulgarian";i:1;s:30:"reminder-email-staff-bulgarian";i:1;s:36:"contract-comment-to-client-bulgarian";i:1;s:35:"contract-comment-to-admin-bulgarian";i:1;s:27:"send-subscription-bulgarian";i:1;s:37:"subscription-payment-failed-bulgarian";i:1;s:31:"subscription-canceled-bulgarian";i:1;s:40:"subscription-payment-succeeded-bulgarian";i:1;s:38:"contract-expiration-to-staff-bulgarian";i:1;s:30:"gdpr-removal-request-bulgarian";i:1;s:35:"gdpr-removal-request-lead-bulgarian";i:1;s:39:"client-registration-confirmed-bulgarian";i:1;s:34:"contract-signed-to-staff-bulgarian";i:1;s:38:"customer-subscribed-to-staff-bulgarian";i:1;s:36:"contact-verification-email-bulgarian";i:1;s:53:"new-customer-profile-file-uploaded-to-staff-bulgarian";i:1;s:37:"event-notification-to-staff-bulgarian";i:1;s:46:"subscription-payment-requires-action-bulgarian";i:1;s:28:"invoice-due-notice-bulgarian";i:1;s:45:"estimate-request-submitted-to-staff-bulgarian";i:1;s:35:"estimate-request-assigned-bulgarian";i:1;s:43:"estimate-request-received-to-user-bulgarian";i:1;s:35:"non-billed-tasks-reminder-bulgarian";i:1;s:33:"invoices-batch-payments-bulgarian";i:1;s:26:"new-client-created-spanish";i:1;s:30:"invoice-send-to-client-spanish";i:1;s:31:"new-ticket-opened-admin-spanish";i:1;s:20:"ticket-reply-spanish";i:1;s:27:"ticket-autoresponse-spanish";i:1;s:32:"invoice-payment-recorded-spanish";i:1;s:30:"invoice-overdue-notice-spanish";i:1;s:28:"invoice-already-send-spanish";i:1;s:32:"new-ticket-created-staff-spanish";i:1;s:31:"estimate-send-to-client-spanish";i:1;s:29:"ticket-reply-to-admin-spanish";i:1;s:29:"estimate-already-send-spanish";i:1;s:27:"contract-expiration-spanish";i:1;s:21:"task-assigned-spanish";i:1;s:30:"task-added-as-follower-spanish";i:1;s:22:"task-commented-spanish";i:1;s:29:"task-added-attachment-spanish";i:1;s:34:"estimate-declined-to-staff-spanish";i:1;s:34:"estimate-accepted-to-staff-spanish";i:1;s:32:"proposal-client-accepted-spanish";i:1;s:33:"proposal-send-to-customer-spanish";i:1;s:32:"proposal-client-declined-spanish";i:1;s:33:"proposal-client-thank-you-spanish";i:1;s:34:"proposal-comment-to-client-spanish";i:1;s:33:"proposal-comment-to-admin-spanish";i:1;s:38:"estimate-thank-you-to-customer-spanish";i:1;s:34:"task-deadline-notification-spanish";i:1;s:21:"send-contract-spanish";i:1;s:41:"invoice-payment-recorded-to-staff-spanish";i:1;s:25:"auto-close-ticket-spanish";i:1;s:47:"new-project-discussion-created-to-staff-spanish";i:1;s:50:"new-project-discussion-created-to-customer-spanish";i:1;s:45:"new-project-file-uploaded-to-customer-spanish";i:1;s:42:"new-project-file-uploaded-to-staff-spanish";i:1;s:50:"new-project-discussion-comment-to-customer-spanish";i:1;s:47:"new-project-discussion-comment-to-staff-spanish";i:1;s:37:"staff-added-as-project-member-spanish";i:1;s:32:"estimate-expiry-reminder-spanish";i:1;s:32:"proposal-expiry-reminder-spanish";i:1;s:25:"new-staff-created-spanish";i:1;s:31:"contact-forgot-password-spanish";i:1;s:32:"contact-password-reseted-spanish";i:1;s:28:"contact-set-password-spanish";i:1;s:29:"staff-forgot-password-spanish";i:1;s:30:"staff-password-reseted-spanish";i:1;s:27:"assigned-to-project-spanish";i:1;s:41:"task-added-attachment-to-contacts-spanish";i:1;s:34:"task-commented-to-contacts-spanish";i:1;s:25:"new-lead-assigned-spanish";i:1;s:24:"client-statement-spanish";i:1;s:32:"ticket-assigned-to-admin-spanish";i:1;s:38:"new-client-registered-to-admin-spanish";i:1;s:38:"new-web-to-lead-form-submitted-spanish";i:1;s:33:"two-factor-authentication-spanish";i:1;s:36:"project-finished-to-customer-spanish";i:1;s:34:"credit-note-send-to-client-spanish";i:1;s:35:"task-status-change-to-staff-spanish";i:1;s:38:"task-status-change-to-contacts-spanish";i:1;s:28:"reminder-email-staff-spanish";i:1;s:34:"contract-comment-to-client-spanish";i:1;s:33:"contract-comment-to-admin-spanish";i:1;s:25:"send-subscription-spanish";i:1;s:35:"subscription-payment-failed-spanish";i:1;s:29:"subscription-canceled-spanish";i:1;s:38:"subscription-payment-succeeded-spanish";i:1;s:36:"contract-expiration-to-staff-spanish";i:1;s:28:"gdpr-removal-request-spanish";i:1;s:33:"gdpr-removal-request-lead-spanish";i:1;s:37:"client-registration-confirmed-spanish";i:1;s:32:"contract-signed-to-staff-spanish";i:1;s:36:"customer-subscribed-to-staff-spanish";i:1;s:34:"contact-verification-email-spanish";i:1;s:51:"new-customer-profile-file-uploaded-to-staff-spanish";i:1;s:35:"event-notification-to-staff-spanish";i:1;s:44:"subscription-payment-requires-action-spanish";i:1;s:26:"invoice-due-notice-spanish";i:1;s:43:"estimate-request-submitted-to-staff-spanish";i:1;s:33:"estimate-request-assigned-spanish";i:1;s:41:"estimate-request-received-to-user-spanish";i:1;s:33:"non-billed-tasks-reminder-spanish";i:1;s:31:"invoices-batch-payments-spanish";i:1;s:31:"send-request-approve-vietnamese";i:1;s:24:"send_rejected-vietnamese";i:1;s:23:"send_approve-vietnamese";i:1;s:36:"purchase-order-to-contact-vietnamese";i:1;s:25:"fs-share-staff-vietnamese";i:1;s:26:"fs-share-client-vietnamese";i:1;s:26:"fs-share-public-vietnamese";i:1;s:26:"send-request-approve-greek";i:1;s:19:"send_rejected-greek";i:1;s:18:"send_approve-greek";i:1;s:31:"purchase-order-to-contact-greek";i:1;s:20:"fs-share-staff-greek";i:1;s:21:"fs-share-client-greek";i:1;s:21:"fs-share-public-greek";i:1;s:28:"send-request-approve-swedish";i:1;s:21:"send_rejected-swedish";i:1;s:20:"send_approve-swedish";i:1;s:33:"purchase-order-to-contact-swedish";i:1;s:22:"fs-share-staff-swedish";i:1;s:23:"fs-share-client-swedish";i:1;s:23:"fs-share-public-swedish";i:1;s:28:"send-request-approve-russian";i:1;s:21:"send_rejected-russian";i:1;s:20:"send_approve-russian";i:1;s:33:"purchase-order-to-contact-russian";i:1;s:22:"fs-share-staff-russian";i:1;s:23:"fs-share-client-russian";i:1;s:23:"fs-share-public-russian";i:1;s:26:"send-request-approve-dutch";i:1;s:19:"send_rejected-dutch";i:1;s:18:"send_approve-dutch";i:1;s:31:"purchase-order-to-contact-dutch";i:1;s:20:"fs-share-staff-dutch";i:1;s:21:"fs-share-client-dutch";i:1;s:21:"fs-share-public-dutch";i:1;s:26:"send-request-approve-czech";i:1;s:19:"send_rejected-czech";i:1;s:18:"send_approve-czech";i:1;s:31:"purchase-order-to-contact-czech";i:1;s:20:"fs-share-staff-czech";i:1;s:21:"fs-share-client-czech";i:1;s:21:"fs-share-public-czech";i:1;s:30:"send-request-approve-indonesia";i:1;s:23:"send_rejected-indonesia";i:1;s:22:"send_approve-indonesia";i:1;s:35:"purchase-order-to-contact-indonesia";i:1;s:24:"fs-share-staff-indonesia";i:1;s:25:"fs-share-client-indonesia";i:1;s:25:"fs-share-public-indonesia";i:1;s:27:"send-request-approve-polish";i:1;s:20:"send_rejected-polish";i:1;s:19:"send_approve-polish";i:1;s:32:"purchase-order-to-contact-polish";i:1;s:21:"fs-share-staff-polish";i:1;s:22:"fs-share-client-polish";i:1;s:22:"fs-share-public-polish";i:1;s:31:"send-request-approve-portuguese";i:1;s:24:"send_rejected-portuguese";i:1;s:23:"send_approve-portuguese";i:1;s:36:"purchase-order-to-contact-portuguese";i:1;s:25:"fs-share-staff-portuguese";i:1;s:26:"fs-share-client-portuguese";i:1;s:26:"fs-share-public-portuguese";i:1;s:28:"send-request-approve-chinese";i:1;s:21:"send_rejected-chinese";i:1;s:20:"send_approve-chinese";i:1;s:33:"purchase-order-to-contact-chinese";i:1;s:22:"fs-share-staff-chinese";i:1;s:23:"fs-share-client-chinese";i:1;s:23:"fs-share-public-chinese";i:1;s:28:"send-request-approve-catalan";i:1;s:21:"send_rejected-catalan";i:1;s:20:"send_approve-catalan";i:1;s:33:"purchase-order-to-contact-catalan";i:1;s:22:"fs-share-staff-catalan";i:1;s:23:"fs-share-client-catalan";i:1;s:23:"fs-share-public-catalan";i:1;s:27:"send-request-approve-french";i:1;s:20:"send_rejected-french";i:1;s:19:"send_approve-french";i:1;s:32:"purchase-order-to-contact-french";i:1;s:21:"fs-share-staff-french";i:1;s:22:"fs-share-client-french";i:1;s:22:"fs-share-public-french";i:1;s:28:"send-request-approve-turkish";i:1;s:21:"send_rejected-turkish";i:1;s:20:"send_approve-turkish";i:1;s:33:"purchase-order-to-contact-turkish";i:1;s:22:"fs-share-staff-turkish";i:1;s:23:"fs-share-client-turkish";i:1;s:23:"fs-share-public-turkish";i:1;s:29:"send-request-approve-japanese";i:1;s:22:"send_rejected-japanese";i:1;s:21:"send_approve-japanese";i:1;s:34:"purchase-order-to-contact-japanese";i:1;s:23:"fs-share-staff-japanese";i:1;s:24:"fs-share-client-japanese";i:1;s:24:"fs-share-public-japanese";i:1;s:28:"send-request-approve-persian";i:1;s:21:"send_rejected-persian";i:1;s:20:"send_approve-persian";i:1;s:33:"purchase-order-to-contact-persian";i:1;s:22:"fs-share-staff-persian";i:1;s:23:"fs-share-client-persian";i:1;s:23:"fs-share-public-persian";i:1;s:28:"send-request-approve-italian";i:1;s:21:"send_rejected-italian";i:1;s:20:"send_approve-italian";i:1;s:33:"purchase-order-to-contact-italian";i:1;s:22:"fs-share-staff-italian";i:1;s:23:"fs-share-client-italian";i:1;s:23:"fs-share-public-italian";i:1;s:27:"send-request-approve-german";i:1;s:20:"send_rejected-german";i:1;s:19:"send_approve-german";i:1;s:32:"purchase-order-to-contact-german";i:1;s:21:"fs-share-staff-german";i:1;s:22:"fs-share-client-german";i:1;s:22:"fs-share-public-german";i:1;s:30:"send-request-approve-ukrainian";i:1;s:23:"send_rejected-ukrainian";i:1;s:22:"send_approve-ukrainian";i:1;s:35:"purchase-order-to-contact-ukrainian";i:1;s:24:"fs-share-staff-ukrainian";i:1;s:25:"fs-share-client-ukrainian";i:1;s:25:"fs-share-public-ukrainian";i:1;s:34:"send-request-approve-portuguese_br";i:1;s:27:"send_rejected-portuguese_br";i:1;s:26:"send_approve-portuguese_br";i:1;s:39:"purchase-order-to-contact-portuguese_br";i:1;s:28:"fs-share-staff-portuguese_br";i:1;s:29:"fs-share-client-portuguese_br";i:1;s:29:"fs-share-public-portuguese_br";i:1;s:27:"send-request-approve-slovak";i:1;s:20:"send_rejected-slovak";i:1;s:19:"send_approve-slovak";i:1;s:32:"purchase-order-to-contact-slovak";i:1;s:21:"fs-share-staff-slovak";i:1;s:22:"fs-share-client-slovak";i:1;s:22:"fs-share-public-slovak";i:1;s:29:"send-request-approve-romanian";i:1;s:22:"send_rejected-romanian";i:1;s:21:"send_approve-romanian";i:1;s:34:"purchase-order-to-contact-romanian";i:1;s:23:"fs-share-staff-romanian";i:1;s:24:"fs-share-client-romanian";i:1;s:24:"fs-share-public-romanian";i:1;s:30:"send-request-approve-bulgarian";i:1;s:23:"send_rejected-bulgarian";i:1;s:22:"send_approve-bulgarian";i:1;s:35:"purchase-order-to-contact-bulgarian";i:1;s:24:"fs-share-staff-bulgarian";i:1;s:25:"fs-share-client-bulgarian";i:1;s:25:"fs-share-public-bulgarian";i:1;s:28:"send-request-approve-spanish";i:1;s:21:"send_rejected-spanish";i:1;s:20:"send_approve-spanish";i:1;s:33:"purchase-order-to-contact-spanish";i:1;s:22:"fs-share-staff-spanish";i:1;s:23:"fs-share-client-spanish";i:1;s:23:"fs-share-public-spanish";i:1;}', 0),
	(212, 'proposal_accept_identity_confirmation', '1', 0),
	(213, 'estimate_accept_identity_confirmation', '1', 0),
	(214, 'new_task_auto_follower_current_member', '0', 1),
	(215, 'task_biillable_checked_on_creation', '1', 1),
	(216, 'predefined_clientnote_credit_note', '', 1),
	(217, 'predefined_terms_credit_note', '', 1),
	(218, 'next_credit_note_number', '1', 1),
	(219, 'credit_note_prefix', 'CN-', 1),
	(220, 'credit_note_number_decrement_on_delete', '1', 1),
	(221, 'pdf_format_credit_note', 'A4-PORTRAIT', 1),
	(222, 'show_pdf_signature_credit_note', '1', 0),
	(223, 'show_credit_note_reminders_on_calendar', '1', 1),
	(224, 'show_amount_due_on_invoice', '1', 1),
	(225, 'show_total_paid_on_invoice', '1', 1),
	(226, 'show_credits_applied_on_invoice', '1', 1),
	(227, 'staff_members_create_inline_lead_status', '1', 1),
	(228, 'staff_members_create_inline_customer_groups', '1', 1),
	(229, 'staff_members_create_inline_ticket_services', '1', 1),
	(230, 'staff_members_save_tickets_predefined_replies', '1', 1),
	(231, 'staff_members_create_inline_contract_types', '1', 1),
	(232, 'staff_members_create_inline_expense_categories', '1', 1),
	(233, 'show_project_on_credit_note', '1', 1),
	(234, 'proposals_auto_operations_hour', '21', 1),
	(235, 'estimates_auto_operations_hour', '21', 1),
	(236, 'contracts_auto_operations_hour', '21', 1),
	(237, 'credit_note_number_format', '1', 1),
	(238, 'allow_non_admin_members_to_import_leads', '0', 1),
	(239, 'e_sign_legal_text', 'By clicking on "Sign", I consent to be legally bound by this electronic representation of my signature.', 1),
	(240, 'show_pdf_signature_contract', '1', 1),
	(241, 'view_contract_only_logged_in', '0', 1),
	(242, 'show_subscriptions_in_customers_area', '1', 1),
	(243, 'calendar_only_assigned_tasks', '0', 1),
	(244, 'after_subscription_payment_captured', 'send_invoice_and_receipt', 1),
	(245, 'mail_engine', 'phpmailer', 1),
	(246, 'gdpr_enable_terms_and_conditions', '0', 1),
	(247, 'privacy_policy', '', 1),
	(248, 'terms_and_conditions', '', 1),
	(249, 'gdpr_enable_terms_and_conditions_lead_form', '0', 1),
	(250, 'gdpr_enable_terms_and_conditions_ticket_form', '0', 1),
	(251, 'gdpr_contact_enable_right_to_be_forgotten', '0', 1),
	(252, 'show_gdpr_in_customers_menu', '1', 1),
	(253, 'show_gdpr_link_in_footer', '1', 1),
	(254, 'enable_gdpr', '1', 1),
	(255, 'gdpr_on_forgotten_remove_invoices_credit_notes', '0', 1),
	(256, 'gdpr_on_forgotten_remove_estimates', '0', 1),
	(257, 'gdpr_enable_consent_for_contacts', '0', 1),
	(258, 'gdpr_consent_public_page_top_block', '', 1),
	(259, 'gdpr_page_top_information_block', '', 1),
	(260, 'gdpr_enable_lead_public_form', '0', 1),
	(261, 'gdpr_show_lead_custom_fields_on_public_form', '0', 1),
	(262, 'gdpr_lead_attachments_on_public_form', '0', 1),
	(263, 'gdpr_enable_consent_for_leads', '0', 1),
	(264, 'gdpr_lead_enable_right_to_be_forgotten', '0', 1),
	(265, 'allow_staff_view_invoices_assigned', '1', 1),
	(266, 'gdpr_data_portability_leads', '0', 1),
	(267, 'gdpr_lead_data_portability_allowed', '', 1),
	(268, 'gdpr_contact_data_portability_allowed', '', 1),
	(269, 'gdpr_data_portability_contacts', '0', 1),
	(270, 'allow_staff_view_estimates_assigned', '1', 1),
	(271, 'gdpr_after_lead_converted_delete', '0', 1),
	(272, 'gdpr_show_terms_and_conditions_in_footer', '0', 1),
	(273, 'save_last_order_for_tables', '0', 1),
	(274, 'company_logo_dark', '', 1),
	(275, 'customers_register_require_confirmation', '0', 1),
	(276, 'allow_non_admin_staff_to_delete_ticket_attachments', '0', 1),
	(277, 'receive_notification_on_new_ticket_replies', '1', 0),
	(278, 'google_client_id', '', 1),
	(279, 'enable_google_picker', '1', 1),
	(280, 'show_ticket_reminders_on_calendar', '1', 1),
	(281, 'ticket_import_reply_only', '0', 1),
	(282, 'visible_customer_profile_tabs', 'a:19:{s:7:"profile";b:0;s:8:"contacts";b:0;s:5:"notes";b:1;s:9:"statement";b:1;s:8:"invoices";b:1;s:8:"payments";b:1;s:9:"proposals";b:1;s:12:"credit_notes";b:1;s:9:"estimates";b:1;s:13:"subscriptions";b:1;s:8:"expenses";b:1;s:9:"contracts";b:1;s:8:"projects";b:1;s:5:"tasks";b:1;s:7:"tickets";b:1;s:11:"attachments";b:1;s:5:"vault";b:1;s:9:"reminders";b:1;s:3:"map";b:1;}', 0),
	(283, 'show_project_on_invoice', '1', 1),
	(284, 'show_project_on_estimate', '1', 1),
	(285, 'staff_members_create_inline_lead_source', '1', 1),
	(286, 'lead_unique_validation', '["email"]', 1),
	(287, 'last_upgrade_copy_data', '', 1),
	(288, 'custom_js_admin_scripts', '', 1),
	(289, 'custom_js_customer_scripts', '0', 1),
	(290, 'stripe_webhook_id', '', 1),
	(291, 'stripe_webhook_signing_secret', '', 1),
	(292, 'stripe_ideal_webhook_id', '', 1),
	(293, 'stripe_ideal_webhook_signing_secret', '', 1),
	(294, 'show_php_version_notice', '1', 0),
	(295, 'recaptcha_ignore_ips', '', 1),
	(296, 'show_task_reminders_on_calendar', '1', 1),
	(297, 'customer_settings', 'true', 1),
	(298, 'tasks_reminder_notification_hour', '21', 1),
	(299, 'allow_primary_contact_to_manage_other_contacts', '0', 1),
	(300, 'items_table_amounts_exclude_currency_symbol', '1', 1),
	(301, 'round_off_task_timer_option', '0', 1),
	(302, 'round_off_task_timer_time', '5', 1),
	(303, 'bitly_access_token', '', 1),
	(304, 'enable_support_menu_badges', '0', 1),
	(305, 'attach_invoice_to_payment_receipt_email', '0', 1),
	(306, 'invoice_due_notice_before', '2', 1),
	(307, 'invoice_due_notice_resend_after', '0', 1),
	(308, '_leads_settings', 'true', 1),
	(309, 'show_estimate_request_in_customers_area', '0', 1),
	(310, 'gdpr_enable_terms_and_conditions_estimate_request_form', '0', 1),
	(311, 'upgraded_from_version', '', 0),
	(312, 'identification_key', '124885565164951210662518eaaa17f2', 1),
	(313, 'automatically_stop_task_timer_after_hours', '8', 1),
	(314, 'automatically_assign_ticket_to_first_staff_responding', '0', 1),
	(315, 'reminder_for_completed_but_not_billed_tasks', '0', 1),
	(316, 'staff_notify_completed_but_not_billed_tasks', '["1"]', 1),
	(317, 'reminder_for_completed_but_not_billed_tasks_days', '["Monday"]', 1),
	(318, 'tasks_reminder_notification_last_notified_day', '', 1),
	(319, 'sms_clickatell_api_key', '', 1),
	(320, 'sms_clickatell_active', '0', 1),
	(321, 'sms_clickatell_initialized', '1', 1),
	(322, 'sms_msg91_sender_id', '', 1),
	(323, 'sms_msg91_api_type', 'api', 1),
	(324, 'sms_msg91_auth_key', '', 1),
	(325, 'sms_msg91_active', '0', 1),
	(326, 'sms_msg91_initialized', '1', 1),
	(327, 'sms_twilio_account_sid', '', 1),
	(328, 'sms_twilio_auth_token', '', 1),
	(329, 'sms_twilio_phone_number', '', 1),
	(330, 'sms_twilio_sender_id', '', 1),
	(331, 'sms_twilio_active', '0', 1),
	(332, 'sms_twilio_initialized', '1', 1),
	(333, 'gerencianet_gateway', 'enable', 1),
	(334, 'paymentmethod_gerencianet_active', '1', 1),
	(335, 'paymentmethod_gerencianet_label', 'Boleto | PIX', 1),
	(336, 'paymentmethod_gerencianet_aplicacao_nome_gerencianet', '89af3dcd1d02a99bbf490bf84c699e0143f65c5445ad6c13bf30af1cfbf46ae1501196b141e80932616a2ac5d6120ed3e17839fa2825711f9e056785849f5eaejOnuOkHB1FdIMlMxncpLz8nIoE5iHbH4illFMJ1CrmY=', 0),
	(337, 'paymentmethod_gerencianet_production_client_id', '64e9cff2ef51b032f31632438fd2952710b9597634661a0c8f862eed9e038c1d9e129d21206e7aa0c1f73cab27481f3ad51908479fc9ec9d66666cc2214f5a1efKMNh3RgAbatdroC1XG29a+MKjN7z3ZgbKo/qE5sJtFAhXLYtGT6+Ivdq80L8Ug1jYwt6DxzOnvEVZoBoEkO94DJWPQIf3AapyMtzpim968=', 0),
	(338, 'paymentmethod_gerencianet_production_client_secret', '28a961a755bb5b249117373016d6e755beab30bb47f37d01f2b10e802e79e3b5f4b19d7cd2b72ff7e3d64e6380a483d0637b0eb5f9d2fb4009e88f4147cae4c4Be8pHph+bLnTcM0IEH3YLL428ksIgPj8OYsYuV0R/tBWclzZgsQ/wGNQsbIeKdXC29dGLi+y+iyjZN8ePRhszQZqI+gMvKEYDxWOTJTiaLc=', 0),
	(339, 'paymentmethod_gerencianet_dev_client_id', '16dc419258a060d4ec847e7ed0879f3cd9a2ee5bdf8652e84c43fbbe2cbc7d8ba8ceee8f59bfa2d456746f75036912f8b6e91776bd68567e779dd070759fc74bfJtOjpiLidM9aDhUU/kveZyPVkPxhdUhBnQaXxYp4nZhBWxxgXnUr2oD33Pt275Vx52anQ6vqtpcO6fQstpnvhryxQuywx8Z5LUIACITFWQ=', 0),
	(340, 'paymentmethod_gerencianet_dev_client_secret', 'e1448ad9c755b67e2282b44432e00c5a76429876a51dcba35ae41760b7ac6eaace18a79bc78f53d20a6dc6c7d7b6936bbcda6aa16ad4404249fb5b57efdf244f/ANiG4jBAdz3X3JWi6FR4gceC6e4ABBZbfW7/k9m125nDKiqY99qP+T5D8+5o8XyWNZ7L/itM0QA3XFQNcj4vYtu2xHfTdZwNj6XikkAc8I=', 0),
	(341, 'paymentmethod_gerencianet_check_billet', '1', 0),
	(342, 'paymentmethod_gerencianet_description_dashboard', 'Pagamento de Fatura: {invoice_number}', 0),
	(343, 'paymentmethod_gerencianet_currencies', 'BRL', 0),
	(344, 'paymentmethod_gerencianet_test_mode_enabled', '0', 0),
	(345, 'paymentmethod_gerencianet_codigo_identificador_conta', 'e185cac40e02088cd56bab244f98181d7a43cb6a7b7a1505be3e329171ba862f94ec7d278a47e64fb51ef861e355d7bde77505d1335449b7a4e6835da1ebbc13ujhkySivcmItow8Mf4yIF0qLSj1Qd0OHQSoaHQwLeTdoz5Dpu8jAKscAozEndFrEe+SJOvHxRDzqq3oci9ZtxQ==', 0),
	(346, 'paymentmethod_gerencianet_tipo_pagamento_pix', '1', 0),
	(347, 'paymentmethod_gerencianet_pagamento_pix_chave', 'claudinei@paladiniadv.com.br', 0),
	(348, 'paymentmethod_gerencianet_tipo_pagamento_pix_certificado_pem_producao', '/media/gerencianet/producao-319262-crm1.pem', 0),
	(349, 'paymentmethod_gerencianet_tipo_pagamento_pix_certificado_pem_homologacao', '/media/gerencianet/homologacao-319262-crmhomologacao.pem', 0),
	(350, 'paymentmethod_gerencianet_tipo_pagamento_cartaocredito', '1', 0),
	(351, 'paymentmethod_gerencianet_tipo_pagamento_boleto', '1', 0),
	(352, 'paymentmethod_gerencianet_default_selected', '1', 1),
	(353, 'paymentmethod_gerencianet_initialized', '1', 1),
	(354, 'paymentmethod_instamojo_active', '0', 1),
	(355, 'paymentmethod_instamojo_label', 'Instamojo', 1),
	(356, 'paymentmethod_instamojo_api_key', '', 0),
	(357, 'paymentmethod_instamojo_auth_token', '', 0),
	(358, 'paymentmethod_instamojo_description_dashboard', 'Payment for Invoice {invoice_number}', 0),
	(359, 'paymentmethod_instamojo_currencies', 'INR', 0),
	(360, 'paymentmethod_instamojo_test_mode_enabled', '1', 0),
	(361, 'paymentmethod_instamojo_default_selected', '1', 1),
	(362, 'paymentmethod_instamojo_initialized', '1', 1),
	(363, 'paymentmethod_mollie_active', '0', 1),
	(364, 'paymentmethod_mollie_label', 'Mollie', 1),
	(365, 'paymentmethod_mollie_api_key', '', 0),
	(366, 'paymentmethod_mollie_description_dashboard', 'Payment for Invoice {invoice_number}', 0),
	(367, 'paymentmethod_mollie_currencies', 'EUR', 0),
	(368, 'paymentmethod_mollie_test_mode_enabled', '1', 0),
	(369, 'paymentmethod_mollie_default_selected', '1', 1),
	(370, 'paymentmethod_mollie_initialized', '1', 1),
	(371, 'paymentmethod_paypal_braintree_active', '0', 1),
	(372, 'paymentmethod_paypal_braintree_label', 'Braintree', 1),
	(373, 'paymentmethod_paypal_braintree_merchant_id', '', 0),
	(374, 'paymentmethod_paypal_braintree_api_public_key', '', 0),
	(375, 'paymentmethod_paypal_braintree_api_private_key', '', 0),
	(376, 'paymentmethod_paypal_braintree_currencies', 'USD', 0),
	(377, 'paymentmethod_paypal_braintree_paypal_enabled', '1', 0),
	(378, 'paymentmethod_paypal_braintree_test_mode_enabled', '1', 0),
	(379, 'paymentmethod_paypal_braintree_default_selected', '1', 1),
	(380, 'paymentmethod_paypal_braintree_initialized', '1', 1),
	(381, 'paymentmethod_paypal_checkout_active', '0', 1),
	(382, 'paymentmethod_paypal_checkout_label', 'Paypal Smart Checkout', 1),
	(383, 'paymentmethod_paypal_checkout_client_id', '', 0),
	(384, 'paymentmethod_paypal_checkout_secret', '', 0),
	(385, 'paymentmethod_paypal_checkout_payment_description', 'Payment for Invoice {invoice_number}', 0),
	(386, 'paymentmethod_paypal_checkout_currencies', 'USD,CAD,EUR', 0),
	(387, 'paymentmethod_paypal_checkout_test_mode_enabled', '1', 0),
	(388, 'paymentmethod_paypal_checkout_default_selected', '1', 1),
	(389, 'paymentmethod_paypal_checkout_initialized', '1', 1),
	(390, 'paymentmethod_paypal_active', '0', 1),
	(391, 'paymentmethod_paypal_label', 'Paypal', 1),
	(392, 'paymentmethod_paypal_username', '', 0),
	(393, 'paymentmethod_paypal_password', '', 0),
	(394, 'paymentmethod_paypal_signature', '', 0),
	(395, 'paymentmethod_paypal_description_dashboard', 'Payment for Invoice {invoice_number}', 0),
	(396, 'paymentmethod_paypal_currencies', 'EUR,USD', 0),
	(397, 'paymentmethod_paypal_test_mode_enabled', '1', 0),
	(398, 'paymentmethod_paypal_default_selected', '1', 1),
	(399, 'paymentmethod_paypal_initialized', '1', 1),
	(400, 'paymentmethod_payu_money_active', '0', 1),
	(401, 'paymentmethod_payu_money_label', 'PayU Money', 1),
	(402, 'paymentmethod_payu_money_key', '', 0),
	(403, 'paymentmethod_payu_money_salt', '', 0),
	(404, 'paymentmethod_payu_money_description_dashboard', 'Payment for Invoice {invoice_number}', 0),
	(405, 'paymentmethod_payu_money_currencies', 'INR', 0),
	(406, 'paymentmethod_payu_money_test_mode_enabled', '1', 0),
	(407, 'paymentmethod_payu_money_default_selected', '1', 1),
	(408, 'paymentmethod_payu_money_initialized', '1', 1),
	(409, 'paymentmethod_stripe_active', '0', 1),
	(410, 'paymentmethod_stripe_label', 'Stripe Checkout', 1),
	(411, 'paymentmethod_stripe_api_publishable_key', '', 0),
	(412, 'paymentmethod_stripe_api_secret_key', '', 0),
	(413, 'paymentmethod_stripe_description_dashboard', 'Payment for Invoice {invoice_number}', 0),
	(414, 'paymentmethod_stripe_currencies', 'USD,CAD', 0),
	(415, 'paymentmethod_stripe_allow_primary_contact_to_update_credit_card', '1', 0),
	(416, 'paymentmethod_stripe_default_selected', '1', 1),
	(417, 'paymentmethod_stripe_initialized', '1', 1),
	(418, 'paymentmethod_stripe_ideal_active', '0', 1),
	(419, 'paymentmethod_stripe_ideal_label', 'Stripe iDEAL', 1),
	(420, 'paymentmethod_stripe_ideal_api_secret_key', '', 0),
	(421, 'paymentmethod_stripe_ideal_api_publishable_key', '', 0),
	(422, 'paymentmethod_stripe_ideal_description_dashboard', 'Payment for Invoice {invoice_number}', 0),
	(423, 'paymentmethod_stripe_ideal_statement_descriptor', 'Payment for Invoice {invoice_number}', 0),
	(424, 'paymentmethod_stripe_ideal_currencies', 'EUR', 0),
	(425, 'paymentmethod_stripe_ideal_default_selected', '1', 1),
	(426, 'paymentmethod_stripe_ideal_initialized', '1', 1),
	(427, 'paymentmethod_two_checkout_active', '0', 1),
	(428, 'paymentmethod_two_checkout_label', '2Checkout', 1),
	(429, 'paymentmethod_two_checkout_merchant_code', '', 0),
	(430, 'paymentmethod_two_checkout_secret_key', '', 0),
	(431, 'paymentmethod_two_checkout_description', 'Payment for Invoice {invoice_number}', 0),
	(432, 'paymentmethod_two_checkout_currencies', 'USD, EUR, GBP', 0),
	(433, 'paymentmethod_two_checkout_test_mode_enabled', '1', 0),
	(434, 'paymentmethod_two_checkout_default_selected', '1', 1),
	(435, 'paymentmethod_two_checkout_initialized', '1', 1),
	(436, 'paymentmethod_authorize_acceptjs_active', '0', 1),
	(437, 'paymentmethod_authorize_acceptjs_label', 'Authorize.net Accept.js', 1),
	(438, 'paymentmethod_authorize_acceptjs_public_key', '', 0),
	(439, 'paymentmethod_authorize_acceptjs_api_login_id', '', 0),
	(440, 'paymentmethod_authorize_acceptjs_api_transaction_key', '', 0),
	(441, 'paymentmethod_authorize_acceptjs_description_dashboard', 'Payment for Invoice {invoice_number}', 0),
	(442, 'paymentmethod_authorize_acceptjs_currencies', 'USD', 0),
	(443, 'paymentmethod_authorize_acceptjs_test_mode_enabled', '0', 0),
	(444, 'paymentmethod_authorize_acceptjs_default_selected', '1', 1),
	(445, 'paymentmethod_authorize_acceptjs_initialized', '1', 1),
	(446, 'auto_backup_enabled', '0', 1),
	(447, 'auto_backup_every', '7', 1),
	(448, 'last_auto_backup', '', 1),
	(449, 'delete_backups_older_then', '0', 1),
	(450, 'auto_backup_hour', '6', 1),
	(451, 'aside_menu_active', '{"dashboard":{"id":"dashboard","icon":"","disabled":"false","position":1},"contracts":{"id":"contracts","icon":"","disabled":"false","position":"10"},"customers":{"id":"customers","icon":"","disabled":"false","position":"15"},"sales":{"id":"sales","icon":"","disabled":"false","position":"20","children":{"invoices":{"disabled":"false","id":"invoices","icon":"","position":"5"},"proposals":{"disabled":"false","id":"proposals","icon":"","position":"10"},"estimates":{"disabled":"true","id":"estimates","icon":"","position":"15"},"payments":{"disabled":"false","id":"payments","icon":"","position":"20"},"credit_notes":{"id":"credit_notes","disabled":"true","icon":"","position":"25"},"items":{"id":"items","disabled":"true","icon":"","position":"30"}}},"estimate_request":{"id":"estimate_request","icon":"","disabled":"false","position":"25"},"tasks":{"id":"tasks","icon":"","disabled":"false","position":"30"},"projects":{"id":"projects","icon":"","disabled":"false","position":"35"},"leads":{"id":"leads","icon":"","disabled":"false","position":"40"},"commission":{"id":"commission","icon":"","disabled":"false","position":"45","children":{"manage-commission":{"disabled":"false","id":"manage-commission","icon":"","position":"5"},"commission-receipt":{"disabled":"false","id":"commission-receipt","icon":"","position":"10"},"commission-applicable-staff":{"disabled":"false","id":"commission-applicable-staff","icon":"","position":"15"},"commission-applicable-client":{"disabled":"false","id":"commission-applicable-client","icon":"","position":"20"},"commission-policy":{"disabled":"false","id":"commission-policy","icon":"","position":"25"},"commission-setting":{"disabled":"false","id":"commission-setting","icon":"","position":"30"}}},"utilities":{"id":"utilities","icon":"","disabled":"false","position":"50","children":{"media":{"disabled":"false","id":"media","icon":"","position":"5"},"bulk-pdf-exporter":{"disabled":"false","id":"bulk-pdf-exporter","icon":"","position":"10"},"calendar":{"disabled":"false","id":"calendar","icon":"","position":"15"},"announcements":{"disabled":"false","id":"announcements","icon":"","position":"20"},"goals-tracking":{"disabled":"false","id":"goals-tracking","icon":"","position":"25"},"activity-log":{"disabled":"false","id":"activity-log","icon":"","position":"30"},"surveys":{"disabled":"false","id":"surveys","icon":"","position":"35"},"utility_backup":{"disabled":"false","id":"utility_backup","icon":"","position":"40"},"ticket-pipe-log":{"disabled":"false","id":"ticket-pipe-log","icon":"","position":"45"}}},"accounting":{"id":"accounting","icon":"","disabled":"false","position":"55","children":{"accounting_dashboard":{"disabled":"false","id":"accounting_dashboard","icon":"","position":"5"},"accounting_transaction":{"disabled":"false","id":"accounting_transaction","icon":"","position":"10"},"accounting_journal_entry":{"disabled":"false","id":"accounting_journal_entry","icon":"","position":"15"},"accounting_transfer":{"disabled":"false","id":"accounting_transfer","icon":"","position":"20"},"accounting_chart_of_accounts":{"disabled":"false","id":"accounting_chart_of_accounts","icon":"","position":"25"},"accounting_reconcile":{"disabled":"false","id":"accounting_reconcile","icon":"","position":"30"},"accounting_budget":{"disabled":"false","id":"accounting_budget","icon":"","position":"35"},"accounting_report":{"disabled":"false","id":"accounting_report","icon":"","position":"40"},"accounting_setting":{"disabled":"false","id":"accounting_setting","icon":"","position":"45"}}},"reports":{"id":"reports","icon":"","disabled":"false","position":"60","children":{"sales-reports":{"disabled":"false","id":"sales-reports","icon":"","position":"5"},"expenses-reports":{"disabled":"false","id":"expenses-reports","icon":"","position":"10"},"expenses-vs-income-reports":{"disabled":"false","id":"expenses-vs-income-reports","icon":"","position":"15"},"leads-reports":{"disabled":"false","id":"leads-reports","icon":"","position":"20"},"timesheets-reports":{"disabled":"false","id":"timesheets-reports","icon":"","position":"25"},"knowledge-base-reports":{"disabled":"false","id":"knowledge-base-reports","icon":"","position":"30"}}},"support":{"id":"support","icon":"","disabled":"false","position":"65"},"prchat":{"id":"prchat","icon":"","disabled":"false","position":"70"},"subscriptions":{"id":"subscriptions","icon":"","disabled":"true","position":"75"},"expenses":{"id":"expenses","icon":"","disabled":"true","position":"80"},"knowledge-base":{"id":"knowledge-base","icon":"","disabled":"false","position":"85"}}', 1),
	(452, 'setup_menu_active', '{"staff":{"id":"staff","icon":"","disabled":"false","position":"5"},"customers":{"id":"customers","icon":"","disabled":"false","position":"10","children":{"customer-groups":{"disabled":"false","id":"customer-groups","icon":"","position":"5"}}},"support":{"id":"support","icon":"","disabled":"false","position":"15","children":{"departments":{"disabled":"false","id":"departments","icon":"","position":"5"},"tickets-predefined-replies":{"disabled":"false","id":"tickets-predefined-replies","icon":"","position":"10"},"tickets-priorities":{"disabled":"false","id":"tickets-priorities","icon":"","position":"15"},"tickets-statuses":{"disabled":"false","id":"tickets-statuses","icon":"","position":"20"},"tickets-services":{"disabled":"false","id":"tickets-services","icon":"","position":"25"},"tickets-spam-filters":{"disabled":"false","id":"tickets-spam-filters","icon":"","position":"30"}}},"leads":{"id":"leads","icon":"","disabled":"false","position":"20","children":{"leads-sources":{"disabled":"false","id":"leads-sources","icon":"","position":"5"},"leads-statuses":{"disabled":"false","id":"leads-statuses","icon":"","position":"10"},"leads-email-integration":{"disabled":"false","id":"leads-email-integration","icon":"","position":"15"},"web-to-lead":{"disabled":"false","id":"web-to-lead","icon":"","position":"20"}}},"finance":{"id":"finance","icon":"","disabled":"false","position":"25","children":{"taxes":{"disabled":"false","id":"taxes","icon":"","position":"5"},"currencies":{"disabled":"false","id":"currencies","icon":"","position":"10"},"payment-modes":{"disabled":"false","id":"payment-modes","icon":"","position":"15"},"expenses-categories":{"disabled":"false","id":"expenses-categories","icon":"","position":"20"}}},"contracts":{"id":"contracts","icon":"","disabled":"false","position":"30","children":{"contracts-types":{"disabled":"false","id":"contracts-types","icon":"","position":"5"}}},"estimate_request":{"id":"estimate_request","icon":"","disabled":"false","position":"35","children":{"estimate-request-forms":{"disabled":"false","id":"estimate-request-forms","icon":"","position":"5"},"estimate-request-statuses":{"disabled":"false","id":"estimate-request-statuses","icon":"","position":"10"}}},"modules":{"id":"modules","icon":"","disabled":"false","position":"40"},"gerencianet_gateway-menu-id":{"id":"gerencianet_gateway-menu-id","icon":"","disabled":"true","position":"45"},"email-templates":{"id":"email-templates","icon":"","disabled":"false","position":"50"},"custom-fields":{"id":"custom-fields","icon":"","disabled":"false","position":"55"},"gdpr":{"id":"gdpr","icon":"","disabled":"false","position":"60"},"roles":{"id":"roles","icon":"","disabled":"false","position":"65"},"menu-options":{"id":"menu-options","icon":"","disabled":"false","position":"70","children":{"main-menu-options":{"disabled":"false","id":"main-menu-options","icon":"","position":"5"},"setup-menu-options":{"disabled":"false","id":"setup-menu-options","icon":"","position":"10"}}},"theme-style":{"id":"theme-style","icon":"","disabled":"false","position":"75"},"settings":{"id":"settings","icon":"","disabled":"false","position":"80"}}', 1),
	(453, 'survey_send_emails_per_cron_run', '100', 1),
	(454, 'last_survey_send_cron', '', 1),
	(455, 'theme_style', '[]', 1),
	(456, 'theme_style_custom_admin_area', '', 1),
	(457, 'theme_style_custom_clients_area', '', 1),
	(458, 'theme_style_custom_clients_and_admin_area', '', 1),
	(459, 'calculate_recurring_invoice', '0', 1),
	(460, 'paymentmethod_pagseguro_active', '0', 1),
	(461, 'paymentmethod_pagseguro_label', 'PagSeguro', 1),
	(462, 'paymentmethod_pagseguro_pagseguro_email', '', 0),
	(463, 'paymentmethod_pagseguro_pagseguro_token', '', 0),
	(464, 'paymentmethod_pagseguro_description_dashboard', 'Payment for Invoice {invoice_number}', 0),
	(465, 'paymentmethod_pagseguro_currencies', 'BRL', 0),
	(466, 'paymentmethod_pagseguro_test_mode_enabled', '1', 0),
	(467, 'paymentmethod_pagseguro_default_selected', '1', 1),
	(468, 'paymentmethod_pagseguro_initialized', '1', 1),
	(469, 'pusher_chat_enabled', '1', 1),
	(470, 'chat_staff_can_delete_messages', '1', 1),
	(471, 'chat_desktop_messages_notifications', '1', 1),
	(472, 'chat_members_can_create_groups', '1', 1),
	(473, 'chat_client_enabled', '1', 1),
	(474, 'chat_allow_staff_to_create_tickets', '1', 1),
	(475, 'chat_show_only_users_with_chat_permissions', '0', 1),
	(476, 'ultimate_purple_theme_customers', '1', 1),
	(477, 'ultimate_dark_theme_customers', '1', 1),
	(478, 'perfex_office_theme_customers', '1', 1),
	(479, 'google_key', '', 1),
	(480, 'google_id', '', 1),
	(481, 'google_btn_status', 'Inactive', 1),
	(482, 'linkedin_key', '', 1),
	(483, 'linkedin_id', '', 1),
	(484, 'linkedin_btn_status', 'Inactive', 1),
	(485, 'twitter_key', '', 1),
	(486, 'twitter_id', '', 1),
	(487, 'twitter_btn_status', 'Inactive', 1),
	(488, 'facebook_key', '', 1),
	(489, 'facebook_id', '', 1),
	(490, 'facebook_btn_status', 'Inactive', 1),
	(491, 'social_media_login_module_status', 'Inactive', 1),
	(492, 'custom_email_and_sms_notifications', '1', 1),
	(493, 'aside_custom_email_and_sms_notifications_active', '[]', 1),
	(494, 'setup_custom_email_and_sms_notifications_active', '[]', 1),
	(495, 'sms_trigger_invoice_overdue_notice', '', 0),
	(496, 'sms_trigger_invoice_due_notice', '', 0),
	(497, 'sms_trigger_invoice_payment_recorded', '', 0),
	(498, 'sms_trigger_estimate_expiration_reminder', '', 0),
	(499, 'sms_trigger_proposal_expiration_reminder', '', 0),
	(500, 'sms_trigger_proposal_new_comment_to_customer', '', 0),
	(501, 'sms_trigger_proposal_new_comment_to_staff', '', 0),
	(502, 'sms_trigger_contract_new_comment_to_customer', '', 0),
	(503, 'sms_trigger_contract_new_comment_to_staff', '', 0),
	(504, 'sms_trigger_contract_expiration_reminder', '', 0),
	(505, 'sms_trigger_staff_reminder', '', 0),
	(506, 'sms_sendin_access_key', '', 1),
	(507, 'sms_sendin_sender_id', '', 1),
	(508, 'sms_sendin_tags', '', 1),
	(509, 'sms_sendin_active', '0', 1),
	(510, 'sms_sendin_initialized', '1', 1),
	(511, 'woocommerce_consumer_key', '', 1),
	(512, 'woocommerce_consumer_secret', '', 1),
	(513, 'woocommerce_client', '', 1),
	(514, 'woocommerce_Productpage_no', '1', 1),
	(515, 'woocommerce_Orderpage_no', '1', 1),
	(516, 'woocommerce_Customerpage_no', '1', 1),
	(517, 'acc_first_month_of_financial_year', 'January', 1),
	(518, 'acc_first_month_of_tax_year', 'same_as_financial_year', 1),
	(519, 'acc_accounting_method', 'accrual', 1),
	(520, 'acc_close_the_books', '0', 1),
	(521, 'acc_allow_changes_after_viewing', 'allow_changes_after_viewing_a_warning', 1),
	(522, 'acc_close_book_password', '', 1),
	(523, 'acc_close_book_passwordr', '', 1),
	(524, 'acc_enable_account_numbers', '0', 1),
	(525, 'acc_show_account_numbers', '0', 1),
	(526, 'acc_closing_date', '', 1),
	(527, 'acc_add_default_account', '1', 1),
	(528, 'acc_add_default_account_new', '0', 1),
	(529, 'acc_invoice_automatic_conversion', '1', 1),
	(530, 'acc_payment_automatic_conversion', '1', 1),
	(531, 'acc_expense_automatic_conversion', '1', 1),
	(532, 'acc_tax_automatic_conversion', '1', 1),
	(533, 'acc_invoice_payment_account', '66', 1),
	(534, 'acc_invoice_deposit_to', '1', 1),
	(535, 'acc_payment_payment_account', '1', 1),
	(536, 'acc_payment_deposit_to', '13', 1),
	(537, 'acc_expense_payment_account', '13', 1),
	(538, 'acc_expense_deposit_to', '80', 1),
	(539, 'acc_tax_payment_account', '29', 1),
	(540, 'acc_tax_deposit_to', '1', 1),
	(541, 'acc_expense_tax_payment_account', '13', 1),
	(542, 'acc_expense_tax_deposit_to', '29', 1),
	(543, 'acc_active_payment_mode_mapping', '1', 1),
	(544, 'acc_active_expense_category_mapping', '1', 1),
	(545, 'acc_payment_expense_automatic_conversion', '1', 1),
	(546, 'acc_payment_sale_automatic_conversion', '1', 1),
	(547, 'acc_expense_payment_payment_account', '1', 1),
	(548, 'acc_expense_payment_deposit_to', '1', 1),
	(549, 'acc_pl_total_insurance_automatic_conversion', '1', 1),
	(550, 'acc_pl_total_insurance_payment_account', '13', 1),
	(551, 'acc_pl_total_insurance_deposit_to', '32', 1),
	(552, 'acc_pl_tax_paye_automatic_conversion', '1', 1),
	(553, 'acc_pl_tax_paye_payment_account', '13', 1),
	(554, 'acc_pl_tax_paye_deposit_to', '28', 1),
	(555, 'acc_pl_net_pay_automatic_conversion', '1', 1),
	(556, 'acc_pl_net_pay_payment_account', '13', 1),
	(557, 'acc_pl_net_pay_deposit_to', '56', 1),
	(558, 'acc_wh_stock_import_automatic_conversion', '1', 1),
	(559, 'acc_wh_stock_import_payment_account', '87', 1),
	(560, 'acc_wh_stock_import_deposit_to', '37', 1),
	(561, 'acc_wh_stock_export_automatic_conversion', '1', 1),
	(562, 'acc_wh_stock_export_payment_account', '37', 1),
	(563, 'acc_wh_stock_export_deposit_to', '1', 1),
	(564, 'acc_wh_loss_adjustment_automatic_conversion', '1', 1),
	(565, 'acc_wh_decrease_payment_account', '37', 1),
	(566, 'acc_wh_decrease_deposit_to', '1', 1),
	(567, 'acc_wh_increase_payment_account', '87', 1),
	(568, 'acc_wh_increase_deposit_to', '37', 1),
	(569, 'acc_wh_opening_stock_automatic_conversion', '1', 1),
	(570, 'acc_wh_opening_stock_payment_account', '88', 1),
	(571, 'acc_wh_opening_stock_deposit_to', '37', 1),
	(572, 'acc_pur_order_automatic_conversion', '1', 1),
	(573, 'acc_pur_order_payment_account', '13', 1),
	(574, 'acc_pur_order_deposit_to', '80', 1),
	(575, 'acc_pur_payment_automatic_conversion', '1', 1),
	(576, 'acc_pur_payment_payment_account', '16', 1),
	(577, 'acc_pur_payment_deposit_to', '37', 1),
	(578, 'fs_global_max_size', '2', 1),
	(579, 'fs_global_extension', '.jpg,.png,.pdf,.doc,.zip,.rar', 1),
	(580, 'fs_global_amount_expiration', '3', 1),
	(581, 'fs_global_notification', '1', 1),
	(582, 'fs_global_email', '0', 1),
	(583, 'fs_client_visible', '0', 1),
	(584, 'fs_permisstion_staff_view', '1', 1),
	(585, 'fs_permisstion_staff_upload_and_override', '1', 1),
	(586, 'fs_permisstion_staff_delete', '1', 1),
	(587, 'fs_permisstion_staff_upload', '1', 1),
	(588, 'fs_permisstion_staff_download', '1', 1),
	(589, 'fs_permisstion_staff_share', '1', 1),
	(590, 'fs_permisstion_client_view', '1', 1),
	(591, 'fs_permisstion_client_upload_and_override', '1', 1),
	(592, 'fs_permisstion_client_delete', '1', 1),
	(593, 'fs_permisstion_client_upload', '1', 1),
	(594, 'fs_permisstion_client_download', '1', 1),
	(595, 'file_sharing_security', '?3HTtb?HgTA@%7zm', 1),
	(596, 'fs_the_administrator_of_the_public_folder', '', 1);
/*!40000 ALTER TABLE `tbloptions` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblpayment_modes
CREATE TABLE IF NOT EXISTS `tblpayment_modes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` text,
  `show_on_pdf` int(11) NOT NULL DEFAULT '0',
  `invoices_only` int(11) NOT NULL DEFAULT '0',
  `expenses_only` int(11) NOT NULL DEFAULT '0',
  `selected_by_default` int(11) NOT NULL DEFAULT '1',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblpayment_modes: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblpayment_modes` DISABLE KEYS */;
INSERT INTO `tblpayment_modes` (`id`, `name`, `description`, `show_on_pdf`, `invoices_only`, `expenses_only`, `selected_by_default`, `active`) VALUES
	(1, 'Bank', NULL, 0, 0, 0, 1, 1);
/*!40000 ALTER TABLE `tblpayment_modes` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblpayroll_table
CREATE TABLE IF NOT EXISTS `tblpayroll_table` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `payroll_month` date NOT NULL,
  `payroll_type` int(11) unsigned DEFAULT NULL,
  `template_data` longtext,
  `status` int(11) unsigned DEFAULT '0' COMMENT '1:đã chốt 0:chưa chốt',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblpayroll_table: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblpayroll_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpayroll_table` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblpayroll_type
CREATE TABLE IF NOT EXISTS `tblpayroll_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `payroll_type_name` varchar(100) NOT NULL,
  `department_id` longtext,
  `role_id` longtext,
  `position_id` longtext,
  `salary_form_id` int(11) unsigned DEFAULT NULL COMMENT '1:Chính 2:Phụ cấp',
  `manager_id` int(11) unsigned DEFAULT NULL,
  `follower_id` int(11) unsigned DEFAULT NULL,
  `template` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblpayroll_type: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblpayroll_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpayroll_type` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblpinned_projects
CREATE TABLE IF NOT EXISTS `tblpinned_projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `project_id` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblpinned_projects: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblpinned_projects` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpinned_projects` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblprojectdiscussioncomments
CREATE TABLE IF NOT EXISTS `tblprojectdiscussioncomments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `discussion_id` int(11) NOT NULL,
  `discussion_type` varchar(10) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `content` text NOT NULL,
  `staff_id` int(11) NOT NULL,
  `contact_id` int(11) DEFAULT '0',
  `fullname` varchar(191) DEFAULT NULL,
  `file_name` varchar(191) DEFAULT NULL,
  `file_mime_type` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblprojectdiscussioncomments: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblprojectdiscussioncomments` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblprojectdiscussioncomments` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblprojectdiscussions
CREATE TABLE IF NOT EXISTS `tblprojectdiscussions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `subject` varchar(191) NOT NULL,
  `description` text NOT NULL,
  `show_to_customer` tinyint(1) NOT NULL DEFAULT '0',
  `datecreated` datetime NOT NULL,
  `last_activity` datetime DEFAULT NULL,
  `staff_id` int(11) NOT NULL DEFAULT '0',
  `contact_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblprojectdiscussions: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblprojectdiscussions` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblprojectdiscussions` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblprojects
CREATE TABLE IF NOT EXISTS `tblprojects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `description` text,
  `status` int(11) NOT NULL DEFAULT '0',
  `clientid` int(11) NOT NULL,
  `billing_type` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `deadline` date DEFAULT NULL,
  `project_created` date NOT NULL,
  `date_finished` datetime DEFAULT NULL,
  `progress` int(11) DEFAULT '0',
  `progress_from_tasks` int(11) NOT NULL DEFAULT '1',
  `project_cost` decimal(15,2) DEFAULT NULL,
  `project_rate_per_hour` decimal(15,2) DEFAULT NULL,
  `estimated_hours` decimal(15,2) DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `contact_notification` int(11) DEFAULT '1',
  `notify_contacts` text,
  PRIMARY KEY (`id`),
  KEY `clientid` (`clientid`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblprojects: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblprojects` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblprojects` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblproject_activity
CREATE TABLE IF NOT EXISTS `tblproject_activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL DEFAULT '0',
  `contact_id` int(11) NOT NULL DEFAULT '0',
  `fullname` varchar(100) DEFAULT NULL,
  `visible_to_customer` int(11) NOT NULL DEFAULT '0',
  `description_key` varchar(191) NOT NULL COMMENT 'Language file key',
  `additional_data` text,
  `dateadded` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblproject_activity: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblproject_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblproject_activity` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblproject_files
CREATE TABLE IF NOT EXISTS `tblproject_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_name` varchar(191) NOT NULL,
  `original_file_name` mediumtext,
  `subject` varchar(191) DEFAULT NULL,
  `description` text,
  `filetype` varchar(50) DEFAULT NULL,
  `dateadded` datetime NOT NULL,
  `last_activity` datetime DEFAULT NULL,
  `project_id` int(11) NOT NULL,
  `visible_to_customer` tinyint(1) DEFAULT '0',
  `staffid` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL DEFAULT '0',
  `external` varchar(40) DEFAULT NULL,
  `external_link` text,
  `thumbnail_link` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblproject_files: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblproject_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblproject_files` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblproject_members
CREATE TABLE IF NOT EXISTS `tblproject_members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `project_id` (`project_id`),
  KEY `staff_id` (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblproject_members: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblproject_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblproject_members` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblproject_notes
CREATE TABLE IF NOT EXISTS `tblproject_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `staff_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblproject_notes: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblproject_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblproject_notes` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblproject_settings
CREATE TABLE IF NOT EXISTS `tblproject_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `value` text,
  PRIMARY KEY (`id`),
  KEY `project_id` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblproject_settings: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblproject_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblproject_settings` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblproposals
CREATE TABLE IF NOT EXISTS `tblproposals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(191) DEFAULT NULL,
  `content` longtext,
  `addedfrom` int(11) NOT NULL,
  `datecreated` datetime NOT NULL,
  `total` decimal(15,2) DEFAULT NULL,
  `subtotal` decimal(15,2) NOT NULL,
  `total_tax` decimal(15,2) NOT NULL DEFAULT '0.00',
  `adjustment` decimal(15,2) DEFAULT NULL,
  `discount_percent` decimal(15,2) NOT NULL,
  `discount_total` decimal(15,2) NOT NULL,
  `discount_type` varchar(30) DEFAULT NULL,
  `show_quantity_as` int(11) NOT NULL DEFAULT '1',
  `currency` int(11) NOT NULL,
  `open_till` date DEFAULT NULL,
  `date` date NOT NULL,
  `rel_id` int(11) DEFAULT NULL,
  `rel_type` varchar(40) DEFAULT NULL,
  `assigned` int(11) DEFAULT NULL,
  `hash` varchar(32) NOT NULL,
  `proposal_to` varchar(191) DEFAULT NULL,
  `country` int(11) NOT NULL DEFAULT '0',
  `zip` varchar(50) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `allow_comments` tinyint(1) NOT NULL DEFAULT '1',
  `status` int(11) NOT NULL,
  `estimate_id` int(11) DEFAULT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `date_converted` datetime DEFAULT NULL,
  `pipeline_order` int(11) DEFAULT '1',
  `is_expiry_notified` int(11) NOT NULL DEFAULT '0',
  `acceptance_firstname` varchar(50) DEFAULT NULL,
  `acceptance_lastname` varchar(50) DEFAULT NULL,
  `acceptance_email` varchar(100) DEFAULT NULL,
  `acceptance_date` datetime DEFAULT NULL,
  `acceptance_ip` varchar(40) DEFAULT NULL,
  `signature` varchar(40) DEFAULT NULL,
  `short_link` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblproposals: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblproposals` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblproposals` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblproposal_comments
CREATE TABLE IF NOT EXISTS `tblproposal_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` mediumtext,
  `proposalid` int(11) NOT NULL,
  `staffid` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblproposal_comments: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblproposal_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblproposal_comments` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblprovince_city
CREATE TABLE IF NOT EXISTS `tblprovince_city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `province_code` varchar(45) NOT NULL,
  `province_name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblprovince_city: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblprovince_city` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblprovince_city` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblpurchase_option
CREATE TABLE IF NOT EXISTS `tblpurchase_option` (
  `option_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(200) NOT NULL,
  `option_val` longtext,
  `auto` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblpurchase_option: ~13 rows (aproximadamente)
/*!40000 ALTER TABLE `tblpurchase_option` DISABLE KEYS */;
INSERT INTO `tblpurchase_option` (`option_id`, `option_name`, `option_val`, `auto`) VALUES
	(1, 'purchase_order_setting', '1', 1),
	(2, 'pur_order_prefix', '#PO', 1),
	(3, 'next_po_number', '1', 1),
	(4, 'date_reset_number', '', 1),
	(5, 'pur_request_prefix', '#PR', 1),
	(6, 'next_pr_number', '1', 1),
	(7, 'date_reset_pr_number', '', 1),
	(8, 'pur_inv_prefix', '#INV', 1),
	(9, 'next_inv_number', '1', 1),
	(10, 'create_invoice_by', 'contract', 1),
	(11, 'item_by_vendor', '0', 1),
	(12, 'terms_and_conditions', '', 1),
	(13, 'vendor_note', '', 1);
/*!40000 ALTER TABLE `tblpurchase_option` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblpur_approval_details
CREATE TABLE IF NOT EXISTS `tblpur_approval_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(45) COLLATE latin1_general_ci NOT NULL,
  `staffid` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `approve` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `note` text COLLATE latin1_general_ci,
  `date` datetime DEFAULT NULL,
  `approve_action` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `reject_action` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `approve_value` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `reject_value` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `staff_approve` int(11) DEFAULT NULL,
  `action` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `sender` int(11) DEFAULT NULL,
  `date_send` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- Copiando dados para a tabela crm_paladini.tblpur_approval_details: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblpur_approval_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpur_approval_details` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblpur_approval_setting
CREATE TABLE IF NOT EXISTS `tblpur_approval_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `related` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `setting` longtext COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- Copiando dados para a tabela crm_paladini.tblpur_approval_setting: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblpur_approval_setting` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpur_approval_setting` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblpur_contacts
CREATE TABLE IF NOT EXISTS `tblpur_contacts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `is_primary` int(11) NOT NULL DEFAULT '1',
  `firstname` varchar(191) NOT NULL,
  `lastname` varchar(191) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phonenumber` varchar(100) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `datecreated` datetime NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `new_pass_key` varchar(32) DEFAULT NULL,
  `new_pass_key_requested` datetime DEFAULT NULL,
  `email_verified_at` datetime DEFAULT NULL,
  `email_verification_key` varchar(32) DEFAULT NULL,
  `email_verification_sent_at` datetime DEFAULT NULL,
  `last_ip` varchar(40) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_password_change` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `profile_image` varchar(191) DEFAULT NULL,
  `direction` varchar(3) DEFAULT NULL,
  `invoice_emails` tinyint(1) NOT NULL DEFAULT '1',
  `estimate_emails` tinyint(1) NOT NULL DEFAULT '1',
  `credit_note_emails` tinyint(1) NOT NULL DEFAULT '1',
  `contract_emails` tinyint(1) NOT NULL DEFAULT '1',
  `task_emails` tinyint(1) NOT NULL DEFAULT '1',
  `project_emails` tinyint(1) NOT NULL DEFAULT '1',
  `ticket_emails` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblpur_contacts: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblpur_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpur_contacts` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblpur_contracts
CREATE TABLE IF NOT EXISTS `tblpur_contracts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `contract_number` varchar(200) NOT NULL,
  `contract_name` varchar(200) NOT NULL,
  `content` longtext,
  `vendor` int(11) NOT NULL,
  `pur_order` int(11) NOT NULL,
  `contract_value` decimal(15,2) DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `buyer` int(11) DEFAULT NULL,
  `time_payment` date DEFAULT NULL,
  `add_from` int(11) NOT NULL,
  `signed` int(32) NOT NULL DEFAULT '0',
  `note` longtext,
  `signer` int(11) DEFAULT NULL,
  `signed_date` date DEFAULT NULL,
  `signed_status` varchar(50) DEFAULT NULL,
  `service_category` text,
  `project` int(11) DEFAULT NULL,
  `payment_terms` text,
  `payment_amount` decimal(15,2) DEFAULT NULL,
  `payment_cycle` varchar(50) DEFAULT NULL,
  `department` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblpur_contracts: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblpur_contracts` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpur_contracts` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblpur_estimates
CREATE TABLE IF NOT EXISTS `tblpur_estimates` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sent` tinyint(1) NOT NULL DEFAULT '0',
  `datesend` datetime DEFAULT NULL,
  `vendor` int(11) NOT NULL,
  `deleted_vendor_name` varchar(100) DEFAULT NULL,
  `pur_request` int(11) DEFAULT NULL,
  `number` int(11) NOT NULL,
  `prefix` varchar(50) DEFAULT NULL,
  `number_format` int(11) NOT NULL DEFAULT '0',
  `hash` varchar(32) DEFAULT NULL,
  `datecreated` datetime NOT NULL,
  `date` date NOT NULL,
  `expirydate` date DEFAULT NULL,
  `currency` int(11) NOT NULL,
  `subtotal` decimal(15,2) NOT NULL,
  `total_tax` decimal(15,2) NOT NULL,
  `total` decimal(15,2) NOT NULL,
  `adjustment` decimal(15,2) DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `vendornote` text,
  `adminnote` text,
  `discount_percent` decimal(15,2) DEFAULT '0.00',
  `discount_total` decimal(15,2) DEFAULT '0.00',
  `discount_type` varchar(30) DEFAULT NULL,
  `invoiceid` int(11) DEFAULT NULL,
  `invoiced_date` datetime DEFAULT NULL,
  `terms` text,
  `reference_no` varchar(100) DEFAULT NULL,
  `buyer` int(11) NOT NULL DEFAULT '0',
  `billing_street` varchar(200) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(100) DEFAULT NULL,
  `billing_country` int(11) DEFAULT NULL,
  `shipping_street` varchar(200) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(100) DEFAULT NULL,
  `shipping_zip` varchar(100) DEFAULT NULL,
  `shipping_country` int(11) DEFAULT NULL,
  `include_shipping` tinyint(1) NOT NULL,
  `show_shipping_on_estimate` tinyint(1) NOT NULL DEFAULT '1',
  `show_quantity_as` int(11) NOT NULL DEFAULT '1',
  `pipeline_order` int(11) NOT NULL DEFAULT '0',
  `is_expiry_notified` int(11) NOT NULL DEFAULT '0',
  `acceptance_firstname` varchar(50) DEFAULT NULL,
  `acceptance_lastname` varchar(50) DEFAULT NULL,
  `acceptance_email` varchar(100) DEFAULT NULL,
  `acceptance_date` datetime DEFAULT NULL,
  `acceptance_ip` varchar(40) DEFAULT NULL,
  `signature` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblpur_estimates: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblpur_estimates` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpur_estimates` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblpur_estimate_detail
CREATE TABLE IF NOT EXISTS `tblpur_estimate_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pur_estimate` int(11) NOT NULL,
  `item_code` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `unit_price` decimal(15,0) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `into_money` decimal(15,2) DEFAULT NULL,
  `tax` text COLLATE latin1_general_ci,
  `total` decimal(15,2) DEFAULT NULL,
  `total_money` decimal(15,2) DEFAULT NULL,
  `discount_money` decimal(15,2) DEFAULT NULL,
  `discount_%` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- Copiando dados para a tabela crm_paladini.tblpur_estimate_detail: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblpur_estimate_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpur_estimate_detail` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblpur_invoices
CREATE TABLE IF NOT EXISTS `tblpur_invoices` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `number` int(11) NOT NULL,
  `invoice_number` text,
  `invoice_date` date DEFAULT NULL,
  `subtotal` decimal(15,2) DEFAULT NULL,
  `tax_rate` int(11) DEFAULT NULL,
  `tax` decimal(15,2) DEFAULT NULL,
  `total` decimal(15,2) DEFAULT NULL,
  `contract` int(11) DEFAULT NULL,
  `vendor` int(11) DEFAULT NULL,
  `transactionid` mediumtext,
  `transaction_date` date DEFAULT NULL,
  `payment_request_status` varchar(30) DEFAULT NULL,
  `payment_status` varchar(30) DEFAULT NULL,
  `vendor_note` text,
  `adminnote` text,
  `terms` text,
  `add_from` int(11) DEFAULT NULL,
  `date_add` date DEFAULT NULL,
  `pur_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblpur_invoices: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblpur_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpur_invoices` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblpur_invoice_payment
CREATE TABLE IF NOT EXISTS `tblpur_invoice_payment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pur_invoice` int(11) NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  `paymentmode` longtext,
  `date` date NOT NULL,
  `daterecorded` datetime NOT NULL,
  `note` text NOT NULL,
  `transactionid` mediumtext,
  `approval_status` int(2) DEFAULT NULL,
  `requester` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblpur_invoice_payment: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblpur_invoice_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpur_invoice_payment` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblpur_orders
CREATE TABLE IF NOT EXISTS `tblpur_orders` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pur_order_name` varchar(100) NOT NULL,
  `vendor` int(11) NOT NULL,
  `estimate` int(11) NOT NULL,
  `pur_order_number` varchar(30) NOT NULL,
  `order_date` date NOT NULL,
  `status` int(32) NOT NULL DEFAULT '1',
  `approve_status` int(32) NOT NULL DEFAULT '1',
  `datecreated` datetime NOT NULL,
  `days_owed` int(11) NOT NULL,
  `delivery_date` date DEFAULT NULL,
  `subtotal` decimal(15,2) NOT NULL,
  `total_tax` decimal(15,2) NOT NULL,
  `total` decimal(15,2) NOT NULL,
  `addedfrom` int(11) NOT NULL,
  `vendornote` text,
  `terms` text,
  `discount_percent` decimal(15,2) DEFAULT '0.00',
  `discount_total` decimal(15,2) DEFAULT '0.00',
  `discount_type` varchar(30) DEFAULT NULL,
  `buyer` int(11) NOT NULL DEFAULT '0',
  `status_goods` int(11) NOT NULL DEFAULT '0',
  `number` int(11) DEFAULT NULL,
  `expense_convert` int(11) DEFAULT '0',
  `hash` varchar(32) DEFAULT NULL,
  `clients` text,
  `delivery_status` int(2) DEFAULT '0',
  `type` text,
  `project` int(11) DEFAULT NULL,
  `pur_request` int(11) DEFAULT NULL,
  `department` int(11) DEFAULT NULL,
  `tax_order_rate` decimal(15,2) DEFAULT NULL,
  `tax_order_amount` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblpur_orders: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblpur_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpur_orders` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblpur_order_detail
CREATE TABLE IF NOT EXISTS `tblpur_order_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pur_order` int(11) NOT NULL,
  `item_code` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `description` text COLLATE latin1_general_ci,
  `unit_id` int(11) DEFAULT NULL,
  `unit_price` decimal(15,2) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `into_money` decimal(15,2) DEFAULT NULL,
  `tax` text COLLATE latin1_general_ci,
  `total` decimal(15,2) DEFAULT NULL,
  `discount_%` decimal(15,2) DEFAULT NULL,
  `discount_money` decimal(15,2) DEFAULT NULL,
  `total_money` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- Copiando dados para a tabela crm_paladini.tblpur_order_detail: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblpur_order_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpur_order_detail` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblpur_order_payment
CREATE TABLE IF NOT EXISTS `tblpur_order_payment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pur_order` int(11) NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  `paymentmode` longtext,
  `date` date NOT NULL,
  `daterecorded` datetime NOT NULL,
  `note` text NOT NULL,
  `transactionid` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblpur_order_payment: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblpur_order_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpur_order_payment` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblpur_request
CREATE TABLE IF NOT EXISTS `tblpur_request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pur_rq_code` varchar(45) COLLATE latin1_general_ci NOT NULL,
  `pur_rq_name` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `rq_description` text COLLATE latin1_general_ci,
  `requester` int(11) NOT NULL,
  `department` int(11) NOT NULL,
  `request_date` datetime NOT NULL,
  `status` int(11) DEFAULT NULL,
  `status_goods` int(11) NOT NULL DEFAULT '0',
  `hash` varchar(32) COLLATE latin1_general_ci DEFAULT NULL,
  `type` text COLLATE latin1_general_ci,
  `project` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `from_items` int(2) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- Copiando dados para a tabela crm_paladini.tblpur_request: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblpur_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpur_request` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblpur_request_detail
CREATE TABLE IF NOT EXISTS `tblpur_request_detail` (
  `prd_id` int(11) NOT NULL AUTO_INCREMENT,
  `pur_request` int(11) NOT NULL,
  `item_code` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `unit_price` decimal(15,2) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `into_money` decimal(15,2) DEFAULT NULL,
  `inventory_quantity` int(11) DEFAULT '0',
  `item_text` text COLLATE latin1_general_ci,
  PRIMARY KEY (`prd_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- Copiando dados para a tabela crm_paladini.tblpur_request_detail: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblpur_request_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpur_request_detail` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblpur_unit
CREATE TABLE IF NOT EXISTS `tblpur_unit` (
  `unit_id` int(11) NOT NULL AUTO_INCREMENT,
  `unit_name` varchar(100) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`unit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- Copiando dados para a tabela crm_paladini.tblpur_unit: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblpur_unit` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpur_unit` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblpur_vendor
CREATE TABLE IF NOT EXISTS `tblpur_vendor` (
  `userid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `company` varchar(200) DEFAULT NULL,
  `vat` varchar(200) DEFAULT NULL,
  `phonenumber` varchar(30) DEFAULT NULL,
  `country` int(11) NOT NULL DEFAULT '0',
  `city` varchar(100) DEFAULT NULL,
  `zip` varchar(15) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `website` varchar(150) DEFAULT NULL,
  `datecreated` datetime NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `leadid` int(11) DEFAULT NULL,
  `billing_street` varchar(200) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(100) DEFAULT NULL,
  `billing_country` int(11) DEFAULT '0',
  `shipping_street` varchar(200) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(100) DEFAULT NULL,
  `shipping_zip` varchar(100) DEFAULT NULL,
  `shipping_country` int(11) DEFAULT '0',
  `longitude` varchar(191) DEFAULT NULL,
  `latitude` varchar(191) DEFAULT NULL,
  `default_language` varchar(40) DEFAULT NULL,
  `default_currency` int(11) NOT NULL DEFAULT '0',
  `show_primary_contact` int(11) NOT NULL DEFAULT '0',
  `stripe_id` varchar(40) DEFAULT NULL,
  `registration_confirmed` int(11) NOT NULL DEFAULT '1',
  `addedfrom` int(11) NOT NULL DEFAULT '0',
  `category` text,
  `bank_detail` text,
  `payment_terms` text,
  `vendor_code` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblpur_vendor: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblpur_vendor` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpur_vendor` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblpur_vendor_admin
CREATE TABLE IF NOT EXISTS `tblpur_vendor_admin` (
  `staff_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `date_assigned` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- Copiando dados para a tabela crm_paladini.tblpur_vendor_admin: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblpur_vendor_admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpur_vendor_admin` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblpur_vendor_cate
CREATE TABLE IF NOT EXISTS `tblpur_vendor_cate` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblpur_vendor_cate: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblpur_vendor_cate` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpur_vendor_cate` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblpur_vendor_items
CREATE TABLE IF NOT EXISTS `tblpur_vendor_items` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `vendor` int(11) NOT NULL,
  `group_items` int(11) DEFAULT NULL,
  `items` int(11) NOT NULL,
  `add_from` int(11) DEFAULT NULL,
  `datecreate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblpur_vendor_items: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblpur_vendor_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpur_vendor_items` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblrec_campaign
CREATE TABLE IF NOT EXISTS `tblrec_campaign` (
  `cp_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `campaign_code` varchar(200) NOT NULL,
  `campaign_name` varchar(200) NOT NULL,
  `cp_proposal` text,
  `cp_position` int(11) NOT NULL,
  `cp_department` int(11) DEFAULT NULL,
  `cp_amount_recruiment` int(11) DEFAULT NULL,
  `cp_form_work` varchar(45) DEFAULT NULL,
  `cp_workplace` varchar(255) DEFAULT NULL,
  `cp_salary_from` decimal(15,0) DEFAULT NULL,
  `cp_salary_to` decimal(15,0) DEFAULT NULL,
  `cp_from_date` date DEFAULT NULL,
  `cp_to_date` date NOT NULL,
  `cp_reason_recruitment` text,
  `cp_job_description` text,
  `cp_manager` text,
  `cp_follower` text,
  `cp_ages_from` int(11) DEFAULT NULL,
  `cp_ages_to` int(11) DEFAULT NULL,
  `cp_gender` varchar(10) DEFAULT NULL,
  `cp_height` float DEFAULT NULL,
  `cp_weight` float DEFAULT NULL,
  `cp_literacy` varchar(200) DEFAULT NULL,
  `cp_experience` varchar(200) DEFAULT NULL,
  `cp_add_from` int(11) NOT NULL,
  `cp_date_add` date NOT NULL,
  `cp_status` int(11) NOT NULL,
  PRIMARY KEY (`cp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblrec_campaign: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblrec_campaign` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblrec_campaign` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblrec_campaign_form_web
CREATE TABLE IF NOT EXISTS `tblrec_campaign_form_web` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `rec_campaign_id` int(11) NOT NULL,
  `form_type` int(11) DEFAULT NULL,
  `lead_source` varchar(10) DEFAULT NULL,
  `lead_status` varchar(10) DEFAULT NULL,
  `notify_ids_staff` text,
  `notify_ids_roles` text,
  `form_key` varchar(32) DEFAULT NULL,
  `notify_lead_imported` int(11) DEFAULT '1',
  `notify_type` varchar(20) DEFAULT NULL,
  `notify_ids` mediumtext,
  `responsible` int(11) DEFAULT '0',
  `r_form_name` varchar(191) DEFAULT NULL,
  `form_data` mediumtext,
  `recaptcha` int(11) DEFAULT '0',
  `submit_btn_name` varchar(40) DEFAULT NULL,
  `success_submit_msg` text,
  `language` varchar(40) DEFAULT NULL,
  `allow_duplicate` int(11) DEFAULT '1',
  `mark_public` int(11) DEFAULT '0',
  `track_duplicate_field` varchar(20) DEFAULT NULL,
  `track_duplicate_field_and` varchar(20) DEFAULT NULL,
  `create_task_on_duplicate` int(11) DEFAULT '0',
  PRIMARY KEY (`id`,`rec_campaign_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblrec_campaign_form_web: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblrec_campaign_form_web` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblrec_campaign_form_web` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblrec_candidate
CREATE TABLE IF NOT EXISTS `tblrec_candidate` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `rec_campaign` int(11) DEFAULT NULL,
  `candidate_code` varchar(200) NOT NULL,
  `candidate_name` varchar(200) NOT NULL,
  `birthday` date DEFAULT NULL,
  `gender` varchar(11) DEFAULT NULL,
  `birthplace` text,
  `home_town` text,
  `identification` varchar(45) DEFAULT NULL,
  `days_for_identity` date DEFAULT NULL,
  `place_of_issue` varchar(255) DEFAULT NULL,
  `marital_status` varchar(11) DEFAULT NULL,
  `nationality` varchar(100) DEFAULT NULL,
  `nation` varchar(100) NOT NULL,
  `religion` varchar(100) DEFAULT NULL,
  `height` float DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `introduce_yourself` text,
  `phonenumber` text,
  `email` text,
  `skype` text,
  `facebook` text,
  `resident` text,
  `current_accommodation` text,
  `status` int(11) NOT NULL,
  `rate` int(11) DEFAULT NULL,
  `desired_salary` decimal(15,0) DEFAULT NULL,
  `date_add` date DEFAULT NULL,
  `recruitment_channel` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblrec_candidate: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblrec_candidate` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblrec_candidate` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblrec_cd_evaluation
CREATE TABLE IF NOT EXISTS `tblrec_cd_evaluation` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `criteria` int(11) NOT NULL,
  `rate_score` int(11) NOT NULL,
  `assessor` int(11) NOT NULL,
  `evaluation_date` datetime NOT NULL,
  `percent` int(11) NOT NULL,
  `candidate` int(11) NOT NULL,
  `feedback` text NOT NULL,
  `group_criteria` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblrec_cd_evaluation: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblrec_cd_evaluation` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblrec_cd_evaluation` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblrec_criteria
CREATE TABLE IF NOT EXISTS `tblrec_criteria` (
  `criteria_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `criteria_type` varchar(45) NOT NULL,
  `criteria_title` varchar(200) NOT NULL,
  `group_criteria` int(11) DEFAULT NULL,
  `description` text,
  `add_from` int(11) NOT NULL,
  `add_date` date DEFAULT NULL,
  `score_des1` text,
  `score_des2` text,
  `score_des3` text,
  `score_des4` text,
  `score_des5` text,
  PRIMARY KEY (`criteria_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblrec_criteria: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblrec_criteria` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblrec_criteria` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblrec_evaluation_form
CREATE TABLE IF NOT EXISTS `tblrec_evaluation_form` (
  `form_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `form_name` varchar(200) NOT NULL,
  `position` int(11) DEFAULT NULL,
  `add_from` int(11) NOT NULL,
  `add_date` date DEFAULT NULL,
  PRIMARY KEY (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblrec_evaluation_form: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblrec_evaluation_form` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblrec_evaluation_form` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblrec_interview
CREATE TABLE IF NOT EXISTS `tblrec_interview` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `campaign` int(11) NOT NULL,
  `is_name` varchar(100) NOT NULL,
  `interview_day` varchar(200) NOT NULL,
  `from_time` text NOT NULL,
  `to_time` text NOT NULL,
  `from_hours` datetime DEFAULT NULL,
  `to_hours` datetime DEFAULT NULL,
  `interviewer` text NOT NULL,
  `added_from` int(11) NOT NULL,
  `added_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblrec_interview: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblrec_interview` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblrec_interview` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblrec_job_position
CREATE TABLE IF NOT EXISTS `tblrec_job_position` (
  `position_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `position_name` varchar(200) NOT NULL,
  `position_description` text,
  PRIMARY KEY (`position_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblrec_job_position: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblrec_job_position` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblrec_job_position` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblrec_list_criteria
CREATE TABLE IF NOT EXISTS `tblrec_list_criteria` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `evaluation_form` int(11) NOT NULL,
  `group_criteria` int(11) NOT NULL,
  `evaluation_criteria` int(11) NOT NULL,
  `percent` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblrec_list_criteria: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblrec_list_criteria` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblrec_list_criteria` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblrec_proposal
CREATE TABLE IF NOT EXISTS `tblrec_proposal` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `proposal_name` varchar(200) NOT NULL,
  `position` int(11) NOT NULL,
  `department` int(11) DEFAULT NULL,
  `amount_recruiment` int(11) DEFAULT NULL,
  `form_work` varchar(45) DEFAULT NULL,
  `workplace` varchar(255) DEFAULT NULL,
  `salary_from` decimal(15,0) DEFAULT NULL,
  `salary_to` decimal(15,0) DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date NOT NULL,
  `reason_recruitment` text,
  `job_description` text,
  `approver` int(11) NOT NULL,
  `ages_from` int(11) DEFAULT NULL,
  `ages_to` int(11) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `height` float DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `literacy` varchar(200) DEFAULT NULL,
  `experience` varchar(200) DEFAULT NULL,
  `add_from` int(11) NOT NULL,
  `date_add` date NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblrec_proposal: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblrec_proposal` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblrec_proposal` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblrec_set_transfer_record
CREATE TABLE IF NOT EXISTS `tblrec_set_transfer_record` (
  `set_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order` int(11) NOT NULL,
  `send_to` varchar(45) NOT NULL,
  `email_to` text,
  `add_from` int(11) NOT NULL,
  `add_date` date NOT NULL,
  `subject` text NOT NULL,
  `content` text,
  PRIMARY KEY (`set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblrec_set_transfer_record: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblrec_set_transfer_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblrec_set_transfer_record` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblrelated_items
CREATE TABLE IF NOT EXISTS `tblrelated_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(30) NOT NULL,
  `item_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblrelated_items: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblrelated_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblrelated_items` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblreminders
CREATE TABLE IF NOT EXISTS `tblreminders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` text,
  `date` datetime NOT NULL,
  `isnotified` int(11) NOT NULL DEFAULT '0',
  `rel_id` int(11) NOT NULL,
  `staff` int(11) NOT NULL,
  `rel_type` varchar(40) NOT NULL,
  `notify_by_email` int(11) NOT NULL DEFAULT '1',
  `creator` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rel_id` (`rel_id`),
  KEY `rel_type` (`rel_type`),
  KEY `staff` (`staff`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblreminders: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblreminders` DISABLE KEYS */;
INSERT INTO `tblreminders` (`id`, `description`, `date`, `isnotified`, `rel_id`, `staff`, `rel_type`, `notify_by_email`, `creator`) VALUES
	(1, 'Teste de lembrete de fatura', '2022-04-11 11:31:00', 1, 4, 1, 'invoice', 1, 1);
/*!40000 ALTER TABLE `tblreminders` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblrequest
CREATE TABLE IF NOT EXISTS `tblrequest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE latin1_general_ci NOT NULL,
  `request_type_id` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `date_create` datetime NOT NULL,
  `approval_deadline` datetime DEFAULT NULL,
  `addedfrom` int(11) DEFAULT NULL,
  `status` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `code` varchar(255) COLLATE latin1_general_ci DEFAULT '',
  `description` mediumtext COLLATE latin1_general_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- Copiando dados para a tabela crm_paladini.tblrequest: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblrequest` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblrequest` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblrequest_approval_details
CREATE TABLE IF NOT EXISTS `tblrequest_approval_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `request_id` int(11) NOT NULL,
  `staffid` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `approve` varchar(45) COLLATE latin1_general_ci NOT NULL,
  `note` text COLLATE latin1_general_ci,
  `date` datetime DEFAULT NULL,
  `approve_action` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `reject_action` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `approve_value` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `reject_value` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `staff_approve` int(11) DEFAULT '0',
  `action` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- Copiando dados para a tabela crm_paladini.tblrequest_approval_details: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblrequest_approval_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblrequest_approval_details` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblrequest_files
CREATE TABLE IF NOT EXISTS `tblrequest_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `request_id` int(11) NOT NULL,
  `file_name` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `filetype` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `dateadded` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- Copiando dados para a tabela crm_paladini.tblrequest_files: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblrequest_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblrequest_files` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblrequest_follow
CREATE TABLE IF NOT EXISTS `tblrequest_follow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `request_id` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `staffid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- Copiando dados para a tabela crm_paladini.tblrequest_follow: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblrequest_follow` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblrequest_follow` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblrequest_form
CREATE TABLE IF NOT EXISTS `tblrequest_form` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `request_id` int(11) NOT NULL,
  `name` varchar(45) COLLATE latin1_general_ci NOT NULL,
  `type` varchar(45) COLLATE latin1_general_ci NOT NULL,
  `value` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `slug` varchar(45) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- Copiando dados para a tabela crm_paladini.tblrequest_form: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblrequest_form` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblrequest_form` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblrequest_log
CREATE TABLE IF NOT EXISTS `tblrequest_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `request_id` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `staffid` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `note` text COLLATE latin1_general_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- Copiando dados para a tabela crm_paladini.tblrequest_log: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblrequest_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblrequest_log` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblrequest_related
CREATE TABLE IF NOT EXISTS `tblrequest_related` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `request_id` int(11) NOT NULL,
  `rel_type` varchar(45) COLLATE latin1_general_ci NOT NULL,
  `rel_id` varchar(45) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- Copiando dados para a tabela crm_paladini.tblrequest_related: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblrequest_related` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblrequest_related` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblrequest_type
CREATE TABLE IF NOT EXISTS `tblrequest_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE latin1_general_ci NOT NULL,
  `maximum_number_day` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `description` mediumtext COLLATE latin1_general_ci,
  `content` longtext COLLATE latin1_general_ci,
  `data_chart` longtext COLLATE latin1_general_ci NOT NULL,
  `active` varchar(45) COLLATE latin1_general_ci NOT NULL DEFAULT '1',
  `related_to` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- Copiando dados para a tabela crm_paladini.tblrequest_type: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblrequest_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblrequest_type` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblrequest_type_form
CREATE TABLE IF NOT EXISTS `tblrequest_type_form` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `request_type_id` int(11) NOT NULL,
  `name` varchar(45) COLLATE latin1_general_ci NOT NULL,
  `type` varchar(45) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- Copiando dados para a tabela crm_paladini.tblrequest_type_form: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblrequest_type_form` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblrequest_type_form` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblrequest_type_workflow
CREATE TABLE IF NOT EXISTS `tblrequest_type_workflow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `request_type_id` varchar(45) COLLATE latin1_general_ci NOT NULL,
  `staffid` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `approve_action` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `reject_action` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `approve_value` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `reject_value` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- Copiando dados para a tabela crm_paladini.tblrequest_type_workflow: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblrequest_type_workflow` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblrequest_type_workflow` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblroles
CREATE TABLE IF NOT EXISTS `tblroles` (
  `roleid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `permissions` longtext,
  PRIMARY KEY (`roleid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblroles: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `tblroles` DISABLE KEYS */;
INSERT INTO `tblroles` (`roleid`, `name`, `permissions`) VALUES
	(1, 'Operador de Cobrança', 'a:0:{}'),
	(2, 'Coordenadora de Cobrança', 'a:29:{s:17:"bulk_pdf_exporter";a:1:{i:0;s:4:"view";}s:9:"contracts";a:4:{i:0;s:4:"view";i:1;s:6:"create";i:2;s:4:"edit";i:3;s:6:"delete";}s:12:"credit_notes";a:4:{i:0;s:4:"view";i:1;s:6:"create";i:2;s:4:"edit";i:3;s:6:"delete";}s:9:"customers";a:4:{i:0;s:4:"view";i:1;s:6:"create";i:2;s:4:"edit";i:3;s:6:"delete";}s:15:"email_templates";a:2:{i:0;s:4:"view";i:1;s:4:"edit";}s:9:"estimates";a:4:{i:0;s:4:"view";i:1;s:6:"create";i:2;s:4:"edit";i:3;s:6:"delete";}s:8:"expenses";a:4:{i:0;s:4:"view";i:1;s:6:"create";i:2;s:4:"edit";i:3;s:6:"delete";}s:8:"invoices";a:4:{i:0;s:4:"view";i:1;s:6:"create";i:2;s:4:"edit";i:3;s:6:"delete";}s:5:"items";a:4:{i:0;s:4:"view";i:1;s:6:"create";i:2;s:4:"edit";i:3;s:6:"delete";}s:14:"knowledge_base";a:4:{i:0;s:4:"view";i:1;s:6:"create";i:2;s:4:"edit";i:3;s:6:"delete";}s:8:"payments";a:4:{i:0;s:4:"view";i:1;s:6:"create";i:2;s:4:"edit";i:3;s:6:"delete";}s:8:"projects";a:7:{i:0;s:4:"view";i:1;s:6:"create";i:2;s:4:"edit";i:3;s:6:"delete";i:4;s:17:"create_milestones";i:5;s:15:"edit_milestones";i:6;s:17:"delete_milestones";}s:9:"proposals";a:4:{i:0;s:4:"view";i:1;s:6:"create";i:2;s:4:"edit";i:3;s:6:"delete";}s:7:"reports";a:1:{i:0;s:4:"view";}s:5:"roles";a:4:{i:0;s:4:"view";i:1;s:6:"create";i:2;s:4:"edit";i:3;s:6:"delete";}s:8:"settings";a:2:{i:0;s:4:"view";i:1;s:4:"edit";}s:5:"staff";a:4:{i:0;s:4:"view";i:1;s:6:"create";i:2;s:4:"edit";i:3;s:6:"delete";}s:13:"subscriptions";a:4:{i:0;s:4:"view";i:1;s:6:"create";i:2;s:4:"edit";i:3;s:6:"delete";}s:5:"tasks";a:8:{i:0;s:4:"view";i:1;s:6:"create";i:2;s:4:"edit";i:3;s:6:"delete";i:4;s:14:"edit_timesheet";i:5;s:18:"edit_own_timesheet";i:6;s:16:"delete_timesheet";i:7;s:20:"delete_own_timesheet";}s:19:"checklist_templates";a:2:{i:0;s:6:"create";i:1;s:6:"delete";}s:16:"estimate_request";a:4:{i:0;s:4:"view";i:1;s:6:"create";i:2;s:4:"edit";i:3;s:6:"delete";}s:5:"leads";a:2:{i:0;s:4:"view";i:1;s:6:"delete";}s:7:"surveys";a:4:{i:0;s:4:"view";i:1;s:6:"create";i:2;s:4:"edit";i:3;s:6:"delete";}s:10:"commission";a:1:{i:0;s:4:"view";}s:18:"commission_receipt";a:3:{i:0;s:4:"view";i:1;s:6:"create";i:2;s:6:"delete";}s:27:"commission_applicable_staff";a:3:{i:0;s:4:"view";i:1;s:6:"create";i:2;s:6:"delete";}s:28:"commission_applicable_client";a:3:{i:0;s:4:"view";i:1;s:6:"create";i:2;s:6:"delete";}s:17:"commission_policy";a:4:{i:0;s:4:"view";i:1;s:6:"create";i:2;s:4:"edit";i:3;s:6:"delete";}s:18:"commission_setting";a:4:{i:0;s:4:"view";i:1;s:6:"create";i:2;s:4:"edit";i:3;s:6:"delete";}}'),
	(3, 'Parceiro de Negócios', 'a:19:{s:17:"bulk_pdf_exporter";a:1:{i:0;s:4:"view";}s:9:"contracts";a:4:{i:0;s:8:"view_own";i:1;s:6:"create";i:2;s:4:"edit";i:3;s:6:"delete";}s:12:"credit_notes";a:4:{i:0;s:8:"view_own";i:1;s:6:"create";i:2;s:4:"edit";i:3;s:6:"delete";}s:9:"customers";a:4:{i:0;s:4:"view";i:1;s:6:"create";i:2;s:4:"edit";i:3;s:6:"delete";}s:15:"email_templates";a:2:{i:0;s:4:"view";i:1;s:4:"edit";}s:9:"estimates";a:4:{i:0;s:8:"view_own";i:1;s:6:"create";i:2;s:4:"edit";i:3;s:6:"delete";}s:8:"expenses";a:4:{i:0;s:8:"view_own";i:1;s:6:"create";i:2;s:4:"edit";i:3;s:6:"delete";}s:8:"invoices";a:4:{i:0;s:8:"view_own";i:1;s:6:"create";i:2;s:4:"edit";i:3;s:6:"delete";}s:5:"items";a:4:{i:0;s:4:"view";i:1;s:6:"create";i:2;s:4:"edit";i:3;s:6:"delete";}s:14:"knowledge_base";a:4:{i:0;s:4:"view";i:1;s:6:"create";i:2;s:4:"edit";i:3;s:6:"delete";}s:8:"payments";a:1:{i:0;s:4:"view";}s:8:"projects";a:4:{i:0;s:4:"view";i:1;s:6:"create";i:2;s:4:"edit";i:3;s:17:"create_milestones";}s:9:"proposals";a:4:{i:0;s:8:"view_own";i:1;s:6:"create";i:2;s:4:"edit";i:3;s:6:"delete";}s:7:"reports";a:1:{i:0;s:4:"view";}s:5:"tasks";a:5:{i:0;s:4:"view";i:1;s:6:"create";i:2;s:4:"edit";i:3;s:14:"edit_timesheet";i:4;s:18:"edit_own_timesheet";}s:19:"checklist_templates";a:1:{i:0;s:6:"create";}s:16:"estimate_request";a:4:{i:0;s:8:"view_own";i:1;s:6:"create";i:2;s:4:"edit";i:3;s:6:"delete";}s:7:"surveys";a:3:{i:0;s:4:"view";i:1;s:6:"create";i:2;s:4:"edit";}s:6:"prchat";a:1:{i:0;s:4:"view";}}'),
	(4, 'Marketplace', 'a:0:{}');
/*!40000 ALTER TABLE `tblroles` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblsalary_form
CREATE TABLE IF NOT EXISTS `tblsalary_form` (
  `form_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `form_name` varchar(200) NOT NULL,
  `salary_val` decimal(15,2) NOT NULL,
  `tax` tinyint(1) NOT NULL,
  PRIMARY KEY (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblsalary_form: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblsalary_form` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblsalary_form` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblsales_activity
CREATE TABLE IF NOT EXISTS `tblsales_activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rel_type` varchar(20) DEFAULT NULL,
  `rel_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `additional_data` text,
  `staffid` varchar(11) DEFAULT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblsales_activity: ~11 rows (aproximadamente)
/*!40000 ALTER TABLE `tblsales_activity` DISABLE KEYS */;
INSERT INTO `tblsales_activity` (`id`, `rel_type`, `rel_id`, `description`, `additional_data`, `staffid`, `full_name`, `date`) VALUES
	(6, 'invoice', 2, 'invoice_activity_created', '', '1', 'Claudinei Paladini', '2022-04-09 13:49:56'),
	(8, 'invoice', 4, 'invoice_activity_created', '', '1', 'Claudinei Paladini', '2022-04-10 15:33:07'),
	(9, 'invoice', 5, 'invoice_activity_created', '', '1', 'Claudinei Paladini', '2022-04-11 10:27:07'),
	(10, 'invoice', 5, 'invoice_estimate_activity_updated_item_rate', 'a:2:{i:0;s:4:"4.00";i:1;s:2:"10";}', '1', 'Claudinei Paladini', '2022-04-11 10:36:19'),
	(11, 'invoice', 6, 'invoice_activity_created', '', '1', 'Claudinei Paladini', '2022-04-11 10:39:06'),
	(12, 'invoice', 4, 'invoice_activity_sent_to_client', 'a:1:{i:0;s:55:"<custom_data>claudinei@paladiniadv.com.br</custom_data>";}', '1', 'Claudinei Paladini', '2022-04-11 14:42:13'),
	(13, 'invoice', 7, 'invoice_activity_created', '', '1', 'Claudinei Paladini', '2022-04-11 17:01:20'),
	(14, 'invoice', 8, 'invoice_activity_created', '', '1', 'Claudinei Paladini', '2022-04-11 17:02:58'),
	(15, 'invoice', 9, 'invoice_activity_created', '', '1', 'Claudinei Paladini', '2022-04-11 17:06:00'),
	(16, 'invoice', 8, 'invoice_activity_status_updated', 'a:2:{i:0;s:36:"<original_status>1</original_status>";i:1;s:26:"<new_status>2</new_status>";}', '1', 'Claudinei Paladini', '2022-04-13 19:26:02'),
	(17, 'invoice', 8, 'invoice_activity_payment_made_by_staff', 'a:2:{i:0;s:7:"R$10.00";i:1;s:101:"<a href="https://www.paladiniadv.com.br/crm_paladini/admin/payments/payment/2" target="_blank">#2</a>";}', '1', 'Claudinei Paladini', '2022-04-13 19:26:02'),
	(19, 'invoice', 11, 'invoice_activity_created', '', '1', 'Claudinei Paladini', '2022-04-18 00:18:54');
/*!40000 ALTER TABLE `tblsales_activity` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblscheduled_emails
CREATE TABLE IF NOT EXISTS `tblscheduled_emails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(15) NOT NULL,
  `scheduled_at` datetime NOT NULL,
  `contacts` varchar(197) NOT NULL,
  `cc` text,
  `attach_pdf` tinyint(1) NOT NULL DEFAULT '1',
  `template` varchar(197) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblscheduled_emails: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblscheduled_emails` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblscheduled_emails` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblservices
CREATE TABLE IF NOT EXISTS `tblservices` (
  `serviceid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`serviceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblservices: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblservices` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblservices` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblsessions
CREATE TABLE IF NOT EXISTS `tblsessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblsessions: ~45 rows (aproximadamente)
/*!40000 ALTER TABLE `tblsessions` DISABLE KEYS */;
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
	('0e54a17006617096af98164ed59f23e97e425b14', '34.193.116.226', 1650259330, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303235393333303b),
	('0ffc6e28b9cd1bb8af1f15cf8da88baa09c20c64', '34.193.116.226', 1650260969, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303236303936393b),
	('114f9d2cb951aaa25d6fcb2577f98a5fafd93f18', '34.193.116.226', 1650277669, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303237373636393b),
	('1d8c48687928553cd110cae8633951ca45c7b517', '34.193.116.226', 1650274755, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303237343735353b),
	('1e92b8f823893c10091ff2b02b7a3c30934a4faf', '34.193.116.226', 1650264832, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303236343833313b),
	('2c822ece97372b0287701e9a7f0db5d9e1ac98e9', '191.35.249.95', 1650252949, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303235323934393b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a35393a2268747470733a2f2f7777772e70616c6164696e696164762e636f6d2e62722f63726d5f70616c6164696e692f636c69656e74732f7469636b657473223b),
	('3af56ea55c01be72bd69595ae62278c29711ffb9', '191.35.249.95', 1650281963, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303238313936323b7265645f75726c7c733a3137353a2268747470733a2f2f7777772e70616c6164696e696164762e636f6d2e62722f63726d5f70616c6164696e692f7072636861742f5072636861745f436f6e74726f6c6c65722f7075736865725f617574683f63616c6c6261636b3d5075736865722e617574685f63616c6c6261636b732535422532373425323725354426736f636b65745f69643d3235382e323530343739266368616e6e656c5f6e616d653d70726573656e63652d636c69656e7473223b),
	('42cf4ed21bcb97f997e47ffc7d0fa3265e8c3ece', '191.35.249.95', 1650252075, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303235323037353b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
	('4c87bd3785eb0463d0c032148d2f642e51d00c55', '34.193.116.226', 1650281444, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303238313434343b),
	('4e347004f238d2fce42f8619c44224e16967a347', '34.193.116.226', 1650277669, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303237373636393b),
	('5f74468443e2476f598932a48ef031bcf9fc5191', '34.193.116.226', 1650252958, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303235323935383b),
	('60b23b57cc8850cd6d3226a72a74049d3a2ff8ac', '191.35.249.95', 1650251448, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303235313434383b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
	('6751578632bd3f764511a71d584dfb6035e3834b', '34.193.116.226', 1650253324, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303235333332343b),
	('6fe19554ce1e036be10fb91057627898757756ab', '34.193.116.226', 1650254597, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303235343539363b),
	('7029ccb12dd7e734e94e56d3b92c3e87260f0411', '34.193.116.226', 1650254597, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303235343539363b),
	('71d20b4fc5f0871aa6c2767b47defba05d4f9208', '34.193.116.226', 1650255516, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303235353531353b),
	('77196647e8c17db899f498ed999f9e6d6758ca26', '34.193.116.226', 1650256608, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303235363630383b),
	('7804a312db04fd5ed3a6f34b2faa27ce5d13865e', '34.193.116.226', 1650272035, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303237323033353b),
	('819dd03044d857cae312509978a921ece64178f6', '34.193.116.226', 1650255516, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303235353531353b),
	('81bf99f4f43520a84151eb4d64c4aa341d541133', '34.193.116.226', 1650260969, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303236303936393b),
	('83391e050a9d4581f6ee3fbccba961afe08e0274', '34.193.116.226', 1650280760, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303238303735393b),
	('8dabbfbf2b193e91d848406e004d0e854e7e4fac', '191.35.249.95', 1650281962, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303238313936323b7265645f75726c7c733a3137363a2268747470733a2f2f7777772e70616c6164696e696164762e636f6d2e62722f63726d5f70616c6164696e692f7072636861742f5072636861745f436f6e74726f6c6c65722f7075736865725f617574683f63616c6c6261636b3d5075736865722e617574685f63616c6c6261636b732535422532373325323725354426736f636b65745f69643d3235382e323530343739266368616e6e656c5f6e616d653d70726573656e63652d6d796368616e656c223b),
	('8e006ad713979509b634ecc157aac499ec112a38', '34.193.116.226', 1650269510, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303236393530393b),
	('a48e2695c0086453423ea8b267618c0fc346fa0e', '34.193.116.226', 1650262783, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303236323738333b),
	('a97eb2cde89ba5f6ec372303b6b639c34a22cc0c', '34.193.116.226', 1650252914, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303235323931343b),
	('ad5cb4b297bdb49e7b51cd395928cb3dad04ada2', '34.193.116.226', 1650274756, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303237343735363b),
	('bc38b5c3cbc4c694c620851b9af826725a49c0ae', '191.35.249.95', 1650252978, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303235323937383b),
	('be368d36868a4f6f4dbe3cf2ed00ca347700f77b', '34.193.116.226', 1650264832, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303236343833313b),
	('c29711e4c016c0c4839aa8cb950860226d3d106f', '34.193.116.226', 1650253299, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303235333239393b),
	('c877a4c8899255590960667a8e3a1d3b51ceac5f', '34.193.116.226', 1650272035, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303237323033353b),
	('c9248432d9116e5513721be3df641d6d97ef3e62', '34.193.116.226', 1650252754, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303235323735333b),
	('cb13af04631770c782707d4a9f76185b8e900c0a', '34.193.116.226', 1650269510, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303236393531303b),
	('cd914cda2a64b717ac515a50ef19913ed22085c7', '34.193.116.226', 1650253870, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303235333836393b),
	('d6482437b6c393aaaea3e1576116b5e93d07ebab', '34.193.116.226', 1650267005, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303236373030353b),
	('d7448c15ece2235e06b11459d4cdde23b152f219', '34.193.116.226', 1650252711, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303235323731303b),
	('def066bf0661d4524ee7c81b8430dcc1b05a5987', '34.193.116.226', 1650259330, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303235393333303b),
	('e0fbbab72ac382bef09a21e4d5c619a2b2badc10', '191.35.249.95', 1650251141, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303235313134313b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
	('e217488e932e10ff965d176df25cbe1f60de1a44', '34.193.116.226', 1650257874, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303235373837343b),
	('e4fe0c32905e06a47be85b87f0471a270cd43785', '34.193.116.226', 1650253846, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303235333834353b),
	('e8c29709d6adb62a26c84c9c0d64460e7043ba44', '34.193.116.226', 1650267005, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303236373030353b),
	('e9fe96c1eb4b387470e6ed7898b78f8bf3a93c57', '34.193.116.226', 1650262783, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303236323738333b),
	('ef18d2637f297a0d03a8a9303b0c0b14244ef077', '34.193.116.226', 1650257874, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303235373837343b),
	('f9854342142c8c7b701ca0adf7e9628a0ae58845', '34.193.116.226', 1650256608, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303235363630383b),
	('f9eb3ab2e5fd516387cc91c03758622629026d90', '191.35.249.95', 1650251772, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303235313737323b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
	('fe52f9f9de48bf010385f5af7d405fd37908c0e3', '191.35.249.95', 1650252385, _binary 0x5f5f63695f6c6173745f726567656e65726174657c693a313635303235323338353b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a34343a2268747470733a2f2f7777772e70616c6164696e696164762e636f6d2e62722f63726d5f70616c6164696e692f223b);
/*!40000 ALTER TABLE `tblsessions` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblshared_customer_files
CREATE TABLE IF NOT EXISTS `tblshared_customer_files` (
  `file_id` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblshared_customer_files: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblshared_customer_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblshared_customer_files` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblspam_filters
CREATE TABLE IF NOT EXISTS `tblspam_filters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(40) NOT NULL,
  `rel_type` varchar(10) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblspam_filters: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblspam_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblspam_filters` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblstaff
CREATE TABLE IF NOT EXISTS `tblstaff` (
  `staffid` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `facebook` mediumtext,
  `linkedin` mediumtext,
  `phonenumber` varchar(30) DEFAULT NULL,
  `skype` varchar(50) DEFAULT NULL,
  `password` varchar(250) NOT NULL,
  `datecreated` datetime NOT NULL,
  `profile_image` varchar(191) DEFAULT NULL,
  `last_ip` varchar(40) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_activity` datetime DEFAULT NULL,
  `last_password_change` datetime DEFAULT NULL,
  `new_pass_key` varchar(32) DEFAULT NULL,
  `new_pass_key_requested` datetime DEFAULT NULL,
  `admin` int(11) NOT NULL DEFAULT '0',
  `role` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `default_language` varchar(40) DEFAULT NULL,
  `direction` varchar(3) DEFAULT NULL,
  `media_path_slug` varchar(191) DEFAULT NULL,
  `is_not_staff` int(11) NOT NULL DEFAULT '0',
  `hourly_rate` decimal(15,2) NOT NULL DEFAULT '0.00',
  `two_factor_auth_enabled` tinyint(1) DEFAULT '0',
  `two_factor_auth_code` varchar(100) DEFAULT NULL,
  `two_factor_auth_code_requested` datetime DEFAULT NULL,
  `email_signature` text,
  `birthday` date DEFAULT NULL,
  `birthplace` varchar(200) DEFAULT NULL,
  `sex` varchar(15) DEFAULT NULL,
  `marital_status` varchar(25) DEFAULT NULL,
  `nation` varchar(25) DEFAULT NULL,
  `religion` varchar(50) DEFAULT NULL,
  `identification` varchar(100) DEFAULT NULL,
  `days_for_identity` date DEFAULT NULL,
  `home_town` varchar(200) DEFAULT NULL,
  `resident` varchar(200) DEFAULT NULL,
  `current_address` varchar(200) DEFAULT NULL,
  `literacy` varchar(50) DEFAULT NULL,
  `orther_infor` text,
  `job_position` int(11) DEFAULT NULL,
  `workplace` int(11) DEFAULT NULL,
  `place_of_issue` varchar(50) DEFAULT NULL,
  `account_number` varchar(50) DEFAULT NULL,
  `name_account` varchar(50) DEFAULT NULL,
  `issue_bank` varchar(200) DEFAULT NULL,
  `records_received` longtext,
  `Personal_tax_code` varchar(50) DEFAULT NULL,
  `google_auth_secret` text,
  `team_manage` int(11) DEFAULT '0',
  `staff_identifi` varchar(25) DEFAULT NULL,
  `status_work` varchar(100) DEFAULT NULL,
  `date_update` date DEFAULT NULL,
  `store_id` int(9) DEFAULT NULL,
  PRIMARY KEY (`staffid`),
  KEY `firstname` (`firstname`),
  KEY `lastname` (`lastname`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblstaff: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `tblstaff` DISABLE KEYS */;
INSERT INTO `tblstaff` (`staffid`, `email`, `firstname`, `lastname`, `facebook`, `linkedin`, `phonenumber`, `skype`, `password`, `datecreated`, `profile_image`, `last_ip`, `last_login`, `last_activity`, `last_password_change`, `new_pass_key`, `new_pass_key_requested`, `admin`, `role`, `active`, `default_language`, `direction`, `media_path_slug`, `is_not_staff`, `hourly_rate`, `two_factor_auth_enabled`, `two_factor_auth_code`, `two_factor_auth_code_requested`, `email_signature`, `birthday`, `birthplace`, `sex`, `marital_status`, `nation`, `religion`, `identification`, `days_for_identity`, `home_town`, `resident`, `current_address`, `literacy`, `orther_infor`, `job_position`, `workplace`, `place_of_issue`, `account_number`, `name_account`, `issue_bank`, `records_received`, `Personal_tax_code`, `google_auth_secret`, `team_manage`, `staff_identifi`, `status_work`, `date_update`, `store_id`) VALUES
	(1, 'claudinei@paladiniadv.com.br', 'Claudinei', 'Paladini', '', '', '', '', '$2a$08$fZK2APQbilIbm6rMWQ5DoeM7JWu/Sek5NcH2G2w92aoFL39I/8Soe', '2022-04-09 10:47:05', NULL, '191.35.249.95', '2022-04-17 23:59:52', '2022-04-18 00:28:01', '2022-04-13 18:09:59', NULL, NULL, 1, 1, 1, 'portuguese_br', '', 'claudinei-paladini', 0, 0.00, 0, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
	(2, 'schulen.silva@gmail.com', 'SÉRGIO', 'DA  SILVA  SCHULENBURG', '', '', '(47) 99952-7275', '', '$2a$08$40EmPOQx1xhRGkUxOsEHWO2VgnmAl9vqycatkhuvFk7oWiAjZTf/W', '2022-04-11 10:54:48', NULL, '191.35.249.95', '2022-04-14 10:13:33', '2022-04-14 10:13:37', '2022-04-14 10:07:06', NULL, NULL, 0, 3, 1, '', '', 'sergio-da-silva-schulenburg', 0, 0.00, 0, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
	(3, 'maury.oliveira@molivercobranca.com.br', 'MAURY', 'DE OLIVEIRA SANTO JUNIOR', '', '', '', '', '$2a$08$2yM8mGh5yvoBmSyiAobcCO0Vlk04Fn8LsMVkpYkR8qx5V5gMQZiAO', '2022-04-11 11:06:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, 1, '', '', 'maury-de-oliveira-santo-junior', 0, 0.00, 0, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
	(4, 'maury.oliveira@grupomoliver.com.br', 'SPLIT', 'PGTO AMIGÁVEL', '', '', '', '', '$2a$08$Eo/PAYongsTDpNOxyC8CiO/yzhuajW9p/t9UChEeXH7CCLU5DaLhi', '2022-04-14 11:28:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4, 1, '', '', 'split-pgto-amigavel', 1, 0.00, 0, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL),
	(5, 'atendimento@paladiniadv.com.br', 'SPLIT - ', 'PGTO JURÍDICO', '', '', '', '', '$2a$08$jgB68Y36xbn.3.ZsG7xQeuDxAGr70djVkKNrN.Crl3WErdaWQNcPO', '2022-04-14 11:44:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4, 1, '', '', 'split-pgto-juridico', 1, 0.00, 0, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `tblstaff` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblstaff_contract
CREATE TABLE IF NOT EXISTS `tblstaff_contract` (
  `id_contract` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `contract_code` varchar(15) NOT NULL,
  `name_contract` int(11) NOT NULL,
  `staff` int(11) NOT NULL,
  `contract_form` varchar(191) DEFAULT NULL,
  `start_valid` date DEFAULT NULL,
  `end_valid` date DEFAULT NULL,
  `contract_status` varchar(100) DEFAULT NULL,
  `salary_form` int(11) DEFAULT NULL,
  `allowance_type` varchar(11) DEFAULT NULL,
  `sign_day` date DEFAULT NULL,
  `staff_delegate` int(11) DEFAULT NULL,
  `staff_role` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_contract`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblstaff_contract: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblstaff_contract` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblstaff_contract` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblstaff_contracttype
CREATE TABLE IF NOT EXISTS `tblstaff_contracttype` (
  `id_contracttype` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name_contracttype` varchar(200) NOT NULL,
  `contracttype` varchar(200) NOT NULL,
  `duration` int(11) DEFAULT NULL,
  `unit` varchar(20) DEFAULT NULL,
  `insurance` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_contracttype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblstaff_contracttype: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblstaff_contracttype` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblstaff_contracttype` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblstaff_contract_detail
CREATE TABLE IF NOT EXISTS `tblstaff_contract_detail` (
  `contract_detail_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `staff_contract_id` int(11) unsigned NOT NULL,
  `since_date` date DEFAULT NULL,
  `contract_note` varchar(100) DEFAULT NULL,
  `contract_salary_expense` longtext,
  `contract_allowance_expense` longtext,
  PRIMARY KEY (`contract_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblstaff_contract_detail: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblstaff_contract_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblstaff_contract_detail` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblstaff_departments
CREATE TABLE IF NOT EXISTS `tblstaff_departments` (
  `staffdepartmentid` int(11) NOT NULL AUTO_INCREMENT,
  `staffid` int(11) NOT NULL,
  `departmentid` int(11) NOT NULL,
  PRIMARY KEY (`staffdepartmentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblstaff_departments: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblstaff_departments` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblstaff_departments` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblstaff_insurance
CREATE TABLE IF NOT EXISTS `tblstaff_insurance` (
  `insurance_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `staff_id` int(11) unsigned NOT NULL,
  `insurance_book_num` varchar(100) DEFAULT NULL,
  `health_insurance_num` varchar(100) DEFAULT NULL,
  `city_code` varchar(100) DEFAULT NULL,
  `registration_medical` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`insurance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblstaff_insurance: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblstaff_insurance` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblstaff_insurance` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblstaff_insurance_history
CREATE TABLE IF NOT EXISTS `tblstaff_insurance_history` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `insurance_id` int(11) unsigned NOT NULL,
  `staff_id` int(11) unsigned DEFAULT NULL,
  `from_month` date DEFAULT NULL,
  `formality` varchar(50) DEFAULT NULL,
  `reason` varchar(50) DEFAULT NULL,
  `premium_rates` varchar(100) DEFAULT NULL,
  `payment_company` varchar(100) DEFAULT NULL,
  `payment_worker` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`,`insurance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblstaff_insurance_history: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblstaff_insurance_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblstaff_insurance_history` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblstaff_permissions
CREATE TABLE IF NOT EXISTS `tblstaff_permissions` (
  `staff_id` int(11) NOT NULL,
  `feature` varchar(40) NOT NULL,
  `capability` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblstaff_permissions: ~116 rows (aproximadamente)
/*!40000 ALTER TABLE `tblstaff_permissions` DISABLE KEYS */;
INSERT INTO `tblstaff_permissions` (`staff_id`, `feature`, `capability`) VALUES
	(3, 'bulk_pdf_exporter', 'view'),
	(3, 'contracts', 'view_own'),
	(3, 'contracts', 'create'),
	(3, 'contracts', 'edit'),
	(3, 'contracts', 'delete'),
	(3, 'credit_notes', 'view_own'),
	(3, 'credit_notes', 'create'),
	(3, 'credit_notes', 'edit'),
	(3, 'credit_notes', 'delete'),
	(3, 'customers', 'view'),
	(3, 'customers', 'create'),
	(3, 'customers', 'edit'),
	(3, 'customers', 'delete'),
	(3, 'email_templates', 'view'),
	(3, 'email_templates', 'edit'),
	(3, 'estimates', 'view_own'),
	(3, 'estimates', 'create'),
	(3, 'estimates', 'edit'),
	(3, 'estimates', 'delete'),
	(3, 'expenses', 'view_own'),
	(3, 'expenses', 'create'),
	(3, 'expenses', 'edit'),
	(3, 'expenses', 'delete'),
	(3, 'invoices', 'view_own'),
	(3, 'invoices', 'create'),
	(3, 'invoices', 'edit'),
	(3, 'invoices', 'delete'),
	(3, 'items', 'view'),
	(3, 'items', 'create'),
	(3, 'items', 'edit'),
	(3, 'items', 'delete'),
	(3, 'knowledge_base', 'view'),
	(3, 'knowledge_base', 'create'),
	(3, 'knowledge_base', 'edit'),
	(3, 'knowledge_base', 'delete'),
	(3, 'payments', 'view'),
	(3, 'projects', 'view'),
	(3, 'projects', 'create'),
	(3, 'projects', 'edit'),
	(3, 'projects', 'create_milestones'),
	(3, 'proposals', 'view_own'),
	(3, 'proposals', 'create'),
	(3, 'proposals', 'edit'),
	(3, 'proposals', 'delete'),
	(3, 'reports', 'view'),
	(3, 'tasks', 'view'),
	(3, 'tasks', 'create'),
	(3, 'tasks', 'edit'),
	(3, 'tasks', 'edit_timesheet'),
	(3, 'tasks', 'edit_own_timesheet'),
	(3, 'checklist_templates', 'create'),
	(3, 'estimate_request', 'view_own'),
	(3, 'estimate_request', 'create'),
	(3, 'estimate_request', 'edit'),
	(3, 'estimate_request', 'delete'),
	(3, 'surveys', 'view'),
	(3, 'surveys', 'create'),
	(3, 'surveys', 'edit'),
	(2, 'bulk_pdf_exporter', 'view'),
	(2, 'contracts', 'view_own'),
	(2, 'contracts', 'create'),
	(2, 'contracts', 'edit'),
	(2, 'contracts', 'delete'),
	(2, 'credit_notes', 'view_own'),
	(2, 'credit_notes', 'create'),
	(2, 'credit_notes', 'edit'),
	(2, 'credit_notes', 'delete'),
	(2, 'customers', 'view'),
	(2, 'customers', 'create'),
	(2, 'customers', 'edit'),
	(2, 'customers', 'delete'),
	(2, 'email_templates', 'view'),
	(2, 'email_templates', 'edit'),
	(2, 'estimates', 'view_own'),
	(2, 'estimates', 'create'),
	(2, 'estimates', 'edit'),
	(2, 'estimates', 'delete'),
	(2, 'expenses', 'view_own'),
	(2, 'expenses', 'create'),
	(2, 'expenses', 'edit'),
	(2, 'expenses', 'delete'),
	(2, 'invoices', 'view_own'),
	(2, 'invoices', 'create'),
	(2, 'invoices', 'edit'),
	(2, 'invoices', 'delete'),
	(2, 'items', 'view'),
	(2, 'items', 'create'),
	(2, 'items', 'edit'),
	(2, 'items', 'delete'),
	(2, 'knowledge_base', 'view'),
	(2, 'knowledge_base', 'create'),
	(2, 'knowledge_base', 'edit'),
	(2, 'knowledge_base', 'delete'),
	(2, 'payments', 'view'),
	(2, 'projects', 'view'),
	(2, 'projects', 'create'),
	(2, 'projects', 'edit'),
	(2, 'projects', 'create_milestones'),
	(2, 'proposals', 'view_own'),
	(2, 'proposals', 'create'),
	(2, 'proposals', 'edit'),
	(2, 'proposals', 'delete'),
	(2, 'reports', 'view'),
	(2, 'tasks', 'view'),
	(2, 'tasks', 'create'),
	(2, 'tasks', 'edit'),
	(2, 'tasks', 'edit_timesheet'),
	(2, 'tasks', 'edit_own_timesheet'),
	(2, 'checklist_templates', 'create'),
	(2, 'estimate_request', 'view_own'),
	(2, 'estimate_request', 'create'),
	(2, 'estimate_request', 'edit'),
	(2, 'estimate_request', 'delete'),
	(2, 'surveys', 'view'),
	(2, 'surveys', 'create'),
	(2, 'surveys', 'edit');
/*!40000 ALTER TABLE `tblstaff_permissions` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblstock_take
CREATE TABLE IF NOT EXISTS `tblstock_take` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `description` text COMMENT 'the reason stock take',
  `warehouse_id` int(11) DEFAULT NULL,
  `date_stock_take` date DEFAULT NULL,
  `stock_take_code` varchar(100) DEFAULT NULL COMMENT 'số kiểm kê kho',
  `date_add` date DEFAULT NULL,
  `hour_add` date DEFAULT NULL,
  `staff_id` varchar(100) DEFAULT NULL,
  `approval` int(11) DEFAULT '0' COMMENT 'status approval ',
  `addedfrom` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblstock_take: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblstock_take` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblstock_take` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblstock_take_detail
CREATE TABLE IF NOT EXISTS `tblstock_take_detail` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `stock_take_id` int(11) NOT NULL,
  `commodity_code` varchar(100) DEFAULT NULL,
  `commodity_name` text,
  `unit_id` text,
  `unit_price` varchar(100) DEFAULT NULL,
  `quantity_stock_take` varchar(100) DEFAULT NULL,
  `quantity_accounting_book` varchar(100) DEFAULT NULL,
  `quantity_change` varchar(100) DEFAULT NULL,
  `handling` text,
  `reason` text,
  `approval` int(11) DEFAULT '0' COMMENT 'status approval ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblstock_take_detail: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblstock_take_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblstock_take_detail` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblsubscriptions
CREATE TABLE IF NOT EXISTS `tblsubscriptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `description` text,
  `description_in_item` tinyint(1) NOT NULL DEFAULT '0',
  `clientid` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `terms` text,
  `currency` int(11) NOT NULL,
  `tax_id` int(11) NOT NULL DEFAULT '0',
  `stripe_tax_id` varchar(50) DEFAULT NULL,
  `tax_id_2` int(11) NOT NULL DEFAULT '0',
  `stripe_tax_id_2` varchar(50) DEFAULT NULL,
  `stripe_plan_id` text,
  `stripe_subscription_id` text NOT NULL,
  `next_billing_cycle` bigint(20) DEFAULT NULL,
  `ends_at` bigint(20) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT '1',
  `project_id` int(11) NOT NULL DEFAULT '0',
  `hash` varchar(32) NOT NULL,
  `created` datetime NOT NULL,
  `created_from` int(11) NOT NULL,
  `date_subscribed` datetime DEFAULT NULL,
  `in_test_environment` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `clientid` (`clientid`),
  KEY `currency` (`currency`),
  KEY `tax_id` (`tax_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblsubscriptions: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblsubscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblsubscriptions` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblsurveyresultsets
CREATE TABLE IF NOT EXISTS `tblsurveyresultsets` (
  `resultsetid` int(11) NOT NULL AUTO_INCREMENT,
  `surveyid` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `useragent` varchar(150) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`resultsetid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblsurveyresultsets: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblsurveyresultsets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblsurveyresultsets` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblsurveys
CREATE TABLE IF NOT EXISTS `tblsurveys` (
  `surveyid` int(11) NOT NULL AUTO_INCREMENT,
  `subject` mediumtext NOT NULL,
  `slug` mediumtext NOT NULL,
  `description` text NOT NULL,
  `viewdescription` text,
  `datecreated` datetime NOT NULL,
  `redirect_url` varchar(100) DEFAULT NULL,
  `send` tinyint(1) NOT NULL DEFAULT '0',
  `onlyforloggedin` int(11) DEFAULT '0',
  `fromname` varchar(100) DEFAULT NULL,
  `iprestrict` tinyint(1) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `hash` varchar(32) NOT NULL,
  PRIMARY KEY (`surveyid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblsurveys: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblsurveys` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblsurveys` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblsurveysemailsendcron
CREATE TABLE IF NOT EXISTS `tblsurveysemailsendcron` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `surveyid` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `emailid` int(11) DEFAULT NULL,
  `listid` varchar(11) DEFAULT NULL,
  `log_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblsurveysemailsendcron: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblsurveysemailsendcron` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblsurveysemailsendcron` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblsurveysendlog
CREATE TABLE IF NOT EXISTS `tblsurveysendlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `surveyid` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `iscronfinished` int(11) NOT NULL DEFAULT '0',
  `send_to_mail_lists` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblsurveysendlog: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblsurveysendlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblsurveysendlog` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tbltaggables
CREATE TABLE IF NOT EXISTS `tbltaggables` (
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `tag_order` int(11) NOT NULL DEFAULT '0',
  KEY `rel_id` (`rel_id`),
  KEY `rel_type` (`rel_type`),
  KEY `tag_id` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tbltaggables: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tbltaggables` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbltaggables` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tbltags
CREATE TABLE IF NOT EXISTS `tbltags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tbltags: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tbltags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbltags` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tbltasks
CREATE TABLE IF NOT EXISTS `tbltasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` mediumtext,
  `description` text,
  `priority` int(11) DEFAULT NULL,
  `dateadded` datetime NOT NULL,
  `startdate` date NOT NULL,
  `duedate` date DEFAULT NULL,
  `datefinished` datetime DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `is_added_from_contact` tinyint(1) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `recurring_type` varchar(10) DEFAULT NULL,
  `repeat_every` int(11) DEFAULT NULL,
  `recurring` int(11) NOT NULL DEFAULT '0',
  `is_recurring_from` int(11) DEFAULT NULL,
  `cycles` int(11) NOT NULL DEFAULT '0',
  `total_cycles` int(11) NOT NULL DEFAULT '0',
  `custom_recurring` tinyint(1) NOT NULL DEFAULT '0',
  `last_recurring_date` date DEFAULT NULL,
  `rel_id` int(11) DEFAULT NULL,
  `rel_type` varchar(30) DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT '0',
  `billable` tinyint(1) NOT NULL DEFAULT '0',
  `billed` tinyint(1) NOT NULL DEFAULT '0',
  `invoice_id` int(11) NOT NULL DEFAULT '0',
  `hourly_rate` decimal(15,2) NOT NULL DEFAULT '0.00',
  `milestone` int(11) DEFAULT '0',
  `kanban_order` int(11) DEFAULT '1',
  `milestone_order` int(11) NOT NULL DEFAULT '0',
  `visible_to_client` tinyint(1) NOT NULL DEFAULT '0',
  `deadline_notified` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `rel_id` (`rel_id`),
  KEY `rel_type` (`rel_type`),
  KEY `milestone` (`milestone`),
  KEY `kanban_order` (`kanban_order`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tbltasks: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tbltasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbltasks` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tbltaskstimers
CREATE TABLE IF NOT EXISTS `tbltaskstimers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` int(11) NOT NULL,
  `start_time` varchar(64) NOT NULL,
  `end_time` varchar(64) DEFAULT NULL,
  `staff_id` int(11) NOT NULL,
  `hourly_rate` decimal(15,2) NOT NULL DEFAULT '0.00',
  `note` text,
  PRIMARY KEY (`id`),
  KEY `task_id` (`task_id`),
  KEY `staff_id` (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tbltaskstimers: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tbltaskstimers` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbltaskstimers` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tbltasks_checklist_templates
CREATE TABLE IF NOT EXISTS `tbltasks_checklist_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tbltasks_checklist_templates: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tbltasks_checklist_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbltasks_checklist_templates` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tbltask_assigned
CREATE TABLE IF NOT EXISTS `tbltask_assigned` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staffid` int(11) NOT NULL,
  `taskid` int(11) NOT NULL,
  `assigned_from` int(11) NOT NULL DEFAULT '0',
  `is_assigned_from_contact` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `taskid` (`taskid`),
  KEY `staffid` (`staffid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tbltask_assigned: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tbltask_assigned` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbltask_assigned` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tbltask_checklist_items
CREATE TABLE IF NOT EXISTS `tbltask_checklist_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taskid` int(11) NOT NULL,
  `description` text NOT NULL,
  `finished` int(11) NOT NULL DEFAULT '0',
  `dateadded` datetime NOT NULL,
  `addedfrom` int(11) NOT NULL,
  `finished_from` int(11) DEFAULT '0',
  `list_order` int(11) NOT NULL DEFAULT '0',
  `assigned` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `taskid` (`taskid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tbltask_checklist_items: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tbltask_checklist_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbltask_checklist_items` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tbltask_comments
CREATE TABLE IF NOT EXISTS `tbltask_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `taskid` int(11) NOT NULL,
  `staffid` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL DEFAULT '0',
  `file_id` int(11) NOT NULL DEFAULT '0',
  `dateadded` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `file_id` (`file_id`),
  KEY `taskid` (`taskid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tbltask_comments: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tbltask_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbltask_comments` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tbltask_followers
CREATE TABLE IF NOT EXISTS `tbltask_followers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staffid` int(11) NOT NULL,
  `taskid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tbltask_followers: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tbltask_followers` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbltask_followers` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tbltaxes
CREATE TABLE IF NOT EXISTS `tbltaxes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `taxrate` decimal(15,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tbltaxes: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tbltaxes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbltaxes` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tbltemplates
CREATE TABLE IF NOT EXISTS `tbltemplates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `type` varchar(100) NOT NULL,
  `addedfrom` int(11) NOT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tbltemplates: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tbltemplates` DISABLE KEYS */;
INSERT INTO `tbltemplates` (`id`, `name`, `type`, `addedfrom`, `content`) VALUES
	(1, 'MODELO DE CONTRATO', 'contracts', 1, 'TESTE');
/*!40000 ALTER TABLE `tbltemplates` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tbltickets
CREATE TABLE IF NOT EXISTS `tbltickets` (
  `ticketid` int(11) NOT NULL AUTO_INCREMENT,
  `adminreplying` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL,
  `contactid` int(11) NOT NULL DEFAULT '0',
  `merged_ticket_id` int(11) DEFAULT NULL,
  `email` text,
  `name` text,
  `department` int(11) NOT NULL,
  `priority` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `service` int(11) DEFAULT NULL,
  `ticketkey` varchar(32) NOT NULL,
  `subject` varchar(191) NOT NULL,
  `message` text,
  `admin` int(11) DEFAULT NULL,
  `date` datetime NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `lastreply` datetime DEFAULT NULL,
  `clientread` int(11) NOT NULL DEFAULT '0',
  `adminread` int(11) NOT NULL DEFAULT '0',
  `assigned` int(11) NOT NULL DEFAULT '0',
  `staff_id_replying` int(11) DEFAULT NULL,
  `cc` varchar(191) DEFAULT NULL,
  PRIMARY KEY (`ticketid`),
  KEY `service` (`service`),
  KEY `department` (`department`),
  KEY `status` (`status`),
  KEY `userid` (`userid`),
  KEY `priority` (`priority`),
  KEY `project_id` (`project_id`),
  KEY `contactid` (`contactid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tbltickets: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tbltickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbltickets` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tbltickets_pipe_log
CREATE TABLE IF NOT EXISTS `tbltickets_pipe_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `email_to` varchar(100) NOT NULL,
  `name` varchar(191) NOT NULL,
  `subject` varchar(191) NOT NULL,
  `message` mediumtext NOT NULL,
  `email` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tbltickets_pipe_log: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tbltickets_pipe_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbltickets_pipe_log` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tbltickets_predefined_replies
CREATE TABLE IF NOT EXISTS `tbltickets_predefined_replies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tbltickets_predefined_replies: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tbltickets_predefined_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbltickets_predefined_replies` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tbltickets_priorities
CREATE TABLE IF NOT EXISTS `tbltickets_priorities` (
  `priorityid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`priorityid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tbltickets_priorities: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `tbltickets_priorities` DISABLE KEYS */;
INSERT INTO `tbltickets_priorities` (`priorityid`, `name`) VALUES
	(1, 'Low'),
	(2, 'Medium'),
	(3, 'High');
/*!40000 ALTER TABLE `tbltickets_priorities` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tbltickets_status
CREATE TABLE IF NOT EXISTS `tbltickets_status` (
  `ticketstatusid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `isdefault` int(11) NOT NULL DEFAULT '0',
  `statuscolor` varchar(7) DEFAULT NULL,
  `statusorder` int(11) DEFAULT NULL,
  PRIMARY KEY (`ticketstatusid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tbltickets_status: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `tbltickets_status` DISABLE KEYS */;
INSERT INTO `tbltickets_status` (`ticketstatusid`, `name`, `isdefault`, `statuscolor`, `statusorder`) VALUES
	(1, 'Open', 1, '#ff2d42', 1),
	(2, 'In progress', 1, '#84c529', 2),
	(3, 'Answered', 1, '#0000ff', 3),
	(4, 'On Hold', 1, '#c0c0c0', 4),
	(5, 'Closed', 1, '#03a9f4', 5);
/*!40000 ALTER TABLE `tbltickets_status` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblticket_attachments
CREATE TABLE IF NOT EXISTS `tblticket_attachments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ticketid` int(11) NOT NULL,
  `replyid` int(11) DEFAULT NULL,
  `file_name` varchar(191) NOT NULL,
  `filetype` varchar(50) DEFAULT NULL,
  `dateadded` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblticket_attachments: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblticket_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblticket_attachments` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblticket_replies
CREATE TABLE IF NOT EXISTS `tblticket_replies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ticketid` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `contactid` int(11) NOT NULL DEFAULT '0',
  `name` text,
  `email` text,
  `date` datetime NOT NULL,
  `message` text,
  `attachment` int(11) DEFAULT NULL,
  `admin` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblticket_replies: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblticket_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblticket_replies` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tbltodos
CREATE TABLE IF NOT EXISTS `tbltodos` (
  `todoid` int(11) NOT NULL AUTO_INCREMENT,
  `description` text NOT NULL,
  `staffid` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  `finished` tinyint(1) NOT NULL,
  `datefinished` datetime DEFAULT NULL,
  `item_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`todoid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tbltodos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tbltodos` DISABLE KEYS */;
INSERT INTO `tbltodos` (`todoid`, `description`, `staffid`, `dateadded`, `finished`, `datefinished`, `item_order`) VALUES
	(1, 'Teste', 1, '2022-04-15 10:57:04', 0, NULL, NULL);
/*!40000 ALTER TABLE `tbltodos` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tbltracked_mails
CREATE TABLE IF NOT EXISTS `tbltracked_mails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(32) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(40) NOT NULL,
  `date` datetime NOT NULL,
  `email` varchar(100) NOT NULL,
  `opened` tinyint(1) NOT NULL DEFAULT '0',
  `date_opened` datetime DEFAULT NULL,
  `subject` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tbltracked_mails: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tbltracked_mails` DISABLE KEYS */;
INSERT INTO `tbltracked_mails` (`id`, `uid`, `rel_id`, `rel_type`, `date`, `email`, `opened`, `date_opened`, `subject`) VALUES
	(1, 'a92941ceedfd6e1b1754edf2047bcbda', 4, 'invoice', '2022-04-11 14:42:13', 'claudinei@paladiniadv.com.br', 0, NULL, 'Invoice with number INV-000002 created');
/*!40000 ALTER TABLE `tbltracked_mails` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tbltwocheckout_log
CREATE TABLE IF NOT EXISTS `tbltwocheckout_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference` varchar(64) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `amount` varchar(25) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `invoice_id` (`invoice_id`),
  CONSTRAINT `tbltwocheckout_log_ibfk_1` FOREIGN KEY (`invoice_id`) REFERENCES `tblinvoices` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tbltwocheckout_log: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tbltwocheckout_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbltwocheckout_log` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tbluser_auto_login
CREATE TABLE IF NOT EXISTS `tbluser_auto_login` (
  `key_id` char(32) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_agent` varchar(150) NOT NULL,
  `last_ip` varchar(40) NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `staff` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tbluser_auto_login: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tbluser_auto_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbluser_auto_login` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tbluser_meta
CREATE TABLE IF NOT EXISTS `tbluser_meta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `staff_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `client_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `contact_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(191) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tbluser_meta: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tbluser_meta` DISABLE KEYS */;
INSERT INTO `tbluser_meta` (`umeta_id`, `staff_id`, `client_id`, `contact_id`, `meta_key`, `meta_value`) VALUES
	(1, 0, 0, 1, 'consent_key', '859590f75947b876f3abf40b00d1c886-ee5782583d8167ce3b6056bd6cf13749'),
	(2, 1, 0, 0, 'recent_searches', '["claudinei"]');
/*!40000 ALTER TABLE `tbluser_meta` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblvault
CREATE TABLE IF NOT EXISTS `tblvault` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `server_address` varchar(191) NOT NULL,
  `port` int(11) DEFAULT NULL,
  `username` varchar(191) NOT NULL,
  `password` text NOT NULL,
  `description` text,
  `creator` int(11) NOT NULL,
  `creator_name` varchar(100) DEFAULT NULL,
  `visibility` tinyint(1) NOT NULL DEFAULT '1',
  `share_in_projects` tinyint(1) NOT NULL DEFAULT '0',
  `last_updated` datetime DEFAULT NULL,
  `last_updated_from` varchar(100) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblvault: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblvault` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblvault` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblviews_tracking
CREATE TABLE IF NOT EXISTS `tblviews_tracking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(40) NOT NULL,
  `date` datetime NOT NULL,
  `view_ip` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblviews_tracking: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `tblviews_tracking` DISABLE KEYS */;
INSERT INTO `tblviews_tracking` (`id`, `rel_id`, `rel_type`, `date`, `view_ip`) VALUES
	(1, 7, 'invoice', '2022-04-14 16:10:53', '191.35.249.95'),
	(2, 4, 'invoice', '2022-04-14 16:11:09', '191.35.249.95');
/*!40000 ALTER TABLE `tblviews_tracking` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblwarehouse
CREATE TABLE IF NOT EXISTS `tblwarehouse` (
  `warehouse_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `warehouse_code` varchar(100) DEFAULT NULL,
  `warehouse_name` text,
  `warehouse_address` text,
  `order` int(10) DEFAULT NULL,
  `display` int(1) DEFAULT NULL COMMENT 'display 1: display (yes)  0: not displayed (no)',
  `note` text,
  PRIMARY KEY (`warehouse_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblwarehouse: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblwarehouse` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblwarehouse` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblware_body_type
CREATE TABLE IF NOT EXISTS `tblware_body_type` (
  `body_type_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `body_code` varchar(100) DEFAULT NULL,
  `body_name` text,
  `order` int(10) DEFAULT NULL,
  `display` int(1) DEFAULT NULL COMMENT 'display 1: display (yes)  0: not displayed (no)',
  `note` text,
  PRIMARY KEY (`body_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblware_body_type: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblware_body_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblware_body_type` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblware_color
CREATE TABLE IF NOT EXISTS `tblware_color` (
  `color_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `color_code` varchar(100) DEFAULT NULL,
  `color_name` varchar(100) DEFAULT NULL,
  `color_hex` text,
  `order` int(10) DEFAULT NULL,
  `display` int(1) DEFAULT NULL COMMENT 'display 1: display (yes)  0: not displayed (no)',
  `note` text,
  PRIMARY KEY (`color_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblware_color: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblware_color` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblware_color` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblware_commodity_type
CREATE TABLE IF NOT EXISTS `tblware_commodity_type` (
  `commodity_type_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `commondity_code` varchar(100) DEFAULT NULL,
  `commondity_name` text,
  `order` int(10) DEFAULT NULL,
  `display` int(1) DEFAULT NULL COMMENT 'display 1: display (yes)  0: not displayed (no)',
  `note` text,
  PRIMARY KEY (`commodity_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblware_commodity_type: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblware_commodity_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblware_commodity_type` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblware_size_type
CREATE TABLE IF NOT EXISTS `tblware_size_type` (
  `size_type_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `size_code` varchar(100) DEFAULT NULL,
  `size_name` text,
  `size_symbol` text,
  `order` int(10) DEFAULT NULL,
  `display` int(1) DEFAULT NULL COMMENT 'display 1: display (yes)  0: not displayed (no)',
  `note` text,
  PRIMARY KEY (`size_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblware_size_type: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblware_size_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblware_size_type` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblware_style_type
CREATE TABLE IF NOT EXISTS `tblware_style_type` (
  `style_type_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `style_code` varchar(100) DEFAULT NULL,
  `style_barcode` text,
  `style_name` text,
  `order` int(10) DEFAULT NULL,
  `display` int(1) DEFAULT NULL COMMENT 'display 1: display (yes)  0: not displayed (no)',
  `note` text,
  PRIMARY KEY (`style_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblware_style_type: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblware_style_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblware_style_type` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblware_unit_type
CREATE TABLE IF NOT EXISTS `tblware_unit_type` (
  `unit_type_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `unit_code` varchar(100) DEFAULT NULL,
  `unit_name` text,
  `unit_symbol` text,
  `order` int(10) DEFAULT NULL,
  `display` int(1) DEFAULT NULL COMMENT 'display 1: display (yes)  0: not displayed (no)',
  `note` text,
  PRIMARY KEY (`unit_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblware_unit_type: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblware_unit_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblware_unit_type` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblweb_to_lead
CREATE TABLE IF NOT EXISTS `tblweb_to_lead` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_key` varchar(32) NOT NULL,
  `lead_source` int(11) NOT NULL,
  `lead_status` int(11) NOT NULL,
  `notify_lead_imported` int(11) NOT NULL DEFAULT '1',
  `notify_type` varchar(20) DEFAULT NULL,
  `notify_ids` mediumtext,
  `responsible` int(11) NOT NULL DEFAULT '0',
  `name` varchar(191) NOT NULL,
  `form_data` mediumtext,
  `recaptcha` int(11) NOT NULL DEFAULT '0',
  `submit_btn_name` varchar(40) DEFAULT NULL,
  `submit_btn_text_color` varchar(10) DEFAULT '#ffffff',
  `submit_btn_bg_color` varchar(10) DEFAULT '#84c529',
  `success_submit_msg` text,
  `submit_action` int(11) DEFAULT '0',
  `lead_name_prefix` varchar(255) DEFAULT NULL,
  `submit_redirect_url` mediumtext,
  `language` varchar(40) DEFAULT NULL,
  `allow_duplicate` int(11) NOT NULL DEFAULT '1',
  `mark_public` int(11) NOT NULL DEFAULT '0',
  `track_duplicate_field` varchar(20) DEFAULT NULL,
  `track_duplicate_field_and` varchar(20) DEFAULT NULL,
  `create_task_on_duplicate` int(11) NOT NULL DEFAULT '0',
  `dateadded` datetime NOT NULL,
  `is_mpwtl` int(1) DEFAULT '0',
  `form_color` varchar(15) DEFAULT NULL,
  `form_bg_color` varchar(15) DEFAULT NULL,
  `form_theme` varchar(15) DEFAULT 'elegant',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblweb_to_lead: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblweb_to_lead` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblweb_to_lead` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblweb_to_recruitment
CREATE TABLE IF NOT EXISTS `tblweb_to_recruitment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `campaign_code` varchar(200) DEFAULT NULL,
  `campaign_name` varchar(200) DEFAULT NULL,
  `cp_proposal` text,
  `cp_position` int(11) DEFAULT NULL,
  `cp_department` int(11) DEFAULT NULL,
  `cp_amount_recruiment` int(11) DEFAULT NULL,
  `cp_form_work` varchar(45) DEFAULT NULL,
  `cp_workplace` varchar(255) DEFAULT NULL,
  `cp_salary_from` decimal(15,0) DEFAULT NULL,
  `cp_salary_to` decimal(15,0) DEFAULT NULL,
  `cp_from_date` date DEFAULT NULL,
  `cp_to_date` date DEFAULT NULL,
  `cp_reason_recruitment` text,
  `cp_job_description` text,
  `cp_manager` text,
  `cp_follower` text,
  `cp_ages_from` int(11) DEFAULT NULL,
  `cp_ages_to` int(11) DEFAULT NULL,
  `cp_gender` varchar(10) DEFAULT NULL,
  `cp_height` float DEFAULT NULL,
  `cp_weight` float DEFAULT NULL,
  `cp_literacy` varchar(200) DEFAULT NULL,
  `cp_experience` varchar(200) DEFAULT NULL,
  `cp_add_from` int(11) DEFAULT NULL,
  `cp_date_add` date DEFAULT NULL,
  `cp_status` int(11) DEFAULT NULL,
  `nation` varchar(15) DEFAULT NULL,
  `nationality` varchar(15) DEFAULT NULL,
  `religion` varchar(15) DEFAULT NULL,
  `marital_status` varchar(15) DEFAULT NULL,
  `birthplace` varchar(200) DEFAULT NULL,
  `home_town` varchar(200) DEFAULT NULL,
  `resident` varchar(200) DEFAULT NULL,
  `current_accommodation` varchar(200) DEFAULT NULL,
  `cp_desired_salary` varchar(10) DEFAULT NULL,
  `specialized` varchar(100) DEFAULT NULL,
  `training_form` varchar(50) DEFAULT NULL,
  `training_places` varchar(50) DEFAULT NULL,
  `lead_source` varchar(10) DEFAULT NULL,
  `lead_status` varchar(10) DEFAULT NULL,
  `notify_ids_staff` text,
  `notify_ids_roles` text,
  `form_key` varchar(32) DEFAULT NULL,
  `notify_lead_imported` int(11) DEFAULT '1',
  `notify_type` varchar(20) DEFAULT NULL,
  `notify_ids` mediumtext,
  `responsible` int(11) DEFAULT '0',
  `name` varchar(191) DEFAULT NULL,
  `form_data` mediumtext,
  `recaptcha` int(11) DEFAULT '0',
  `submit_btn_name` varchar(40) DEFAULT NULL,
  `success_submit_msg` text,
  `language` varchar(40) DEFAULT NULL,
  `allow_duplicate` int(11) DEFAULT '1',
  `mark_public` int(11) DEFAULT '0',
  `track_duplicate_field` varchar(20) DEFAULT NULL,
  `track_duplicate_field_and` varchar(20) DEFAULT NULL,
  `create_task_on_duplicate` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblweb_to_recruitment: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblweb_to_recruitment` DISABLE KEYS */;
INSERT INTO `tblweb_to_recruitment` (`id`, `campaign_code`, `campaign_name`, `cp_proposal`, `cp_position`, `cp_department`, `cp_amount_recruiment`, `cp_form_work`, `cp_workplace`, `cp_salary_from`, `cp_salary_to`, `cp_from_date`, `cp_to_date`, `cp_reason_recruitment`, `cp_job_description`, `cp_manager`, `cp_follower`, `cp_ages_from`, `cp_ages_to`, `cp_gender`, `cp_height`, `cp_weight`, `cp_literacy`, `cp_experience`, `cp_add_from`, `cp_date_add`, `cp_status`, `nation`, `nationality`, `religion`, `marital_status`, `birthplace`, `home_town`, `resident`, `current_accommodation`, `cp_desired_salary`, `specialized`, `training_form`, `training_places`, `lead_source`, `lead_status`, `notify_ids_staff`, `notify_ids_roles`, `form_key`, `notify_lead_imported`, `notify_type`, `notify_ids`, `responsible`, `name`, `form_data`, `recaptcha`, `submit_btn_name`, `success_submit_msg`, `language`, `allow_duplicate`, `mark_public`, `track_duplicate_field`, `track_duplicate_field_and`, `create_task_on_duplicate`) VALUES
	(1, '', '', '', 0, 0, 1, '', '', 0, 0, '0000-00-00', '0000-00-00', '', '', '', '', 15, 60, '', 1, 40, '', '', 0, '0000-00-00', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'fd927e1c95d4823a3db80881ae89a971', 0, '', '', 0, 'recruitment_form', '[{"label":"Croatia","value":"55"},{"label":"Cuba","value":"56"},{"label":"Curacao","value":"57"},{"label":"Cyprus","value":"58"},{"label":"Czech Republic","value":"59"},{"label":"Democratic Republic of the Congo","value":"60"},{"label":"Denmark","value":"61"},{"label":"Djibouti","value":"62"},{"label":"Dominica","value":"63"},{"label":"Dominican Republic","value":"64"},{"label":"Ecuador","value":"65"},{"label":"Egypt","value":"66"},{"label":"El Salvador","value":"67"},{"label":"Equatorial Guinea","value":"68"},{"label":"Eritrea","value":"69"},{"label":"Estonia","value":"70"},{"label":"Ethiopia","value":"71"},{"label":"Falkland Islands (Malvinas)","value":"72"},{"label":"Faroe Islands","value":"73"},{"label":"Fiji","value":"74"},{"label":"Finland","value":"75"},{"label":"France","value":"76"},{"label":"French Guiana","value":"77"},{"label":"French Polynesia","value":"78"},{"label":"French Southern Territories","value":"79"},{"label":"Gabon","value":"80"},{"label":"Gambia","value":"81"},{"label":"Georgia","value":"82"},{"label":"Germany","value":"83"},{"label":"Ghana","value":"84"},{"label":"Gibraltar","value":"85"},{"label":"Greece","value":"86"},{"label":"Greenland","value":"87"},{"label":"Grenada","value":"88"},{"label":"Guadaloupe","value":"89"},{"label":"Guam","value":"90"},{"label":"Guatemala","value":"91"},{"label":"Guernsey","value":"92"},{"label":"Guinea","value":"93"},{"label":"Guinea-Bissau","value":"94"},{"label":"Guyana","value":"95"},{"label":"Haiti","value":"96"},{"label":"Heard Island and McDonald Islands","value":"97"},{"label":"Honduras","value":"98"},{"label":"Hong Kong","value":"99"},{"label":"Hungary","value":"100"},{"label":"Iceland","value":"101"},{"label":"India","value":"102"},{"label":"Indonesia","value":"103"},{"label":"Iran","value":"104"},{"label":"Iraq","value":"105"},{"label":"Ireland","value":"106"},{"label":"Isle of Man","value":"107"},{"label":"Israel","value":"108"},{"label":"Italy","value":"109"},{"label":"Jamaica","value":"110"},{"label":"Japan","value":"111"},{"label":"Jersey","value":"112"},{"label":"Jordan","value":"113"},{"label":"Kazakhstan","value":"114"},{"label":"Kenya","value":"115"},{"label":"Kiribati","value":"116"},{"label":"Kosovo","value":"117"},{"label":"Kuwait","value":"118"},{"label":"Kyrgyzstan","value":"119"},{"label":"Laos","value":"120"},{"label":"Latvia","value":"121"},{"label":"Lebanon","value":"122"},{"label":"Lesotho","value":"123"},{"label":"Liberia","value":"124"},{"label":"Libya","value":"125"},{"label":"Liechtenstein","value":"126"},{"label":"Lithuania","value":"127"},{"label":"Luxembourg","value":"128"},{"label":"Macao","value":"129"},{"label":"North Macedonia","value":"130"},{"label":"Madagascar","value":"131"},{"label":"Malawi","value":"132"},{"label":"Malaysia","value":"133"},{"label":"Maldives","value":"134"},{"label":"Mali","value":"135"},{"label":"Malta","value":"136"},{"label":"Marshall Islands","value":"137"},{"label":"Martinique","value":"138"},{"label":"Mauritania","value":"139"},{"label":"Mauritius","value":"140"},{"label":"Mayotte","value":"141"},{"label":"Mexico","value":"142"},{"label":"Micronesia","value":"143"},{"label":"Moldava","value":"144"},{"label":"Monaco","value":"145"},{"label":"Mongolia","value":"146"},{"label":"Montenegro","value":"147"},{"label":"Montserrat","value":"148"},{"label":"Morocco","value":"149"},{"label":"Mozambique","value":"150"},{"label":"Myanmar (Burma)","value":"151"},{"label":"Namibia","value":"152"},{"label":"Nauru","value":"153"},{"label":"Nepal","value":"154"},{"label":"Netherlands","value":"155"},{"label":"New Caledonia","value":"156"},{"label":"New Zealand","value":"157"},{"label":"Nicaragua","value":"158"},{"label":"Niger","value":"159"},{"label":"Nigeria","value":"160"},{"label":"Niue","value":"161"},{"label":"Norfolk Island","value":"162"},{"label":"North Korea","value":"163"},{"label":"Northern Mariana Islands","value":"164"},{"label":"Norway","value":"165"},{"label":"Oman","value":"166"},{"label":"Pakistan","value":"167"},{"label":"Palau","value":"168"},{"label":"Palestine","value":"169"},{"label":"Panama","value":"170"},{"label":"Papua New Guinea","value":"171"},{"label":"Paraguay","value":"172"},{"label":"Peru","value":"173"},{"label":"Phillipines","value":"174"},{"label":"Pitcairn","value":"175"},{"label":"Poland","value":"176"},{"label":"Portugal","value":"177"},{"label":"Puerto Rico","value":"178"},{"label":"Qatar","value":"179"},{"label":"Reunion","value":"180"},{"label":"Romania","value":"181"},{"label":"Russia","value":"182"},{"label":"Rwanda","value":"183"},{"label":"Saint Barthelemy","value":"184"},{"label":"Saint Helena","value":"185"},{"label":"Saint Kitts and Nevis","value":"186"},{"label":"Saint Lucia","value":"187"},{"label":"Saint Martin","value":"188"},{"label":"Saint Pierre and Miquelon","value":"189"},{"label":"Saint Vincent and the Grenadines","value":"190"},{"label":"Samoa","value":"191"},{"label":"San Marino","value":"192"},{"label":"Sao Tome and Principe","value":"193"},{"label":"Saudi Arabia","value":"194"},{"label":"Senegal","value":"195"},{"label":"Serbia","value":"196"},{"label":"Seychelles","value":"197"},{"label":"Sierra Leone","value":"198"},{"label":"Singapore","value":"199"},{"label":"Sint Maarten","value":"200"},{"label":"Slovakia","value":"201"},{"label":"Slovenia","value":"202"},{"label":"Solomon Islands","value":"203"},{"label":"Somalia","value":"204"},{"label":"South Africa","value":"205"},{"label":"South Georgia and the South Sandwich Islands","value":"206"},{"label":"South Korea","value":"207"},{"label":"South Sudan","value":"208"},{"label":"Spain","value":"209"},{"label":"Sri Lanka","value":"210"},{"label":"Sudan","value":"211"},{"label":"Suriname","value":"212"},{"label":"Svalbard and Jan Mayen","value":"213"},{"label":"Swaziland","value":"214"},{"label":"Sweden","value":"215"},{"label":"Switzerland","value":"216"},{"label":"Syria","value":"217"},{"label":"Taiwan","value":"218"},{"label":"Tajikistan","value":"219"},{"label":"Tanzania","value":"220"},{"label":"Thailand","value":"221"},{"label":"Timor-Leste (East Timor)","value":"222"},{"label":"Togo","value":"223"},{"label":"Tokelau","value":"224"},{"label":"Tonga","value":"225"},{"label":"Trinidad and Tobago","value":"226"},{"label":"Tunisia","value":"227"},{"label":"Turkey","value":"228"},{"label":"Turkmenistan","value":"229"},{"label":"Turks and Caicos Islands","value":"230"},{"label":"Tuvalu","value":"231"},{"label":"Uganda","value":"232"},{"label":"Ukraine","value":"233"},{"label":"United Arab Emirates","value":"234"},{"label":"United Kingdom","value":"235"},{"label":"United States","value":"236"},{"label":"United States Minor Outlying Islands","value":"237"},{"label":"Uruguay","value":"238"},{"label":"Uzbekistan","value":"239"},{"label":"Vanuatu","value":"240"},{"label":"Vatican City","value":"241"},{"label":"Venezuela","value":"242"},{"label":"Vietnam","value":"243","selected":true},{"label":"Virgin Islands, British","value":"244"},{"label":"Virgin Islands, US","value":"245"},{"label":"Wallis and Futuna","value":"246"},{"label":"Western Sahara","value":"247"},{"label":"Yemen","value":"248"},{"label":"Zambia","value":"249"},{"label":"Zimbabwe","value":"250"}]},{"type":"text","label":"_national","className":"form-control","name":"nation","subtype":"text"},{"type":"text","label":"_religion","className":"form-control","name":"religion","subtype":"text"},{"type":"text","label":"_phone","className":"form-control","name":"phonenumber","subtype":"text"},{"type":"select","label":"_diploma","className":"form-control","name":"diploma","values":[{"label":"","value":""},{"label":"master_s_degree","value":"0"},{"label":"Ph_D","value":"1"},{"label":"bachelor","value":"2"},{"label":"university","value":"3"},{"label":"vocational_colleges","value":"4"},{"label":"vocational","value":"5"},{"label":"high_school","value":"6"}]},{"type":"text","label":"training_places","className":"form-control","name":"training_places","subtype":"text"},{"type":"text","label":"specialized","className":"form-control","name":"specialized","subtype":"text"},{"type":"text","label":"forms_of_training","className":"form-control","name":"training_form","subtype":"text"},{"type":"text","label":"issue_date_identification_card","className":"form-control fc-datepicker","name":"days_for_identity","subtype":"text"}]', 0, 'sent', 'sent_successfully', '', 0, 0, '', '', 0);
/*!40000 ALTER TABLE `tblweb_to_recruitment` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblwh_activity_log
CREATE TABLE IF NOT EXISTS `tblwh_activity_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(45) COLLATE latin1_general_ci NOT NULL,
  `staffid` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `note` text COLLATE latin1_general_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- Copiando dados para a tabela crm_paladini.tblwh_activity_log: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblwh_activity_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblwh_activity_log` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblwh_approval_details
CREATE TABLE IF NOT EXISTS `tblwh_approval_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(45) COLLATE latin1_general_ci NOT NULL,
  `staffid` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `approve` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `note` text COLLATE latin1_general_ci,
  `date` datetime DEFAULT NULL,
  `approve_action` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `reject_action` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `approve_value` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `reject_value` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `staff_approve` int(11) DEFAULT NULL,
  `action` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `sender` int(11) DEFAULT NULL,
  `date_send` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- Copiando dados para a tabela crm_paladini.tblwh_approval_details: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblwh_approval_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblwh_approval_details` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblwh_approval_setting
CREATE TABLE IF NOT EXISTS `tblwh_approval_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `related` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `setting` longtext COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- Copiando dados para a tabela crm_paladini.tblwh_approval_setting: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblwh_approval_setting` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblwh_approval_setting` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblwh_loss_adjustment
CREATE TABLE IF NOT EXISTS `tblwh_loss_adjustment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(15) DEFAULT NULL,
  `addfrom` int(11) DEFAULT NULL,
  `reason` longtext,
  `time` datetime DEFAULT NULL,
  `date_create` date NOT NULL,
  `status` int(11) NOT NULL,
  `warehouses` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblwh_loss_adjustment: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblwh_loss_adjustment` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblwh_loss_adjustment` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblwh_loss_adjustment_detail
CREATE TABLE IF NOT EXISTS `tblwh_loss_adjustment_detail` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `items` int(11) DEFAULT NULL,
  `unit` int(11) DEFAULT NULL,
  `current_number` int(15) DEFAULT NULL,
  `updates_number` int(15) DEFAULT NULL,
  `loss_adjustment` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblwh_loss_adjustment_detail: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblwh_loss_adjustment_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblwh_loss_adjustment_detail` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblwh_sub_group
CREATE TABLE IF NOT EXISTS `tblwh_sub_group` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sub_group_code` varchar(100) DEFAULT NULL,
  `sub_group_name` text,
  `order` int(10) DEFAULT NULL,
  `display` int(1) DEFAULT NULL COMMENT 'display 1: display (yes)  0: not displayed (no)',
  `note` text,
  `group_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblwh_sub_group: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblwh_sub_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblwh_sub_group` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblwoocommerce_assigned
CREATE TABLE IF NOT EXISTS `tblwoocommerce_assigned` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblwoocommerce_assigned: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblwoocommerce_assigned` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblwoocommerce_assigned` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblwoocommerce_customers
CREATE TABLE IF NOT EXISTS `tblwoocommerce_customers` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `woo_customer_id` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `email` varchar(190) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `avatar_url` text,
  `store_id` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblwoocommerce_customers: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblwoocommerce_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblwoocommerce_customers` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblwoocommerce_orders
CREATE TABLE IF NOT EXISTS `tblwoocommerce_orders` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_number` varchar(50) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `address` text,
  `phone` varchar(50) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `date_created` date DEFAULT NULL,
  `date_modified` date DEFAULT NULL,
  `total` varchar(30) DEFAULT NULL,
  `invoice_id` int(30) DEFAULT NULL,
  `store_id` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblwoocommerce_orders: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblwoocommerce_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblwoocommerce_orders` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblwoocommerce_products
CREATE TABLE IF NOT EXISTS `tblwoocommerce_products` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `itemid` int(11) DEFAULT NULL,
  `name` varchar(500) DEFAULT NULL,
  `permalink` varchar(500) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `sku` varchar(50) DEFAULT NULL,
  `price` varchar(20) DEFAULT NULL,
  `sales` varchar(20) DEFAULT NULL,
  `picture` text,
  `category` text,
  `date_created` date DEFAULT NULL,
  `date_modified` date DEFAULT NULL,
  `store_id` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblwoocommerce_products: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblwoocommerce_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblwoocommerce_products` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblwoocommerce_stores
CREATE TABLE IF NOT EXISTS `tblwoocommerce_stores` (
  `store_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `secret` varchar(255) NOT NULL,
  `productPage` int(5) DEFAULT '1',
  `orderPage` int(5) DEFAULT '1',
  `customerPage` int(5) DEFAULT '1',
  `date_created` datetime NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblwoocommerce_stores: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblwoocommerce_stores` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblwoocommerce_stores` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblwoocommerce_summary
CREATE TABLE IF NOT EXISTS `tblwoocommerce_summary` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` int(5) DEFAULT NULL,
  `customers` text,
  `orders` text,
  `products` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblwoocommerce_summary: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblwoocommerce_summary` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblwoocommerce_summary` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblworkplace
CREATE TABLE IF NOT EXISTS `tblworkplace` (
  `workplace_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `workplace_name` varchar(200) NOT NULL,
  PRIMARY KEY (`workplace_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblworkplace: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblworkplace` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblworkplace` ENABLE KEYS */;

-- Copiando estrutura para tabela crm_paladini.tblwork_shift
CREATE TABLE IF NOT EXISTS `tblwork_shift` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shift_code` varchar(45) NOT NULL,
  `shift_name` varchar(200) NOT NULL,
  `shift_type` varchar(200) NOT NULL,
  `department` int(11) DEFAULT '0',
  `position` int(11) DEFAULT '0',
  `add_from` int(11) NOT NULL,
  `date_create` date DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `shifts_detail` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela crm_paladini.tblwork_shift: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tblwork_shift` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblwork_shift` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
