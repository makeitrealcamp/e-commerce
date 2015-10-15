Un e-commerce sobre [Ruby on Rails](http://rubyonrails.org/) para aprender a trabajar en un proyecto con múltiples colaboradores. **Es la oportunidad para cometer errores y aprender**.

El e-commerce va a estar dividido en los siguiente módulos:

* **Store:** incluye las funcionalidades de buscar productos, agregar y eliminar productos de la canasta y realizar pedidos.
* **Admin:** administrar productos y pedidos.
* **API:** permite a otras aplicaciones integrarse para buscar productos, administrar la canasta y hacer seguimiento de pedidos.

Las funcionalidades que se van a implementar se definen y priorizan en [este tablero público de Trello](https://trello.com/b/LyZZUT2s/e-commerce) a través de historias de usuario. Si tienes alguna funcionalidad que quieras incluir, agrégala en la lista llamada **Wishlist**. Después habla con el líder del producto para pasarla al **Backlog**.

Los roles internos para el desarrollo de este producto son los siguientes:

* Líder de producto: es la persona que decide qué funcionalidad se va a implementar y con qué prioridad.
* Integrador: es la persona que revisa e integra los Pull Requests de los colaboradores.
* Colaboradores: son los que implementan la funcionalidad.

## Configuración

Para trabajar sobre este proyecto debes tener instalado lo siguiente:

* [Git](https://git-scm.com/)
* [Ruby](https://www.ruby-lang.org/en/)
* [Ruby on Rails](http://rubyonrails.org/)

Una vez que tengas instaladas las dependencias clona el proyecto localmente con el siguiente comando de Git:

```
git clone git@github.com:makeitrealcamp/e-commerce.git
```

Ahora ejecuta el siguiente comando:

```
bundle install
```

Y corre las migraciones con el comando:

```
rake db:migrate
```

Para iniciar el servidor ejecuta:

```
rails s
```

Ingresa desde un navegador a `http://localhost:3000/`.

## Flujo de trabajo con Git

Para implementar una nueva funcionalidad o solucionar algún error deberás seguir estos pasos:

### 1. Crea una rama

No importa qué tan pequeño sea un cambio, antes de empezar a trabajar deberás ubicarte sobre la rama  `master` y crear una nueva rama:

```
git checkout master
git pull
git checkout -b <nombre-rama>
```

Ahora si estás listo(a) para empezar a trabajar!

### 2. Trabaja sobre la rama

Intenta hacer commits pequeños y frecuentes a medida que avances con el cambio sobre el que estás trabajando. Haz rebase frecuentemente para prevenir que tu rama se diverja de `master` demasiado con el siguiente comando:

```
git fetch origin
git rebase origin/master
```

Una vez que hayas terminado puedes publicar tu rama en Github e iniciar un Pull Request (PR).

### 3. Haz push y abre un PR

Para publicar tu rama a Github ejecuta el siguiente comando:

```
git push origin <tu-rama>
```

**Nota:** Nunca hagas push directamente al `master`.

Abre un Pull Request al `master` e incluye una frase como "Closes #XX" o "Resolves #XX" como lo explican en [este post](https://github.com/blog/1506-closing-issues-via-pull-requests) para que cuando se integre este cambio al `master` se cierre el issue automáticamente.

Avisa al integrador del proyecto para que revise tu PR y te de retroalimentación de tu código.

## ¿Cómo contribuir?

El primer paso para contribuir es descargar el proyecto y verificar que lo puedes ejecutar correctamente en tu maquina.

Luego, revisa los issues en Github y las historias de usuario en [Trello](https://trello.com/b/LyZZUT2s/e-commerce). Identifica en cuáles quieres trabajar. Habla con el líder del producto para que te agregue como colaborador y definan los siguientes pasos.