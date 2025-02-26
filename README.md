# Flutter GitHub Profile - Clean Architecture with DDD & CQRS

A demonstration project showcasing Clean Architecture, Domain-Driven Design (DDD), and Command Query Responsibility Segregation (CQRS) patterns in a Flutter application. This project uses the GitHub API to display user profiles and repositories.

## 🎯 Purpose

This project serves as a practical example of implementing advanced architectural patterns in Flutter. It demonstrates:

- Clean Architecture principles
- Domain-Driven Design (DDD) concepts
- CQRS pattern implementation
- Proper error handling
- Dependency injection
- State management with BLoC pattern

## 🏗️ Architecture Overview

The project is structured into four main layers:

### 1. Domain Layer
The core business logic layer, independent of external dependencies.

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
└── repository_name.dart

### 2. Application Layer
Contains use cases and implements CQRS pattern.

application/
├── commands/
│   ├── follow_user_command.dart
│   ├── star_repository_command.dart
│   ├── unfollow_user_command.dart
│   └── unstar_repository_command.dart
└── queries/
├── get_user_profile_query.dart
└── get_user_repositories_query.dart

### 3. Infrastructure Layer
Implements repository interfaces and handles external data sources.

infrastructure/
├── datasources/
│   └── github_remote_data_source.dart
├── repositories/
│   └── github_repository.dart
└── dtos/
├── github_user_dto.dart
└── github_repo_dto.dart


### 4. Presentation Layer
Handles UI and state management.

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
└── repository/


## 🌟 Features

- Search GitHub users
- View user profiles
- Display user repositories
- Error handling
- Loading states
- Clean and maintainable codebase
- Separation of concerns
- Testable architecture

## 🛠️ Technical Stack

- Flutter
- Dart
- flutter_bloc for state management
- get_it for dependency injection
- dartz for functional programming
- http for API calls

## 📦 Dependencies

```yaml
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
  flutter_lints: ^2.0.0

Here's a comprehensive README.md for your GitHub repository:

```markdown
# Flutter GitHub Profile - Clean Architecture with DDD & CQRS

A demonstration project showcasing Clean Architecture, Domain-Driven Design (DDD), and Command Query Responsibility Segregation (CQRS) patterns in a Flutter application. This project uses the GitHub API to display user profiles and repositories.

## 🎯 Purpose

This project serves as a practical example of implementing advanced architectural patterns in Flutter. It demonstrates:

- Clean Architecture principles
- Domain-Driven Design (DDD) concepts
- CQRS pattern implementation
- Proper error handling
- Dependency injection
- State management with BLoC pattern

## 🏗️ Architecture Overview

The project is structured into four main layers:

### 1. Domain Layer
The core business logic layer, independent of external dependencies.

```

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
└── repository_name.dart

```plaintext

### 2. Application Layer
Contains use cases and implements CQRS pattern.

```

application/
├── commands/
│   ├── follow_user_command.dart
│   ├── star_repository_command.dart
│   ├── unfollow_user_command.dart
│   └── unstar_repository_command.dart
└── queries/
├── get_user_profile_query.dart
└── get_user_repositories_query.dart

```plaintext

### 3. Infrastructure Layer
Implements repository interfaces and handles external data sources.

```

infrastructure/
├── datasources/
│   └── github_remote_data_source.dart
├── repositories/
│   └── github_repository.dart
└── dtos/
├── github_user_dto.dart
└── github_repo_dto.dart

```plaintext

### 4. Presentation Layer
Handles UI and state management.

```

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
└── repository/

```plaintext

## 🌟 Features

- Search GitHub users
- View user profiles
- Display user repositories
- Error handling
- Loading states
- Clean and maintainable codebase
- Separation of concerns
- Testable architecture

## 🛠️ Technical Stack

- Flutter
- Dart
- flutter_bloc for state management
- get_it for dependency injection
- dartz for functional programming
- http for API calls

## 📦 Dependencies

```yaml
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
  flutter_lints: ^2.0.0
```

## 🚀 Getting Started

1. Clone the repository:


```shellscript
git clone https://github.com/yourusername/flutter_github_ddd.git
```

2. Install dependencies:


```shellscript
flutter pub get
```

3. Run the app:


```shellscript
flutter run
```

## 🏛️ Architecture Principles

### Domain-Driven Design (DDD)

- Clear separation of domain logic
- Use of Value Objects for type-safety
- Rich domain models
- Bounded contexts
- Ubiquitous language


### CQRS Pattern

- Separation of read and write operations
- Commands for write operations
- Queries for read operations
- Better scalability and maintenance


### Clean Architecture

- Independence of frameworks
- Testability
- Separation of concerns
- Dependency rule (dependencies point inward)
