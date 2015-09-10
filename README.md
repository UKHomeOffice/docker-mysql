# Docker MySQL Container

Docker MySQL Container that extends the official home office docker base image.

## Getting Started

These instructions will cover usage information and for the docker container 

### Prerequisities


In order to run this container you'll need docker installed.

* [Windows](https://docs.docker.com/windows/started)
* [OS X](https://docs.docker.com/mac/started/)
* [Linux](https://docs.docker.com/linux/started/)

### Usage

#### Container Parameters

Parameters passed to the container will be passed onto `mysqld`

```shell
docker run \
       -e 'MYSQL_ROOT_PASSWORD=my-password' \
       quay.io/ukhomeofficedigital/mysql:v0.3.0 \
       -yr --param=eters
```

Passing MySQLd  will start MySQLd without any parameters.  

```shell
docker run \
    -e 'MYSQL_ROOT_PASSWORD=my-password' \
    quay.io/ukhomeofficedigital/mysql:v0.3.0 \
    mysqld
```

Starting MySQLd without any parameters is also the default behaviour.

```shell
docker run \
    -e 'MYSQL_ROOT_PASSWORD=my-password' \
    quay.io/ukhomeofficedigital/mysql:v0.3.0 \
```

You can also run arbitrary stuff

```shell
docker run quay.io/ukhomeofficedigital/mysql:v0.3.0 bash
```

#### Environment Variables

* `MYSQL_ROOT_PASSWORD` - The password you want to set as the root password
* `MYSQL_ROOT_PASSWORD_PATH` - Alternatively, you can put the password at a path and read it from 
  there
* `MYSQL_ALLOW_EMPTY_PASSWORD` - Set this to true if you want to be able to set a blank password

#### Volumes

* `/var/lib/mysql` - MySQL Data Files

#### Useful File Locations

* `/docker-entrypoint-initdb.d/*.sql` - Any SQL file in that location will be loaded into the 
  database on container init 
  
* `/healthcheck.sh` - You can execute this file to check the health of the mysql installation. Its 
  does `SELECT 1+1` on the database.

## Contributing

Feel free to submit pull requests and issues. If it's a particualy large PR, you may wish to discuss
it in an issue first.

Please note that this project is released with a [Contributor Code of Conduct](code_of_conduct.md). 
By participating in this project you agree to abide by its terms.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the 
[tags on this repository](https://github.com/UKHomeOffice/docker-mysql/tags). 

## Authors

* **Billie Thompson** - *Initial work* - [PurpleBooth](https://github.com/PurpleBooth)

See also the list of [contributors](https://github.com/UKHomeOffice/docker-mysql/contributors) who 
participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.

## Acknowledgments

* Large portions of this container are taken from the 
  [official mysql docker container](https://hub.docker.com/_/mysql/).
