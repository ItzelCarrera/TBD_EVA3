CREATE DEFINER=`root`@`localhost` TRIGGER `mensaje` AFTER INSERT ON `account` FOR EACH ROW set @mensaje = "cuenta agregada con éxito"