install:
	python3 -m venv .venv
	.venv/bin/pip install -e .

dist:
	python3 setup.py sdist bdist_wheel

deploy-pypi-test: dist
	python3 -m twine upload --repository-url https://test.pypi.org/legacy/ dist/*

deploy-pypi: dist
	python3 -m twine upload dist/*

-include local.mk
