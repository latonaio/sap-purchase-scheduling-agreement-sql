CREATE TABLE `sap-purchase-scheduling-agreement-item-data`
(
  `SchedulingAgreement`                   varchar(10) DEFAULT NULL,
  `SchedulingAgreementItem`               varchar(5) DEFAULT NULL,
  `CompanyCode`                           varchar(4) DEFAULT NULL,
  `PurchasingDocumentCategory`            varchar(1) DEFAULT NULL,
  `PurchasingDocumentItemCategory`        varchar(1) DEFAULT NULL,
  `PurchasingDocumentItemText`            varchar(40) DEFAULT NULL,
  `Material`                              varchar(40) DEFAULT NULL,
  `SupplierMaterialNumber`                varchar(35) DEFAULT NULL,
  `MaterialGroup`                         varchar(9) DEFAULT NULL,
  `Plant`                                 varchar(4) DEFAULT NULL,
  `ReferenceDeliveryAddressID`            varchar(10) DEFAULT NULL,
  `IncotermsClassification`               varchar(3) DEFAULT NULL,
  `OrderQuantityUnit`                     varchar(3) DEFAULT NULL,
  `TargetQuantity`                        varchar(13) DEFAULT NULL,
  `PurchaseRequisition`                   varchar(10) DEFAULT NULL,
  `PurchaseRequisitionItem`               varchar(5) DEFAULT NULL,
  `SchedAgrmtAgreedCumQty`                varchar(13) DEFAULT NULL,
  `SchedAgrmtCumQtyReconcileDate`         date DEFAULT NULL,
  `AccountAssignmentCategory`             varchar(1) DEFAULT NULL,
  `NetPriceAmount`                        varchar(13) DEFAULT NULL,
  `NetPriceQuantity`                      varchar(5) DEFAULT NULL,
  `OrderPriceUnit`                        varchar(3) DEFAULT NULL,
  `ProductType`                           varchar(2) DEFAULT NULL,
  `MaterialType`                          varchar(4) DEFAULT NULL,
  `StorageLocation`                       varchar(4) DEFAULT NULL,
  `DocumentCurrency`                      varchar(5) DEFAULT NULL,
  `PurchasingInfoRecord`                  varchar(10) DEFAULT NULL,
  `PurchasingDocumentDeletionCode`        varchar(1) DEFAULT NULL,
  `UnderdelivTolrtdLmtRatioInPct`         varchar(3) DEFAULT NULL,
  `OverdelivTolrtdLmtRatioInPct`          varchar(3) DEFAULT NULL,
  `UnlimitedOverdeliveryIsAllowed`        tinyint(1) DEFAULT NULL,
  `StockType`                             varchar(1) DEFAULT NULL,
  `TaxCode`                               varchar(2) DEFAULT NULL,
  `TaxCountry`                            varchar(3) DEFAULT NULL,
  `GoodsReceiptIsExpected`                tinyint(1) DEFAULT NULL,
  `GoodsReceiptIsNonValuated`             tinyint(1) DEFAULT NULL,
  `InvoiceIsExpected`                     tinyint(1) DEFAULT NULL,
  `InvoiceIsGoodsReceiptBased`            tinyint(1) DEFAULT NULL,
  `EvaldRcptSettlmtIsAllowed`             tinyint(1) DEFAULT NULL,
    PRIMARY KEY (`SchedulingAgreement`),
    CONSTRAINT `SchedulingAgreement_fk` FOREIGN KEY (`SchedulingAgreement`) REFERENCES `sap-purchase-scheduling-agreement-header-data` (`SchedulingAgreement`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;