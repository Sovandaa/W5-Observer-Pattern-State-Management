
import 'package:w5_observer_pattern_state_management/EXERCISE-1/model/ride_pref/ride_pref.dart';


// Observer
abstract class RidePreferencesListener {
  void onPreferenceSelected(RidePreference selectedPreference);
}

//Subject
class RidePrefService {
  final List<RidePreferencesListener> listeners = [];
  RidePreference? currentPreference;

  void addListener(RidePreferencesListener listener) {
    listeners.add(listener);
  }

  void notifyListeners() {
    for (var listener in listeners) {
      listener.onPreferenceSelected(currentPreference!);
    }
  }

  void setPreference(RidePreference newPreference) {
    currentPreference = newPreference;
    notifyListeners();
  }
}

// implement ConsoleLogger to print message, observers
class ConsoleLogger implements RidePreferencesListener {
  @override
  void onPreferenceSelected(selectedPreference) {
    // TODO: implement onPreferenceSelected
    print("On preference changed: $selectedPreference");
  }
}