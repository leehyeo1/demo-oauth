library(httr)

oauth_endpoints("github")

myapp <- oauth_app("github", key = "f00b15f4f4d0005904b9", secret = "6d9829604f9f80ed6131383aef118f53c1bfe653")

github_token <- oauth2.0_token(oauth_endpoints("github"), myapp)

gtoken <- config(token = github_token)
req <- GET("https://api.github.com/rate_limit", gtoken)
stop_for_status(req)
content(req)
