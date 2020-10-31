BoxBilling [localhost:8004]
================================================================================
*This will run boxbilling on your localhost via `docker compose`, also install `nginx` with `alpine` and `mysql` database.*


Requirements
================================================================================

* PHP >=5.6
* PHP extensions:
  * mcrypt
  * curl
  * zlib
  * PDO
  * gettext
* MySQL
* Nginx / Alpine

Getting started
================================================================================

Please read documentation at http://docs.boxbilling.com to get started
with BoxBilling

1. Make a new project folder on your localhost `ex. /boxbilling`
2. Please make sure the ownership of new folder on your localhost is not a root user, use your own user on your localhost `ex. drwxr-xr-x   9 anonymous  staff   288 Oct 27 18:37 boxbilling` (use: $chown user:group folder_name)
3. Unzip/extract file `boxbilling.zip` into your new folder
4. Install boxbilling apps via docker compose (instruction see bellow)
5. Rename file `bb-config-sample.php` into `bb-config.php`, then edit configuration as needed like URL default setting (change: 'url'=>'http://localhost:8004/', 'host'=>'db'), in docker please use the service_name as HOST
6. Login with `root` user into mysql server or use DB manager apps (instruction see bellow)
7. Run SQL file `/sql_import/01_privillage.sql` to your database
8. Import file `/sql_import/02_structure.sql` to your database
9. Import file `/sql_import/03_content.sql` to your database
10. For the first time, open your browser `http://localhost:8004/index.php?_url=/bb-admin` to create new admin account login, if there is a user admin exist in DB then you must truncate table admin first before make a new user login


Instruction
================================================================================

Run docker compose to install boxbilling on your localhost (wait for a long process download and grab some coffee to enjoy your life) :D

 `$docker-compose up -d`
   
Here is MySQL credential for login into mysql server or remote DB manager apps:

  * MYSQL_HOST: 127.0.0.1
  * MYSQL_DATABASE: boxbilling
  * MYSQL_USER: foo
  * MYSQL_PASSWORD: foo
  * MYSQL_ROOT_PASSWORD: foo
  