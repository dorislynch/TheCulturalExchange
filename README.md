
# react-native-the-cultural-exchange

## Getting started

`$ npm install react-native-the-cultural-exchange --save`

### Mostly automatic installation

`$ react-native link react-native-the-cultural-exchange`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-the-cultural-exchange` and add `RNTheCulturalExchange.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNTheCulturalExchange.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNTheCulturalExchangePackage;` to the imports at the top of the file
  - Add `new RNTheCulturalExchangePackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-the-cultural-exchange'
  	project(':react-native-the-cultural-exchange').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-the-cultural-exchange/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-the-cultural-exchange')
  	```

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNTheCulturalExchange.sln` in `node_modules/react-native-the-cultural-exchange/windows/RNTheCulturalExchange.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using The.Cultural.Exchange.RNTheCulturalExchange;` to the usings at the top of the file
  - Add `new RNTheCulturalExchangePackage()` to the `List<IReactPackage>` returned by the `Packages` method


## Usage
```javascript
import RNTheCulturalExchange from 'react-native-the-cultural-exchange';

// TODO: What to do with the module?
RNTheCulturalExchange;
```
  