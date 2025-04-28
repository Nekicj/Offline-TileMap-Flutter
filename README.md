# Offline Tilemap Flutter Application

## Project Description
This Flutter application provides an offline tilemap functionality with a custom animated toggle slider implementation. The project focuses on providing a smooth user experience with interactive map elements that work without an internet connection.

## Features
- Custom animated toggle slider with smooth transitions
- Interactive drag and tap gestures
- Lottie animations integration for fluid visual feedback
- Offline functionality - no internet connection required
- Material design elements with customizable themes
- Responsive layout that adapts to different screen sizes

## Dependencies
- Flutter SDK (^3.7.0)
- [Lottie](https://pub.dev/packages/lottie) (^3.3.1) - For rendering Adobe After Effects animations
- Flutter material design components

## Installation and Setup

### Prerequisites
- Flutter SDK installed on your development machine
- An IDE (like Android Studio, VS Code, etc.)
- Git for version control

### Installation Steps
1. Clone the repository:
   ```
   git clone [repository URL]
   ```

2. Navigate to the project directory:
   ```
   cd niggaprojec5
   ```

3. Install dependencies:
   ```
   flutter pub get
   ```

4. Run the application:
   ```
   flutter run
   ```

## Usage
The application provides an interactive map interface with the following interactions:

- **Toggle Slider**: Use the custom animated slider to switch between different map views or settings.
  - Tap on the slider to toggle between states
  - Drag the slider knob to manually control the animation
  - The slider will automatically snap to the closest position when released

- **Map Interaction**: (Implementation details to be added as the tilemap functionality is developed)

## Assets Structure
The project includes the following assets:
- `assets/loading.json` - Lottie animation for loading states
- `assets/switch.json` - Lottie animation for the toggle slider

## Project Structure
```
niggaprojec5/
├── lib/
│   └── main.dart       # Main application code
├── assets/
│   ├── loading.json    # Loading animation
│   └── switch.json     # Toggle switch animation
├── pubspec.yaml        # Project dependencies
└── README.md           # Project documentation
```

## Future Development
- Enhanced offline tile caching mechanisms
- Multiple map layer support
- Custom map styling options
- User location tracking
- Route planning functionality

## License
[Add license information here]

# niggaprojec5

A new Flutter project.
