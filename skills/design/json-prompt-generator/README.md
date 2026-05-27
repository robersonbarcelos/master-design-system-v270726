# JSON Prompt Generator — Claude Skill

A Claude Skill that turns reference images into structured JSON prompts for AI image generation tools (ChatGPT Image 2, Nano Banana, Midjourney, etc.).

## What It Does

Upload any reference image to Claude and ask for a prompt. The Skill automatically:

1. Analyzes the visual qualities (subject, style, lighting, composition, materials, typography)
2. Outputs a complete JSON prompt using a structured schema
3. Suggests 1–3 tweaks for variations

Built for creators who want to reproduce, reverse-engineer, or translate reference imagery into their own brand language.

## Installation (5 minutes)

### Step 1 — Enable Code Execution

In Claude:
- Go to **Settings → Capabilities**
- Toggle ON **Code execution and file creation**

(This is required for Skills to work.)

### Step 2 — Upload the Skill

- Go to **Customize → Skills** (left sidebar in Claude)
- Click the **"+"** button
- Click **"+ Create skill"**
- Click **"Upload ZIP"**
- Upload the `json-prompt-generator.zip` file

### Step 3 — Enable

The Skill appears in your Skills list. Toggle it **ON**.

### Step 4 — Test

Open any Claude chat (or Project). Upload a reference image and paste:

```
Build me a JSON prompt I can use in ChatGPT Image 2 to recreate this style for my own brand.
```

The Skill should auto-trigger. You'll see the three-section output: Analysis → JSON Prompt → Tweaks.

## Troubleshooting

### Skill isn't triggering

Ask Claude in the same chat:

```
When would you use the json-prompt-generator skill?
```

Claude will quote the description back. If the trigger phrasing doesn't match how you're asking, edit the description in **Customize → Skills → [the skill] → Edit**.

### Output isn't matching the schema

Ask Claude:

```
Use the json-prompt-generator skill to rebuild that response, following the schema exactly.
```

### Want to use it inside a Project

Skills work automatically inside any Project once enabled globally. You don't need to add the Skill to the Project. Just enable it once in Customize → Skills and it activates everywhere.

## What's Inside

```
json-prompt-generator/
└── SKILL.md       # The full skill instructions and schema
```

Single-file skill. No scripts, no dependencies, no setup.

## License

Free to use, modify, and share. Built by Grow with Alex.
