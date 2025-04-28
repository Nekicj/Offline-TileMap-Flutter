# Custom Toggle Slider Flutter Application

## Project Description
This Flutter application showcases a custom animated toggle slider implementation using Lottie animations. The project focuses on providing a smooth user experience with interactive customizable toggle elements that can be used in various UI contexts.

## Features
- Lottie animations integration for fluid visual feedback
- Material design elements with customizable themes
- Position-tracked animation control
- Responsive interaction with automatic state snapping

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

### Assets Setup
Ensure the following files are present in the `assets` folder:
- `assets/loading.json` - Lottie animation for loading states
- `assets/switch.json` - Lottie animation for the toggle slider

## Usage
The application provides an interactive toggle slider with the following interactions:

- **Toggle Slider**:
  - Tap on the slider to toggle between states
  - Drag the slider knob to manually control the animation
  - The slider will automatically snap to the closest position when released

The toggle slider can be customized and integrated into various application contexts like settings screens, feature toggles, or theme switches.

## Future Development
- Additional animation styles and transitions
- More customization options for colors and shapes
- Integration with application state management
- Optimized performance for complex animations
- Supporting additional gestures and interactions
