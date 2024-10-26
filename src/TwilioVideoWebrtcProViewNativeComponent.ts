// https://reactnative.dev/docs/next/fabric-native-components-introduction
import codegenNativeComponent from 'react-native/Libraries/Utilities/codegenNativeComponent';
import type { ViewProps } from 'react-native';

// import type {HostComponent, ViewProps} from 'react-native';
// import type {BubblingEventHandler} from 'react-native/Libraries/Types/CodegenTypes';

interface NativeProps extends ViewProps {
  color?: string;
}

export default codegenNativeComponent<NativeProps>('TwilioVideoWebrtcProView');
