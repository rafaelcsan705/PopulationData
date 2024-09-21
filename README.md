# Population Data App
AirApp Challenge

## Description
The Population Data App is a SwiftUI application that fetches and displays population data for the states of the USA. It provides a user-friendly interface for viewing demographic information sourced from the Data USA API.

## Features
- Displays a list of states and their respective populations.
- Implements error handling for network requests.
- Includes a splash screen displaying the app name and creator.
- Tests for both unit and UI functionalities.

## Installation
1. Clone the repository:
   git clone https://github.com/rafaelcsan705/PopulationData.git
2. Open the project in Xcode.
3. Run the app on a simulator or physical device.

## Usage
Once the app is launched, it will display a splash screen for a few seconds. Afterward, the main list view of states and populations will appear. Users can scroll through the list to view data.

## Tests
### Unit Tests
The project includes unit tests that verify the functionality of the `NetworkManager` for fetching population data. You can run the tests in Xcode by selecting `Product > Test`.

### UI Tests
UI tests are implemented to ensure that the main views are displayed correctly and that the app responds as expected to user interactions.

## API
The app utilizes the Data USA API to fetch population data. The API endpoint used is:
https://datausa.io/api/data?drilldowns=State&measures=Population

## License
This project is licensed under the MIT License.
