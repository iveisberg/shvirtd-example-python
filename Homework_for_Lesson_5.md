Домашнее задание к занятию 5. «Практическое применение Docker»

## Задача 1

```console
Sat Aug 03 20:51:58 dbn_usr@dbn-net-hw:[~/netology/docker-in-practice/shvirtd-example-python]: docker build -f Dockerfile.python -t web . --no-cache
[+] Building 22.9s (11/11) FINISHED                                                                                                                                                            docker:default
 => [internal] load build definition from Dockerfile.python                                                                                                                                              0.1s
 => => transferring dockerfile: 187B                                                                                                                                                                     0.0s
 => [internal] load metadata for docker.io/library/python:3.9-slim                                                                                                                                       1.9s
 => [auth] library/python:pull token for registry-1.docker.io                                                                                                                                            0.0s
 => [internal] load .dockerignore                                                                                                                                                                        0.1s
 => => transferring context: 790B                                                                                                                                                                        0.0s
 => [1/5] FROM docker.io/library/python:3.9-slim@sha256:990eb8f30571e0aaabfa1a7deb9fe2f6c1d4163a389004fbf823db6fee7c3642                                                                                 0.0s
 => [internal] load build context                                                                                                                                                                        0.1s
 => => transferring context: 64B                                                                                                                                                                         0.0s
 => CACHED [2/5] WORKDIR /app                                                                                                                                                                            0.0s
 => [3/5] COPY requirements.txt ./                                                                                                                                                                       0.6s
 => [4/5] RUN pip install -r requirements.txt                                                                                                                                                           16.1s
 => [5/5] COPY main.py ./                                                                                                                                                                                1.0s
 => exporting to image                                                                                                                                                                                   1.7s
 => => exporting layers                                                                                                                                                                                  1.4s
 => => writing image sha256:7954ea2cc5ba9aa5757e76e001dd99de35c98f2dd0bceb80b8d6e6bf3c0c8ee2                                                                                                             0.0s
 => => naming to docker.io/library/web                                                                                                                                                                   0.1s
Sat Aug 03 20:52:35 dbn_usr@dbn-net-hw:[~/netology/docker-in-practice/shvirtd-example-python]:
Sat Aug 03 20:52:38 dbn_usr@dbn-net-hw:[~/netology/docker-in-practice/shvirtd-example-python]: docker images
REPOSITORY                    TAG       IMAGE ID       CREATED          SIZE
web                           latest    7954ea2cc5ba   11 seconds ago   219MB
Sat Aug 03 20:52:43 dbn_usr@dbn-net-hw:[~/netology/docker-in-practice/shvirtd-example-python]:
Sat Aug 03 20:52:44 dbn_usr@dbn-net-hw:[~/netology/docker-in-practice/shvirtd-example-python]: docker history web
IMAGE          CREATED          CREATED BY                                      SIZE      COMMENT
7954ea2cc5ba   19 seconds ago   CMD ["python" "main.py"]                        0B        buildkit.dockerfile.v0
<missing>      19 seconds ago   COPY main.py ./ # buildkit                      1.36kB    buildkit.dockerfile.v0
<missing>      20 seconds ago   RUN /bin/sh -c pip install -r requirements.t…   94.1MB    buildkit.dockerfile.v0
<missing>      36 seconds ago   COPY requirements.txt ./ # buildkit             31B       buildkit.dockerfile.v0
<missing>      13 minutes ago   WORKDIR /app                                    0B        buildkit.dockerfile.v0
<missing>      5 days ago       CMD ["python3"]                                 0B        buildkit.dockerfile.v0
<missing>      5 days ago       RUN /bin/sh -c set -eux;   savedAptMark="$(a…   10MB      buildkit.dockerfile.v0
<missing>      5 days ago       ENV PYTHON_GET_PIP_SHA256=6fb7b781206356f45a…   0B        buildkit.dockerfile.v0
<missing>      5 days ago       ENV PYTHON_GET_PIP_URL=https://github.com/py…   0B        buildkit.dockerfile.v0
<missing>      5 days ago       ENV PYTHON_SETUPTOOLS_VERSION=58.1.0            0B        buildkit.dockerfile.v0
<missing>      5 days ago       ENV PYTHON_PIP_VERSION=23.0.1                   0B        buildkit.dockerfile.v0
<missing>      5 days ago       RUN /bin/sh -c set -eux;  for src in idle3 p…   32B       buildkit.dockerfile.v0
<missing>      5 days ago       RUN /bin/sh -c set -eux;   savedAptMark="$(a…   31.3MB    buildkit.dockerfile.v0
<missing>      5 days ago       ENV PYTHON_VERSION=3.9.19                       0B        buildkit.dockerfile.v0
<missing>      5 days ago       ENV GPG_KEY=E3FF2839C048B25C084DEBE9B26995E3…   0B        buildkit.dockerfile.v0
<missing>      5 days ago       RUN /bin/sh -c set -eux;  apt-get update;  a…   9.23MB    buildkit.dockerfile.v0
<missing>      5 days ago       ENV LANG=C.UTF-8                                0B        buildkit.dockerfile.v0
<missing>      5 days ago       ENV PATH=/usr/local/bin:/usr/local/sbin:/usr…   0B        buildkit.dockerfile.v0
<missing>      11 days ago      /bin/sh -c #(nop)  CMD ["bash"]                 0B
<missing>      11 days ago      /bin/sh -c #(nop) ADD file:6c4730e7b12278bc7…   74.8MB
Sat Aug 03 20:52:51 dbn_usr@dbn-net-hw:[~/netology/docker-in-practice/shvirtd-example-python]:
```

