import pytest

from app.cocktails import webresource


def test():
    url = "https://www.thecocktaildb.com/api/json/v2/9973533/lookup.php?i=Whiskey"
    w = webresource.HTTPSync()
    resp = w.get_url(url)
    assert w.resp_code(resp) == 200
