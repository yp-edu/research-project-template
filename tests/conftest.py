"""
Global fixtures for the tests.
"""

import pytest


@pytest.fixture(scope="session")
def global_fixture():
    yield "global_fixture"


def pytest_configure(config):
    config.addinivalue_line("markers", "unit: mark test as unit test")
