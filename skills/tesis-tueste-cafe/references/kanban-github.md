# Kanban en GitHub Projects

Cuenta: `iesjoaco7-cyber` · Proyecto privado.

## Columnas (campo Status)
1. **Backlog** — ideas y tareas identificadas, sin compromiso. Incluye ideas de fases bloqueadas (`idea-futura`).
2. **Por hacer** — priorizadas para la semana; tienen criterio de terminado.
3. **En progreso** — límite WIP: 3 tarjetas. Si hay más, terminar antes de empezar otra.
4. **En revisión** — esperando validación (de un tostador, del docente o de Joaquín).
5. **Hecho** — con evidencia enlazada (nota, archivo, decisión).

## Campo personalizado "Fase"
Fase 0 Preparación · Fase 1 Arquitectura de decisión · Fase 2 Problemática · Fase 3 Objetivo general · Fase 4 Objetivos específicos · Fase 5 Solución · Fase 6 Evaluación.

## Etiquetas
- Tipo: `campo` (entrevistas/observación), `analisis`, `documentacion`, `herramienta`, `datos`, `seminario`.
- Método: `socratico`, `guber`, `arbol-problemas`, `5-porques`, `pareto`.
- Control: `bloqueado-fase` (no avanzar hasta abrir compuerta), `idea-futura`, `hipotesis`.

## Formato de tarjeta (issue)

Título: [F<n>] Verbo + objeto concreto
Fase: <n>
Etiquetas: ...
Para qué: qué pregunta del proyecto responde.
Criterio de terminado:
- [ ] Evidencia concreta 1
- [ ] Evidencia concreta 2
Notas / enlaces

## Reglas
- Una tarjeta = una acción verificable (no "investigar el café").
- Nada pasa a Hecho sin evidencia enlazada.
- Las tarjetas de fases 2–6 nacen con `bloqueado-fase` y quedan en Backlog hasta que Joaquín abra la compuerta.
- Hipótesis del investigador se registran como tarjetas `hipotesis` para no confundirlas con hallazgos.
