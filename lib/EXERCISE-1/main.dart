import 'package:w5_observer_pattern_state_management/EXERCISE-1/model/ride/locations.dart';
import 'package:w5_observer_pattern_state_management/EXERCISE-1/model/ride_pref/ride_pref.dart';
import 'package:w5_observer_pattern_state_management/EXERCISE-1/service/ride_prefs_service.dart';

// Test
void main() {
    RidePrefService ridePrefService = RidePrefService();

    ConsoleLogger consoleLogger = ConsoleLogger();

    // Register observers
    ridePrefService.addListener(consoleLogger);

    // update ride pref
    ridePrefService.setPreference(
        RidePreference(
            departure: Location(name: "PhnomPenh", country: Country.cambodia), 
            departureDate: DateTime.now(), 
            arrival: Location(name: "SiemReap", country: Country.cambodia), 
            requestedSeats: 1
        )
    );
}