FROM inovector/mixpost:v1.7.2

RUN sed -i -e "s/\['status' => \$text\]/['status' => \$text, 'sensitive' => true]/" /var/www/html/vendor/inovector/mixpost/src/SocialProviders/Mastodon/Concerns/ManagesResources.php
