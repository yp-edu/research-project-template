import pytest

from paper_template.core import core_function


@pytest.mark.unit
def test_core_function(global_fixture):
    assert core_function() == "Hello, world!"
    assert global_fixture == "global_fixture"
