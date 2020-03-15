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

  - `docker-compose up -d`
  - Crear un proyecto básico de wordpress
  - Instalar el plugin [All-in-One WP Migration](https://wordpress.org/plugins/all-in-one-wp-migration/)
  - Ejecutar: En linux `./run.sh` y en windows desde el powershell ejecutar el script `run.ps1`
  - Importar el Backup que se encuentra en la carpeta `backups`
  
