
PRODUCT=${1}
VERSION=${2}
FILE_PATH=${3}

URL="https://api.mindee.net/v1/products/mindee/${PRODUCT}/v${VERSION}/predict"

curl -X POST ${URL} \
  -H "Authorization: Token $MINDEE_API_KEY" \
  -H 'content-type: multipart/form-data' \
  -F document="@${FILE_PATH}"
