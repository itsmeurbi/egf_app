# Users
karen = User.create(first_name: 'Karen', last_name: 'Ventura', email: 'karen@michelada.io')
chuy = User.create(first_name: 'Jesus', last_name: 'Figueroa', email: 'jesus@michelada.io')

# Categories
building = Category.create(name: 'building', description: 'Desarrollo de características de producción de alta calidad e infraestructura de soporte.' \
                                                          'Aprovechando la empatía para que el cliente entienda los problemas a fondo y experimente' \
                                                          'para diseñar soluciones técnicas adecuadas.')
executing = Category.create(name: 'executing', description: 'Liderazgo técnico que empodera a grupos de personas a entregar trabajo de calidad.')
supporting = Category.create(name: 'supporting', description: 'Formal servant leadership that develops team members, advocates for them, supports their well being,' \
                                                              'and ensures an environment conducive to enabling effective work. Supporting the growth of the' \
                                                              'organization by working to improve processes.')
strengthening = Category.create(name: 'strengthening', description: 'Mantener y mejorar la cultura de michelada.io. Representar a michelada externamente, haciendo' \
                                                                    'comentarios sobre los éxitos del equipo. Promover michelada como un lugar atractivo para trabajar.' \
                                                                    'Incrementar el nivel del equipo mediante la difusión de conocimientos y el desarrollo de las habilidades de los colegas.')

# Tracks
mobile = Track.create(name: 'móvil', category: building, description: 'Desarrolla experiencia en ingeniería de plataformas móviles nativas, como iOS o Android.')
frontend = Track.create(name: 'frontend', category: building, description: 'Desarrolla experiencia en tecnologías de cliente web, como HTML, CSS y JavaScript.')
server = Track.create(name: 'servidores', category: building, description: 'Desarrolla experiencia en sistemas fundamentales, como implementaciones, canalizaciones, bases de datos y Machine Learning.')
backend = Track.create(name: 'backend', category: building, description: 'Desarrolla experiencia en ingeniería del lado del servidor, utilizando tecnologías como Go, NodeJS o Ruby.')

project_managment = Track.create(name: 'manejo de proyectos', category: executing, description: 'Entrega programas de trabajo bien delimitados que cumple con las expectativas en tiempo, presupuesto y en armonía.')
communication = Track.create(name: 'comunicación', category: executing, description: 'Comparte la cantidad correcta de información, con las personas correctas, en el momento correcto y escucha efectivamente.')
craft = Track.create(name: 'arte', category: executing, description: 'Personifica y promueve prácticas para asegurar la excelencia de nuestros productos y servicios.')
initiative = Track.create(name: 'iniciativa', category: executing, description: 'Desafía el status quo y produce cambios organizacionales positivos fuera del trabajo obligatorio.')

career_development = Track.create(name: 'desarrollo de carrera', category: supporting, description: 'Provee ayuda estartegica a ingenieros para ayudarlos a construiri la carrera que ellos desean.')
org_design = Track.create(name: 'diseño organizacional', category: supporting, description: 'Define procesos y estructuras que permitan el funcionamiento y crecimiento sólido de una organización de ingenieros diversa.')
wellbeing = Track.create(name: 'bienestar', category: supporting, description: 'Apoya el bienestar emocional de el equipo en momentos difíciles y celebra cuando hay éxitos.')
accomplishment =Track.create(name: 'logros', category: supporting, description: 'Inspira excelencia en el dia a dia, maximiza el potencial y resuelve de forma efectiva problemas de rendimiento con empatía.')

mentorship = Track.create(name: 'mentoría', category: strengthening, description: 'Apoya a sus compañeros, comparte conocimiento, y desarolla al equipo más alla de las estructuras de informacion formales.')
evangelism = Track.create(name: 'evangelismo/comunidad', category: strengthening, description: 'Promueve las actividades que existen en michelada hacia el mundo exterior como un lugar atractivo e interesante para trabajar.')
recruiting = Track.create(name: 'reclutamiento', category: strengthening, description: 'Contribuye de forma activa a las decisiones de contratación, y hace todo lo posible para obtener excelentes candidatos.')
community = Track.create(name: 'cultura', category: strengthening, description: 'Construye comunidades internamente, se integra con comunicación efectiva, defiende y vive los valores de la empresa fomenta eventos recreativos para la integración de personas.')

# Milestones

