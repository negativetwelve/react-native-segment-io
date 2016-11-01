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
    return RNSegment.identify(userId, traits);
  }

  alias(userId) {
    return RNSegment.alias(userId);
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
