# Generate the distribution archives for the example package

# First install or upgrade the build system of python
python -m pip install --upgrade build 
# Go to the root of the project containing the pyproject.toml file
cd 'C:\scripts\Python\Examples\AdvancedLessons\1. Project Structure\package_demo'
# Build the project
python -m build 
# Notice the distibution directory dist containing the build files
dir dist
# The tar.gz file is a source archive whereas the .whl file is a
# built distribution. Newer pip versions preferentially install 
# built distributions, but will fall back to source archives if 
# needed. You should always upload a source archive and provide 
# built archives for the platforms your project is compatible with. 
# In this case, our example package is compatible with Python on any
#  platform so only one built distribution is needed.

## Test the pacakge by installing it from a distribution or source archive
# Uninstall (because of a previous demo)
pip uninstall example-package-Marc-Mertens
# Install from the source distribution
pip install .\dist\example-package-Marc-Mertens-0.0.1.tar.gz
# Use TestPackage.py to test it
# Uninstall (because of a previous demo)
pip uninstall example-package-Marc-Mertens
# Install from the source distribution
pip install .\dist\example_package_Marc_Mertens-0.0.1-py3-none-any.whl
## Test the pacakge by installing it from a distribution or source archive

## To upload to the TestPyPi pip repository ( the repository 
## to test and experiment with PIP package we install twine)

python -m pip install --upgrade twine

## Use twine to upload your package to TestPyPi

python -m twine upload --repository testpypi dist/* -u __token__ -p pypi-AgENdGVzdC5weXBpLm9yZwIkOWJmNjJiMGYtNDM5ZS00YTllLTk3NDUtZTIwODgxYjYxZjYxAAIleyJwZXJtaXNzaW9ucyI6ICJ1c2VyIiwgInZlcnNpb24iOiAxfQAABiAEwQpieuIhQEN7WBxefp7nyLle5DksXfKXIkivLcntpw

# Finally install the package  from TestPyPi

# First uninstall the package (undo previous demo)
pip uninstall example-package-Marc-Mertens
pip install --index-url https://test.pypi.org/simple/ example-package-Marc-Mertens  

# Or install the package from 