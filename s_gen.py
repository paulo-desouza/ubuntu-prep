import secrets

s = secrets.token_urlsafe(50)

f = open(".env", "w")

f.write(f"SECRET_KEY='{s}'")

f.close()

