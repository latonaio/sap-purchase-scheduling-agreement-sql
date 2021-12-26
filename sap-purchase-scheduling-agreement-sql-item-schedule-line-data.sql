CREATE TABLE `sap_purchase_scheduling_agreement_item_scedule_line_data`
(
  `SchedulingAgreement`                  varchar(10) NOT NULL,
  `SchedulingAgreementItem`              varchar(5) NOT NULL,
  `ScheduleLine`                         varchar(4) NOT NULL,
  `DelivDateCategory`                    varchar(1) DEFAULT NULL,
  `ScheduleLineDeliveryDate`             varchar(80) DEFAULT NULL,
  `ScheduleLineDeliveryTime`             varchar(80) DEFAULT NULL,
  `OrderQuantityUnit`                    varchar(1) DEFAULT NULL,
  `ScheduleLineOrderQuantity`            varchar(13) DEFAULT NULL,
  `PurchaseRequisition`                  varchar(10) DEFAULT NULL,
  `PurchaseRequisitionItem`              varchar(5) DEFAULT NULL,
  `ScheduleLineIsFixed`                  tinyint(1) DEFAULT NULL,
    PRIMARY KEY (`SchedulingAgreement`, `SchedulingAgreementItem`, `ScheduleLine`)
    CONSTRAINT `SAPSchedulingAgreementItemScheduleLineData_fk` FOREIGN KEY (`SchedulingAgreement`) REFERENCES `sap_purchase_scheduling_agreement_header_data` (`SchedulingAgreement`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
