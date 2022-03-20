CODE_VERSION=$(shell git rev-list -1 HEAD)
VERSION := $(CODE_VERSION), Built Time: $(shell date)
deploy-dev:
	yarn install
	yarn build-dev
	echo $(VERSION) > dist/version.txt
	$(MAKE) upload-dev
	
upload-dev:
	aws s3 rm s3://sentec-pms-web-dev --recursive  --profile sutanto-archpms-dev
	aws s3 sync dist s3://sentec-pms-web-dev --delete --profile sutanto-archpms-dev --acl public-read
	aws cloudfront create-invalidation --distribution-id E2HH5L6A4REOQ7 --paths "/*" --profile sutanto-archpms-dev

deploy-prod:
	yarn install
	yarn build-prod
	echo $(VERSION) > dist/version.txt
	$(MAKE) upload-prod

upload-prod:
	aws s3 rm s3://sentec-pms-web-prod --recursive  --profile sutanto-archpms-dev
	aws s3 sync dist s3://sentec-pms-web-prod --delete --profile sutanto-archpms-dev --acl public-read
	aws cloudfront create-invalidation --distribution-id E39U2HW3VSCTFN --paths "/*" --profile sutanto-archpms-dev
