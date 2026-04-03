%dw 2.0
output application/json
---
{
    correlationId: vars.metadata.correlationId,
    statusCode: vars.httpStatus,
    namespace: error.errorType.namespace,
    identifier: error.errorType.identifier,
    description: vars.description default error.errorMessage.payload.status_message default  error.description

}