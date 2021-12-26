CREATE TABLE `sap_purchase_scheduling_agreement_header_partner_data`
(
  `SchedulingAgreement`                varchar(10) NOT NULL,
  `SchedulingAgreementItem`            varchar(5) DEFAULT NULL,
  `PurchasingOrganization`             varchar(4) DEFAULT NULL,
  `SupplierSubrange`                   varchar(6) DEFAULT NULL,
  `Plant`                              varchar(4) DEFAULT NULL,
  `PartnerFunction`                    varchar(2) DEFAULT NULL,
  `PartnerCounter`                     varchar(3) DEFAULT NULL,
  `Supplier`                           varchar(10) DEFAULT NULL,
  `DefaultPartner`                     tinyint(1) DEFAULT NULL,
    PRIMARY KEY (`SchedulingAgreement`),
    CONSTRAINT `SAPSchedulingAgreementHeaderPartnerData_fk` FOREIGN KEY (`SchedulingAgreement`) REFERENCES `sap_purchase_scheduling_agreement_header_data` (`SchedulingAgreement`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
