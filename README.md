# 周公解梦网站

技术栈：Astro 6 + TypeScript + Cloudflare Workers + D1。

## 1. 安装

```bash
npm install
```

## 2. 创建 D1

```bash
npm run db:create
```

Wrangler 会创建 `zhougong-dream-db` 并返回真实 `database_id`。把它复制到 `wrangler.jsonc`，替换 `REPLACE_AFTER_RUNNING_DB_CREATE`。

## 3. 初始化数据库

本地：

```bash
npm run db:migrate:local
npm run db:seed:local
```

线上：

```bash
npm run db:migrate:remote
npm run db:seed:remote
```

注意：`seed.sql` 目前只有开发测试条目，不是正式周公解梦资料。

## 4. AI 配置

这个基础版使用 OpenAI-compatible Chat Completions 请求格式，方便接不同模型。

本地复制：

```bash
cp .dev.vars.example .dev.vars
```

然后填写：

```text
AI_API_KEY=你的Key
```

在 `wrangler.jsonc` 里填写：

```jsonc
"vars": {
  "AI_MODEL": "你的模型名",
  "AI_API_URL": "你的兼容接口地址"
}
```

线上 Key 不要写进配置文件：

```bash
npx wrangler secret put AI_API_KEY
```

## 5. 本地启动

```bash
npm run dev
```

## 6. 部署

```bash
npm run deploy
```

## 当前已经具备

- Astro 前端页面
- `/api/dream` Cloudflare 后端接口
- D1 梦象资料表
- 梦境关键词匹配
- AI API 接口层
- AI 未配置时自动退回数据库结果
- AI Key Secret 方案
- 用户梦境默认不保存

## 下一阶段

核心工作不是继续堆页面，而是整理正式“周公解梦资料库”，替换 `seed.sql` 的测试内容，并完善梦象拆解与检索。
