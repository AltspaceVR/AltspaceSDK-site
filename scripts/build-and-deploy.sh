echo 'building site'
bundle exec jekyll build

echo 'uploading'
expires=$(date -d 'next year' -uR)
python -m awscli s3 sync _site s3://$DEV_SITE_BUCKET --acl public-read --expires "$expires"

python -m awscli configure set preview.cloudfront true

echo 'invalidating cache'
result=$(python -m awscli cloudfront create-invalidation --distribution-id $DEV_SITE_DISTRIBUTION --paths '/*')
invalidation_id=$(echo "$result" | grep '"Id":' | cut -d'"' -f4)

echo 'waiting for invalidation'
python -m awscli cloudfront wait invalidation-completed --distribution-id $DEV_SITE_DISTRIBUTION --id $invalidation_id
