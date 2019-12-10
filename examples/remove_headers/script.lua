-- This script drops listed headers

-- envoy entry point
function envoy_on_request(request_handle)
  headers = request_handle:headers()
  for _, header_name in ipairs(headersToCheck) do
    headers:remove(header_name)
  end
end
