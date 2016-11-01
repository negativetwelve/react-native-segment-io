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
  identify(userId, traits, options) {
    return RNSegment.identify(userId, traits, options);
  }

  alias(userId, options) {
    return RNSegment.alias(userId, options);
  }

  // --------------------------------------------------
  // Track
  // --------------------------------------------------
  track(properties, options) {
    return RNSegment.track(properties, options);
  }

  screen(name, properties, options) {
    return RNSegment.screen(name, properties, options);
  }

}


export default new Segment();
