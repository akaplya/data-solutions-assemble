#!/usr/bin/env bash

php ./magento2ee/dev/tools/build-ee.php \
    --command=unlink \
    --ce-source=./ \
    --ee-source=./magento2ee

php ./magento2ee/dev/tools/build-ee.php \
    --command=link \
    --ce-source=./ \
    --ee-source=./magento2ee \
    --exclude=true

php ./data-solutions-assemble/build-ds.php --projectRoot=./ --repoPath=./src/saas-export/
php ./data-solutions-assemble/build-ds.php --projectRoot=./ --repoPath=./src/commerce-data-export/
php ./data-solutions-assemble/build-ds.php --projectRoot=./ --repoPath=./src/commerce-data-export-ee/
php ./data-solutions-assemble/build-ds.php --projectRoot=./ --repoPath=./src/data-services/
php ./data-solutions-assemble/build-ds.php --projectRoot=./ --repoPath=./src/services-connector/
php ./data-solutions-assemble/build-ds.php --projectRoot=./ --repoPath=./src/services-id/
php ./data-solutions-assemble/build-ds.php --projectRoot=./ --repoPath=./src/magento-product-recommendations/
php ./data-solutions-assemble/build-ds.php --projectRoot=./ --repoPath=./src/magento-product-recommendations-admin/
php ./data-solutions-assemble/build-ds.php --projectRoot=./ --repoPath=./src/magento-catalog-sync-admin/
php ./data-solutions-assemble/build-ds.php --projectRoot=./ --repoPath=./src/magento-live-search/
