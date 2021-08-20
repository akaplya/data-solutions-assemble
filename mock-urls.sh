
echo "Setting QA URLs in requirejs-config files..."
sed -ie 's/commerce.adobedtm.com\/v5/js.magento-datasolutions.com\/qa/g' ./app/code/Magento/DataServices/view/frontend/requirejs-config.js
sed -ie 's/magento-recs-sdk.adobe.net\/v1\/index/sdk.magento-datasolutions.com\/qa\/index/g' ./app/code/Magento/ProductRecommendationsLayout/view/frontend/requirejs-config.js

echo "Setting QA URLs in config.xml files..."
sed -ie 's/commerce.adobe.net\/v2/admin-ui-qa.magento-datasolutions.com/g' ./app/code/Magento/ProductRecommendationsAdmin/etc/config.xml
sed -ie 's/commerce.adobe.net/admin-ui-qa.magento-datasolutions.com/g' ./app/code/Magento/ProductRecommendationsAdmin/etc/config.xml
sed -ie 's/commerce.adobe.net\/catalog\/sync\/v1/catalog-sync-ui-qa.magento-datasolutions.com/g' ./app/code/Magento/CatalogSyncAdmin/etc/config.xml
sed -ie 's/commerce.adobe.net/catalog-sync-ui-qa.magento-datasolutions.com/g' ./app/code/Magento/CatalogSyncAdmin/etc/config.xml

echo "Setting QA URLs in csp_whitelist.xml files..."
sed -ie 's/api.magento.com/qa-api.magedevteam.com/g' ./app/code/Magento/ServicesId/etc/csp_whitelist.xml
sed -ie 's/commerce.adobe.io/commerce-int.adobe.io/g' ./app/code/Magento/ServicesId/etc/csp_whitelist.xml
sed -ie 's/commerce.adobedtm.com/js.magento-datasolutions.com/g' ./app/code/Magento/DataServices/etc/csp_whitelist.xml
sed -ie 's/commerce.adobedc.net/com-magento-prod1.mini.snplow.net/g' ./app/code/Magento/DataServices/etc/csp_whitelist.xml
sed -ie 's/api.magento.com/qa-api.magedevteam.com/g' ./app/code/Magento/ProductRecommendationsLayout/etc/csp_whitelist.xml
sed -ie 's/commerce.adobe.io/commerce-int.adobe.io/g' ./app/code/Magento/ProductRecommendationsLayout/etc/csp_whitelist.xml
sed -ie 's/magento-recs-sdk.adobe.net/sdk.magento-datasolutions.com/g' ./app/code/Magento/ProductRecommendationsLayout/etc/csp_whitelist.xml
sed -ie 's/api.magento.com/qa-api.magedevteam.com/g' ./app/code/Magento/PageBuilderProductRecommendations/etc/csp_whitelist.xml
sed -ie 's/commerce.adobe.io/commerce-int.adobe.io/g' ./app/code/Magento/PageBuilderProductRecommendations/etc/csp_whitelist.xml
sed -ie 's/magento-recs-sdk.adobe.net/sdk.magento-datasolutions.com/g' ./app/code/Magento/PageBuilderProductRecommendations/etc/csp_whitelist.xml
sed -ie 's/api.magento.com/qa-api.magedevteam.com/g' ./app/code/Magento/ProductRecommendationsAdmin/etc/csp_whitelist.xml
sed -ie 's/commerce.adobe.io/commerce-int.adobe.io/g' ./app/code/Magento/ProductRecommendationsAdmin/etc/csp_whitelist.xml
sed -ie 's/commerce.adobe.net/admin-ui-qa.magento-datasolutions.com/g' ./app/code/Magento/ProductRecommendationsAdmin/etc/csp_whitelist.xml
sed -ie 's/api.magento.com/qa-api.magedevteam.com/g' ./app/code/Magento/ProductRecommendationsAdmin/etc/csp_whitelist.xml
sed -ie 's/commerce.adobe.io/commerce-int.adobe.io/g' ./app/code/Magento/ProductRecommendationsAdmin/etc/csp_whitelist.xml
sed -ie 's/api.magento.com/qa-api.magedevteam.com/g' ./app/code/Magento/ProductRecommendationsSyncAdmin/etc/csp_whitelist.xml
sed -ie 's/commerce.adobe.io/commerce-int.adobe.io/g' ./app/code/Magento/ProductRecommendationsSyncAdmin/etc/csp_whitelist.xml
sed -ie 's/api.magento.com/qa-api.magedevteam.com/g' ./app/code/Magento/CatalogSyncAdmin/etc/csp_whitelist.xml
sed -ie 's/commerce.adobe.io/commerce-int.adobe.io/g' ./app/code/Magento/CatalogSyncAdmin/etc/csp_whitelist.xml
sed -ie 's/commerce.adobe.net/catalog-sync-ui-qa.magento-datasolutions.com/g' ./app/code/Magento/CatalogSyncAdmin/etc/csp_whitelist.xml
