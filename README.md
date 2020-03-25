# Ecommerce

## Requisitos previos

**Docker y docker-compose**

* Windows: [https://docs.docker.com/docker-for-windows/install/](https://docs.docker.com/docker-for-windows/install/)

* Linux (Ubuntu):
     - [https://docs.docker.com/install/linux/docker-ce/ubuntu/](https://docs.docker.com/install/linux/ocker-ce/ubuntu/)
     - [https://docs.docker.com/compose/install/](https://docs.docker.com/compose/install/)

**Git**
* Windows: [https://git-scm.com/download/win](https://git-scm.com/download/win)
* Linux(Deb): `sudo apt-get install git`


## Ejecutar aplicación

  - `docker-compose up -d --build`

  - Usando el plugin **All-in-One WP Migration** importar el archivo correspondiente (Este archivo se puede generar en el   siguiente paso `Generar Backups del sitio`)

  - Iniciar sesión nuevamente en WordPress


## Generar Backups del sitio

  - Ejecutando el script [ `backup.ps1` (Windows - Powershell) - `backup.sh` (Linux) ] se tiene:

     - **Opción 1:** Se suben a [https://www.dropbox.com/](https://www.dropbox.com/) los archivos generados por el plugin **All-in-One WP Migration** previamente guardados en la carpeta `backups`
     - **Opción 2:** Se descarga de [https://www.dropbox.com/](https://www.dropbox.com/) el archivo más reciente de los que fueron subidos en el paso anterior, dicho archivo debe importarse en WordPress utilizando el plugin **All-in-One WP Migration**.
