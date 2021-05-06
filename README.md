# Menemeitor

> Pequeña utilidad para _privatizar_ repositorios GitHub.

![portada](assets/portada.jpg)

## :man_technologist: :woman_technologist: ¿Cómo usarlo?

Para utilizar este script, vas a necesitar dos cosas: 
* un entorno Ruby con la versión especificada en el archivo `.ruby-version`,
* un token de GitHub con, al menos, scope _repo_. Podés obtener uno desde [esta página](https://github.com/settings/tokens),
* el nombre de la organización o usuario que quieras privatizar.

Teniendo ambas cosas, basta con ejecutar lo siguiente:

```bash
bundle install
export GITHUB_TOKEN=eltokenqueconseguiste
./menemeitor.rb organizacion-o-usuario
```

:warning: **Mucho cuidado:** esto privatizará todos los repositorios que tenga la organización, sin preguntar absolutamente nada.

## :memo: Trabajo futuro

Por el momento, el rayo menemizador impacta sobre todo lo que haya en la organización. Sería útil agregar algún tipo de configuración, como por ejemplo una parte del nombre de los repos que se quieran privatizar. 

## :book: Referencias históricas

El nombre del repositorio está inspirado en el ex presidente argentino [Carlos Menem](https://es.wikipedia.org/wiki/Carlos_Menem), gran protagonista de las políticas privatizadoras de su gobierno neoliberal. Si no conocés a este personaje, te dejamos para que veas uno de los [mejores momentos de su presidencia](https://www.youtube.com/watch?v=C5pbxl4j7Eo).
