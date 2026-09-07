#set page(
  paper: "us-letter",
  margin: (x: 1.5cm, top: 1.1cm, bottom: 1.1cm),
)

#set text(
  font: "Fira Sans",
  size: 8.7pt,
  fill: rgb("#1f2937"),
  lang: "en"
)

#set par(justify: true, leading: 0.45em)

// Color Palette
#let primary = rgb("#1e3a8a")    // Deep Navy
#let secondary = rgb("#2563eb")  // Accent Blue
#let dark = rgb("#111827")       // Dark Neutral
#let gray = rgb("#4b5563")       // Muted Text

// Custom section header
#let section_heading(title) = {
  v(0.3em)
  text(weight: "bold", size: 10pt, fill: primary)[#upper(title)]
  v(-0.45em)
  line(length: 100%, stroke: 1.1pt + primary)
  v(0.1em)
}

// Experience entry
#let exp_entry(company, role, dates, location, bullets) = {
  block(width: 100%, breakable: false)[
    #grid(
      columns: (1fr, auto),
      [
        #text(weight: "bold", size: 9.2pt, fill: dark)[#role]
        #h(4pt) #text(fill: secondary)[|] #h(4pt)
        #text(weight: "medium", fill: primary)[#company]
      ],
      [
        #text(size: 8.3pt, fill: gray, style: "italic")[#dates #if location != "" [• #location]]
      ]
    )
    #v(-0.35em)
    #list(
      marker: [•],
      body-indent: 0.35em,
      spacing: 0.28em,
      ..bullets.map(b => text(size: 8.5pt)[#b])
    )
  ]
  v(0.05em)
}

// Header
#align(center)[
  #text(size: 17pt, weight: "bold", fill: primary)[MÁXIMO CLEMENTE DESIDERIO RETAMAL ROJAS] \
  #v(0.12em)
  #text(size: 10pt, weight: "medium", fill: secondary)[Computer Science Engineering, Degree Candidate | Universidad de Chile] \
  #v(0.2em)
  #text(size: 8.3pt, fill: dark)[
    Las Condes, Santiago, Chile #h(6pt) | #h(6pt)
    +56 9 7382 1580 #h(6pt) | #h(6pt)
    #link("mailto:maximo.retamal.r@gmail.com")[maximo.retamal.r\@gmail.com] #h(6pt) | #h(6pt)
    #link("https://github.com/maximo1400")[github.com/maximo1400]
  ]
]

#v(0.05em)

// Profile
#section_heading("Professional Profile")
Computer Science Engineering degree candidate at Universidad de Chile, specializing in software engineering, Data Science, Machine Learning, and distributed architectures. Proven experience building real-time data pipelines, integrating Affective Computing and Brain-Computer Interfaces (BCI) into 3D environments (Unity/Python), full-stack web development (Django/React/Vue.js), and cloud deployments (AWS, Docker). Passionate about technology, cybersecurity, and solving complex engineering challenges.

// Experience
#section_heading("Professional Experience & Projects")

#exp_entry(
  "Universidad de Chile",
  "Bachelor’s Thesis / Capstone Engineering Project",
  "August 2025 – 2026",
  "Santiago, Chile",
  (
    [Designed and implemented a Python pipeline for real-time ingestion and filtering of electroencephalographic (EEG - Emotiv EPOC+) signals and processing of biometric datasets (DREAMER).],
    [Extracted frequency-domain features (Band Power, FFT, Butterworth IIR filters, DC removal) and trained ML models (SVM, Random Forest) to classify emotional states (Valence & Arousal).],
    [Developed temporal smoothing modules (circular buffers, EMA) and asynchronous streaming via TCP sockets to Unity 3D (C\#), dynamically adapting the graphical environment (audio, lighting, and interactive guidance).]
  )
)

#exp_entry(
  "Universidad de Chile",
  "BCI & Machine Learning Research Project",
  "2023 – 2024",
  "Santiago, Chile",
  (
    [Developed a multi-threaded Python desktop application (Tkinter, Emotiv Cortex API) for real-time EEG telemetry acquisition (Emotiv EPOC+) and synchronized visual stimuli for mental command training.],
    [Designed experimental protocols and conducted empirical trials with 30 participants, capturing and structuring brainwave datasets across 7 distinct mental commands.],
    [Built non-linear dimensionality reduction pipelines using Autoencoders (Deep Learning) and PCA, evaluating clustering techniques to accelerate cross-user BCI transfer learning.]
  )
)

