-- SQL Queries

CREATE TABLE IF NOT EXISTS newschema.wpjj_zp_invoices_copy (
  `id` bigint(20) unsigned not null auto_increment,
  `_CreatedDate` datetime,
  `DeclaratieNummer` bigint unsigned,
  `DeclaratieDatum` datetime,
  `DeclaratieregelOmschrijving` text,
  `DeclaratieBedrag` decimal(10,2),
  `DossierNUmmer` int unsigned,
  `DossierBehandellocatie` text,
  `DossierNaam` text,
  `SubtrajectNummer` bigint unsigned,
  `SubtrajectHoofdbehandelaar` text,
  `SubtrajectStartdatum` datetime,
  `SubtrajectEinddatum` datetime,
  `SubtrajectDeclaratiecode` text,
  `SubtrajectDeclaratiecodeOmschrijving` text,
  `SubtrajectDiagnosecode` int,
  `SubtrajectDeclaratiebedrag` decimal(10,2),
  `DeclaratieDebiteurnummer` bigint unsigned,
  `DeclaratieDebiteurNaam` text,
  `DebiteurTelefoon` text,
  `DebiteurMailadres` text,
  `DebiteurAdres` text,
  `ZorgverzekeraarNaam` text,
  `ZorgverzekeraarUZOVI` text,
  `ZorgverzekeraarPakket` text,
  `ReimburseAmount` decimal(10,2),
  `EoLastFetched` bigint(20) unsigned,
  `EoStatus` int unsigned,
  `Reminder1Sent` bigint(20) unsigned,
  `Reminder2Sent` bigint(20) unsigned,
  primary key(`id`)
);

INSERT INTO `wpjj_zp_invoices_copy` SELECT * FROM `wpjj_zp_invoices`

CREATE TABLE IF NOT EXISTS `wpjj_zp_invoices_new` (  
    `id` int unsigned not null auto_increment,
    `_CreatedDate` datetime,
    `_ImportedDate` datetime,
    `_LastExportedDate` datetime,
    `_ModifiedDate` datetime,
    `DeclaratieNummer` int unsigned,
    `DeclaratieDatum` datetime,                            # unix timestamp
    `DeclaratieregelOmschrijving` varchar(300),
    `DeclaratieregelOmschrijvingDBC` varchar(10),          # parsed
    `DeclaratieregelOmschrijvingDescription` varchar(500), # parsed
    `DeclaratieregelOmschrijvingSubtrajectNr` int,         # parsed
    `DeclaratieBedrag` decimal(10,2),
    `DeclaratieCurrency` varchar(5),                       # parsed
    `DossierNUmmer` int unsigned,
    `DossierBehandellocatie` varchar(100),
    `DossierNaam` varchar(100),
    `SubtrajectNummer` int unsigned,
    `SubtrajectHoofdbehandelaar` varchar(300),
    `SubtrajectHoofdbehandelaarName` varchar(100),         # parsed
    `SubtrajectHoofdbehandelaarLocation` varchar(100),     # parsed
    `SubtrajectHoofdbehandelaarSpecialism` varchar(100),   # parsed
    `SubtrajectStartdatum` datetime,
    `SubtrajectEinddatum` datetime,
    `SubtrajectDeclaratiecode` varchar(10),
    `SubtrajectDeclaratiecodeOmschrijving` varchar(2000),
    `SubtrajectDiagnosecode` int unsigned,
    `SubtrajectDeclaratiebedrag` decimal(10,2),
    `DeclaratieDebiteurnummer` int unsigned,
    `DeclaratieDebiteurNaam` varchar(200),
    `DebiteurTelefoon` int unsigned,                       # parsed trimmed
    `DebiteurMailadres` varchar(100),                      # parsed trimmed
    `DebiteurAdres` varchar(200), 
    `DebiteurAdresStreet` varchar(300),                    # parsed trimmed
    `DebiteurAdresNumber` int unsigned,                    # parsed trimmed
    `DebiteurAdresNumberLetters` varchar(20),              # parsed trimmed
    `DebiteurAdresZipcodeNumber` int unsigned,             # parsed trimmed
    `DebiteurAdresZipcodeLetters` varchar(10),             # parsed trimmed
    `DebiteurAdresCity` varchar(200),                      # parsed trimmed
    `ZorgverzekeraarNaam` varchar(200),
    `ZorgverzekeraarUZOVI` int unsigned,
    `ZorgverzekeraarPakket` varchar(200),
    `ReimburseAmount` decimal(10,2),
    `Reminder1Sent` int unsigned,                          # not clear, boolean or date
    `Reminder2Sent` int unsigned,                          # not clear, boolean or date
    `EOguid` varchar(40),
    `EOdivision` int unsigned,
    `EoLastFetched` int unsigned,
    `EOtimestamp` int unsigned,
    `EoStatus` int unsigned,
    `EoTransactionIDs` text,                               # json multiple transactions
    `EoPaidAmount` decimal(10,2), 
    `PaidStatus` int unsigned, 
    `PaidDate` datetime,                                   # all dates unix date
    `ExportedStatus` int unsigned, 
    `ExportedDate` datetime,
    `PaidOutStatus` int unsigned,
    `PaidOutDate` datetime,
    `CreditInvoiceNumber` int unsigned,
    `CreditedDate` datetime,
    `InvoiceStatus` int unsigned,     
    primary key(`id`)
);

DROP TABLE newschema.wpjj_zp_invoices_new;
