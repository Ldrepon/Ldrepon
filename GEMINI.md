# Project Plan: Workout Tracker

## Overview
A comprehensive mobile application for tracking workouts, exercises, and progress.

## Tech Stack
- **Framework**: Flutter
- **Language**: Dart
- **State Management**: Provider (or Riverpod)
- **UI Components**: Flutter Material / Shadcn concepts
- **Local Storage**: Shared Preferences / SQFlite

## Architecture
- **Layered**:
    - `lib/ui`: Screens and Widgets
    - `lib/data`: Repositories and Models
    - `lib/logic`: Providers/Controllers

## Routes
1.  **Splash** (`/`): Initial loading state.
2.  **Login** (`/login`): User authentication.
3.  **Signup** (`/signup`): New user registration.
4.  **Dashboard** (`/home`): Overview of activity, quick start.
5.  **Workout Active** (`/workout/active`): The actual tracking interface.
6.  **History** (`/history`): List of past workouts.
7.  **Profile** (`/profile`): User settings and stats.

## Features
- **Authentication**: Secure login/signup.
- **Workout Management**: Create, Edit, Delete workouts.
- **Exercise Database**: List of available exercises.
- **Progress Tracking**: Charts and history logs.
- **Settings**: Theme toggle, unit preferences.
