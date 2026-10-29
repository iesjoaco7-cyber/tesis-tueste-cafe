# Tesis: Análisis de datos aplicado al tueste de café

Proyecto de tesis para el seminario de la carrera **Técnico Superior en Ciencia de Datos e Inteligencia Artificial**. Busca determinar si existe una problemática real en el rubro del tueste de café en Argentina y, si existe, diseñar una solución con herramientas de análisis de datos e inteligencia artificial de la carrera.

## Objetivo del proyecto

**Objetivo general (provisorio, a validar en campo):** entender el proceso de decisión de un tostador de café profesional y determinar, con evidencia de campo y de datos, si existe una problemática relevante en el control de calidad del tueste — con foco inicial en la relación entre pérdida del grano verde y producción — que pueda abordarse con herramientas de analítica de datos y aprendizaje automático.

Este objetivo es **provisorio**: la idea original ("reducir la pérdida del verde sin afectar la producción") se trata como **hipótesis del investigador**, no como la problemática confirmada del proyecto. La problemática definitiva recién se declara después del trabajo de campo (entrevistas con tostadores) y del análisis con árbol de problemas, 5 porqués y Pareto — no antes.

## Metodología de trabajo

El proyecto avanza por fases, y cada fase tiene que cerrarse con evidencia antes de abrir la siguiente:

| Fase | Qué se produce | Estado |
|---|---|---|
| 0. Preparación del campo | Marco interpretativo propio, mapeo de tostadores, guía de entrevista de apertura | **En curso** |
| 1. Arquitectura de decisión | Qué decide el tostador, cuándo y con qué información | Pendiente |
| 2. Problemática | Árbol de problemas, 5 porqués, Pareto 80/20 con datos reales | Bloqueada |
| 3. Objetivo general | Derivado del tronco del árbol de problemas | Bloqueada |
| 4. Objetivos específicos | Derivados de las raíces priorizadas | Bloqueada |
| 5. Estructura de la solución | Solución tecnológica (Ciencia de Datos / IA) y alcance | Bloqueada |
| 6. Evaluación de la solución | Métricas, validación, límites | Bloqueada |

### Herramientas de análisis aplicadas

- **Método socrático** (`council-socrates`): expone asunciones no dichas, las prueba por contradicción y busca la pregunta oculta detrás de cada planteo, para no construir sobre certezas falsas ni con datos sin procedencia.
- **Entrevista etnográfica (Rosana Guber):** guía el trabajo de campo con tostadores para verificar si la problemática existe en los términos del oficio, no en los del investigador. Evita ir "al grano" antes de tiempo.
- **Árbol de problemas, 5 porqués, Pareto 80/20, orden de prioridad:** se activan recién en la fase de Problemática (Fase 2), una vez que hay evidencia de campo.
- **Herramientas de Ciencia de Datos / IA de la carrera:** se definen en la Fase 5, una vez declarada y justificada la problemática.

### Gestión del proyecto (Kanban)

El avance se gestiona en un **GitHub Project (Kanban)** de esta cuenta, con columnas Backlog → Por hacer → En progreso → En revisión → Hecho, un campo de Fase por tarjeta, y etiquetas (`campo`, `analisis`, `socratico`, `guber`, `bloqueado-fase`, `hipotesis`, entre otras). Ninguna tarjeta pasa a "Hecho" sin evidencia enlazada (nota de campo, documento, decisión registrada).

## Qué se hizo hasta ahora

- Se definió el marco metodológico completo del proyecto: fases, compuertas de avance, y qué herramienta se usa en cada una.
- Se construyó un agente de trabajo (`skills/tesis-tueste-cafe/`) que aplica el método socrático y la guía de entrevista de Guber, y que mantiene actualizado el registro de herramientas y el tablero Kanban en cada sesión de trabajo.
- Se registró la idea original del proyecto ("pérdida del verde / control de calidad") como **hipótesis**, no como problemática confirmada.
- Se preparó el script `skills/tesis-tueste-cafe/scripts/crear_tablero.sh` para poblar el tablero Kanban con las etiquetas y las primeras tarjetas de Fase 0 y Fase 1.

## Qué falta / próximos pasos

- [ ] Correr `crear_tablero.sh` y poblar el GitHub Project.
- [ ] Escribir el marco interpretativo propio y pasarlo por el examen socrático (de qué estoy seguro, qué estoy asumiendo).
- [ ] Mapear tostadores posibles de contactar en Argentina.
- [ ] Diseñar la guía de entrevista de apertura (gran-tour / mini-tour) sin ir al grano.
- [ ] Realizar la primera entrevista y registrar notas de campo.
- [ ] Recién después: construir el árbol de problemas con la evidencia obtenida.

## Estructura del repositorio
├── README.md
└── skills/
└── tesis-tueste-cafe/
├── SKILL.md # agente de trabajo del proyecto
├── references/
│ ├── metodo-socratico.md
│ ├── entrevista-guber.md
│ ├── herramientas-analisis.md
│ └── kanban-github.md
├── assets/
│ └── notas-de-campo.md # plantilla para cada entrevista/observación
└── scripts/
└── crear_tablero.sh # crea etiquetas e issues iniciales en GitHub Projects


## Carrera / contexto académico

Técnico Superior en Ciencia de Datos e Inteligencia Artificial — proyecto de tesis para el seminario de la carrera. Argentina.
'@ | Out-File -FilePath README.md -Encoding utf8

git add README.md
git commit -m "Agrega README con objetivo, metodologia y estado del proyecto"
git push origin main
