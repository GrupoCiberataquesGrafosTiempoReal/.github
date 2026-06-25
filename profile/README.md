# Representación en tiempo real de patrones de ciberataques mediante grafos

Los repositorios y script de esta organización contienen todos los componentes y datos necesarios para operativizar una solución para la representación en tiempo real de patrones de ciberataques mediante grafos

## Instrucciones de instalación y configuración

Para realizar la instalación y configuración se debe ejecutar el siguiente comando desde la terminal (sistema UNIX) en una ruta en la que se quiera trabajar:

```sh
curl -s https://raw.githubusercontent.com/GrupoCiberataquesGrafosTiempoReal/.github/main/setup.sh | bash
```

>[!NOTE]
> Para la ejecución de la configuración es necesario tener instalas las herramientos `curl` y `git`

## Instrucciones para ejecutar la solución

Para ejecutar la solución y poner en marcha los principales componentes de la misma se debe ejecutar el siguiente comando:

```sh
docker compose up -d
```
>[!NOTE]
> Para la ejecución de la solución es necesario tener instalada la herramienta `docker` (Docker Compose está integrado en Docker)

>[!WARNING]
> La creación de las imágenes de Docker puede requerir algunos minutos la primera vez que se ejecuta el comando

Una vez desplegados los contendores, la solución está lista para comenzar a procesar los datos producidos y enviados a ella (esto se puede hacer atendiendo a lo que se indica más abajo en la sección **Instrucciones para producción de datos**). La herramienta de visualización en tiempo real del grafo generado por la solución estará disponible para ser consultada en http://localhost:5173/, mientras el correspondiente contenedor (`visualizador-ciberataques`) esté funcionando.

## Instrucciones para detener la solución

Para terminar la ejecución de la solución se debe ejecutar el siguiente comando en el directorio de trabajo actual:

```sh
docker compose down -v
```

>[!TIP]
> Para resetear los volúmenes de persistencia se puede ejecutar el script `reset_volumes.sh`

## Instrucciones para producción de datos

Para poder comenzar la producción de datos, simulando los eventos generados por un sistema SIEM, se debe entrar en el directorio del repositorio `data-producer`:

```sh
cd data-producer
```

Allí, siguiendo las instrucciones presentes en el archivo [README.md](https://github.com/GrupoCiberataquesGrafosTiempoReal/data-producer/blob/main/README.md), se puede iniciar la producción de datos para su procesamiento mediante la solución.

>[!IMPORTANT]
> Para la configuración de las variables de entorno en `data-producer` se deben usar los siguientes valores:
> - KAFKA_BROKERS=localhost:9092
> - KAFKA_TOPIC=raw.data.v1

>[!NOTE]
> Los datos están instalados en el directorio `data`
