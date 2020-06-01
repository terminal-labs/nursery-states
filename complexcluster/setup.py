import sys
from setuptools import setup, find_packages

assert sys.version_info >= (3, 6, 0)

VERSION = "0.0.1"

setup(
    name="complexcluster",
    version=VERSION,
    author="Terminal Labs",
    author_email="solutions@terminallabs.com",
    license="see LICENSE file",
    zip_safe=False,
    include_package_data=True,
    install_requires=["setuptools", "click", "pytest"],
    entry_points="""
        [console_scripts]
        complexcluster=complexcluster.cli:main
     """,
)
