# App Documentation

## Overview

* This Flutter application includes a simple structure for a multi-page Flutter app with a bottom
  navigation bar. The app is styled using custom colors, fonts, and widgets.

## Code Structure

### main.dart

* Initializes the Flutter app.
* Creates a global navigator key for managing navigation state.
* Configures the MaterialApp with a custom theme and the Home widget as the initial screen.

### home.dart

* Defines the Home widget as the main screen.
* Utilizes a PageView with a bottom navigation bar for easy navigation between different views (
  HomeView, PeopleView, TicketView, ProfileView).
* Uses a custom BottomNavIconBtn widget for each item in the bottom navigation bar.

### AppColors Class

* Provides a set of color constants for consistent theming across the app.

### AppImages Class

* Contains paths to various image and icon assets used in the app.

### Widget Classes

> BottomNavIconBtn

* A custom widget for bottom navigation icons with dynamic highlighting.

> CommonBox

* A container widget with common styling parameters.

> CommonButton

* A reusable button with optional icon support.

> IconsTextRow

* A row widget with an icon and text.