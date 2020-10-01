from myrepolib import repomod

def test_func():
	result = repomod.myfunc()
	assert result == 1

from myrepolib import main

def test_index():
    main.app.testing = True
    client = main.app.test_client()

    r = client.get("/")
    assert r.status_code == 200
    assert "Hello World!" in r.data.decode("utf-8")