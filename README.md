# Impacto Laboral ante el COVID 
**Curso Data Analysis, BEDU**.   
*Leon Rangel Brandon Adrian*

Proyecto sobre el Impacto laboral diario desde el inicio de la pandemia por COVID en EUA

### Introducción
Este proyecto se refiere principalmente al impacto laboral que ha tenido el COVID desde el comienzo hasta el dia de hoy, se basa en Los datos del sitio de [Greenwitch](https://covidjobimpacts.greenwich.hr) ahora están disponibles gratuitamente en el Registro de Datos Abiertos de AWS ([aqui](https://greenwichhr-covidjobimpacts.s3.us-east-2.amazonaws.com/ghr_data_specs_covid_public.pdf)).

En estos datos principalmente encontramos tablas que refieren el comportamiento de este impacto, asi como las tendencias más actualizadas y precisas del mercado laboral. Se combina la mayor fuente mundial de datos de contratación de EUA con estadísticas gubernamentales semanales. Y, se recopila información utilizando la plataforma líder de inteligencia de la fuerza laboral.

Las tendencias de contratación de EE. UU., compiladas diariamente a partir de millones de ofertas de trabajo en línea, muestran cómo las decisiones de contratación dentro de las empresas están señalando su confianza y preocupaciones sobre el futuro. Colectivamente, estas señales describen la forma y el ritmo de la recuperación por venir.

Se toma como linea base la caída del 1 de marzo del 2020 y de ahi se comienza esta recopilacion al dìa de hoy
### Objetivos
  Recopilacion, carga y procesamiento de datos de las diferentes tablas
  
  Analisis exploratorio de los mismos con base a la informacion que proporcionan
  
  Obtencion de conclusiones de mejora en industrias, familias y roles, asi como tambien medicion de impacto en los diferentes estados de EUA

### Procesamiento de datos
Esta recopilacion fue sencilla ya que los datos que trae son muy limpios y manejables.

[overall.csv](https://greenwichhr-covidjobimpacts.s3.us-east-2.amazonaws.com/overall.csv.part_00000)

[industry.csv](https://greenwichhr-covidjobimpacts.s3.us-east-2.amazonaws.com/industry.csv.part_00000)

[industry_job_family.csv](https://greenwichhr-covidjobimpacts.s3.us-east-2.amazonaws.com/industry_job_family.csv.part_00000)

[geography.csv](https://greenwichhr-covidjobimpacts.s3.us-east-2.amazonaws.com/geography.csv.part_00000)

[geography_industry.csv](https://greenwichhr-covidjobimpacts.s3.us-east-2.amazonaws.com/geography_industry.csv.part_00000)

[job_family.csv](https://greenwichhr-covidjobimpacts.s3.us-east-2.amazonaws.com/job_family.csv.part_00000)

[job_family_role.csv](https://greenwichhr-covidjobimpacts.s3.us-east-2.amazonaws.com/job_family_role.csv.part_00000)

Estas tablas muestran clasificacion mediante las diferentes perspectivas de los datos hacia el fin comun a estudiar, asi como el interes desde distintos aspectos 
Se cargan los datos y solo se cambian formatos de fecha y codificaciones para su manejo en las distintas herramientas. 

### Analisis exploratorio

Analisis con R
Se comienza con un analisis simple en lenguaje R
Se revisan los datos y comenzamos con un par de graficas para visualizar tendencias
Intentamos un analisis con series de tiempo para aprovechar las multiples fechas que se recopilan en los datos pero no se logro concluir este analisis 

Analisis con python
Se realiza un analisis un poco mas detallado con pandas en python con medidas de tendencia se generan graficas mas complejas para la interpretacion del comportamiento, visualizacion del impacto en mapas cloropleticos
### Conclusiones 

Se concluye a partir del analisis realizacion con las diferentes herramientas los siguientes puntos:

El procesamiento fue simple en esta ocacion por la limpieza y procesamiento previo que se tenia de parte del dataset original, pero al igual obserbamos que son muchicimos datos los que se recopilan por día y convenia comenzar a hacer el analisis con base a promedio y medidas de tendencia centra

Como era de esperarse y como lo se fue viviendo en el mundo este impacto se ve una caida. El impacto inicial de la pandemia en la contratación -recortes bruscos y generales a finales de marzo- ha dado paso a un aumento lento y sostenido en el número de nuevas ofertas de empleo cada día.

Los resultados de la industria han comenzado a mostrar una divergencia aún mayor, con algunas industrias yendo a la alza y muchas otras rezagadas.

Las reaperturas parciales en los diferentes estados impulsaron la demanda de empleo en junio y julio comenzaron a verse picos, con los sectores minorista y hotelero, seguido de aumentos en la atención médica y los servicios.

Se puede concluir de igual forma que vemos una tendencia a la baja en la tasa de desempleo y podemos conectar muchos de los cambios de vuelta a las industrias que han estado publicando más puestos de trabajo en las semanas anteriores.

La demanda de contratación entre industrias ha estado divergiendo más en agosto, con varias industrias en o por encima de los niveles del 1 de marzo, y varias otras todavía en territorio negativo.

Todas las industrias cayeron bruscamente como grupo a mediados de marzo y luego comenzaron a divergir un par de semanas más tarde.

Las políticas estatales y corporativas se ajustaron en mayo y junio, permitiendo reaperturas que llevaron al comercio minorista y a la hospitalidad por encima de los niveles precovid por primera vez.

La hospitalidad, inicialmente la industria más afectada, ha mostrado una mejora notable en la demanda de contratación, pero sigue siendo débil.

Las industrias de comunicaciones y entretenimiento han seguido mostrando debilidad,

Otras industrias que se han trasladado a territorio positivo incluyen la atención médica, el transporte, los servicios, el comercio minorista y el comercio al por mayor.

El nuevo volumen de listas de puestos de trabajo a nivel de región ha estado mostrando una mayor volatilidad y divergencia. Dentro de cada región, varios estados son ahora positivos, mientras que el resto todavía está por debajo de los niveles del 1 de marzo.

La contratación de la demanda en muchos estados está por encima de los niveles prepandémicos. Varios estados en cada una de las cuatro regiones son ahora positivos.
