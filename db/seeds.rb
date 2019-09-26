# Users
karen = User.create(first_name: 'Karen', last_name: 'Ventura', email: 'karen@michelada.io')
chuy = User.create(first_name: 'Jesus', last_name: 'Figueroa', email: 'jesus@michelada.io')

# Categories
building = Category.create(name: 'building', description: 'description')
executing = Category.create(name: 'executing', description: 'description')
supporting = Category.create(name: 'supporting', description: 'description')
strengthening = Category.create(name: 'strengthening', description: 'description')

# Tracks
mobile = Track.create(name: 'mobile', category: building, description: 'Develops expertise in native mobile platform engineering, such as iOS or Android')
web_client = Track.create(name: 'web client', category: building, description: 'Develops expertise in web client technologies, such as HTML, CSS, and JavaScript')
foundations = Track.create(name: 'foundations', category: building, description: 'Develops expertise in foundational systems, such as deployments, pipelines, databases and machine learning')
servers = Track.create(name: 'servers', category: building, description: 'Develops expertise in server side engineering, using technologies such as Go, NodeJS, or Scala')

project_managment = Track.create(name: 'project management', category: executing, description: 'Delivers well-scoped programs of work that meet their goals, on time, to budget, harmoniously')
communication = Track.create(name: 'comunnication', category: executing, description: 'Shares the right amount of information with the right people, at the right time, and listens effectively')
craft = Track.create(name: 'craft', category: executing, description: 'Embodies and promotes practices to ensure excellent quality products and services')
initiative = Track.create(name: 'initiative', category: executing, description: 'Challenges the status quo and effects positive organizational change outside of mandated work')

career_development = Track.create(name: 'career development', category: supporting, description: 'Provides strategic support to engineers to help them build the career they want')
org_design = Track.create(name: 'org design', category: supporting, description: 'Defines processes and structures that enables the strong growth and execution of a diverse eng organization')
wellbeing = Track.create(name: 'wellbeing', category: supporting, description: 'Supports the emotional well-being of group members in difficult times, and celebrates their successes')
accomplishment =Track.create(name: 'accomplishment', category: supporting, description: 'Inspires day to day excellence, maximises potential and effectively resolves performance issues with compassion')

mentorship = Track.create(name: 'mentorship', category: strengthening, description: 'Provides support to colleagues, spreads knowledge, and develops the team outside formal reporting structures')
evangelism = Track.create(name: 'evangelism', category: strengthening, description: 'Promotes Medium to the outside world and establishes it as an attractive and thoughtful place to work')
recruiting = Track.create(name: 'recruiting', category: strengthening, description: "Strengthens Medium's team by bringing in excellent staff members")
community = Track.create(name: 'community', category: strengthening, description: 'Builds community internally, gives of themself to the team, and champions and extols company values')

# Milestones

milestone = Milestone.create(level: 1, track: mobile, description: 'Works effectively within established iOS or Android architectures, following current best practices')
Milestone.create(level: 2, track: mobile, description: 'Develops new instances of existing architecture, or minor improvements to existing architecture')
Milestone.create(level: 3, track: mobile, description: 'Designs major new features and demonstrates a nuanced understanding of mobile platform constraints')
Milestone.create(level: 4, track: mobile, description: 'Builds complex, reusable architectures that pioneer best practices and enable engineers to work more effectively')
Milestone.create(level: 5, track: mobile, description: 'Is an industry-leading expert in mobile engineering or sets strategic mobile direction for an eng team')

Milestone.create(level: 1, track: web_client, description: 'Works effectively within established web client architectures, following current best practices')
Milestone.create(level: 2, track: web_client, description: 'Develops new instances of existing architecture, or minor improvements to existing architecture')
Milestone.create(level: 3, track: web_client, description: 'Designs major new features and demonstrates a nuanced understanding of browser constraints')
Milestone.create(level: 4, track: web_client, description: 'Builds complex, reusable architectures that pioneer best practices and enable engineers to work more effectively')
Milestone.create(level: 5, track: web_client, description: 'Is an industry-leading expert in web client or sets strategic web client direction for an eng team')

Milestone.create(level: 1, track: foundations, description: 'Works effectively within established structures, following current best practices')
Milestone.create(level: 2, track: foundations, description: 'Develops new instances of existing architecture, or minor improvements to existing architecture')
Milestone.create(level: 3, track: foundations, description: 'Designs standalone systems of moderate complexity, or major new features in existing systems')
Milestone.create(level: 4, track: foundations, description: 'Builds complex, reusable architectures that pioneer best practices for other engineers, or multi-system services')
Milestone.create(level: 5, track: foundations, description: 'Is an industry-leading expert in foundational engineering or sets strategic foundational direction for an eng team')