milestone = Milestone.create(level: 1, track: mobile, description: 'Trabaja de manera efectiva dentro de las arquitecturas iOS o Android, siguiendo las mejores prácticas actuales.')
Milestone.create(level: 2, track: mobile, description: 'Desarrolla nuevas instancias de arquitecturas existentes, o mejoras menores a la arquitectura existente.')
Milestone.create(level: 3, track: mobile, description: 'Diseña nuevas funciones principales y demuestra una comprensión matizada de las restricciones de la plataforma móvil.')
Milestone.create(level: 4, track: mobile, description: 'Crea arquitecturas complejas y reutilizables que promueven las mejores prácticas y permiten a los ingenieros trabajar de manera más efectiva.')
Milestone.create(level: 5, track: mobile, description: 'Es un líder en la industria en ingeniería móvil o establece una dirección móvil estratégica para un equipo de ingeniería.')

Milestone.create(level: 1, track: frontend, description: 'Trabaja de manera efectiva dentro de las arquitecturas de tecnologias web establecidas, siguiendo las mejores prácticas actuales.')
Milestone.create(level: 2, track: frontend, description: 'Desarrolla nuevas instancias de arquitecturas existentes, o mejoras menores a la arquitectura existente.')
Milestone.create(level: 3, track: frontend, description: 'Diseña nuevas funciones principales y demuestra una comprensión matizada de las restricciones del navegador.')
Milestone.create(level: 4, track: frontend, description: 'Crea arquitecturas complejas y reutilizables que promueven las mejores prácticas y permiten a los ingenieros trabajar de manera más efectiva.')
Milestone.create(level: 5, track: frontend, description: 'Es un líder en la industria en tecnologias del lado del cliente o establece la dirección estratégica del tecnologias del lado del cliente para un equipo de ingeniería.')

Milestone.create(level: 1, track: server, description: 'Trabaja efectivamente dentro de las estructuras establecidas, siguiendo las mejores prácticas actuales.')
Milestone.create(level: 2, track: server, description: 'Desarrolla nuevas instancias de arquitecturas existentes, o mejoras menores a la arquitectura existente.')
Milestone.create(level: 3, track: server, description: 'Diseña sistemas independientes de complejidad moderada, o nuevas características importantes en sistemas existentes.')
Milestone.create(level: 4, track: server, description: 'Construye arquitecturas complejas y reutilizables que promueven las mejores prácticas para otros ingenieros o servicios de múltiples sistemas.')
Milestone.create(level: 5, track: server, description: 'Establece una dirección estratégica fundamental para desiciones de infraestructura técnologica.')

Milestone.create(level: 1, track: backend, description: 'Trabaja de manera efectiva dentro de los marcos establecidos del lado del servidor, siguiendo las mejores prácticas actuales.')
Milestone.create(level: 2, track: backend, description: 'Desarrolla nuevas instancias de arquitecturas existentes, o mejoras menores a la arquitectura existente.')
Milestone.create(level: 3, track: backend, description: 'Diseña sistemas independientes de complejidad moderada, o nuevas características importantes en sistemas existentes.')
Milestone.create(level: 4, track: backend, description: 'Construye arquitecturas complejas y reutilizables que promueven las mejores prácticas para otros ingenieros o servicios de múltiples sistemas.')
Milestone.create(level: 5, track: backend, description: 'Es un líder en la industria en ingeniería del lado del servidor o establece una dirección estratégica del lado del servidor para un equipo de ingeniería.')

Milestone.create(level: 1, track: project_managment, description: 'Entrega efectivamente tareas individuales.')
Milestone.create(level: 2, track: project_managment, description: 'Efectivamente entrega proyectos personales.')
Milestone.create(level: 3, track: project_managment, description: 'Maneja, liderea o se responsabiliza del desarrollo de un proyecto.')
Milestone.create(level: 4, track: project_managment, description: 'Maneja proyectos de manera efectiva con equipos grandes o con una cantidad significativa de partes interesadas.')
Milestone.create(level: 5, track: project_managment, description: 'Manages major company pushes delivered by multiple teams')

Milestone.create(level: 1, track: communication, description: 'Se comunica efectivamente con los stakeholders cuando se le requiere e incorpora la retroalimentación constructiva.')
Milestone.create(level: 2, track: communication, description: 'Se comunica con el todo el equipo apropiadamente, enfocandose en conversaciones de calidad.')
Milestone.create(level: 3, track: communication, description: 'Proactively shares information, actively solicits feedback, and facilitates communication for multiple stakeholders')
Milestone.create(level: 4, track: communication, description: 'Communicates complex ideas skillfully and with nuance, and establishes alignment within the wider organization')
Milestone.create(level: 5, track: communication, description: 'Desarrolla estrategias para mejorar la comunicacion en la organizacion.')

