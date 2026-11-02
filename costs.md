# API spend

Generated 2026-10-30 by `src/costs.py` from the cost OpenRouter reported for each cached call. Not an estimate.

**Total: $19.05 over 1717 OpenRouter calls.**

| folder | model | calls | prompt tok | completion tok | of which reasoning | cost $ | dates |
|---|---|---|---|---|---|---|---|
| out_deepseek | deepseek/deepseek-v4-pro | 254 | 1,650,473 | 366,558 | 0 | 1.188 | 2026-10-16 |
| out_gemini | google/gemini-3.8-flash | 252 | 1,660,721 | 405,024 | 0 | 2.742 | 2026-10-16 |
| out_kimi | moonshotai/kimi-k2.6 | 258 | 2,258,461 | 450,149 | 3 | 2.788 | 2026-10-16 |
| out_mistral | mistralai/mistral-large-4-0 | 259 | 2,270,272 | 565,924 | 0 | 1.689 | 2026-10-16 |
| out_paragraphs | openai/gpt-5.4 | 125 | 282,428 | 320,963 | 300,414 | 5.500 | 2026-10-23 |
| out_paragraphs | anthropic/claude-sonnet-5.5 | 165 | 626,853 | 34,072 | 0 | 1.594 | 2026-10-20 to 2026-10-23 |
| out_paragraphs | qwen/qwen3.7-max | 15 | 23,781 | 11,091 | 0 | 0.072 | 2026-10-20 |
| out_paragraphs | google/gemini-3.8-flash | 15 | 23,923 | 11,559 | 0 | 0.061 | 2026-10-20 |
| out_paragraphs | mistralai/mistral-large-4-0 | 15 | 23,157 | 14,037 | 0 | 0.039 | 2026-10-20 |
| out_paragraphs | moonshotai/kimi-k2.6 | 15 | 22,980 | 14,355 | 0 | 0.037 | 2026-10-20 |
| out_paragraphs | deepseek/deepseek-v4-pro | 15 | 23,295 | 11,428 | 0 | 0.026 | 2026-10-20 |
| out_paragraphs_v1 | qwen/qwen3.7-max | 15 | 22,701 | 12,569 | 0 | 0.075 | 2026-10-20 |
| out_paragraphs_v1 | google/gemini-3.8-flash | 15 | 22,804 | 13,562 | 0 | 0.068 | 2026-10-20 |
| out_paragraphs_v1 | moonshotai/kimi-k2.6 | 15 | 21,930 | 16,036 | 0 | 0.054 | 2026-10-20 |
| out_paragraphs_v1 | mistralai/mistral-large-4-0 | 15 | 22,077 | 15,015 | 0 | 0.044 | 2026-10-20 |
| out_paragraphs_v1 | deepseek/deepseek-v4-pro | 15 | 22,236 | 12,134 | 0 | 0.034 | 2026-10-20 |
| out_qwen | qwen/qwen3.7-max | 254 | 1,974,466 | 349,948 | 0 | 3.034 | 2026-10-16 |

| folder | cost $ |
|---|---|
| out_paragraphs | 7.33 |
| out_qwen | 3.03 |
| out_kimi | 2.79 |
| out_gemini | 2.74 |
| out_mistral | 1.69 |
| out_deepseek | 1.19 |
| out_paragraphs_v1 | 0.28 |

Ollama calls (no per-call cost reported):

- out: gpt-oss:120b, 266 calls
- out_2: gpt-oss:120b, 378 calls

## Reference prices (per million tokens, OpenRouter, 2026-10-30)

| model | in | out |
|---|---|---|
| anthropic/claude-opus-5.5 | 4.00 | 20.00 |
| anthropic/claude-fable-5.1 | 10.00 | 50.00 |
| openai/gpt-6-astra | 10.00 | 50.00 |
| openai/gpt-5.5 | 5.00 | 30.00 |
| anthropic/claude-sonnet-5.5 (judge) | 2.00 | 10.00 |
| openai/gpt-5.4 (judge) | 2.50 | 15.00 |
| deepseek/deepseek-v4-pro | 0.82 | 1.63 |
| google/gemini-3.8-flash | 0.83 | 4.12 |
| moonshotai/kimi-k2.6 | 0.65 | 3.41 |
| qwen/qwen3.7-max | 1.48 | 4.42 |
| mistralai/mistral-large-4-0 | 0.68 | 2.09 |
