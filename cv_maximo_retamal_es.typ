#set page(
  paper: "us-letter",
  margin: (x: 1.5cm, top: 1.1cm, bottom: 1.1cm),
)

#set text(
  font: "Fira Sans",
  size: 8.7pt,
  fill: rgb("#1f2937"),
  lang: "es",
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
      ],
    )
    #v(-0.35em)
    #list(
      marker: [•],
      body-indent: 0.35em,
      spacing: 0.28em,
      ..bullets.map(b => text(size: 8.5pt)[#b]),
    )
  ]
  v(0.05em)
}

// Header
#align(center)[
  #text(size: 17pt, weight: "bold", fill: primary)[MÁXIMO CLEMENTE DESIDERIO RETAMAL ROJAS] \
  #v(0.12em)
  #text(
    size: 10pt,
    weight: "medium",
    fill: secondary,
  )[Ingeniero Civil en Computación | Universidad de Chile] \
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
#section_heading("Perfil Profesional")
Ingeniero Civil en Computación titulado de la Universidad de Chile, con especialización en desarrollo de software, Data Science, Machine Learning y arquitecturas distribuidas. Experiencia en la construcción de pipelines de datos en tiempo real, integración de Computación Afectiva e interfaces cerebro-computador (BCI) en entornos 3D (Unity/Python), desarrollo web full-stack (Django/Vue.js) y despliegue en la nube (AWS, Docker). Entre mis áreas de interés destacan la ingeniería de software, la ciberseguridad y la interacción humano-computador, con pasión por la resolución de problemas complejos.

// Experience
#section_heading("Experiencia Profesional y Proyectos")

#exp_entry(
  "Universidad de Chile",
  "Memoria de Título / Proyecto de Ingeniería",
  "Agosto 2025 – 2026",
  "Santiago",
  (
    [Diseño e implementación de un pipeline en Python para ingesta y filtrado en tiempo real de señales electroencefalográficas (EEG - Emotiv EPOC+) y procesamiento de datasets biométricos (DREAMER).],
    [Extracción de características frecuenciales (Band Power, FFT, filtros Butterworth IIR, supresión DC) y entrenamiento de modelos ML (SVM, Random Forest) para clasificar estados emocionales (Valencia y Activación).],
    [Desarrollo de módulos de suavizado temporal (buffers circulares, EMA) y transmisión asíncrona vía Sockets TCP a Unity 3D (C\#), adaptando dinámicamente el entorno gráfico (audio, iluminación y asistencia interactiva).],
  ),
)

#exp_entry(
  "Universidad de Chile",
  "Proyecto de Investigación — BCI & Machine Learning",
  "2023 – 2024",
  "Santiago",
  (
    [Desarrollo de una aplicación de escritorio multihilo en Python (Tkinter, Cortex API) para adquisición en tiempo real de telemetría EEG (Emotiv EPOC+) y presentación sincronizada de estímulos visuales para entrenamiento de comandos mentales.],
    [Diseño de protocolo experimental y conducción de pruebas empíricas con 30 participantes, capturando y estructurando datasets de señales cerebrales para 7 comandos mentales distintos.],
    [Implementación de pipelines de reducción de dimensionalidad con Autoencoders (Deep Learning) y PCA, evaluando técnicas de clustering para acelerar el entrenamiento cruzado de dispositivos BCI entre usuarios.],
  ),
)

#exp_entry(
  "Perceptron SpA",
  "Práctica II — Software & Data Science",
  "Diciembre 2022 – Enero 2023",
  "Santiago",
  (
    [Desarrollo de dashboard web en Django/React para gestión de datos productivos y seguimiento de modelos predictivos de pesaje/faenamiento (Agrosuper), implementando colas de tareas asíncronas en backend y BD.],
    [Construcción de pipelines de datos en Python (estructuras jerárquicas y diccionarios) junto a ingenieros matemáticos para alimentar modelos de optimización lineal de recetas de materias primas (*Cecinamix*).],
    [Refactorización del motor de cálculo de elasticidades de precio (*Revenew*) a nivel sucursal y gestión de despliegues en AWS (EC2, Route 53), Docker y Nginx.],
  ),
)

#exp_entry(
  "Fundación Arturo López Pérez (FALP)",
  "Desarrollador Frontend",
  "Marzo 2022 – Julio 2022",
  "Santiago",
  (
    [Desarrollo de interfaz web reactiva y componentes modulares en Vue.js para una plataforma informativa y de comunidad de apoyo a pacientes con cáncer de mama.],
    [Implementación de módulos multimedia para visualización y reproducción de blogs, videos y audios educativos, integrando un sistema interactivo de comentarios.],
    [Integración de canales de comunicación directa y mensajería orientados a la resolución de dudas asistenciales con personal médico y gestores clínicos de la fundación.],
  ),
)

#exp_entry(
  "Wisetrack Corp",
  "Práctica I — Software & Bases de Datos",
  "Enero 2020 – Marzo 2020",
  "Santiago",
  (
    [Traducción de procedimientos almacenados de SQL Server a PostgreSQL para limpieza y estructuración de alertas telemáticas del sistema de seguridad de conductores *Tercer Ojo*.],
    [Desarrollo de un demonio ETL en Python sobre VM Linux para extracción, transformación y replicación de datos telemáticos hacia PostgreSQL y MySQL cada 10 segundos.],
    [Estabilización y modularización de microservicios de reconocimiento facial (*MOBICUA*), evaluación de servicios de IBM Watson AI y construcción de dashboards analíticos en Qlik Sense.],
  ),
)

// Education
#section_heading("Educación")
#grid(
  columns: (1fr, auto),
  [
    #text(weight: "bold", size: 9.2pt, fill: dark)[Ingeniería Civil en Computación] #h(4pt) #text(
      size: 8.5pt,
      weight: "medium",
      fill: secondary,
    )[(Distinción Máxima)] \
    #text(size: 8.5pt, fill: primary)[Universidad de Chile — Facultad de Ciencias Físicas y Matemáticas (FCFM)]
  ],
  [
    #text(size: 8.3pt, fill: gray, style: "italic")[2016 - 2026 • Santiago]
  ],
)

// Skills
#section_heading("Habilidades Técnicas")
#grid(
  columns: (auto, 1fr),
  column-gutter: 0.8em,
  row-gutter: 0.35em,
  [*Lenguajes:*], [Python, SQL, C\#, JavaScript, C, Java, HTML/CSS.],
  [*ML & Data Science:*], [Pandas, NumPy, BCI/EEG, SVM, Random Forest, Autoencoders, PCA, Clustering.],
  [*Web & 3D:*], [Vue.js, Django, Sockets TCP, Unity 3D (C\#), Unity 6, Tailwind CSS.],
  [*Bases de Datos:*], [PostgreSQL, MySQL, SQL Server, SQLite, MongoDB.],
  [*Cloud & DevOps:*], [AWS (EC2, Route 53), Docker, Nginx, Linux (Daemons, Shell), Windows, Raspberry Pi.],
  [*Idiomas:*], [Español (Nativo), Inglés (Avanzado).],
)
