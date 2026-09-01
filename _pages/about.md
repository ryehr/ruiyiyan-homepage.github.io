---
permalink: /
title: ""
excerpt: ""
author_profile: true
redirect_from: 
  - /about/
  - /about.html
---

{% if site.google_scholar_stats_use_cdn %}
{% assign gsDataBaseUrl = "https://cdn.jsdelivr.net/gh/" | append: site.repository | append: "@" %}
{% else %}
{% assign gsDataBaseUrl = "https://raw.githubusercontent.com/" | append: site.repository | append: "/" %}
{% endif %}
{% assign url = gsDataBaseUrl | append: "google-scholar-stats/gs_data_shieldsio.json" %}

<span class='anchor' id='about-me'></span>

I am a Ph.D. student at the [Language Media Processing Lab](https://nlp.ist.i.kyoto-u.ac.jp/EN/), Graduate School of Informatics, Kyoto University, advised by Associate Professor Yugo Murawaki.

My earlier work is on the security of text that language models generate — **linguistic steganography and watermarking**, where I looked at how provable guarantees hold up once a message has to survive a real channel, and at what the tokenizer quietly breaks along the way. I also [surveyed that field](https://arxiv.org/abs/2608.29077).

My current focus is **memory in large language models and the agents built on them**. Long-term memory is still the weak point: a model accumulates history faster than it can organize it, and what it has stored degrades as it keeps being updated. I am interested in managing that from the inside — using signals the model already exposes to decide what is worth keeping, how it should be arranged, and what can be forgotten.

I am supported by a [JSPS Research Fellowship for Young Scientists (DC2)](https://www.jsps.go.jp/english/e-pd/index.html) and the Kyoto University DoGS SPRING Program. You can find my work on <a href='https://scholar.google.com/citations?user=Wfkf1S4AAAAJ'>Google Scholar</a> <a href='https://scholar.google.com/citations?user=Wfkf1S4AAAAJ'><img src="https://img.shields.io/endpoint?url={{ url | url_encode }}&logo=Google%20Scholar&labelColor=f6f6f6&color=9cf&style=flat&label=citations"></a>.

I am always happy to talk about steganography, watermarking, or agent memory — feel free to reach out by [email](mailto:ruiyi@nlp.ist.i.kyoto-u.ac.jp).

# 🔥 News
- *2026.08*: &nbsp;🎉 Two papers accepted to **EMNLP 2026**: *MemDefrag* and our survey on linguistic steganography.
- *2026.04*: &nbsp;🎉 Two papers accepted to **ACL 2026**: *Efficient Provably Secure Linguistic Steganography via Range Coding* and *Anchored Sliding Window*.
- *2025.12*: &nbsp;💻 Started a research internship at **Tencent (Tokyo)**, working on memory for LLM agents.
- *2025.09*: &nbsp;🎖 Selected for the **JSPS Research Fellowship for Young Scientists (DC2)** (term: 2026.04 – 2028.03).
- *2025.08*: &nbsp;🎉 One paper accepted to **EMNLP 2025** on tokenization inconsistency in steganography and watermarking.
- *2024.10*: &nbsp;🎓 Started my Ph.D. at **Kyoto University** as a DoGS SPRING Fellow.

# 📝 Publications

<sup>\*</sup> All papers below are first-author. See [Google Scholar](https://scholar.google.com/citations?user=Wfkf1S4AAAAJ) for the complete list.

- **MemDefrag: Latent Memory Defragmentation for Large Language Models**, **Ruiyi Yan**, Zhuoyuan Mao, Yiwen Guo, **EMNLP 2026** \| [<i class="ai ai-arxiv"></i> **arXiv**](https://arxiv.org/abs/2607.05969) \| [<i class="fab fa-github"></i> **Code**](https://github.com/ryehr/MemDefrag)

- **A Comprehensive Survey on Linguistic Steganography: Methods, Countermeasures, Evaluation, and Challenges**, **Ruiyi Yan**, Chenhui Chu, Zhongliang Yang, Yugo Murawaki, **EMNLP 2026** \| [<i class="ai ai-arxiv"></i> **arXiv**](https://arxiv.org/abs/2608.29077)

- **Efficient Provably Secure Linguistic Steganography via Range Coding**, **Ruiyi Yan**, Yugo Murawaki, **ACL 2026**, pp. 890–907 \| [<i class="ai ai-open-access"></i> **Paper**](https://aclanthology.org/2026.acl-long.39/) \| [<i class="ai ai-arxiv"></i> **arXiv**](https://arxiv.org/abs/2604.08052) \| [<i class="fab fa-github"></i> **Code**](https://github.com/ryehr/RRC_steganography)

- **Anchored Sliding Window: Toward Robust and Imperceptible Linguistic Steganography**, **Ruiyi Yan**, Shiao Meng, Yugo Murawaki, **ACL 2026**, pp. 993–1012 \| [<i class="ai ai-open-access"></i> **Paper**](https://aclanthology.org/2026.acl-long.44/) \| [<i class="ai ai-arxiv"></i> **arXiv**](https://arxiv.org/abs/2604.09066) \| [<i class="fab fa-github"></i> **Code**](https://github.com/ryehr/ASW_steganography)

- **Addressing Tokenization Inconsistency in Steganography and Watermarking Based on Large Language Models**, **Ruiyi Yan**, Yugo Murawaki, **EMNLP 2025** \| [<i class="ai ai-open-access"></i> **Paper**](https://aclanthology.org/2025.emnlp-main.361/) \| [<i class="fab fa-github"></i> **Code**](https://github.com/ryehr/Consistency)

- **TokenFree: A Tokenization-Free Generative Linguistic Steganographic Approach with Enhanced Imperceptibility**, **Ruiyi Yan**, Tian Song, Yating Yang, **IEEE SMC 2024**, pp. 449–455 \| [<i class="ai ai-ieee"></i> **Paper**](https://ieeexplore.ieee.org/document/10831652) \| [<i class="fab fa-github"></i> **Code**](https://github.com/ryehr/TokenFree)

- **A Near-Imperceptible Disambiguating Approach via Verification for Generative Linguistic Steganography**, **Ruiyi Yan**, Tian Song, Yating Yang, **IEEE SMC 2024**, pp. 1638–1643 \| [<i class="ai ai-ieee"></i> **Paper**](https://ieeexplore.ieee.org/document/10831370)

- **A Secure and Disambiguating Approach for Generative Linguistic Steganography**, **Ruiyi Yan**, Yating Yang, Tian Song, **IEEE Signal Processing Letters**, vol. 30, pp. 1047–1051, 2023 \| [<i class="ai ai-ieee"></i> **Paper**](https://doi.org/10.1109/LSP.2023.3302749) \| [<i class="fab fa-github"></i> **Code**](https://github.com/ryehr/MWIS-disambiguation)

## Preprints and Manuscripts under Review

- **HiTMS: A High-Throughput Multi-Stream Linguistic Steganography Framework**, **Ruiyi Yan**, Zhongliang Yang, Yugo Murawaki, *under review* \| [<i class="ai ai-arxiv"></i> **arXiv**](https://arxiv.org/abs/2607.23597) \| [<i class="fab fa-github"></i> **Code**](https://github.com/ryehr/HiTMS_steganography)

# 🎖 Honors and Awards
- *2026.04 – 2028.03*, JSPS Research Fellowship for Young Scientists (DC2), Japan Society for the Promotion of Science.
- *2024.10 – 2027.09*, DoGS Fellow, Kyoto University DoGS SPRING Program.

# 📖 Educations
- *2024.10 – present*, Ph.D. student in Informatics (Intelligence Science and Technology), Kyoto University, Kyoto, Japan.
- *2021.09 – 2024.06*, M.S. in Cyberspace Security, Beijing Institute of Technology, Beijing, China.
- *2017.09 – 2021.06*, B.E. in Network Engineering, University of Electronic Science and Technology of China, Chengdu, China.

# 💻 Research Experience
- *2025.12 – present*, Research Intern, **Tencent**, Tokyo, Japan. Memory of LLM agents.
- *2024.10 – present*, Ph.D. Research, **Kyoto University**, Kyoto, Japan. Steganography and watermarking based on LLMs.

# 🛠 Skills
- **Programming**: Python, PyTorch, C.
- **Languages**: Chinese (Mandarin, native), English (CEFR C1), Japanese (studying, around JLPT N3–N2).
