// Libraries
import {NativeModules} from 'react-native';

// Native Modules
const {RNSegment} = NativeModules;


class Segment {

  // --------------------------------------------------
  // Initialize
  // --------------------------------------------------
  initialize(options) {
    return RNSegment.initialize(options);
  }

  reset() {
    return RNSegment.reset();
  }

  // --------------------------------------------------
  // Identity
  // --------------------------------------------------
  identify(userId, traits) {
    // Native side requires a string for the userId.
    return RNSegment.identify(userId.toString(), traits);
  }

  alias(userId) {
    // Native side requires a string for the userId.
    return RNSegment.alias(userId.toString());
  }

  // --------------------------------------------------
  // Track
  // --------------------------------------------------
  track(name, properties) {
    return RNSegment.track(name, properties);
  }

  screen(name, properties) {
    return RNSegment.screen(name, properties);
  }

  flush() {
    return RNSegment.flush();
  }

}


export default new Segment();
