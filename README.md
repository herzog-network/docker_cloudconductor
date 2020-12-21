### Docker Cloudconductor Image

Docker Compose testing environment for Cloudconductor.  

> With CloudConductor you can manage multiple hosts running in a cloud or on premise by having a central place for package management, configuration management and service status monitoring the easy way.

<div style="text-align: right">www.cloudconductor.net</div>

#### Usage

* Install [Docker Compose](https://docs.docker.com/compose/)
* Download the Docker Cloudconductor Image
* Run the Docker Cloudconductor Image with docker-compose

```
cd /path/to/project
docker-compose up
```
The Cloudconductor installation will be reachable at ``http://localhost:80``

#### Database

Cloudconductor use a PostgreSQL database. The data is stored within the project folder ``/path/to/project/database``. If you need a clean install/database delete all data within the data directory.

##### Credentials

PostgreSQL
```
User: postgres
Password: postgres
Database: cloudconductor
```
Cloudconductor
```
User: admin
Password: admin
```

#### ToDo

* database status check
* add rpm repo for example packages
* add example data (template, files, etc.)
* add cloudconductor agent
