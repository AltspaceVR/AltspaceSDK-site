bundle exec jekyll build
expires=$(date -d 'next year' -uR)
aws s3 sync _site s3://$DEV_SITE_BUCKET --acl public-read --expires "$expires"
aws create-invalidation --distribution-id $DEV_SITE_DISTRIBUTION --paths '*'
