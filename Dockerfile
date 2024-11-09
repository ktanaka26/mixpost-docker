FROM inovector/mixpost:v1.7.2

RUN sed -i -e "s/'image' => 1024 \* 5, \/\/ 5MB/'image' => 1024 * 20, \/\/ 20MB/" /var/www/html/vendor/inovector/mixpost/config/mixpost.php

RUN sed -i -e "s/\['status' => \$text\]/['status' => \$text, 'sensitive' => true]/" /var/www/html/vendor/inovector/mixpost/src/SocialProviders/Mastodon/Concerns/ManagesResources.php
