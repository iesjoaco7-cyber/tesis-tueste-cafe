#!/usr/bin/env bash
# Crea etiquetas e issues iniciales del proyecto de tesis y los agrega al GitHub Project (Kanban).
# Uso (con tu sesion de gh ya autenticada: gh auth login, con scope "project"):
#   bash crear_tablero.sh <repo> <numero_de_project>
#   ej: bash crear_tablero.sh iesjoaco7-cyber/tesis-tueste-cafe 1
set -euo pipefail

REPO="${1:?Falta el repo (owner/nombre)}"
PROJECT="${2:?Falta el numero del Project}"
OWNER="${REPO%%/*}"

label() { gh label create "$1" --repo "$REPO" --color "$2" --description "$3" --force >/dev/null; echo "etiqueta: $1"; }
label campo          1f6feb "Entrevistas y observacion"
label analisis       8250df "Analisis y razonamiento"
label documentacion  6e7781 "Escritura de la tesis"
label herramienta    0e8a16 "Herramienta de la carrera"
label datos          d4a72c "Recoleccion o calidad de datos"
label seminario      bf3989 "Entregas del seminario"
label socratico      ffffff "Metodo socratico"
label guber          c5def5 "Entrevista etnografica"
label arbol-problemas 5319e7 "Arbol de problemas"
label 5-porques      fbca04 "5 porques"
label pareto         e99695 "Pareto 80/20"
label bloqueado-fase b60205 "No avanzar hasta abrir la compuerta"
label idea-futura    ededed "Idea para fases posteriores"
label hipotesis      f9d0c4 "Hipotesis del investigador, no hallazgo"

issue() {
  local title="$1" labels="$2" body="$3"
  url=$(gh issue create --repo "$REPO" --title "$title" --label "$labels" --body "$body")
  gh project item-add "$PROJECT" --owner "$OWNER" --url "$url" >/dev/null
  echo "issue: $title"
}

issue "[F0] Escribir mi marco interpretativo inicial" "analisis,socratico,guber" \
"Para que: dejar por escrito que creo hoy que es el problema y con que palabras lo nombro.
Criterio de terminado:
- [ ] Documento con mis supuestos y vocabulario
- [ ] Revision socratica de 2-4 asunciones"

issue "[F0] Registrar hipotesis: perdida de verde / control de calidad" "hipotesis,socratico" \
"Para que: registrar la idea inicial como hipotesis a contrastar, no como problematica.
Criterio de terminado:
- [ ] Hipotesis redactada con precision (merma esperable vs. perdida evitable)
- [ ] Que evidencia la confirmaria o refutaria"

issue "[F0] Mapear tostadores a contactar" "campo,guber" \
"Para que: identificar tostadores accesibles para el trabajo de campo.
Criterio de terminado:
- [ ] Lista de 5+ contactos posibles
- [ ] Mensaje de primer contacto redactado"

issue "[F0] Disenar guia de entrevista de apertura (gran-tour)" "campo,guber" \
"Para que: preguntas descriptivas que no vayan al grano.
Criterio de terminado:
- [ ] Guia con preguntas gran-tour, mini-tour y de ejemplificacion
- [ ] Plantilla de notas de campo lista"

issue "[F1] Primera entrevista y observacion del proceso de tueste" "campo,guber" \
"Para que: descubrir las preguntas relevantes desde el informante.
Criterio de terminado:
- [ ] Notas de campo completas
- [ ] Categorias nativas registradas"

issue "[F1] Mapa de arquitectura de decision del tostador" "analisis,campo" \
"Para que: que decide el tostador, cuando y con que informacion.
Criterio de terminado:
- [ ] Tabla etapa/decision/informacion/registro
- [ ] Validado con el informante"

issue "[F2] Arbol de problemas" "analisis,arbol-problemas,bloqueado-fase" \
"Bloqueada hasta abrir la compuerta de la Fase 2."

issue "[F2] 5 porques sobre sintomas del campo" "analisis,5-porques,bloqueado-fase" \
"Bloqueada hasta abrir la compuerta de la Fase 2."

issue "[F2] Pareto con datos del tostadero" "datos,pareto,bloqueado-fase" \
"Bloqueada hasta abrir la compuerta de la Fase 2. Requiere datos reales con procedencia."

echo "Listo. Revisa el tablero y ubica las tarjetas F0 en 'Por hacer' y el resto en 'Backlog'."
