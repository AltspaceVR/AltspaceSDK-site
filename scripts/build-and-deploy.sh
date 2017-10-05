echo 'building site'
bundle exec jekyll build

export AWS="$HOME/.local/lib/python2.7/scripts/aws"
echo 'uploading'
expires=$(date -d 'next year' -uR)
"$AWS" s3 sync _site s3://$DEV_SITE_BUCKET --acl public-read --expires "$expires"

"$AWS" configure set preview.cloudfront true

echo 'invalidating cache'
result=$("$AWS" cloudfront create-invalidation --distribution-id $DEV_SITE_DISTRIBUTION --paths '/*')
invalidation_id=$(echo "$result" | grep '"Id":' | cut -d'"' -f4)

echo 'waiting for invalidation'
"$AWS" cloudfront wait invalidation-completed --distribution-id $DEV_SITE_DISTRIBUTION --id $invalidation_id
