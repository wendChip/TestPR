import os

from app.cocktails import webresource


def test():
    api_key = os.getenv('SECRETS_API_KEY')
    url = f"https://www.thecocktaildb.com/api/json/v2/{api_key}/lookup.php?i=Whiskey"
    w = webresource.HTTPSync()
    resp = w.get_url(url)
    assert w.resp_code(resp) == 200