Milestone.create(level: 1, track: servers, description: 'Works effectively within established server side frameworks, following current best practices')
Milestone.create(level: 2, track: servers, description: 'Develops new instances of existing architecture, or minor improvements to existing architecture')
Milestone.create(level: 3, track: servers, description: 'Designs standalone systems of moderate complexity, or major new features in existing systems')
Milestone.create(level: 4, track: servers, description: 'Builds complex, reusable architectures that pioneer best practices for other engineers, or multi-system services')
Milestone.create(level: 5, track: servers, description: 'Is an industry-leading expert in server side engineering or sets strategic server side direction for an eng team')

Milestone.create(level: 1, track: project_managment, description: 'Effectively delivers individual tasks')
Milestone.create(level: 2, track: project_managment, description: 'Effectively delivers small personal projects')
Milestone.create(level: 3, track: project_managment, description: 'Effectively delivers projects through a small team')
Milestone.create(level: 4, track: project_managment, description: 'Effectively delivers projects through a large team, or with a significant amount of stakeholders or complexity')
Milestone.create(level: 5, track: project_managment, description: 'Manages major company pushes delivered by multiple teams')

Milestone.create(level: 1, track: communication, description: 'Communicates effectively to close stakeholders when called upon, and incorporates constructive feedback')
Milestone.create(level: 2, track: communication, description: 'Communicates with the wider team appropriately, focusing on timeliness and good quality conversations')
Milestone.create(level: 3, track: communication, description: 'Proactively shares information, actively solicits feedback, and facilitates communication for multiple stakeholders')
Milestone.create(level: 4, track: communication, description: 'Communicates complex ideas skillfully and with nuance, and establishes alignment within the wider organization')
Milestone.create(level: 5, track: communication, description: 'Influences outcomes at the highest level, moves beyond mere broadcasting, and sets best practices for others')

Milestone.create(level: 1, track: craft, description: 'Delivers consistently good quality work')
Milestone.create(level: 2, track: craft, description: 'Increases the robustness and reliability of codebases, and devotes time to polishing products and systems')
Milestone.create(level: 3, track: craft, description: "Improves others' ability to deliver great quality work")
Milestone.create(level: 4, track: craft, description: 'Advocates for and models great quality with proactive actions, and tackles difficult and subtle system issues')
Milestone.create(level: 5, track: craft, description: 'Enables and encourages the entire organization to make quality a central part of the development process')

Milestone.create(level: 1, track: initiative, description: 'Identifies opportunities for organizational change or product improvements')
Milestone.create(level: 2, track: initiative, description: 'Causes change to positively impact a few individuals or minor improvement to an existing product or service')
Milestone.create(level: 3, track: initiative, description: 'Causes change to positively impact an entire team or instigates a minor feature or service')
Milestone.create(level: 4, track: initiative, description: 'Effects change that has a substantial positive impact on the engineering organization or a major product impact')
Milestone.create(level: 5, track: initiative, description: 'Effects change that has a substantial positive impact on the whole company')

Milestone.create(level: 1, track: career_development, description: "Gives insight into opportunities and helps identify individuals' strengths and weaknesses")
Milestone.create(level: 2, track: career_development, description: 'Formally supports and advocates for one person and provides tools to help them solve career problems')
Milestone.create(level: 3, track: career_development, description: 'Inspires and retains a small group of people and actively pushes them to stretch themselves')
Milestone.create(level: 4, track: career_development, description: 'Manages interactions and processes between groups, promoting best practices and setting a positive example')
Milestone.create(level: 5, track: career_development, description: 'Supports the development of a signficant part of the engineering org, and widely viewed as a trusted advisor')

Milestone.create(level: 1, track: org_design, description: 'Respects and participates in processes, giving meaningful feedback to help the organization improve')
Milestone.create(level: 2, track: org_design, description: 'Identifies opportunities to improve existing processes and makes changes that positively affect the local team')
Milestone.create(level: 3, track: org_design, description: 'Develops processes and programs to solve ongoing organizational problems')
Milestone.create(level: 4, track: org_design, description: 'Thinks deeply about organizational issues and identifies hidden dynamics that contribute to them')
Milestone.create(level: 5, track: org_design, description: 'Leads initiatives to address issues stemming from hidden dynamics and company norms')

Milestone.create(level: 1, track: wellbeing, description: 'Uses tools and processes to help ensure colleagues are healthy and happy')
Milestone.create(level: 2, track: wellbeing, description: 'Creates a positive, supportive, engaging team environment for group members')
Milestone.create(level: 3, track: wellbeing, description: 'Manages expectations across peers, leads in the org, promotes calm, and prevents consensus building')
Milestone.create(level: 4, track: wellbeing, description: 'Advocates for the needs of teams and group members, and proactively works to calm the organization')
Milestone.create(level: 5, track: wellbeing, description: 'Manages narratives, channels negativity into inspiration and motivation, and protects the entire team')

