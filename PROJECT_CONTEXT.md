# 项目背景

<!-- AUTO | 2026-08-01T07:53Z -->

## 目标

为 Agent Bounties #648 准备一个可由独立参与者完成的 1 USDC 子任务。子任务修复 MCP 初始化版本协商中的精确成员校验，并由固定、可复现的沙箱测试裁决。

## 当前口径

- 父任务：`NSPG13/agent-bounties#648`
- 父任务合约：`0x15fe9336ddd83f87335d27f39f83750e6f86fcef`
- 父任务 ID：`0xebad06e2af596702f1b141baf304f32eb128c6f6af90ff28bbcb67553c182f68`
- GitHub 发布账号：`aiforuseac4-blockchain`
- 计划公开仓库：`https://github.com/aiforuseac4-blockchain/mcp-version-negotiation-bounty`
- 父任务 solver 钱包：`0x8e61edc567503a7d3b3554c51230f512c4ea7b1e`
- 子任务总资金：精确 1 USDC
- 预期拆分：子任务 solver 0.99 USDC，验证奖励 0.01 USDC
- 子任务必须由与父任务领取者不同的已注册参与者完成
- 当前候选子任务 solver：`dtopenclaw`；尚未确认本任务同意
- 付款成立的唯一证据是 Base 主网上确认的 `BountySettled` 事件

## 固定验证环境

- 容器：`docker.io/library/alpine@sha256:48b0309ca019d89d40f670aa1bc06e426dc0931948452e8491e3d65087abc07d`
- 命令：`/benchmark/test.sh`
- 基准 directory-v1 摘要：`sha256:1050f34be1da511f6825de9c4f21870a289262c1fc67de39533ea0d98e9586e3`
- 基准提交：`14f0615fc80728920448f921a3ce5e71e4827931`
