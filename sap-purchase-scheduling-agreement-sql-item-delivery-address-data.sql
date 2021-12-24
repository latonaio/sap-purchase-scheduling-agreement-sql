CREATE TABLE `sap-purchase-scheduling-agreement-item-delivery-address-data`
(
  `SchedulingAgreement`                  varchar(10) NOT NULL,
  `SchedulingAgreementItem`              varchar(5) NOT NULL,
  `DeliveryAddressID`                    varchar(10) DEFAULT NULL,
  `AddressType`                          varchar(1) DEFAULT NULL,
  `StreetName`                           varchar(60) DEFAULT NULL,
  `PostalCode`                           varchar(10) DEFAULT NULL,
  `CityName`                             varchar(40) DEFAULT NULL,
  `MobileNumber`                         varchar(30) DEFAULT NULL,
  `Region`                               varchar(3) DEFAULT NULL,
  `Country`                              varchar(3) DEFAULT NULL,
  `EmailAddress`                         varchar(241) DEFAULT NULL,
  `Plant`                                varchar(4) DEFAULT NULL,
  `CorrespondenceLanguage`               varchar(2) DEFAULT NULL,
  `PhoneNumber`                          varchar(30) DEFAULT NULL,
  `FaxNumber`                            varchar(30) DEFAULT NULL,
    PRIMARY KEY (`SchedulingAgreement`, `SchedulingAgreementItem`),
    CONSTRAINT `SchedulingAgreement_fk` FOREIGN KEY (`SchedulingAgreement`) REFERENCES `sap-purchase-scheduling-agreement-header-data` (`SchedulingAgreement`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
