#!/usr/bin/env bash

php ../magento2ee/dev/tools/build-ee.php \
    --command=link \
    --ce-source=../ \
    --ee-source=../magento2ee \
    --exclude=true

php ../magento2ee/dev/tools/build-ee.php \
    --command=unlink \
    --ce-source=../ \
    --ee-source=../magento2ee

php assemble.php \
  --repoPath=../src/saas-export/,\
  ../src/commerce-data-export,\
  ../src/commerce-data-export-ee/
