<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Flutter GitHub Profile - Clean Architecture with DDD & CQRS</title>
    <link rel="stylesheet" href="styles.css">
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
            
            <div class="section" id="purpose">
                <h2>🎯 Purpose</h2>
                <p>A demonstration project showcasing Clean Architecture, Domain-Driven Design (DDD), and Command Query Responsibility Segregation (CQRS) patterns in a Flutter application.</p>
                <ul>
                    <li>Clean Architecture principles</li>
                    <li>Domain-Driven Design (DDD) concepts</li>
                    <li>CQRS pattern implementation</li>
                    <li>Proper error handling</li>
                    <li>Dependency injection</li>
                    <li>State management with BLoC pattern</li>
                </ul>
            </div>

            <div class="section" id="architecture">
                <h2>🏗️ Architecture Overview</h2>
                <h3>1. Domain Layer</h3>
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
            </div>

            <div class="section" id="tech-stack">
                <h2>🛠️ Technical Stack</h2>
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
            </div>

            <div class="section" id="getting-started">
                <h2>🚀 Getting Started</h2>
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
            </div>

            <div class="section" id="principles">
                <h2>🏛️ Architecture Principles</h2>
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
            </div>

            <div class="section" id="improvements">
                <h2>🎯 Future Improvements</h2>
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
            </div>

            <div class="section" id="resources">
                <h2>📚 Resources</h2>
                <ul>
                    <li><a href="https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html">Clean Architecture</a></li>
                    <li><a href="https://martinfowler.com/bliki/DomainDrivenDesign.html">Domain-Driven Design</a></li>
                    <li><a href="https://martinfowler.com/bliki/CQRS.html">CQRS Pattern</a></li>
                    <li><a href="https://flutter.dev/docs">Flutter Documentation</a></li>
                    <li><a href="https://docs.github.com/en/rest">GitHub API Documentation</a></li>
                </ul>
            </div>

            <footer>
                <h2>👤 Author</h2>
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
