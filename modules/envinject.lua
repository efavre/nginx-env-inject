print ("Hello.")
ngx.log(ngx.WARN, "Hola")
ngx.arg[1] = string.gsub(ngx.arg[1], "${api.url}", os.getenv("API_URL"))
