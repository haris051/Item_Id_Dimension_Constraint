Alter Table Company 
Add Column Item_Dimension_Constraint varchar(1) default 'N';


drop view if exists vw_Company; 
CREATE VIEW `vw_company` AS
    SELECT 
        `a`.`ID` AS `ID`,
        `a`.`COMPANY_ID` AS `COMPANY_ID`,
        `a`.`COMPANY_NAME` AS `COMPANY_NAME`,
        `a`.`CURRENCY_NAME` AS `CURRENCY_NAME`,
        `a`.`CURRENCY_SIGN` AS `CURRENCY_SIGN`,
        `a`.`IS_DESC_SALES` AS `IS_DESC_SALES`,
        `a`.`MAILING_ADDRESS` AS `MAILING_ADDRESS`,
        `a`.`CITY` AS `CITY`,
        `a`.`STATE` AS `STATE`,
        `a`.`ZIP` AS `ZIP`,
        `a`.`COUNTRY` AS `COUNTRY`,
        `a`.`TELEPHONE` AS `TELEPHONE`,
        `a`.`EMAIL` AS `EMAIL`,
        `a`.`CURRENCY_CLASS` AS `CURRENCY_CLASS`,
        `a`.`SALES_TAX_VALUE` AS `SALES_TAX_VALUE`,
        `a`.`SALES_TAX_LABEL` AS `SALES_TAX_LABEL`,
        `a`.`SALES_TAX_NO` AS `SALES_TAX_NO`,
        `a`.`SALE_PRICE_FLAG` AS `SALE_PRICE_FLAG`,
        `a`.`MERGE_CURRENT_STOCK` AS `MERGE_CURRENT_STOCK`,
        `a`.`CLIENT_ID` AS `CLIENT_ID`,
        `a`.`COMPANY_WEBSITE` AS `COMPANY_WEBSITE`,
        `a`.`DEFAULT_INVENTORY_TYPE_ID` AS `DEFAULT_INVENTORY_TYPE_ID`,
        `a`.`DEFAULT_ITEM_TYPE_ID` AS `DEFAULT_ITEM_TYPE_ID`,
        `a`.`DEFAULT_PAYMENT_TYPE` AS `DEFAULT_PAYMENT_TYPE`,
        `a`.`DEFAULT_SHIPPING_TYPE` AS `DEFAULT_SHIPPING_TYPE`,
        `a`.`DEFAULT_FORM_ID` AS `DEFAULT_FORM_ID`,
        `a`.`DEFAULT_PAYMENT_REFERENCE` AS `DEFAULT_PAYMENT_REFERENCE`,
        `a`.`ITEM_IDENTITY` AS `ITEM_IDENTITY`,
        `a`.`Account_Id` as `Account_Id`,
		`a`.`Item_Dimension_Constraint` as `Item_Dimension_Constraint`
    FROM
        `company` `a`
    ORDER BY `a`.`COMPANY_NAME`;