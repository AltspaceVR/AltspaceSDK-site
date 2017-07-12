bundle exec jekyll build
aws s3 cp _site s3://$DEV_SITE_BUCKET --recursive --acl public-read