## Задача 2

```console
Sat Aug 03 20:55:17 dbn_usr@dbn-net-hw:[~]: yc container registry create --name test
done (1s)
id: crpilqlhcn2l16p788kv
folder_id: b1gue9v1tapk50i3uj7m
name: test
status: ACTIVE
created_at: "2024-08-03T13:55:32.148Z"

Sat Aug 03 20:55:34 dbn_usr@dbn-net-hw:[~]:
Sat Aug 03 20:56:06 dbn_usr@dbn-net-hw:[~]: yc container registry list
+----------------------+------+----------------------+
|          ID          | NAME |      FOLDER ID       |
+----------------------+------+----------------------+
| crpilqlhcn2l16p788kv | test | b1gue9v1tapk50i3uj7m |
+----------------------+------+----------------------+

Sat Aug 03 21:06:22 dbn_usr@dbn-net-hw:[~]:
Sat Aug 03 21:06:22 dbn_usr@dbn-net-hw:[~]: docker images|grep web
web                           latest    a3a5c13056e1   About a minute ago   219MB
Sat Aug 03 21:06:25 dbn_usr@dbn-net-hw:[~]:
Sat Aug 03 21:06:26 dbn_usr@dbn-net-hw:[~]: docker tag web cr.yandex/crpilqlhcn2l16p788kv/web:latest
Sat Aug 03 21:07:55 dbn_usr@dbn-net-hw:[~]:
Sat Aug 03 21:07:56 dbn_usr@dbn-net-hw:[~]: docker images|grep web
cr.yandex/crpilqlhcn2l16p788kv/web   latest    a3a5c13056e1   2 minutes ago   219MB
web                                  latest    a3a5c13056e1   2 minutes ago   219MB
Sat Aug 03 21:07:58 dbn_usr@dbn-net-hw:[~]:
Sat Aug 03 21:08:00 dbn_usr@dbn-net-hw:[~]: docker push cr.yandex/crpilqlhcn2l16p788kv/web:latest
The push refers to repository [cr.yandex/crpilqlhcn2l16p788kv/web]
d382a853f00d: Pushed
3d5605919ed2: Pushed
3c50e369a731: Pushed
c2d66e5068a6: Pushed
ec6949936a52: Pushed
f71fab544a97: Pushed
d42276be00b5: Pushed
cc2286334a7b: Pushed
e0781bc8667f: Pushed
latest: digest: sha256:8b38f2543fdd63121802dd2e463cadd29c981f0c8cd0661a5b10c5a4d5afbbca size: 2202
Sat Aug 03 21:11:17 dbn_usr@dbn-net-hw:[~]:
Sat Aug 03 21:11:21 dbn_usr@dbn-net-hw:[~]: yc container image get crpn3cfcajo64v6bj0bq
id: crpn3cfcajo64v6bj0bq
name: crpilqlhcn2l16p788kv/web
digest: sha256:8b38f2543fdd63121802dd2e463cadd29c981f0c8cd0661a5b10c5a4d5afbbca
compressed_size: "90602973"
config:
  id: crpcnuquggoq1bhddnp1
  digest: sha256:a3a5c13056e1dfb4f97ebb82456ce96e1ea6d34a0216dc98679fd052ed49c228
  size: "7926"
layers:
  - id: crpe42nathuu0ejdhhr7
    digest: sha256:efc2b5ad9eec05befa54239d53feeae3569ccbef689aa5e5dbfc25da6c4df559
    size: "29126287"
  - id: crpv5erptmir0ab6g36d
    digest: sha256:c87f9801692e4bdc9e1d19fac4be5f124c44c8aa0f5260209b8c18ee94646224
    size: "3509965"
  - id: crpvd23f5k33at3om99h
    digest: sha256:5ad7287a1ddf6c0381d529d7360e2565d22f02b503acc240ba4e0b4427b6c5be
    size: "11890720"
  - id: crprbvjl0e9rjro8aka2
    digest: sha256:a3d3ef1ae64a2defc21b804c81691d6928880ef0cde0fe750a1f8ce6de87f81b
    size: "233"
  - id: crpjc0enp0g214khjo1l
    digest: sha256:54c8e329ac5ee70923b0299f6432daf03b1ad22ed1c6d77eba8c54b0742f4825
    size: "2772897"
  - id: crpld2vdvv4qa30mqs7m
    digest: sha256:a49be4213205d0a50effc4252a3d2588e9e9d32e17004c38a1d3364daeff2356
    size: "91"
  - id: crpnqdai2i8hi0l4d3hk
    digest: sha256:422c5aec66a0b423af5c9cf4d85ea6662673f619fb9736ce4d40cfef84b18c0a
    size: "175"
  - id: crpknaccffv1mvs1f4tm
    digest: sha256:066c8607794a054d77b1a337ad92877779e459f77dccf96a338dd3e090a1e3e4
    size: "43293749"
  - id: crpsoiinic6upqinjr7v
    digest: sha256:0638c6acaeaf3568ebf14025bcf8c5cd1339e37ffefc497ab953aa5b69b2bfad
    size: "930"
tags:
  - latest
created_at: "2024-08-03T14:08:32.804Z"

Sat Aug 03 21:14:50 dbn_usr@dbn-net-hw:[~]:
```
![img](task_2.PNG)


