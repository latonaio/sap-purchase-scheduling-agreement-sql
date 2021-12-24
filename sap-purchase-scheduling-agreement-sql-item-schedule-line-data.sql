CREATE TABLE `sap-purchase-scheduling-agreement-item-scedule-line-data`
(
  `SchedulingAgreement`                  varchar(10) NOT NULL,
  `SchedulingAgreementItem`              varchar(5) NOT NULL,
  `ScheduleLine`                         varchar(4) NOT NULL,
  `DelivDateCategory`                    varchar(1) DEFAULT NULL,
  `ScheduleLineDeliveryDate`             date DEFAULT NULL,
  `ScheduleLineDeliveryTime`             time DEFAULT NULL,
  `OrderQuantityUnit`                    varchar(1) DEFAULT NULL,
  `ScheduleLineOrderQuantity`            varchar(13) DEFAULT NULL,
  `PurchaseRequisition`                  varchar(10) DEFAULT NULL,
  `PurchaseRequisitionItem`              varchar(5) DEFAULT NULL,
  `ScheduleLineIsFixed`                  tinyint(1) DEFAULT NULL,
    PRIMARY KEY (`SchedulingAgreement`, `SchedulingAgreementItem`, `ScheduleLine`)
    CONSTRAINT `SchedulingAgreement_fk` FOREIGN KEY (`SchedulingAgreement`) REFERENCES `sap-purchase-scheduling-agreement-header-data` (`SchedulingAgreement`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
