-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2022 at 08:58 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_tipificacion`
--

-- --------------------------------------------------------

--
-- Table structure for table `matriz`
--

CREATE TABLE `matriz` (
  `id_matriz` int(15) NOT NULL,
  `nivel_1` varchar(70) COLLATE utf8_spanish2_ci NOT NULL,
  `nivel_2` varchar(70) COLLATE utf8_spanish2_ci NOT NULL,
  `nivel_3` varchar(70) COLLATE utf8_spanish2_ci NOT NULL,
  `documentacion` varchar(255) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `matriz`
--

INSERT INTO `matriz` (`id_matriz`, `nivel_1`, `nivel_2`, `nivel_3`, `documentacion`) VALUES
(2, 'Aplicaciones de Autogestion', 'Configuracion de Servicios', 'App Movil / Mi Tigo', 'Cuando el usuario solicita realizar alguna configuraci?n de Mi Tigo, por ejemplo: Adicionar otros servicio o contratos'),
(3, 'Aplicaciones de Autogestion', 'Creacion Usuario', 'App Movil / Mi Tigo', 'Cuando el usuario solicita informaci?n parar crear la cuenta en Mi Tigo'),
(4, 'Aplicaciones de Autogestion', 'Falla de Servicios', 'App Movil / Mi Tigo', 'Cuando la app no deja ingresar al usuario'),
(5, 'Atencion Al Cliente', 'Actualizar Datos Personales', 'Actualiza Direccion/email', 'Cuando el usuario solicita actualizar sus datos de direcci?n o correo (en casos que no tienen que ver con factura)'),
(6, 'Atencion Al Cliente', 'Actualizar Datos Personales', 'Actualiza Registro Cliente', 'Actualizar datos del usuario como n?meros de contacto (en casos que no tienen que ver con factura)'),
(7, 'Atencion Al Cliente', 'Actualizar Datos Personales', 'Cambio de Titularidad', 'Cambio de Suscriptor'),
(8, 'Atencion Al Cliente', 'CallBack', 'Cliente No Contactado', 'N/A - No se realizan contactos de salida'),
(9, 'Atencion Al Cliente', 'Club de Fidelidad', 'Canje de Puntos', 'Puntos o promociones que se le brindan al usuario como por ejemplo en Compra de Equipos'),
(10, 'Atencion Al Cliente', 'Club de Fidelidad', 'Se Brinda Informacion', 'N/A'),
(11, 'Atencion Al Cliente', 'Comentario del Cliente', 'Iniciativa Comercial', 'Cuando se le da informaci?n al usuario de alg?n servicio para la venta'),
(12, 'Atencion Al Cliente', 'Contacto No Efectivo', 'Cliente abandona', 'Usuario no informa motivo de contacto e indica que se va a comunicar luego o se va a comunicar por otro medio.'),
(13, 'Atencion Al Cliente', 'Contacto No Efectivo', 'Transferencia', 'Retiro Transferencia Rete N2 // Aplica para todas las transferencias a otro pilotos: Rete, m?vil, pymes, CD, soporte, etc'),
(14, 'Atencion Al Cliente', 'Felicitaciones/Sugerencias', 'Felicitaciones', 'Cuando el usuario se comunica para felicitar'),
(15, 'Atencion Al Cliente', 'Felicitaciones/Sugerencias', 'Sugerencias', 'Cuando el usuario se comunica porque tiene sugerencias'),
(16, 'Atencion Al Cliente', 'Horarios /Ubicacion Tiendas', 'Se Brinda Informacion', 'Cuando se le indica al usuario la informaci?n con respecto a los horarios de atenci?n, l?neas o tiendas'),
(17, 'Atencion Al Cliente', 'Info Plan Contratado', 'Se Brinda Informacion', 'Cambio Tecnolog?a - Informaci?n WIFI Pro, informaci?n del plan que tiene el usuario actualmente, n?mero de contrato, cualquier informaci?n relacionada a su plan'),
(18, 'Atencion Al Cliente', 'Mala Atencion Ejecutivo', 'Mal Servicio Tiendas', 'Cliente se comunica presentando inconformidad por la atenci?n brindada en una de las tiendas Tigo (Centros de experiencia)'),
(19, 'Atencion Al Cliente', 'Mala Atencion Tecnico', 'Mal Servicio Home', 'Cliente se comunica para presentar inconformidad sobre la atenci?n prestada o mal procedimiento realizado por uno de los t?cnicos de servicio.'),
(20, 'Atencion Al Cliente', 'Puntos/Medios de Pago', 'Se Brinda Informacion', 'Cuando se le indica al usuario la informaci?n con respecto a los lugares en donde se puede pagar la factura ya sean f?sicos o virtuales'),
(21, 'Factura/Cobro', 'Actualizar Datos Personales', 'Actualizar Datos Facturacion', 'Cambio Direcci?n env?o Factura - Petici?n Cambio Estrato - QF por Estrato Errado'),
(22, 'Factura/Cobro', 'Afiliacion Factura Digital', 'Se Brinda Informacion', 'Cualquier informaci?n con respecto a factura digital como: Si est? no afiliado, promociones vigentes o c?mo afiliarse'),
(23, 'Factura/Cobro', 'Afiliacion Factura Digital', 'Se Realiza Alta/Modificacion', 'Inscripci?n a factura digital o modificaci?n de correo o n?mero de celular'),
(24, 'Factura/Cobro', 'Desacuerdo en la Factura', 'Cobro de Suscripcion', 'Aplica para Movilidad'),
(25, 'Factura/Cobro', 'Desacuerdo en la Factura', 'Descuento No Aplicado', 'Inconvenientes con descuentos ofrecidos al usuario, reliquidaciones por descuentos que no se aplicaron en rete'),
(26, 'Factura/Cobro', 'Desacuerdo en la Factura', 'Deuda Vencida', 'Cliente expresa su inconformidad con el cobro de deudas vencidas en su factura'),
(27, 'Factura/Cobro', 'Desacuerdo en la Factura', 'Diferencia Contrato/Oferta', 'QF por Estrato Errado - Ajuste por Cobro de Equipos - Usuario manifiesta que le hab?an ofrecido otro plan y env?a comprobante pero no est? aplicada la oferta en siebel'),
(28, 'Factura/Cobro', 'Desacuerdo en la Factura', 'Financiamiento Deuda/Device', 'Ajuste por Cobro de Equipos'),
(29, 'Factura/Cobro', 'Desacuerdo en la Factura', 'Llamadas/Minutos/Tarifas', 'Desacuerdo en los valores por cargos en la factura sobre llamadas a m?vil - QF por esta casu?stica'),
(30, 'Factura/Cobro', 'Desacuerdo en la Factura', 'Prorrateo', 'Cliente expresa su inconformidad con la facturaci?n o valores cargados a la factura de sus servicios solicitando prorrateo de los cobros o por la facturaci?n de servicios prorrateados. (Cargos proporcionales a la cantidad que el servicio se usa)'),
(31, 'Factura/Cobro', 'Desacuerdo en la Factura', 'Reconexion No Realizada', 'Reconexi?n por Falta de Pago - User que realiz? el pago y no se reconect? - SS reconexion'),
(32, 'Factura/Cobro', 'Desacuerdo en la Factura', 'Servicio No Instalado', 'Ajuste por Cobro de Equipos'),
(33, 'Factura/Cobro', 'Detalles Factura/Llamadas', 'No Muestra Factura/Detalle', 'Cliente expresa su inconformidad con los valores cargados a su factura - Se le brinda infomaci?n y explicaci?n de los cobros realizados.'),
(34, 'Factura/Cobro', 'Detalles Factura/Llamadas', 'Se Proporciona Saldo/Detalles', 'Env?o de saldo pendiente con referente de pago ? explicaci?n de factura'),
(35, 'Factura/Cobro', 'No Recibe Factura', 'Actualizar Datos Facturacion', 'Cuando el usuario no recibe la factura y los datos se encuentran errados, por lo tanto, se debe actualizar direcci?n a la que est? llegando o el correo si es factura digital'),
(36, 'Factura/Cobro', 'No Recibe Factura', 'Enviar Factura Electronica', 'Duplicado de Factura F?sica'),
(37, 'Factura/Cobro', 'Notificacion de Cobro', 'Cobro No Corresponde', 'Mensajes y llamadas de cobros que no corresponden con la c?dula del usuario - Escalamiento por medio del formulario Listas Negras'),
(38, 'Factura/Cobro', 'Notificacion de Cobro', 'Se Brinda Informacion', 'Cuando el usuario requiere Petici?n de Paz y Salvo - Usuaio solicita informaci?n de la agencia de cobro'),
(39, 'Factura/Cobro', 'Notificacion de Cobro', 'Se Otorga Financiamiento', 'Cuando el usuario pide o se le ofrece Financiamiento de la deuda'),
(40, 'Factura/Cobro', 'Servicio No Reconocido', 'Mala Gestion de Venta', 'Usuario informa que recibe mensajes de cobranzas y solicita informaci?n sobre dichos mensajes ya que desconoce los contratos o cobros. Al verificar la informaci?n se evidencia que el cobro es producto de una mala gesti?n de ventas/Suplantaci?n.'),
(41, 'Factura/Cobro', 'Servicio No Reconocido', 'Sospecha de Fraude', 'QF por fraude - Reliquidaciones por fraude'),
(42, 'Factura/Cobro', 'Suspension de Servicio', 'Bloqueo Mora - Deuda Vencida', 'Servicios suspendidos por falta de pago'),
(43, 'Factura/Cobro', 'Suspension de Servicio', 'Bloqueo Mora-Cliente Al Dia', 'Servicios suspendidos pero el cliente no se encuentra en mora'),
(44, 'Factura/Cobro', 'Suspension de Servicio', 'Bloqueo Mora-Error en Pago', 'Informaci?n sobre servicios suspendidos por falta de pago - Usuario paga a un contrato errado y se le suspenden sus servicios'),
(45, 'Informacion de Servicios', 'Solicita Informacion', 'Infomacion Regulatoria', 'Entrega de Equipos - Cambio de Estrato - Unificar y Separar Contratos - Paz y Salvo - Solicitud de Pumed - Proceso Decos por SS- Estado de ss'),
(46, 'Informacion de Servicios', 'Solicita Informacion', 'Informacion Corporativa', 'Etiqueta general, aplica para cualquier informaci?n de la empresa o relacionada con ella.'),
(47, 'Informacion de Servicios', 'Solicita Informacion', 'Internet Fijo', 'Matr?cula grabaci?n Contrato - Suspensi?n por Orden del Suscriptor - Se brinda informacion con respecto al internet (velocidad contratada, beneficios, entre otros)'),
(48, 'Informacion de Servicios', 'Solicita Informacion', 'Paquetes Residenciales', 'Cualquier informaci?n acerca de los paquetes fijos'),
(49, 'Informacion de Servicios', 'Solicita Informacion', 'Promociones Vigentes', 'Cuando el usuario pregunta por las promociones vigentes y descuento pero a manera de informaci?n (telefon?a, internet, televisi?n, paquetes premium)'),
(50, 'Informacion de Servicios', 'Solicita Informacion', 'Telefonia Fija', 'Matr?cula grabaci?n Contrato - Suspensi?n por Orden del Suscriptor - Adicion o Retiro de Discados - Adici?n o Retiro de Grabaci?n - Adicion o Retiro de Larga Distancia - Adici?n Servicio Especiales y Telebuz?n - C?digo Secreto - Cambio de N?mero - Cambio '),
(51, 'Informacion de Servicios', 'Solicita Informacion', 'Television', 'Matr?cula grabaci?n Contrato - Suspensi?n por Orden del Suscriptor - Se brinda informacion con respecto a la TV (Plan contratado, guia de canales, entre otros)'),
(52, 'Instalacion Nueva', 'Incumplimiento Visita', 'Visita Cancelada', 'Casos de instalaci?n de servicios nuevos o cambios de domicilio - Incumplimiento y cancelaci?n de la visita por falta de cobertura, mal ingreso, cliente no contactado, etc'),
(53, 'Instalacion Nueva', 'Incumplimiento Visita', 'Visita Reprogramada', 'Casos de instalaci?n de servicios nuevos o cambios de domicilio - El CE re agenda la visita por cualquier motivo - Cuando se deja pendiente \"Por Agendar\" en caso de que Siebel no traiga Disponibilidad'),
(54, 'Instalacion Nueva', 'Incumplimiento Visita', 'Visita Suspendida', 'Casos de instalaci?n de servicios nuevos o cambios de domicilio - Visista en suspensi?n por factores climaticos, fallas generales, entre otros, que no se haya cancelado a?n.'),
(55, 'Modificar Productos/Servicios', 'Activar/Suscribir Promocion', 'Paquetes Premium - AddOns', 'Adici?n Paquetes Premium - Ingreso HBO Max (GO)'),
(56, 'Modificar Productos/Servicios', 'Activar/Suscribir Promocion', 'Servicios Fijos - Bundle', 'Cambio de plan d?os o tr?os (aumento de megas, cambio de plan de tv, gotica, renovar descuentos)'),
(57, 'Modificar Productos/Servicios', 'Activar/Suscribir Promocion', 'Servicios Fijos - Single', 'Cambio de plan servicio individual (aumento de megas, cambio de plan de tv, gotica, renovar descuentos)'),
(58, 'Modificar Productos/Servicios', 'Adicionar/Eliminar Decodific', 'Television', 'Extensi?n de TV, Adici?n o Retiro de Decos (SD y HD)'),
(59, 'Modificar Productos/Servicios', 'Adicionar/Eliminar Repetidor', 'Internet Fijo', 'Informaci?n WIFI Pro o eliminar Wi-fi pro del portafolio'),
(60, 'Modificar Productos/Servicios', 'Cambiar Plan/Oferta', 'Paquetes Premium - AddOns', 'Cambiar o renovar la oferta de los pauqetes premium'),
(61, 'Modificar Productos/Servicios', 'Cambiar Plan/Oferta', 'Servicios Fijos - Bundle', 'Adicici?n o retiro de paquetes - Cambio Velocidad BA'),
(62, 'Modificar Productos/Servicios', 'Cambiar Plan/Oferta', 'Servicios Fijos - Single', 'Adicici?n o retiro de paquetes - Cambio Velocidad BA, cambio de plan TV'),
(63, 'Modificar Productos/Servicios', 'Cambiar Serie Caja', 'Television', 'Cuando el cliente solicita Cambio de Decodificador'),
(64, 'Modificar Productos/Servicios', 'Desactivar Promocion', 'Paquetes Premium - AddOns', 'Retiro Paquetes Premium'),
(65, 'Modificar Productos/Servicios', 'Desactivar Promocion', 'Servicios Fijos - Bundle', 'Desactivar promociones de varios servicios'),
(66, 'Modificar Productos/Servicios', 'Desactivar Promocion', 'Servicios Fijos - Single', 'Desactivar promociones de un solo servicio'),
(67, 'Modificar Productos/Servicios', 'Modificar Instalacion', 'Servicios Fijos - Bundle', 'Movimiento Interno de Redes/Equipos - Cambio de Plan Telefon?a - QS por garant?a e la instalaci?n o Instalaci?n Incompleta'),
(68, 'Modificar Productos/Servicios', 'Modificar Instalacion', 'Servicios Fijos - Single', 'Movimiento Interno de Redes/Equipos - Cambio de Plan Telefon?a - QS por garant?a e la instalaci?n o Instalaci?n Incompleta'),
(69, 'Modificar Productos/Servicios', 'Trasladar Servicio', 'Servicios Fijos - Bundle', 'Cambio de Domicilio de varios servicios'),
(70, 'Modificar Productos/Servicios', 'Trasladar Servicio', 'Servicios Fijos - Single', 'Cambio de Domicilio de un solo servicio'),
(71, 'Pagos/Reactivaciones', 'ABM Debito Automatico', 'Actualizar Datos Facturacion', 'Usuario se comunica solicitando informaci?n de como cambiar la Tarjeta para el d?bito Autom?tico.'),
(72, 'Pagos/Reactivaciones', 'Acuerdos de Pago', 'Beneficio de Cobro', 'Cliente solicita acuerdos de pago (negociaci?n de la deuda).'),
(73, 'Pagos/Reactivaciones', 'Acuerdos de Pago', 'Prorroga de Pago', 'Usuario solicita cambiar la fecha de pago'),
(74, 'Pagos/Reactivaciones', 'Acuerdos de Pago', 'Se Otorga Financiamiento', 'Financiaciones'),
(75, 'Pagos/Reactivaciones', 'Consulta Ciclo/Fecha de Pago', 'Se Brinda Informacion', 'Ciclo de factura, ciclo de consumo, fechas de pago, fechas de suspensiones'),
(76, 'Pagos/Reactivaciones', 'Consulta de Pagos', 'Se Brinda Informacion', 'Pagos realizados que se encuentran en el sistema'),
(77, 'Pagos/Reactivaciones', 'Pagar Factura', 'Pago Anticipado', 'Cuando el usuario solicita pagar cuotas de financiaci?n anticipada.'),
(78, 'Pagos/Reactivaciones', 'Pagar Factura', 'Pago Parcial', 'Cliente solicita pago de la factura m?s vencida (Pago Parcial)'),
(79, 'Pagos/Reactivaciones', 'Pagar Factura', 'Pago Total', 'Cuando se autoriza el valor total de la deuda'),
(80, 'Pagos/Reactivaciones', 'Pago No Aplicado', 'Configurar Sistema', 'Cuando se realiza una reactivaci?n del servicio desde el facturador por pago no aplicado (Elite)'),
(81, 'Pagos/Reactivaciones', 'Pago No Aplicado', 'Falla Debito Automatico', 'Cliente reclama por la suspensi?n en sus servicios a?n cuando tiene d?bito Autom?ticos activo y solicita la reconexi?n. Al realizar las verificaciones se evidencia que el d?bito autom?tico no se aplic? correctamente'),
(82, 'Pagos/Reactivaciones', 'Pago No Aplicado', 'Falla Pago Tigo Web', 'Cliente se comunica informando que su pago efectuado desde le p?gina web no se aplic? y su servicio fue suspendido y solicita la reconexi?n - Fallas en la p?gina'),
(83, 'Pagos/Reactivaciones', 'Pago No Aplicado', 'Se Brinda Informacion', 'Explicaci?n sobre pagos no aplicados que al superar el ANS se escala la respectiva reclamaci?n/SS'),
(84, 'Pagos/Reactivaciones', 'Reactivar Servicio', 'Reactivacion Despues de Pago', 'Cliente reporta que realiz? el pago, este ya ingres? y solicita la reconexi?n de sus servicios fijos ya que contiuan suspendidos'),
(85, 'Venta Nueva', 'Alta de Servicio', 'Internet Fijo', 'Cliente existente requiere servicio nuevo en la misma direcci?n - Cliente Nuevo solicita servico en direcci?n existente - Producto Nuevo'),
(86, 'Venta Nueva', 'Alta de Servicio', 'Paquetes Residenciales', 'Cliente existente requiere servicio nuevo en la misma direcci?n - Cliente Nuevo solicita servico en direcci?n existente - Producto Nuevo'),
(87, 'Venta Nueva', 'Alta de Servicio', 'Telefonia Fija', 'Cliente existente requiere servicio nuevo en la misma direcci?n - Cliente Nuevo solicita servico en direcci?n existente - Producto Nuevo'),
(88, 'Venta Nueva', 'Alta de Servicio', 'Television', 'Cliente existente requiere servicio nuevo en la misma direcci?n - Cliente Nuevo solicita servico en direcci?n existente - Producto Nuevo'),
(89, 'Atenci?n Al Cliente', 'Actualizaci?n de Datos', 'Actualizaci?n Direcci?n/email', 'Petici?n Cambio Estrato - QF por Estrato Errado'),
(90, 'Atenci?n Al Cliente', 'Actualizaci?n de Datos', 'Actualizaci?n Registro Cliente', 'Actualizar datos del usuario como n?meros de contacto (en casos que no tienen que ver con factura)'),
(91, 'Atenci?n Al Cliente', 'Actualizaci?n de Datos', 'Cambio de Titularidad', 'Cambio de Suscriptor'),
(92, 'Atenci?n Al Cliente', 'Felicitaciones/Sugerencias', 'Felicitaci?nes', 'Se comunica el cliente para felicitar a un funcionario Tigo.'),
(93, 'Factura/Cobro', 'No Recibe Factura', 'Actualizar Datos Facturaci?n', 'Cliente se comunica solicitando actualizaci?n/cambio de la direcci?n donde se reciben las facturas (email/direcci?n f?sica'),
(94, 'Factura/Cobro', 'Notificaci?n de Cobro', 'Cobro No Corresponde', 'Cliente expresa su inconformidad ya que recibe mensajes de cobranza por deudas que no le corresponden. Se realiza el proceso para evitar que ?stos le sigan llegando. Error en la informaci?n de la base de datos.'),
(95, 'Factura/Cobro', 'Suspensi?n de Servicio', 'Bloqueo Mora-Cliente Al Dia', 'Usuario solicita informaci?n del motivo de la suspensi?n de su servicio. Al consultar se evidencia que la cuenta se encuentra al d?a y se procede con la respectiva gesti?n para la reconexi?n el servicio.'),
(96, 'Factura/Cobro', 'Suspensi?n de Servicio', 'Bloqueo Mora-Pago no registrado', 'QF Escalada por Pago no Aplicado /no Registra'),
(97, 'Informaci?n de Servicios', 'Solicita Informaci?n', 'M?vil Pospago/Hibrido', 'Etiqueta que aplica para m?vil'),
(98, 'Informaci?n de Servicios', 'Solicita Informaci?n', 'Televisi?n Cable', 'Informaci?n de portafolio de usuario con TV b?sica por Cable'),
(99, 'Modificar Productos/Servicios', 'Cambiar Plan', 'Televisi?n - DTH', 'N/A'),
(100, 'Modificar Productos/Servicios', 'Cambiar Plan', 'Voz/Datos M?vil', 'Etiqueta que aplica para m?vil'),
(101, 'Modificar Productos/Servicios', 'Desactivar Paquetes', 'Roaming', 'Etiqueta que aplica para m?vil'),
(102, 'Modificar Productos/Servicios', 'Desactivar Promoci?n', 'Televisi?n - DTH', 'N/A'),
(103, 'Modificar Productos/Servicios', 'Trasladar Servicio', 'Televisi?n - DTH', 'N/A'),
(104, 'Pagos/Reactivaci?nes', 'Afiliar Debito Automatico', 'Actualizar Datos Facturaci?n', 'Cliente solicita la activaci?n del d?bito autom?tico de su cuenta (si es servicio m?vil) y/o contrato (si es servicio fijo).'),
(105, 'Pagos/Reactivaci?nes', 'Desafiliar Debito Automatico', 'Actualizar Datos Facturaci?n', 'Cliente solicita la desactivaci?n del pago a trav?s de d?bito autom?tico de su factura fija o movil'),
(106, 'Pagos/Reactivaci?nes', 'Recepci?n de Pago', 'Pago Total', 'Cliente reporta el pago de su factura y solicita la reconexi?n de sus servicios fijo y/o m?viles - Informarle o autorizarle el pago total al usuario'),
(107, 'Renovaci?nes y Retenci?nes', 'Renovaci?n de Servicio', 'Telefonia Fijo-M?vil', 'Actualizaci?n del descuento que tiene el usuario en el servicio de telefon?a.'),
(108, 'Atencion Al Cliente', 'Contacto No Efectivo', 'Contacto de Broma/Prueba', 'Interacciones de prueba en el piloto o cuando los usuarios ingresan y es una broma, sin ning?n requerimiento'),
(109, 'Atencion Al Cliente', 'Mala Atencion Ejecutivo', 'Mal Servicio C.Center', 'Cliente se comunica para interponer una queja sobre la atenci?n o un mal procedimiento por parte de uno de los creadores de experiencia del contact center (Chat, redes sociales, l?nea de atenci?n al cliente, mail)'),
(110, 'Pagos/Reactivaciones', 'Pago No Aplicado', 'Se Escala Caso', 'QF Escalada por Pago no Aplicado /no Registra');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `matriz`
--
ALTER TABLE `matriz`
  ADD PRIMARY KEY (`id_matriz`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `matriz`
--
ALTER TABLE `matriz`
  MODIFY `id_matriz` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
