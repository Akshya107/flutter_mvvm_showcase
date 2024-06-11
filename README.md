# Flutter MVVM App

This project is a showcase of a Flutter mobile application built using the Model-View-ViewModel (MVVM) architecture. The app uses the Provider package for state management, ensuring a clean, scalable, and maintainable codebase.

## Directory Structure

lib
├── src
│   ├── model
│   │   ├── jokes_model.dart
│   │   ├── jokes_model.g.dart
│   ├── service
│   │   ├── api_service.dart
│   │   ├── joke_service.dart
│   ├── view
│   │   ├── screens
│   │   │   ├── home_screen.dart
│   │   ├── widget
│   │   │   ├── home
│   │   │   │   ├── joke_list_widget.dart
│   │   │   │   ├── joke_not_found_widget.dart
│   │   │   │   ├── custom_error_widget.dart
│   │   │   │   ├── loading_widget.dart
│   ├── viewmodel
│   │   ├── joke_viewmodel
│   │   │   ├── joke_viewmodel.dart
├── main.dart

# Features

## MVVM Architecture: 
This design pattern separates the app's logic into distinct layers, improving code readability and 
maintainability.

## Provider for State Management:

Simplifies the process of managing app state with a clean and efficient approach.
## Modular Design: 
The project is organized into models, services, views, and viewmodels, making it easy to navigate
and scale.

### Generating Model Files

This project uses the build_runner package to generate model files. To generate the files, run the
following command:

**dart run build_runner build**
