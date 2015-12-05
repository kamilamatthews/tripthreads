/api/v1/posts/123

Authorization: Token 1234sdafasd

if token is valid
  respond json: private_post
else
  respond json: "error", status: 401
end
