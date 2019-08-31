use FORM110
--PART A
select DEPENDIENTE.DOCUMENTO_IDENTIDAD, LUGAR.LUGAR, NOMBRES, APELLIDO_PATERNO, APELLIDO_MATERNO, DOMICILIO 
from DEPENDIENTE, LUGAR, FORMULARIO_110
where 
	DEPENDIENTE.DOCUMENTO_IDENTIDAD=FORMULARIO_110.DOCUMENTO_IDENTIDAD AND 
	DEPENDIENTE.ID_LUGAR = LUGAR.ID_LUGAR AND
	FORMULARIO_110.NUMERO_ORDEN = '1111' 

--PART B
select NUMERO_NIT, RAZON_SOCIAL, EMPLEADOR.DOMICILIO
from EMPLEADOR, DEPENDIENTE, FORMULARIO_110
where 
	FORMULARIO_110.DOCUMENTO_IDENTIDAD = DEPENDIENTE.DOCUMENTO_IDENTIDAD AND
	DEPENDIENTE.NUMERO_NIT_EMPLEADOR = EMPLEADOR.NUMERO_NIT AND
	FORMULARIO_110.NUMERO_ORDEN = '1111'


--PART C
select NRO_FACTURA, NIT, NUMERO_AUTORIZACION, FECHA, IMPORTE, CODIGO_CONTROL
from FACTURA
where 
	FACTURA.NUMERO_ORDEN_FORMULARIO = '1111'


-- PART D
select TOTAL_DETALLE, DETERMINACION_PAGO
from FORMULARIO_110
where 
	FORMULARIO_110.NUMERO_ORDEN = '1111'

go