Milestone.create(level: 1, track: accomplishment, description: 'Helps individuals identify blockers and helps them identify next steps for resolution')
Milestone.create(level: 2, track: accomplishment, description: 'Helps individuals resolve difficult performance issues, with insight, compassion, and skill')
Milestone.create(level: 3, track: accomplishment, description: 'Intervenes in long-standing performance issues with targeted behavior change or performance plans')
Milestone.create(level: 4, track: accomplishment, description: 'Mediates escalated situations, empowers underperforming teams, and resolves conflict')
Milestone.create(level: 5, track: accomplishment, description: 'Resolves complex organizational dysfunction, or persistent conflict at senior levels')

Milestone.create(level: 1, track: mentorship, description: 'Informally mentors individuals in an ad-hoc way, supports new hires, and conveys institutional knowledge')
Milestone.create(level: 2, track: mentorship, description: 'Mentors people proactively, and guides people to realizations rather than providing the answer')
Milestone.create(level: 3, track: mentorship, description: "Teaches small groups of engineers and contributes to Medium's shared knowledge base")
Milestone.create(level: 4, track: mentorship, description: 'Encourages people to mentor each other, and creates ways for them to do so')
Milestone.create(level: 5, track: mentorship, description: 'Instills and promotes a culture of learning and development within the entire engineering team')

Milestone.create(level: 1, track: evangelism, description: 'Represents Medium well externally, and influences individuals positively')
Milestone.create(level: 2, track: evangelism, description: 'Participates more centrally in small events, and takes simple actions that positively influence groups of people')
Milestone.create(level: 3, track: evangelism, description: 'Works hard to positively influence large groups of people on their views of Medium')
Milestone.create(level: 4, track: evangelism, description: 'Establishes Medium as an great, innovative company and workplace to the whole industry')
Milestone.create(level: 5, track: evangelism, description: 'Introduces Medium in a positive light to a wider audience outside the industry')

Milestone.create(level: 1, track: recruiting, description: 'Brings new candidates into the pipeline and understands how to evaluate candidates at Medium')
Milestone.create(level: 2, track: recruiting, description: 'Interviews regularly, helps the team make meaningful hiring decisions, and helps build a diverse pipeline')
Milestone.create(level: 3, track: recruiting, description: 'Maintains and strengthens the integrity of the current process, and regularly brings in great candidates')
Milestone.create(level: 4, track: recruiting, description: 'Actively contributes to and leads hiring decisions, and goes to great lengths to source great candidates')
Milestone.create(level: 5, track: recruiting, description: 'Sets recruitment strategy, invests in long-term relationships for critical roles, and recruits at scale')

Milestone.create(level: 1, track: community, description: 'Is available and present on current teams, and works to contribute positively to company culture')
Milestone.create(level: 2, track: community, description: 'Steps up, builds connectedness, and takes concrete actions to promote an inclusive culture')
Milestone.create(level: 3, track: community, description: 'Contributes to improving team relatedness, and helps build a culture of lending support')
Milestone.create(level: 4, track: community, description: 'Exemplifies selflessness for the team without compromising responsibilities, and lifts everyone up')
Milestone.create(level: 5, track: community, description: 'Lives the company values, guards positive culture, and defines policies that support relatedness between teams')

# goal
goal = Goal.create(start_time: '2019-10-01', end_time: '2019-11-01', mentor: chuy, user: karen, milestone: milestone)

# objective
objective = Objective.create(description: 'Build my first mobile application', goal: goal)

# key results
key_result_1 = KeyResult.create(description: 'Added existing button to a different iOS surface', objective: objective)
key_result_2 = KeyResult.create(description: 'Add follow button for publications on Android', objective: objective)
key_result_3 = KeyResult.create(description: 'Fetched and displayed a new stream, using existing stream item styles', objective: objective)

# resources
resource_1 = Resource.create(name: 'Mobile app', description: 'Create your first Mobile app', url: 'www.google.com')
resource_2 = Resource.create(name: 'Web app', description: 'Create your first Web app', url: 'www.google.com')
resource_3 = Resource.create(name: 'DevOps', description: 'Learn what is Devops', url: 'www.google.com')
resource_4 = Resource.create(name: 'TDD', description: 'Learn what is TDD', url: 'www.google.com')
resource_5 = Resource.create(name: 'BDD', description: 'Learn what is BDD', url: 'www.google.com')

GoalResources.create(goal_id: goal.id, resource_id: resource_1.id)
GoalResources.create(goal_id: goal.id, resource_id: resource_2.id)
GoalResources.create(goal_id: goal.id, resource_id: resource_3.id)
GoalResources.create(goal_id: goal.id, resource_id: resource_4.id)
GoalResources.create(goal_id: goal.id, resource_id: resource_5.id)