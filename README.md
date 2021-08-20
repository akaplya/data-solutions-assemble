# data-solutions-assemble

Clone Magento Open Source
```shell
git clone git@github.com:magento-commerce/magento2ce.git ./magento2.local
```

Change directory 

```shell
cd magento2.local
```

Clone helper 

```shell
git clone git@github.com:akaplya/data-solutions-assemble.git
```

Make shell commands executable 
```shell
chmod +x ./data-solutions-assemble/clone-repos.sh
chmod +x ./data-solutions-assemble/assemble.sh
```

Clone Ds repos
```shell
./data-solutions-assemble/clone-repos.sh
```

Run composer install

```shell
composer install
```

Add JWT module

```shell
composer require firebase/php-jwt
```

Install Magento

```shell
php -f bin/magento setup:install \
    --language="en_US" \
    --timezone="America/Los_Angeles" \
    --currency="USD" \
    --db-host="localhost" \
    --db-name="magento2" \
    --db-user="admin" \
    --db-password="123123q" \
    --backend-frontname="admin" \
    --base-url="http://magento2.local" \
    --admin-lastname="Admin" \
    --admin-firstname="Admin" \
    --admin-email="admin@example.com" \
    --admin-user="admin" \
    --admin-password="123123q"
```
