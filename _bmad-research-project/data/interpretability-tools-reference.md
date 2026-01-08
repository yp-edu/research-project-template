# Research Tools Reference

Quick reference for reinforcement learning and interpretability tools used in this research project.

This module uses **TorchRL** for reinforcement learning and **tdhook** for interpretability analysis.

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

**Tutorials:**
- Reinforcement Learning (PPO) with TorchRL
- Multi-Agent Reinforcement Learning (PPO) with TorchRL
- Competitive Multi-Agent Reinforcement Learning (DDPG) with TorchRL

**Documentation:** https://docs.pytorch.org/rl/stable/index.html

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

**For Reinforcement Learning:**
- Use TorchRL for all RL experiments (single-agent and multi-agent)
- Use TorchRL's built-in environments and transforms
- Leverage TorchRL's modular design for custom algorithms
- Use TorchRL collectors and replay buffers for data management

**For Interpretability:**
- Use tdhook for interpretability analysis with TensorDict-based models
- Use Integrated Gradients for attribution analysis
- Use Steering Vectors for model control and analysis
- Integrate tdhook with TorchRL workflows seamlessly

**For MARL:**
- Use TorchRL's multi-agent environment support
- Use TorchRL's multi-agent objectives (PPO, DDPG, etc.)
- Apply tdhook for interpretability in multi-agent settings
- Use custom visualization for multi-agent interactions

### Integration with Research Workflow

1. **During Development:**
   - Use wandb for training monitoring and experiment tracking
   - Use TorchRL's logging utilities
   - Use tdhook for debugging model behavior during training

2. **During Analysis:**
   - Use tdhook for attribution analysis on trained models
   - Use TorchRL's visualization tools for policy and value function analysis
   - Generate publication-quality figures from interpretability results

3. **For Paper:**
   - Document TorchRL version and configuration
   - Document tdhook methods used for interpretability
   - Include code for reproducibility
   - Report interpretability findings clearly

## Example Workflow

### RL Training with TorchRL
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
    # Collect data
    data = collector.collect()
    # Compute loss
    loss_value = loss(data)
    # Optimize
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
