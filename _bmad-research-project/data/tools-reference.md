# Research Tools Reference

Quick reference for reinforcement learning and interpretability tools used in this research project.

This module uses **TorchRL** for reinforcement learning, **BenchMARL** for MARL benchmarking, and **tdhook** for interpretability analysis.

> **Note:** All installation commands in this reference use `uv` (not `pip`). Always use `uv add <package>` to install dependencies in this project.

## Reinforcement Learning

### TorchRL

**Purpose:** PyTorch-first Reinforcement Learning library

**Key Features:**
- PyTorch and Python-first design
- Efficient, modular, documented, and tested
- Low and high-level abstractions for RL
- Support for single-agent and multi-agent RL
- Environments, transforms, models, data utilities
- Minimal dependencies (python standard library, numpy, pytorch)

**Installation:**
```bash
uv add torchrl
```

**Key Components:**
- **Environments:** Vectorized envs, multi-agent environments, custom environments
- **Modules:** Actors, value models, exploration strategies
- **Objectives:** PPO, DDPG, SAC, DQN, and more
- **Collectors:** Data collection and storage
- **Replay Buffers:** Composable replay buffers
- **Trainers:** Training loops and checkpointing

**Documentation:** https://docs.pytorch.org/rl/stable/index.html

### BenchMARL

**Purpose:** Multi-Agent Reinforcement Learning (MARL) training library for reproducibility and benchmarking

**Key Features:**
- Standardized interface for MARL algorithms and environments
- Built on TorchRL and PyTorch for high performance
- Uses Hydra for flexible and modular configuration
- Compatible with marl-eval for standardized evaluations
- Easy integration of new algorithms and environments
- Reproducibility through systematic configuration

**Installation:**
```bash
uv add benchmarl
```

**Key Components:**
- **Algorithms:** Standard MARL algorithms (PPO, DDPG, etc.)
- **Environments:** Public benchmarks and custom environments
- **Experiments:** Independent of algorithm, environment, and model choices
- **Reporting:** Standardized and statistically-strong plotting

**Core Design Tenets:**
- Reproducibility through systematical grounding and standardization
- Standardised and statistically-strong plotting and reporting
- Experiments independent of component choices
- Breadth over the MARL ecosystem
- Easy implementation of new components
- Leverages TorchRL infrastructure

**Documentation:** https://benchmarl.readthedocs.io/en/latest/

## Interpretability

### tdhook

**Purpose:** Interpretability with `tensordict` and `torch` hooks

**Key Features:**
- Works seamlessly with TensorDict-based models
- Integrated Gradients support
- Steering Vectors
- Minimal configuration required
- Compatible with TorchRL workflows

**Installation:**
```bash
uv add tdhook
```

**Common Methods:**
- `IntegratedGradients` - Integrated gradients attribution
- Steering Vectors - Model steering and control

**Example Usage:**
```python
from tdhook.attribution import IntegratedGradients
from tensordict import TensorDict

# Define attribution target
def init_attr_targets(targets, _):
    target_logit = targets["output"][..., target_class]
    return TensorDict(out=target_logit, batch_size=targets.batch_size)

# Compute attribution
with IntegratedGradients(init_attr_targets=init_attr_targets).prepare(model) as hooked_model:
    td = TensorDict({
        "input": input_tensor,
        ("baseline", "input"): torch.zeros_like(input_tensor)
    }).unsqueeze(0)
    td = hooked_model(td)
    # Access attribution with td.get(("attr", "input"))
```

**Documentation:** https://tdhook.readthedocs.io/
**Repository:** https://github.com/Xmaster6y/tdhook

## Visualization Tools

### Weights & Biases (wandb)

**Purpose:** Experiment tracking and visualization

**Features:**
- Training metrics tracking
- Hyperparameter sweeps
- Model versioning
- Collaboration tools

**Installation:**
```bash
uv add wandb
```

**Documentation:** https://wandb.ai/

## Best Practices

### When to Use Which Tool

**For Single-Agent RL:**
- TorchRL provides comprehensive support for single-agent environments and algorithms

**For Multi-Agent RL (MARL):**
- BenchMARL offers standardized benchmarking and reproducibility for MARL experiments
- Built on TorchRL, providing high performance and state-of-the-art implementations
- Ideal for comparing algorithms, environments, and models
- Compatible with marl-eval for standardized evaluations

**For Interpretability:**
- tdhook works seamlessly with TensorDict-based models (compatible with TorchRL/BenchMARL)
- Integrated Gradients for attribution analysis
- Steering Vectors for model control and analysis

### Integration with Research Workflow

1. **During Development:**
   - wandb for training monitoring and experiment tracking
   - tdhook for debugging model behavior during training

2. **During Analysis:**
   - tdhook for attribution analysis on trained models
   - Generate publication-quality figures from interpretability results

3. **For Paper:**
   - Document library versions and configurations (TorchRL, BenchMARL, tdhook)
   - Include code for reproducibility
   - Report interpretability findings clearly

## Example Workflows

### MARL Training with BenchMARL
```python
from benchmarl import Experiment
from benchmarl.algorithms import MappoConfig
from benchmarl.environments import VmasTask

# Configure experiment
experiment = Experiment(
    algorithm_config=MappoConfig.get_from_yaml(),
    model_config=...,
    seed=0,
    task=VmasTask.Navigation.get_from_yaml(),
)

# Run experiment
experiment.run()
```

### Single-Agent RL with TorchRL
```python
from torchrl.envs import GymEnv
from torchrl.modules import Actor
from torchrl.objectives import PPO

# Create environment
env = GymEnv("Pendulum-v1")

# Create policy
policy = Actor(env.action_spec, env.observation_spec)

# Create PPO loss
loss = PPO(policy, env)

# Training loop
for epoch in range(num_epochs):
    data = collector.collect()
    loss_value = loss(data)
    loss_value.backward()
    optimizer.step()
```

### Interpretability with tdhook
```python
from tdhook.attribution import IntegratedGradients
from tensordict import TensorDict

# Define attribution target
def init_attr_targets(targets, _):
    target_logit = targets["output"][..., target_class]
    return TensorDict(out=target_logit, batch_size=targets.batch_size)

# Compute attribution
with IntegratedGradients(init_attr_targets=init_attr_targets).prepare(model) as hooked_model:
    td = TensorDict({
        "input": input_tensor,
        ("baseline", "input"): torch.zeros_like(input_tensor)
    }).unsqueeze(0)
    td = hooked_model(td)
    attributions = td.get(("attr", "input"))

# Visualize and analyze attributions
visualize_attributions(attributions, input_tensor)
```

---
*Reference from Research Project Accelerator module*
