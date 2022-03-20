hugo
aws s3 rm s3://sutanto.net --recursive  --profile default --region ap-southeast-3
aws s3 sync public s3://sutanto.net --delete --profile default --acl public-read --region ap-southeast-3
aws cloudfront create-invalidation --distribution-id E1J9KBURHIXTZW --paths "/*" --profile default