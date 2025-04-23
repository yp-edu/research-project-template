import pytest

from paper_template.core import loss_function


@pytest.mark.unit
def test_loss_function(global_fixture):
    assert loss_function(1, 1) == 2
    assert global_fixture == "global_fixture"
