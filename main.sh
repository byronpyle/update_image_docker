jq -Rs '{StackFileContent: .}' docker-compose.yml > payload.json

curl -X PUT \
  -H "X-API-Key: $PORTAINER_API_KEY" \
  -H "Content-Type: application/json" \
  --data-binary "@payload.json" \
  "$PORTAINER_URL/api/stacks/$PORTAINER_STACK_ID?endpointId=$PORTAINER_ENDPOINT_ID"
