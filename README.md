<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Flutter GitHub Profile - Clean Architecture with DDD & CQRS</title>
    <style>
        :root {
            --primary-color: #0175C2;
            --text-color: #333;
            --bg-color: #fff;
            --code-bg: #f6f8fa;
            --border-color: #e1e4e8;
        }

        body {
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
            line-height: 1.6;
            color: var(--text-color);
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
            background-color: var(--bg-color);
        }

        h1, h2, h3 {
            color: var(--primary-color);
        }

        .emoji {
            margin-right: 8px;
        }

        pre {
            background-color: var(--code-bg);
            padding: 16px;
            border-radius: 6px;
            overflow-x: auto;
        }

        code {
            font-family: 'Courier New', Courier, monospace;
            background-color: var(--code-bg);
            padding: 2px 4px;
            border-radius: 3px;
        }

        .container {
            display: grid;
            grid-template-columns: 250px 1fr;
            gap: 20px;
        }

        .sidebar {
            position: sticky;
            top: 20px;
            height: fit-content;
        }

        .sidebar ul {
            list-style: none;
            padding: 0;
        }

        .sidebar li {
            margin-bottom: 8px;
        }

        .sidebar a {
            color: var(--text-color);
            text-decoration: none;
        }

        .sidebar a:hover {
            color: var(--primary-color);
        }

        .content {
            min-width: 0;
        }

        .folder-structure {
            font-family: 'Courier New', Courier, monospace;
            white-space: pre;
            background-color: var(--code-bg);
            padding: 16px;
            border-radius: 6px;
        }

        .checklist {
            list-style: none;
            padding-left: 0;
        }

        .checklist li {
            margin-bottom: 8px;
            display: flex;
            align-items: center;
        }

        .checklist li::before {
            content: "☐";
            margin-right: 8px;
        }

        @media (max-width: 768px) {
            .container {
                grid-template-columns: 1fr;
            }

            .sidebar {
                position: static;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <nav class="sidebar">
            <h3>Contents</h3>
            <ul>
                <li><a href="#purpose">Purpose</a></li>
                <li><a href="#architecture">Architecture Overview</a></li>
                <li><a href="#features">Features</a></li>
                <li><a href="#tech-stack">Technical Stack</a></li>
                <li><a href="#getting-started">Getting Started</a></li>
                <li><a href="#principles">Architecture Principles</a></li>
                <li><a href="#testing">Testing</a></li>
                <li><a href="#contributing">Contributing</a></li>
                <li><a href="#improvements">Future Improvements</a></li>
                <li><a href="#resources">Resources</a></li>
            </ul>
        </nav>

        <main class="content">
            <h1>Flutter GitHub Profile - Clean Architecture with DDD & CQRS</h1>
            <p>A demonstration project showcasing Clean Architecture, Domain-Driven Design (DDD), and Command Query Responsibility Segregation (CQRS) patterns in a Flutter application. This project uses the GitHub API to display user profiles and repositories.</p>

            <h2 id="purpose"><span class="emoji">🎯</span>Purpose</h2>
            <p>This project serves as a practical example of implementing advanced architectural patterns in Flutter. It demonstrates:</p>
            <ul>
                <li>Clean Architecture principles</li>
                <li>Domain-Driven Design (DDD) concepts</li>
                <li>CQRS pattern implementation</li>
                <li>Proper error handling</li>
                <li>Dependency injection</li>
                <li>State management with BLoC pattern</li>
            </ul>

            <h2 id="architecture"><span class="emoji">🏗️</span>Architecture Overview</h2>
            <p>The project is structured into four main layers:</p>

            <h3>1. Domain Layer</h3>
            <p>The core business logic layer, independent of external dependencies.</p>
            <div class="folder-structure">
domain/
├── core/
│   ├── failures.dart
│   ├── value_objects.dart
│   └── errors.dart
├── entities/
│   ├── github_user.dart
│   └── github_repo.dart
├── repositories/
│   └── i_github_repository.dart
└── value_objects/
├── user_name.dart
└── repository_name.dart</div>

            <h3>2. Application Layer</h3>
            <p>Contains use cases and implements CQRS pattern.</p>
            <div class="folder-structure">
application/
├── commands/
│   ├── follow_user_command.dart
│   ├── star_repository_command.dart
│   ├── unfollow_user_command.dart
│   └── unstar_repository_command.dart
└── queries/
├── get_user_profile_query.dart
└── get_user_repositories_query.dart</div>

            <h3>3. Infrastructure Layer</h3>
            <p>Implements repository interfaces and handles external data sources.</p>
            <div class="folder-structure">
infrastructure/
├── datasources/
│   └── github_remote_data_source.dart
├── repositories/
│   └── github_repository.dart
└── dtos/
├── github_user_dto.dart
└── github_repo_dto.dart</div>

            <h3>4. Presentation Layer</h3>
            <p>Handles UI and state management.</p>
            <div class="folder-structure">
presentation/
├── core/
│   ├── app_widget.dart
│   └── routes.dart
├── pages/
│   ├── profile/
│   │   ├── profile_page.dart
│   │   ├── widgets/
│   │   └── cubit/
│   └── search/
│       ├── search_page.dart
│       └── cubit/
└── widgets/
├── common/
└── repository/</div>

            <h2 id="features"><span class="emoji">🌟</span>Features</h2>
            <ul>
                <li>Search GitHub users</li>
                <li>View user profiles</li>
                <li>Display user repositories</li>
                <li>Error handling</li>
                <li>Loading states</li>
                <li>Clean and maintainable codebase</li>
                <li>Separation of concerns</li>
                <li>Testable architecture</li>
            </ul>

            <h2 id="tech-stack"><span class="emoji">🛠️</span>Technical Stack</h2>
            <pre>
dependencies:
flutter:
sdk: flutter
dartz: ^0.10.1
get_it: ^7.6.4
flutter_bloc: ^8.1.3
http: ^1.1.0
provider: ^6.0.5

dev_dependencies:
flutter_test:
sdk: flutter
flutter_lints: ^2.0.0</pre>

            <h2 id="getting-started"><span class="emoji">🚀</span>Getting Started</h2>
            <ol>
                <li>Clone the repository:
                    <pre>git clone https://github.com/yourusername/flutter_github_ddd.git</pre>
                </li>
                <li>Install dependencies:
                    <pre>flutter pub get</pre>
                </li>
                <li>Run the app:
                    <pre>flutter run</pre>
                </li>
            </ol>

            <h2 id="principles"><span class="emoji">🏛️</span>Architecture Principles</h2>
            <h3>Domain-Driven Design (DDD)</h3>
            <ul>
                <li>Clear separation of domain logic</li>
                <li>Use of Value Objects for type-safety</li>
                <li>Rich domain models</li>
                <li>Bounded contexts</li>
                <li>Ubiquitous language</li>
            </ul>

            <h3>CQRS Pattern</h3>
            <ul>
                <li>Separation of read and write operations</li>
                <li>Commands for write operations</li>
                <li>Queries for read operations</li>
                <li>Better scalability and maintenance</li>
            </ul>

            <h2 id="testing"><span class="emoji">🧪</span>Testing</h2>
            <p>The project structure supports different types of tests:</p>
            <ul>
                <li>Unit tests for domain logic</li>
                <li>Integration tests for repositories</li>
                <li>Widget tests for UI components</li>
                <li>BLoC tests for state management</li>
            </ul>

            <h2 id="contributing"><span class="emoji">🤝</span>Contributing</h2>
            <p>Contributions are welcome! Please feel free to submit a Pull Request. For major changes, please open an issue first to discuss what you would like to change.</p>
            <ol>
                <li>Fork the Project</li>
                <li>Create your Feature Branch (<code>git checkout -b feature/AmazingFeature</code>)</li>
                <li>Commit your Changes (<code>git commit -m 'Add some AmazingFeature'</code>)</li>
                <li>Push to the Branch (<code>git push origin feature/AmazingFeature</code>)</li>
                <li>Open a Pull Request</li>
            </ol>

            <h2 id="improvements"><span class="emoji">🎯</span>Future Improvements</h2>
            <ul class="checklist">
                <li>Implement caching mechanism</li>
                <li>Add authentication</li>
                <li>Implement more GitHub API features</li>
                <li>Add comprehensive test coverage</li>
                <li>Implement proper error handling</li>
                <li>Add pagination for repositories</li>
                <li>Dark mode support</li>
                <li>Localization</li>
            </ul>

            <h2 id="resources"><span class="emoji">📚</span>Resources</h2>
            <ul>
                <li><a href="https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html">Clean Architecture</a></li>
                <li><a href="https://martinfowler.com/bliki/DomainDrivenDesign.html">Domain-Driven Design</a></li>
                <li><a href="https://martinfowler.com/bliki/CQRS.html">CQRS Pattern</a></li>
                <li><a href="https://flutter.dev/docs">Flutter Documentation</a></li>
                <li><a href="https://docs.github.com/en/rest">GitHub API Documentation</a></li>
            </ul>

            <footer>
                <h2><span class="emoji">👤</span>Author</h2>
                <p>Your Name</p>
                <ul>
                    <li>GitHub: <a href="https://github.com/yourusername">@yourusername</a></li>
                    <li>LinkedIn: <a href="https://linkedin.com/in/yourprofile">Your Name</a></li>
                </ul>
                <p>Give a ⭐️ if this project helped you!</p>
            </footer>
        </main>
    </div>
</body>
</html>