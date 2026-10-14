#import "@preview/resume-ng:1.0.0": *

#show: body => {
  set document(title: "Resume", author: "向嘉豪")
  set page(margin: (x: 1cm, y: 1cm))
  set text(font: "Source Han Serif", lang: "zh", region: "cn")

  grid(
    columns: (1fr, 20mm),
    column-gutter: 6mm,
    align: left + horizon,
    [
      #text(font: "Source Han Sans", weight: 700, size: 22pt)[向嘉豪]
      #v(2pt)
      #text(size: 9.5pt)[
        出生年月：2000.10 #h(1em)
        +86 130-8728-6239 #h(1em)
        #link("mailto:934622645@qq.com", "934622645@qq.com") \
        #link("https://github.com/isomoes", "github.com/isomoes")
      ]
    ],
    image("image.jpg", width: 20mm, height: 27mm, fit: "cover"),
  )

  set par(justify: true)
  body
}

// Main content typography.
#set text(
  font: "Source Han Serif", // Primary Chinese serif font for main content
  lang: "zh",
  region: "cn",
)

#show heading: set text(
  font: "Source Han Sans", // Sans-serif font for headings
)

#resume-section("教育经历")
#resume-education(
  university: "湘潭大学",
  degree: "博士研究生",
  school: "计算机科学与技术，计算机学院",
  start: "2026-09",
  end: "至今",
)[

]
#resume-education(
  university: "衡阳师范学院",
  degree: "硕士研究生",
  school: "电子信息，计算机学院",
  start: "2023-09",
  end: "2026-06",
)[

]

#resume-education(
  university: "长沙学院",
  degree: "工学学士",
  school: "机械设计制造及其自动化，机电工程学院",
  start: "2017-09",
  end: "2021-06",
)[
]

#resume-section[技术能力]
- *语言*: 常用 C, Python, LaTeX； 熟悉 Verilog, Assembly, #text(fill: gray, "Rust")；了解 C++, Java, #text(fill: gray, "TypeScript")。
- *工作流*: Linux, Shell, NeoVim, VsCode, Git, GitHub。

#resume-section[论文发表#footnote[修改: #datetime.today().display()]]

#block[
  #set text(size: 12pt)
  #set par(justify: false, leading: 0.55em)
  #set enum(numbering: "[1]", spacing: 7pt)

  + *XIANG J*, LI L. Low-Latency Implementation of Bitsliced SPN-Cipher on IoT Processors[J]. IEEE Transactions on Computers, 2025, 75(2): 642–652.（中科院二区，*CCF-A*）
  + *XIANG J*, LI L. Thread-Adaptive: High-Throughput Parallel Architectures of SLH-DSA on GPUs[J]. IEEE Computer Architecture Letters, 2025.（中科院四区）
  + *XIANG J*, LI L. Efficient implementations of CRAFT cipher for Internet of Things[J]. Computers and Electrical Engineering, 2024, 116: 109168.（中科院三区）
  + YUE G, JIAO G, LI C, *XIANG J*. When CNN meet with ViT: decision-level feature fusion for camouflaged object detection[J]. The Visual Computer, 2025, 41(6): 3957–3972.（中科院三区，*CCF-C*）
  + YUE G, JIAO G, *XIANG J*. Semi-supervised iterative learning network for camouflaged object detection[C]\/\/ICASSP 2025 — IEEE International Conference on Acoustics, Speech and Signal Processing. 2025.（*CCF-B*）
  + YUE X, LI L, LI Q, *XIANG J*, HU Z. QLW: a lightweight block cipher with high diffusion[J]. The Journal of Supercomputing, 2025, 81(1): 224.（中科院四区，*CCF-C*）
  + XIA S, LI L, OU Y, *XIANG J*. Optimizing label correlation in deep learning-based side-channel analysis[J]. Microelectronics Journal, 2025, 162: 106721.（中科院三区）
  + DENG L, LI L, OU Y, *XIANG J*, XIA S. Tripm: a multi-label deep learning SCA model for multi-byte attacks[J]. International Journal of Machine Learning and Cybernetics, 2025, 16(7): 4945–4960.（中科院四区）
  + DENG L, LI L, *XIANG J*. KD-SCA: Improving Lightweight CNN Model Profiling Side-Channel Analysis with Knowledge Distillation[J]. IEEE Transactions on Computer-Aided Design of Integrated Circuits and Systems, 2025.（中科院三区，*CCF-A*）
]

#resume-section[项目经历]

#resume-project(
  title: "湖南省研究生科研创新项目《轻量级分组密码的软硬件优化研究与实现》",
  duty: "主持",
  start: "2024",
  end: "2025",
)[
]
