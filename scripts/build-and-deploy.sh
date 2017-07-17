bundle exec jekyll build

expires=$(date -d 'next year' -uR)
aws s3 sync _site s3://$DEV_SITE_BUCKET --acl public-read --expires "$expires"

aws configure set preview.cloudfront true

result=$(aws cloudfront create-invalidation --distribution-id $DEV_SITE_DISTRIBUTION --paths '/*')
invalidation_id=$($result | grep '"Id":' | cut -d'"' -f4)

aws cloudfront wait invalidation-completed --distribution-id $DEV_SITE_DISTRIBUTION --id $invalidation_id