## Задача 3

```console
Sun Aug 04 00:19:21 dbn_usr@dbn-net-hw:[~/netology/docker-in-practice/shvirtd-example-python]: docker network inspect shvirtd-example-python_backend
[
    {
        "Name": "shvirtd-example-python_backend",
        "Id": "02a3fd5569f98e97c78423a03be223d0c6d9fbe39a5de162883be17206b5ed24",
        "Created": "2024-08-04T00:08:34.193392414+07:00",
        "Scope": "local",
        "Driver": "bridge",
        "EnableIPv6": false,
        "IPAM": {
            "Driver": "default",
            "Options": null,
            "Config": [
                {
                    "Subnet": "172.20.0.0/24"
                }
            ]
        },
        "Internal": false,
        "Attachable": false,
        "Ingress": false,
        "ConfigFrom": {
            "Network": ""
        },
        "ConfigOnly": false,
        "Containers": {
            "38ff2afa2cd2d127cec9670b4f19e11646aa6bf69e82e598188c9a0d4921ef01": {
                "Name": "shvirtd-example-python-db-1",
                "EndpointID": "cb7242dffbdecf07300060adb5d05e18c072437e4becdd050f7ba48f19671281",
                "MacAddress": "02:42:ac:14:00:0a",
                "IPv4Address": "172.20.0.10/24",
                "IPv6Address": ""
            },
            "64f1d7580f8594c28ec742948be2bdc24f776f3cfe63b50cd35c560698aaf747": {
                "Name": "shvirtd-example-python-reverse-proxy-1",
                "EndpointID": "85295cef274b5f5202c40c66bf34c97db831a3fda243445b18d6c2d5fa7ff36a",
                "MacAddress": "02:42:ac:14:00:02",
                "IPv4Address": "172.20.0.2/24",
                "IPv6Address": ""
            },
            "be028235d969b65f8a94eecfe50435ef118110b5bb2a8ce94941994befde9c68": {
                "Name": "shvirtd-example-python-web-1",
                "EndpointID": "f451eb0a3e41534dec69e6854bd65779e7deee46d00e0c15f8198ee70d0d8e42",
                "MacAddress": "02:42:ac:14:00:05",
                "IPv4Address": "172.20.0.5/24",
                "IPv6Address": ""
            }
        },
        "Options": {},
        "Labels": {
            "com.docker.compose.network": "backend",
            "com.docker.compose.project": "shvirtd-example-python",
            "com.docker.compose.version": "2.29.1"
        }
    }
]
Sun Aug 04 00:20:00 dbn_usr@dbn-net-hw:[~/netology/docker-in-practice/shvirtd-example-python]:
Sun Aug 04 00:10:58 dbn_usr@dbn-net-hw:[~/netology/docker-in-practice/shvirtd-example-python]: curl -L http://127.0.0.1:8090
TIME: 2024-08-03 17:10:59, IP: 127.0.0.1Sun Aug 04 00:10:59 dbn_usr@dbn-net-hw:[~/netology/docker-in-practice/shvirtd-example-python]:
Sun Aug 04 00:10:59 dbn_usr@dbn-net-hw:[~/netology/docker-in-practice/shvirtd-example-python]:
Sun Aug 04 00:11:00 dbn_usr@dbn-net-hw:[~/netology/docker-in-practice/shvirtd-example-python]: export MYSQL_pas=YtReWq4321
Sun Aug 04 00:11:45 dbn_usr@dbn-net-hw:[~/netology/docker-in-practice/shvirtd-example-python]: docker exec shvirtd-example-python-db-1 mysql -uroot -p${MYSQL_pas} -e "show databases; use virtd; show tables; SELECT * from requests LIMIT 10;" 2>/dev/null
Database
information_schema
mysql
performance_schema
sys
virtd
Tables_in_virtd
requests
id      request_date    request_ip
1       2024-08-01 16:22:58     127.0.0.1
2       2024-08-01 16:23:18     NULL
3       2024-08-01 16:23:26     127.0.0.1
4       2024-08-01 16:23:38     127.0.0.1
5       2024-08-01 16:28:08     127.0.0.1
6       2024-08-01 16:28:41     127.0.0.1
7       2024-08-01 16:31:19     127.0.0.1
8       2024-08-01 16:45:11     127.0.0.1
9       2024-08-01 16:52:23     127.0.0.1
10      2024-08-01 16:52:25     127.0.0.1
Sun Aug 04 00:11:58 dbn_usr@dbn-net-hw:[~/netology/docker-in-practice/shvirtd-example-python]:
Sun Aug 04 00:11:58 dbn_usr@dbn-net-hw:[~/netology/docker-in-practice/shvirtd-example-python]: docker exec -it shvirtd-example-python-db-1 bash
bash-5.1# mysql -uroot -pYtReWq4321
mysql: [Warning] Using a password on the command line interface can be insecure.
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 45
Server version: 8.4.2 MySQL Community Server - GPL

Copyright (c) 2000, 2024, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases; use virtd; show tables; SELECT * from requests LIMIT 10;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
| virtd              |
+--------------------+
5 rows in set (0.01 sec)

Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
+-----------------+
| Tables_in_virtd |
+-----------------+
| requests        |
+-----------------+
1 row in set (0.01 sec)

+----+---------------------+------------+
| id | request_date        | request_ip |
+----+---------------------+------------+
|  1 | 2024-08-01 16:22:58 | 127.0.0.1  |
|  2 | 2024-08-01 16:23:18 | NULL       |
|  3 | 2024-08-01 16:23:26 | 127.0.0.1  |
|  4 | 2024-08-01 16:23:38 | 127.0.0.1  |
|  5 | 2024-08-01 16:28:08 | 127.0.0.1  |
|  6 | 2024-08-01 16:28:41 | 127.0.0.1  |
|  7 | 2024-08-01 16:31:19 | 127.0.0.1  |
|  8 | 2024-08-01 16:45:11 | 127.0.0.1  |
|  9 | 2024-08-01 16:52:23 | 127.0.0.1  |
| 10 | 2024-08-01 16:52:25 | 127.0.0.1  |
+----+---------------------+------------+
10 rows in set (0.00 sec)

mysql>
```
![img](task_3.1.PNG)
![img](task_3.2.PNG)


## Задача 4