Milestone.create(level: 1, track: craft, description: 'Entrega constantemente trabajo de calidad.')
Milestone.create(level: 2, track: craft, description: 'Incrementa la robustez y la confiabilidad de el código, y dedica tiempo a pulir products y sistemas.')
Milestone.create(level: 3, track: craft, description: "Improves others' ability to deliver great quality work")
Milestone.create(level: 4, track: craft, description: 'Advocates for and models great quality with proactive actions, and tackles difficult and subtle system issues')
Milestone.create(level: 5, track: craft, description: 'Enables and encourages the entire organization to make quality a central part of the development process')

Milestone.create(level: 1, track: initiative, description: 'Identifica oportunidades para el cambio organizacional o mejoras en los productos.')
Milestone.create(level: 2, track: initiative, description: 'Causa cambios para impactar de manera positiva a algunos individuos o mejoras menores a un producto o servicio.')
Milestone.create(level: 3, track: initiative, description: 'Causes change to positively impact an entire team or instigates a minor feature or service')
Milestone.create(level: 4, track: initiative, description: 'Effects change that has a substantial positive impact on the engineering organization or a major product impact')
Milestone.create(level: 5, track: initiative, description: 'Effects change that has a substantial positive impact on the whole company')

Milestone.create(level: 1, track: career_development, description: 'Da una idea de cuales son tus areas de oportunidad y ayuda a identificar fortalezas y debilidades.')
Milestone.create(level: 2, track: career_development, description: 'Apoya formalmente y simpatiza con una persona y provee herramientas para ayudarlos a resolver problemas profesionales.')
Milestone.create(level: 3, track: career_development, description: 'Inspira, promueve y motiva activamente el crecimiento de un grupo de personas.')
Milestone.create(level: 4, track: career_development, description: 'Dirige las interacciones y procesos entre equipos, promueve las mejores practicas y da un ejemplo positivo.')
Milestone.create(level: 5, track: career_development, description: 'Apoya el desarrollo de una parte importante de la organización, y es ampliamente visto como un mentor profesional confiable.')

Milestone.create(level: 1, track: org_design, description: 'Respeta y participa en procesos, dando adecuada retroalimentación para ayudar al mejoramiento de la organización.')
Milestone.create(level: 2, track: org_design, description: 'Identifica oportunidades para mejorar procesos existentes y hace cambios que afectan positivamente a su equipo')
Milestone.create(level: 3, track: org_design, description: 'Desarrolla procesos y programas para resolver problemas organizacionales existentes.')
Milestone.create(level: 4, track: org_design, description: 'Piensa afondo en los problemas organizaciones e identifica dinámicas ocultas que contribuyen a ellos.')
Milestone.create(level: 5, track: org_design, description: 'Lidera iniciativas para resolver problemas derivados de dinámicas ocultas y normas de la empresa.')

Milestone.create(level: 1, track: wellbeing, description: 'Usa herramientas y procesos para asegurarse que sus colegas estén bien de salud y felices.')
Milestone.create(level: 2, track: wellbeing, description: 'Crea un entorno positivo, de apoyo y colaboración para los miembros del equipo.')
Milestone.create(level: 3, track: wellbeing, description: 'Maneja las expectativas en las personas, lidera en la organización, promueve la calma y fomenta el consenso.')
Milestone.create(level: 4, track: wellbeing, description: 'Gestiona con base a las necesidaded de los equipos y miembros del groupo, y trabaja proactivamente por maneter un buen ambiente en la organización.')
Milestone.create(level: 5, track: wellbeing, description: 'Maneja las conversaciones, canaliza la negatividad en inspiración y motivación, y proteje a todo el equipo.')

Milestone.create(level: 1, track: accomplishment, description: 'Ayuda a las personas a identificar obstáculos y ayuda a identificar los pasos para resolverlos.')
Milestone.create(level: 2, track: accomplishment, description: 'Ayuda a las personas a resolver problemas de rendimiento difíciles, con perspicacia, empatia y destreza.')
Milestone.create(level: 3, track: accomplishment, description: 'Interviene en problemas de desempeño arraigados con cambios de comportamiento específicos o planes de desempeño.')
Milestone.create(level: 4, track: accomplishment, description: 'Media las situaciones agravadas, potencia los equipos con bajo rendimiento y resuelve los conflictos.')
Milestone.create(level: 5, track: accomplishment, description: 'Resuelve disfunciones organizacionales complejas o conflictos persistentes.')

