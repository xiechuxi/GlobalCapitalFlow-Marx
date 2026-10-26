# 全球资本积累与成本转移穿透分析器

> Global Capital Accumulation & Cost-Shift Penetration Analyzer

一个可安装的 AI Agent Skill：把宏观事件还原为**具体的矛盾运动**，回答"核心矛盾是什么、谁获益、谁买单、最可能走向哪里"。

- 以马克思主义矛盾辩证法为主轴（矛盾识别 → 主要矛盾判定 → 四维展开 → 走向推演）
- 采用政治经济学视角（时间 / 空间 / 阶级 / 强制 四维作为矛盾的表现面）
- 输出结构固定、证据分级标注、强制包含反面检验
- 纯提示词资产，无外部依赖、无网络调用、无遥测

---

## 目录

- [它解决什么问题](#它解决什么问题)
- [方法论](#方法论)
- [安装](#安装)
- [使用](#使用)
- [输出示例](#输出示例)
- [目录结构](#目录结构)
- [设计原则](#设计原则)
- [常见问题](#常见问题)
- [边界与免责](#边界与免责)
- [许可证](#许可证)

---

## 它解决什么问题

主流财经分析通常停在"政策 → 增长 → 资产价格"的传导描述上，回避了分配的起点与矛盾的性质。本 Skill 先要求用事实确定核心矛盾，再校验底层增殖—实现机制，并追问四个被跳过的问题：

| 维度 | 被跳过的问题 |
|---|---|
| 核心机制 | 增殖率叙事如何通过金融把未来贴现为当下、在空间上集聚资本？劳动份额与总人口如何限制资本规模？ |
| 时间 | 当前收益是真实现金流，还是对未来收入流的提前资本化？ |
| 空间 | 剩余价值从边缘流向中心，还是出现逆向反噬？卡点在谁手里？ |
| 阶级 | 成本最终落在哪个主体的资产负债表和社会再生产底线上？ |
| 强制 | 经济手段失效后，是否升级为断供、制裁、封锁？账面财富能否兑现实物？ |

---

## 方法论

### 辩证法的使用规则

1. 矛盾普遍存在，但每组矛盾有特殊性：分析起点是找出具体对立面与斗争焦点，不是先评判好坏，也不得套用模板。
2. 主要矛盾决定性质：多个矛盾并存时必须排序，并指出矛盾的主要方面。
3. 对立面相互依存、在一定条件下相互转化：一方的强势会制造自身的否定条件。
4. 量变引起质变：成本转移与缓冲消耗积累到临界点，会以危机、制度变更或强制手段跃变。
5. 内因是根本，外因是条件：外部冲击通过内部结构起作用。

### 政治经济学起点假设

以下五条 **不是结论**，只用于生成提问：

1. 收益不只是风险补偿，也包含对他人（劳动者、边缘国家、未来）剩余价值的提前索取。
2. 风险不只是方差，而是成本转移失败后由谁承担代价；金融创新的常见功能是"私有化收益、社会化风险"。
3. 市场不只是配置资源，也是把"对劳动的索取权"兑现为实际收益的制度通道。
4. 技术的关键作用之一是把隐性劳动数据化，提高资本有机构成，削弱议价能力。
5. 地缘是核心国家向外转移国内矛盾的手段。

### 核心机制：增殖—实现矛盾与人口边界

```
私人资本增殖率叙事 → 金融把未来贴现为当下资本（时间→空间）→ 空间集聚
→ 现金分发构建增殖资本 → 吸引更多资本 → 压低劳动份额
→ 总需求受总人口/劳动总收入约束 → 资本规模最终被总人口与劳动总收入限制
```

框架要求每个分析都校验这条链条：事件是在缓解矛盾（空间外移、时间外移、制度调节），还是在激化矛盾（压低劳动份额、价值毁灭）。人口边界是趋势性约束，不是机械公式。

### 执行流程

```
事实基线 → 矛盾识别 → 主要矛盾判定 → 增殖—实现校验 → 四维展开 → 矛盾运动与临界点 → 走向推演 → 启示 → 反面检验
```

- 核心矛盾必须写成"A 与 B 围绕 X 的对立"，并指出矛盾的主要方面。
- 每个核心矛盾都要通过"增殖率—劳动份额—总需求—人口边界"链条校验。
- 四维是主要矛盾的表现面，每个维度至少 3 条可验证论据。
- 走向至少两种，含基准走向、触发条件、时间尺度与先行指标。
- 结论必须标注 `【事实】` / `【推断】` / `【推测】`。

---

## 安装

> 本仓库把 skill 放在根目录 `skills/`，不使用 `.github/` 目录。Agent Skills 只从约定目录加载，因此需要执行下面的安装步骤。

### 方式一：用户级安装（脚本，跨项目可用）

```bash
git clone https://github.com/xiechuxi/GlobalCapitalFlow-Marx.git
cd GlobalCapitalFlow-Marx
```

| 目标 | 安装目录 | 适用客户端 |
|---|---|---|
| `agents` | `~/.agents/skills/` | VS Code、Codex、通用 Agent Skills |
| `codex` | `~/.agents/skills/` | OpenAI Codex CLI（文档指定的用户级位置） |
| `copilot` | `~/.copilot/skills/` | GitHub Copilot CLI |
| `claude` | `~/.claude/skills/` | Claude Code |
| `hermes` | `~/.hermes/skills/` | Hermes Agent（Nous Research） |
| `dsh` | `~/.dsh/skills/` | DeepSeek Harness |
| `workbuddy` | WorkBuddy 插件市场目录 | WorkBuddy（检测不到时自动打包 ZIP） |
| `<路径>` | `<路径>/global-capital-flow-marx` | 自定义 skills 根目录 |

```bash
sh skills/global-capital-flow-marx/scripts/install.sh agents     # VS Code + Codex
sh skills/global-capital-flow-marx/scripts/install.sh hermes
sh skills/global-capital-flow-marx/scripts/install.sh dsh
sh skills/global-capital-flow-marx/scripts/install.sh claude
sh skills/global-capital-flow-marx/scripts/install.sh ~/my-skills
```

### 方式二：各客户端原生方式

**Hermes Agent** —— 走 Skills Hub，自动安全扫描并记录来源：

```bash
hermes skills install xiechuxi/GlobalCapitalFlow-Marx/skills/global-capital-flow-marx

# 或把本仓库添加为 tap（本仓库根目录就是 skills/ 布局）
hermes skills tap add xiechuxi/GlobalCapitalFlow-Marx
hermes skills install xiechuxi/GlobalCapitalFlow-Marx/global-capital-flow-marx
```

**Codex CLI** —— 仓库级位置是 `.agents/skills/`（从当前目录逐级向上扫描到仓库根）：

```bash
sh skills/global-capital-flow-marx/scripts/install.sh .agents/skills
```

**DeepSeek Harness** —— 复制到 `~/.dsh/skills/`，重启 profile 后生效；也可用 `dsh-skills-nexus` 直接登记本仓库：

```bash
dsh plugin --profile web add github:xiaxi626/dsh-skills-nexus
dsh-skills-nexus add github:xiechuxi/GlobalCapitalFlow-Marx --subdir skills/global-capital-flow-marx
```

**WorkBuddy** —— 优先用图形界面导入，脚本会生成符合上传要求的 ZIP：

```bash
sh skills/global-capital-flow-marx/scripts/install.sh pack
# 生成 dist/global-capital-flow-marx.zip
```

打开 WorkBuddy →「添加技能」→「上传技能」→ 选择该 ZIP。若本机已有插件市场目录，也可执行 `install.sh workbuddy`，按提示在 `~/.workbuddy/settings.json` 的 `enabledPlugins` 中启用。

### 方式三：手动复制

把 `skills/global-capital-flow-marx/` 整个文件夹复制到下表中的对应目录即可。

> 注意：文件夹名必须与 `SKILL.md` 中的 `name` 字段一致（`global-capital-flow-marx`），否则不会被加载。

### 客户端兼容性速查

| 客户端 | 用户级 | 项目级 / 仓库级 | 调用方式 |
|---|---|---|---|
| VS Code (Copilot) | `~/.agents/skills/` | `.github/skills/`、`.agents/skills/`、`.claude/skills/` | `/global-capital-flow-marx` |
| Copilot CLI | `~/.copilot/skills/` | `.github/skills/` | `/global-capital-flow-marx` |
| Claude Code | `~/.claude/skills/` | `.claude/skills/` | `/global-capital-flow-marx` |
| OpenAI Codex | `$HOME/.agents/skills/` | `.agents/skills/`（逐级向上至仓库根） | `$global-capital-flow-marx` 或 `/skills` |
| Hermes Agent | `~/.hermes/skills/` | `<repo>/.hermes/skills/`、`<repo>/.agents/skills/` | `/global-capital-flow-marx` |
| DeepSeek Harness | `~/.dsh/skills/` | 同左（文件系统扫描） | 对话自动匹配 |
| WorkBuddy | 插件市场目录 | 应用内导入 | 对话自动匹配 |

补充说明：

- **Codex**：管理员级位置为 `/etc/codex/skills`；可用 `~/.codex/config.toml` 的 `[[skills.config]]` 单独禁用某个 skill。
- **Hermes**：项目级 skills 首次使用需 `hermes skills trust`；其编写规范建议 `description` ≤ 60 字符，本 skill 的描述更详细（用于跨客户端触发匹配），在 Hermes 列表中可能被截断显示，不影响加载。
- **DeepSeek Harness**：技能名须为 kebab-case（本 skill 已符合），新增技能后需重启 profile 才会被扫描到。
- **WorkBuddy**：内部把 skill 叫「插件」，目录结构随版本变化，优先使用图形界面导入。

### 验证安装

- 斜杠命令类（VS Code / Copilot CLI / Claude Code / Hermes）：新开会话输入 `/global-capital-flow-marx`。
- Codex：输入 `$` 查看候选列表，或输入 `/skills`。
- DeepSeek Harness：重启 profile 后问「你有哪些 skills」。
- WorkBuddy：技能页「已安装」中出现该技能即可。

---

## 使用

### 斜杠命令

```
/global-capital-flow-marx 2026年美联储降息
```

### 自然语言触发

直接描述要拆解的事件，Agent 会按 `description` 中的关键词自动加载：

```
用核心矛盾和四维框架拆解一下：美国对华新一轮芯片出口管制
```

```
帮我分析这轮 AI 资本开支，谁在为明天买单？
```

### 建议输入的完整指令

```
请调用【全球资本积累与成本转移穿透分析器】技能，对我提供的【事件】进行深度拆解。要求：
1. 事实基线：列出已发生事实、规模、传导机制与数据缺口。
2. 核心矛盾：从事实中提取 2–4 组矛盾候选，指出主要矛盾、矛盾的主要方面，以及次要矛盾。
3. 四维展开：时间（透支未来）、空间（虹吸与反制）、阶级（谁承担代价）、强制（暴力与实物）。
4. 矛盾运动：指出量变积累指标、至少两个断裂点与临界条件。
5. 走向推演：给出 2–3 种可能走向，含基准走向、解决形式、触发条件、时间尺度与先行指标。
6. 启示：区分跨走向的防御性、生产性锚定与待验证叙事。
```

### 追问技巧

| 想得到什么 | 这样问 |
|---|---|
| 更硬的证据 | "给出这四个维度的量化指标和最新数据来源" |
| 更悲观的情景 | "假设贴现率上行 200bp，重算一遍断裂点" |
| 反方观点 | "用新古典框架给出一个完全相反的解释，并指出双方各自的可证伪点" |
| 时间表 | "给出每个断点的先行指标和大致时滞" |

---

## 输出示例

```markdown
## 0. 一句话结论
降息的核心矛盾是"债务存量要求低利率滚续"与"实体剩余价值创造不足"之间的对立；
矛盾的主要方面在债务方，基准走向是用名义增长与负实际利率稀释债务。

## 2. 核心矛盾
- 主要矛盾：债务滚续需求 vs 剩余价值创造能力（围绕"调整成本由谁承担"）
- 主要方面：财政与资产持有者掌握货币政策与财政主导权
- 对抗性：短期非对抗，通胀失控或财政空间耗尽后转向对抗
- 增殖—实现校验：降息把未来收益提前到当下，但劳动份额与总需求边界未改变

## 3.1 时间维度：矛盾如何被推给未来
- 未来假设：长端利率长期低于名义 GDP 增速
- 证据：【事实】债务加权久期 … ；【推断】利息支出占比 …
- 脆弱性：期限溢价走阔 100bp 即吞噬财政缓冲

## 6. 可能走向
- 基准：通胀化债（制度性调节 + 成本外移）
- 备选：财政紧缩 / 债务重组
...
```

完整骨架见 [`references/output-template.md`](./skills/global-capital-flow-marx/references/output-template.md)。

---

## 目录结构

```
GlobalCapitalFlow-Marx/
├── skills/global-capital-flow-marx/
│   ├── SKILL.md                    # 技能入口（frontmatter + 执行流程 + 质量红线）
│   ├── references/
│   │   ├── framework.md            # 矛盾识别、主要矛盾判定、四维清单、断裂点、走向推演、红灯阈值
│   │   ├── output-template.md      # 输出骨架与 Mermaid 图例
│   │   └── examples.md             # 降息 / 出口管制两个压缩范例
│   └── scripts/
│       └── install.sh              # 多客户端安装脚本 + ZIP 打包
├── dist/                           # install.sh pack 生成，已 gitignore
├── README.md
└── LICENSE                         # AGPL-3.0
```

采用渐进加载：`SKILL.md` 只保留发现入口与主流程，细节按需读取 `references/`，避免占用上下文。

---

## 设计原则

1. **公理 ≠ 结论**：框架假设只用于生成提问，每条结论必须落到可观测证据。
2. **证据分级**：`【事实】` / `【推断】` / `【推测】` 三档，禁止语气混用。
3. **强制反面检验**：必须写出"如果框架错了，最可能错在哪"，否则输出不合格。
4. **拒绝伪精确**：所有阈值标注为"观察起点"，要求按当期数据校准。
5. **机制校验**：每个核心矛盾都要通过"增殖率—劳动份额—总需求—人口边界"链条校验，避免只做分配描述。
6. **走向条件化**：不得给"必然崩溃/必然胜利"式结论，每种走向必须附触发条件与可证伪指标。
7. **不越界**：不输出点位、目标价、仓位比例；涉及冲突只做机制分析。

---

## 常见问题

**Q：这是不是只能得出一个预设结论？**
不是。框架要求先由事实生成 2–4 组矛盾候选，再排序并说明理由；`SKILL.md` 的走向推演与 `references/output-template.md` 的反面检验强制要求给出反证条件与主流解释成立的前提。若证据不支持，框架应输出"无法判定"或"该判断不成立"。

**Q：核心矛盾是主观选的吗？**
不是任意选择。必须先在事实基线中找到对立双方、争夺对象与相互依存条件，再按支配性、传导力、激化速度、可证伪性四项排序；掌握相同事实的分析者应能复核排序理由。

**Q：能分析个股吗？**
可以分析个股所处的成本转移位置与卡点，但不会给出买卖建议。个股分析还需要补充财务、治理与估值模型，属于本 Skill 之外的范畴。

**Q：同一个 skill 能同时装到多个客户端吗？**
可以。`install.sh` 支持 `agents` / `codex` / `copilot` / `claude` / `hermes` / `dsh` / `workbuddy`，同一份内容复制到不同目录即可，互不冲突。目录对照见[客户端兼容性速查](#客户端兼容性速查)。

**Q：为什么放在 `skills/` 而不是 `.github/skills/`？**
仓库保持根目录 `skills/` 的可见结构，不依赖隐藏目录；需要被 Agent 加载时，用安装脚本复制到 `.agents/skills/` 或用户级目录即可。

**Q：数据从哪来？**
Skill 本身不联网、不内置数据集。数据由 Agent 在会话中检索，或由用户提供。缺失数据会被显式标注为"未获取"，不会编造。

---

## 边界与免责

- 本项目是一个**分析框架**，不是对现实世界的实证结论，也不代表任何机构立场。
- 框架提供的是一种提问方式和因果假设，其解释力需要与主流经济学、制度分析等视角相互检验。
- 输出内容不构成投资、法律、税务或政策建议。据此操作的风险由使用者自行承担。
- 涉及暴力冲突时，仅做机制与后果分析，不渲染、不煽动。

---

## 贡献

欢迎提交 Issue 或 PR：

- 新增断裂点类型与先行指标
- 补充可查证的数据源清单
- 修正框架中的逻辑跳跃或不可证伪表述
- 增加不同地区/行业的示例

提交前请确保：新增内容包含证据来源，且不与 `SKILL.md` 的[质量红线](./skills/global-capital-flow-marx/SKILL.md#质量红线)冲突。

---

## 许可证

[GNU Affero General Public License v3.0](./LICENSE) © 2026 xiechuxi

你可以自由使用、修改、分发本作品，包括通过网络提供服务；但修改后的版本必须以同一许可证公开其完整源代码，并保留版权声明与免责声明。
