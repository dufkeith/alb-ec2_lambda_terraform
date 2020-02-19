set -x
aws s3 rm s3://tealium-lb-lambda-example2/v1.0.0/alb_lambda.zip
aws s3api delete-bucket --bucket=tealium-lb-lambda-example2 --region=us-east-2
aws s3api create-bucket --bucket=tealium-lb-lambda-example2 --region=us-east-2 --create-bucket-configuration LocationConstraint=us-east-2
aws s3 cp alb_lambda.zip s3://tealium-lb-lambda-example2/v1.0.0/alb_lambda.zip
