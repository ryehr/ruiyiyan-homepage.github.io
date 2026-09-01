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

My current focus is **memory in large language models and the agents built on them**. Long-term memory is still the weak point: a model accumulates history faster than it can organize it, and what it has stored degrades as it keeps being updated. I am interested in managing that from the inside — using signals the model already exposes to decide what is worth keeping, how it should be arranged, and what can be forgotten — rather than bolting external machinery on top.

I am supported by a [JSPS Research Fellowship for Young Scientists (DC2)](https://www.jsps.go.jp/english/e-pd/index.html) and the Kyoto University DoGS SPRING Program. You can find my work on <a href='https://scholar.google.com/citations?user=Wfkf1S4AAAAJ'>Google Scholar</a> <a href='https://scholar.google.com/citations?user=Wfkf1S4AAAAJ'><img src="https://img.shields.io/endpoint?url={{ url | url_encode }}&logo=Google%20Scholar&labelColor=f6f6f6&color=9cf&style=flat&label=citations"></a>.

I am always happy to talk about steganography, watermarking, or agent memory — feel free to reach out by [email](mailto:ruiyi@nlp.ist.i.kyoto-u.ac.jp).

# 🔥 News
- *2026.08*: &nbsp;🎉 Two papers accepted to **EMNLP 2026**: *MemDefrag* and our survey on linguistic steganography.
- *2026.04*: &nbsp;🎉 Two papers accepted to **ACL 2026**: *Efficient Provably Secure Linguistic Steganography via Range Coding* and *Anchored Sliding Window*.
- *2026.04*: &nbsp;🎖 Awarded the **JSPS Research Fellowship for Young Scientists (DC2)**, 2026.04 – 2028.03.
- *2025.12*: &nbsp;💻 Started working with **Tencent (Tokyo)** on memory for LLM agents.
- *2025.08*: &nbsp;🎉 One paper accepted to **EMNLP 2025** on tokenization inconsistency in steganography and watermarking.
- *2024.10*: &nbsp;🎓 Started my Ph.D. at **Kyoto University** as a DoGS SPRING Fellow.

# 📝 Publications

<sup>\*</sup> All papers below are first-author. See [Google Scholar](https://scholar.google.com/citations?user=Wfkf1S4AAAAJ) for the complete list.

<!-- TODO: swap images/500x300.png for a real teaser figure from each paper (drop the file into images/). -->

<div class='paper-box'><div class='paper-box-image'><div><div class="badge">EMNLP 2026</div><img src='images/500x300.png' alt="MemDefrag" width="100%"></div></div>
<div class='paper-box-text' markdown="1">

[MemDefrag: Latent Memory Defragmentation for Large Language Models](https://arxiv.org/abs/2607.05969)

**Ruiyi Yan**, Zhuoyuan Mao, Yiwen Guo

*Proceedings of the 2026 Conference on Empirical Methods in Natural Language Processing (EMNLP 2026)*

[<i class="ai ai-arxiv"></i> **Paper**](https://arxiv.org/abs/2607.05969) \| [<i class="fab fa-github"></i> **Code**](https://github.com/ryehr/MemDefrag)

- Treats an LLM's accumulated latent memory as a fragmented store and reorganizes it, recovering capacity that is otherwise lost to fragmentation.
</div>
</div>

<div class='paper-box'><div class='paper-box-image'><div><div class="badge">ACL 2026</div><img src='images/500x300.png' alt="Range Coding" width="100%"></div></div>
<div class='paper-box-text' markdown="1">

[Efficient Provably Secure Linguistic Steganography via Range Coding](https://arxiv.org/abs/2604.08052)

**Ruiyi Yan**, Yugo Murawaki

*Proceedings of the 64th Annual Meeting of the Association for Computational Linguistics (ACL 2026)*

[<i class="ai ai-arxiv"></i> **Paper**](https://arxiv.org/abs/2604.08052) \| [<i class="fab fa-github"></i> **Code**](https://github.com/ryehr/RRC_steganography)

- Achieves provable security for generative linguistic steganography while keeping encoding and decoding efficient, using range coding over the model's output distribution.
</div>
</div>

<div class='paper-box'><div class='paper-box-image'><div><div class="badge">EMNLP 2026</div><img src='images/500x300.png' alt="Steganography Survey" width="100%"></div></div>
<div class='paper-box-text' markdown="1">

[A Comprehensive Survey on Linguistic Steganography: Methods, Countermeasures, Evaluation, and Challenges](https://arxiv.org/abs/2608.29077)

**Ruiyi Yan**, Chenhui Chu, Zhongliang Yang, Yugo Murawaki

*Proceedings of the 2026 Conference on Empirical Methods in Natural Language Processing (EMNLP 2026)*

[<i class="ai ai-arxiv"></i> **Paper**](https://arxiv.org/abs/2608.29077)

- A systematic account of how large language models reshaped linguistic steganography, covering embedding methods, steganalysis countermeasures, evaluation protocols, and open problems.
</div>
</div>

- [Anchored Sliding Window: Toward Robust and Imperceptible Linguistic Steganography](https://arxiv.org/abs/2604.09066), **Ruiyi Yan**, Shiao Meng, Yugo Murawaki, **ACL 2026** \| [<i class="ai ai-arxiv"></i> **Paper**](https://arxiv.org/abs/2604.09066) \| [<i class="fab fa-github"></i> **Code**](https://github.com/ryehr/ASW_steganography)

- [Addressing Tokenization Inconsistency in Steganography and Watermarking Based on Large Language Models](https://aclanthology.org/2025.emnlp-main.361/), **Ruiyi Yan**, Yugo Murawaki, **EMNLP 2025** \| [<i class="ai ai-open-access"></i> **Paper**](https://aclanthology.org/2025.emnlp-main.361/) \| [<i class="fab fa-github"></i> **Code**](https://github.com/ryehr/Consistency)

- [TokenFree: A Tokenization-Free Generative Linguistic Steganographic Approach with Enhanced Imperceptibility](https://ieeexplore.ieee.org/document/10831652), **Ruiyi Yan**, Tian Song, Yating Yang, **IEEE SMC 2024**, pp. 449–455 \| [<i class="ai ai-ieee"></i> **Paper**](https://ieeexplore.ieee.org/document/10831652) \| [<i class="fab fa-github"></i> **Code**](https://github.com/ryehr/TokenFree)

- [A Near-Imperceptible Disambiguating Approach via Verification for Generative Linguistic Steganography](https://ieeexplore.ieee.org/document/10831370), **Ruiyi Yan**, Tian Song, Yating Yang, **IEEE SMC 2024**, pp. 1638–1643 \| [<i class="ai ai-ieee"></i> **Paper**](https://ieeexplore.ieee.org/document/10831370)

- [A Secure and Disambiguating Approach for Generative Linguistic Steganography](https://doi.org/10.1109/LSP.2023.3302749), **Ruiyi Yan**, Yating Yang, Tian Song, **IEEE Signal Processing Letters**, vol. 30, pp. 1047–1051, 2023 \| [<i class="ai ai-ieee"></i> **Paper**](https://doi.org/10.1109/LSP.2023.3302749) \| [<i class="fab fa-github"></i> **Code**](https://github.com/ryehr/MWIS-disambiguation)

## Preprints and Manuscripts under Review

- [HiTMS: A High-Throughput Multi-Stream Linguistic Steganography Framework](https://arxiv.org/abs/2607.23597), **Ruiyi Yan**, Zhongliang Yang, Yugo Murawaki, *under review* \| [<i class="ai ai-arxiv"></i> **Paper**](https://arxiv.org/abs/2607.23597) \| [<i class="fab fa-github"></i> **Code**](https://github.com/ryehr/HiTMS_steganography)

# 🎖 Honors and Awards
- *2026.04 – 2028.03*, JSPS Research Fellowship for Young Scientists (DC2), Japan Society for the Promotion of Science.
- *2024.10 – 2027.09*, DoGS Fellow, Kyoto University DoGS SPRING Program.

# 📖 Educations
- *2024.10 – present*, Ph.D. student in Informatics (Intelligence Science and Technology), Kyoto University, Kyoto, Japan.
- *2021.09 – 2024.06*, M.S. in Cyberspace Security, Beijing Institute of Technology, Beijing, China.
- *2017.09 – 2021.06*, B.E. in Network Engineering, University of Electronic Science and Technology of China, Chengdu, China.

# 💻 Research Experience
- *2025.12 – present*, **Tencent**, Tokyo, Japan. Memory of LLM agents.
- *2024.10 – present*, **Kyoto University**, Kyoto, Japan. Steganography and watermarking based on LLMs.

# 🛠 Skills
- **Programming**: Python, PyTorch, C.
- **Languages**: Chinese (Mandarin, native), English (CEFR C1), Japanese (studying, around JLPT N3–N2).