#exp_entry(
  "Perceptron SpA",
  "Software & Data Science Engineering Intern",
  "December 2022 – January 2023",
  "Santiago, Chile",
  (
    [Developed a Django/React web dashboard for production data management and predictive weight/slaughter models (Agrosuper), implementing asynchronous task queue tracking in backend and database.],
    [Built Python data transformation pipelines (hierarchical structures & dictionaries) in collaboration with mathematical engineers to feed linear optimization models for raw material recipes (*Cecinamix*).],
    [Refactored price elasticity calculation engines (*Revenew*) to compute store-branch-level metrics, and managed cloud deployments on AWS (EC2, Route 53), Docker, and Nginx.]
  )
)

#exp_entry(
  "Fundación Arturo López Pérez (FALP)",
  "Frontend Developer",
  "March 2022 – July 2022",
  "Santiago, Chile",
  (
    [Developed a responsive, component-based web frontend in Vue.js for an educational and community support platform for breast cancer patients.],
    [Implemented multimedia modules for streaming and publishing educational blogs, videos, and audio content, complete with an interactive commenting system.],
    [Built direct messaging interfaces and inquiry submission flows connecting patients with clinical case managers and medical staff for healthcare guidance.]
  )
)

#exp_entry(
  "Wisetrack Corp",
  "Software Engineering Intern",
  "January 2020 – March 2020",
  "Santiago, Chile",
  (
    [Translated SQL Server stored procedures to PostgreSQL for cleaning and structuring telemetry alerts in the *Third Eye* driver safety platform.],
    [Programmed a Python ETL daemon on a Linux VM to extract, transform, and replicate telemetry data into PostgreSQL and MySQL every 10 seconds.],
    [Stabilized and modularized facial recognition microservices (*MOBICUA*), integrated AWS Rekognition, evaluated IBM Watson AI services, and built analytics dashboards in Qlik Sense.]
  )
)

// Education
#section_heading("Education")
#grid(
  columns: (1fr, auto),
  [
    #text(weight: "bold", size: 9.2pt, fill: dark)[Bachelor of Science & Engineering Degree in Computer Science] \
    #text(size: 8.5pt, fill: primary)[Universidad de Chile — Faculty of Physical and Mathematical Sciences (FCFM)]
  ],
  [
    #text(size: 8.3pt, fill: gray, style: "italic")[2016 – 2026 (Degree Candidate) • Santiago, Chile]
  ]
)

// Skills
#section_heading("Technical Skills")
#grid(
  columns: (auto, 1fr),
  column-gutter: 0.8em,
  row-gutter: 0.35em,
  [*Programming Languages:*], [Python, SQL, C\#, JavaScript, C, Java, HTML/CSS.],
  [*ML & Data Science:*], [Pandas, NumPy, BCI/EEG, SVM, Random Forest, Autoencoders, PCA, Clustering.],
  [*Web & 3D Development:*], [Vue.js, Django, React, TCP Sockets, Unity 3D (C\#), Unity 6, Tailwind CSS.],
  [*Databases:*], [PostgreSQL, MySQL, SQL Server, SQLite, MongoDB.],
  [*Cloud & DevOps:*], [AWS (EC2, Route 53, Rekognition), Docker, Nginx, Linux (Daemons, Shell), Windows, Raspberry Pi.],
  [*Languages:*], [Spanish (Native), English (Advanced).]
)