Milestone.create(level: 1, track: mentorship, description: 'Informalmente orienta a compañeros de una forma adecuada, apoya a nuevos empleados, y transmite conocimiento de la empresa.')
Milestone.create(level: 2, track: mentorship, description: 'Asesora proactivamente a compañeros, y orienta a las personas para que encuentren las soluciones en lugar de darles la respuesta.')
Milestone.create(level: 3, track: mentorship, description: 'Enseña a grupos pequeños de ingenieros y contribuye a las iniciativas internas/externas de michelada.')
Milestone.create(level: 4, track: mentorship, description: 'Anima a otros compañeros a mentorearse entre ellos y encuentra la manera de hacerlo.')
Milestone.create(level: 5, track: mentorship, description: 'Crea, organiza e implementa estrategias de mentoría.')

Milestone.create(level: 1, track: evangelism, description: 'Representan a michelada bien externamente, e influencia a las personas positivamente.')
Milestone.create(level: 2, track: evangelism, description: 'Participa principalmente en eventos pequeños y hace acciones simples que influyen positivamente en grupos de personas.')
Milestone.create(level: 3, track: evangelism, description: 'Trabaja duro para influir positivamente en grandes grupos de personas en sus puntos de vista.')
Milestone.create(level: 4, track: evangelism, description: 'Promueve a michelada, encuentra maneras de unir comunidades, crea estructuras para que las demás personas participen.')
Milestone.create(level: 5, track: evangelism, description: 'Crea estrategías para presentar de manera positiva los valores de la empresa a una audiencia mas grande.')

Milestone.create(level: 1, track: recruiting, description: 'Participa de manera informal y pasiva en el proceso de reclutamiento.')
Milestone.create(level: 2, track: recruiting, description: 'Entiende como evaluar a los candidatos, participa (hacer shadow) regularmente en las entrevistas, da su punto de vista objetivamente sobre el candidato y ayuda a construir una empresa diversa.')
Milestone.create(level: 3, track: recruiting, description: 'Mantiene y fortalece la integridad del proceso actual y regularmente presenta excelentes candidatos.')
Milestone.create(level: 4, track: recruiting, description: 'Contribuye de forma activa a las decisiones de contratación y las lidera, y hace todo lo posible para obtener excelentes candidatos.')
Milestone.create(level: 5, track: recruiting, description: 'Define estrategias de reclutamiento.')

Milestone.create(level: 1, track: community, description: 'Está disponible y participa en las actividades actuales, trabaja para contribuir positivamente a la cultura de la empresa y sigue los valores de la empresa con todos los compañeros.')
Milestone.create(level: 2, track: community, description: 'Aumenta, crea conexiones y toma acciones concretas para promover una cultura.')
Milestone.create(level: 3, track: community, description: 'Contribuye a mejorar la relación con el equipo y ayuda a construir una cultura de apoyo a los demás.')
Milestone.create(level: 4, track: community, description: 'Ejemplifica el desinteres propio a favor de su equipo sin comprometer sus responsabilidades y ayuda a levantar a todos.')
Milestone.create(level: 5, track: community, description: 'Alguien que participa en la definición y promueve los valores de cultura de la empresa.')

resource_1 = Resource.create(name: 'Mobile app', description: 'Create your first Mobile app', url: 'www.google.com')
resource_2 = Resource.create(name: 'Web app', description: 'Create your first Web app', url: 'www.google.com')
resource_3 = Resource.create(name: 'DevOps', description: 'Learn what is Devops', url: 'www.google.com')
resource_4 = Resource.create(name: 'TDD', description: 'Learn what is TDD', url: 'www.google.com')
resource_5 = Resource.create(name: 'BDD', description: 'Learn what is BDD', url: 'www.google.com')

# goal
goal = Goal.create(start_time: '2019-10-01', end_time: '2019-11-01', mentor: chuy, user: karen, milestone: milestone)

# objective
objective = Objective.create(description: 'Build my first mobile application', goal: goal)

# key results
key_result_1 = KeyResult.create(description: 'Added existing button to a different iOS surface', objective: objective)
key_result_2 = KeyResult.create(description: 'Add follow button for publications on Android', objective: objective)
key_result_3 = KeyResult.create(description: 'Fetched and displayed a new stream, using existing stream item styles', objective: objective)

# resources

GoalResources.create(goal_id: goal.id, resource_id: resource_1.id)
GoalResources.create(goal_id: goal.id, resource_id: resource_2.id)
GoalResources.create(goal_id: goal.id, resource_id: resource_3.id)
GoalResources.create(goal_id: goal.id, resource_id: resource_4.id)
GoalResources.create(goal_id: goal.id, resource_id: resource_5.id)