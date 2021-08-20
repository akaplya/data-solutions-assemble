#!/usr/bin/env bash

git clone git@github.com:magento-commerce/magento2ee.git ./magento2ee

cp ./magento2ee/composer.json ./composer.json
cp ./magento2ee/composer.lock ./composer.lock

git clone git@github.com:magento-commerce/saas-export.git ./src/saas-export
git clone git@github.com:magento-commerce/commerce-data-export.git ./src/commerce-data-export
git clone git@github.com:magento-commerce/commerce-data-export-ee.git ./src/commerce-data-export-ee
git clone git@github.com:magento-commerce/data-services.git ./src/data-services
git clone git@github.com:magento-commerce/services-connector.git ./src/services-connector
git clone git@github.com:magento-commerce/services-id.git ./src/services-id
git clone git@github.com:magento-commerce/magento-product-recommendations.git ./src/magento-product-recommendations
git clone git@github.com:magento-commerce/magento-product-recommendations-admin.git ./src/magento-product-recommendations-admin
git clone git@github.com:magento-commerce/magento-catalog-sync-admin.git ./src/magento-catalog-sync-admin
git clone git@github.com:magento-commerce/magento-live-search.git ./src/magento-live-search
