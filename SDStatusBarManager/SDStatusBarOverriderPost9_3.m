// --------------------------------------------------------------------------------
// The MIT License (MIT)
//
// Copyright (c) 2014 Shiny Development
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.
// --------------------------------------------------------------------------------

#import <UIKit/UIKit.h>
#import "SDStatusBarOverriderPost9_3.h"

enum {
  ItemIsEnabledDoNotDisturb = 1,
  ItemIsEnabledAirplaneIcon,
  ItemIsEnabledGsmSignalStrengthShowDots,
  // 4 : unknown,
  ItemIsEnabledGsmSignalStrengthRawValue,
  ItemIsEnabledBatteryDetailString = 9,
  ItemIsEnabledBatteryBluetoothIcon = 12,
} ItemIsEnabledIndexes;

@class UIStatusBarServer;

// http://localhost:10000/protocols/UIStatusBarServerClient.h
/* Generated by RuntimeBrowser.
 */

@protocol UIStatusBarServerClient

@required

- (void)statusBarServer:(UIStatusBarServer *)arg1 didReceiveDoubleHeightStatusString:(NSString *)arg2 forStyle:(long long)arg3;
- (void)statusBarServer:(UIStatusBarServer *)arg1 didReceiveGlowAnimationState:(bool)arg2 forStyle:(long long)arg3;
- (void)statusBarServer:(UIStatusBarServer *)arg1 didReceiveStatusBarData:(const struct { bool x1[29]; BOOL x2[64]; int x3; int x4; BOOL x5[100]; BOOL x6[100]; BOOL x7[2][100]; BOOL x8[1024]; unsigned int x9; int x10; int x11; unsigned int x12; int x13; unsigned int x14; BOOL x15[150]; int x16; int x17; unsigned int x18 : 1; unsigned int x19 : 1; unsigned int x20 : 1; BOOL x21[256]; unsigned int x22 : 1; unsigned int x23 : 1; unsigned int x24 : 1; unsigned int x25 : 1; unsigned int x26 : 1; unsigned int x27; unsigned int x28 : 1; unsigned int x29 : 1; BOOL x30[256]; BOOL x31[256]; BOOL x32[100]; }*)arg2 withActions:(int)arg3;
- (void)statusBarServer:(UIStatusBarServer *)arg1 didReceiveStyleOverrides:(int)arg2;

@end

// http://localhost:10000/classes/UIStatusBarServer.h (commented some methods, and added structs)
/* Generated by RuntimeBrowser.
 */

typedef struct {
  bool boolitemIsEnabled[29];//x_25_1_1[29]; // boolitemIsEnabled
  char timeString[64];//x_25_1_2[64]; // timeString
  int x_25_1_3; // gsmSignalStrengthRaw
  int gsmSignalStrengthBars;//x_25_1_4; // gsmSignalStrengthBars
  char serviceString[100]; // serviceString
  char serviceCrossfadeString[100];
  char x_25_1_7[2][100];
  char x_25_1_8[1024];
  unsigned int x_25_1_9;
  int x_25_1_10;
  int x_25_1_11;
  unsigned int x_25_1_12;
  int x_25_1_13;
  unsigned int x_25_1_14;
  char batteryDetailString[150];//x_25_1_15[150];
  int x_25_1_16;
  int x_25_1_17;
  unsigned int x_25_1_18 : 1;
  unsigned int x_25_1_19 : 1;
  unsigned int x_25_1_20 : 1;
  char x_25_1_21[256];
  unsigned int bluetoothConnected: 1;//x_25_1_22 : 1;
  unsigned int x_25_1_23 : 1;
  unsigned int x_25_1_24 : 1;
  unsigned int x_25_1_25 : 1;
  unsigned int x_25_1_26 : 1;
  unsigned int x_25_1_27;
  unsigned int x_25_1_28 : 1;
  unsigned int x_25_1_29 : 1;
  char x_25_1_30[256];
  char x_25_1_31[256];
  char x_25_1_32[100];
} StatusBarRawData;

typedef struct {
  bool booloverrideItemIsEnabled[29];//x1[29];
  unsigned int overrideTimeString : 1; // x2 : 1; // overrideTimeString
  unsigned int x3 : 1; // overrideGsmSignalStrengthRaw
  unsigned int overrideGsmSignalStrengthBars: 1;//x4 : 1; // overrideGsmSignalStrengthBars
  unsigned int overrideServiceString: 1;//x5 : 1; // overrideServiceString
  unsigned int x6 : 2; // overrideServiceImages
  unsigned int x7 : 1; // overrideOperatorDirectory
  unsigned int x8 : 1; // overrideServiceContentType
  unsigned int x9 : 1; // overrideWifiSignalStrengthRaw
  unsigned int x10 : 1; // overrideWifiSignalStrengthBars
  unsigned int x11 : 1; // overrideDataNetworkType
  unsigned int x12 : 1; // disallowsCellularDataNetworkTypes
  unsigned int x13 : 1; // overrideBatteryCapacity
  unsigned int x14 : 1; // overrideBatteryState
  unsigned int overrideBatteryDetailString: 1;//x15 : 1; // overrideBatteryDetailString
  unsigned int x16 : 1; // overrideBluetoothBatteryCapacity
  unsigned int x17 : 1; // overrideThermalColor
  unsigned int x18 : 1; // overrideSlowActivity
  unsigned int x19 : 1; // overrideActivityDisplayId
  unsigned int overrideBluetoothConnected: 1; //x20 : 1; // overrideBluetoothConnected
  unsigned int x21 : 1; // overrideDisplayRawGSMSignal
  unsigned int x22 : 1; // overrideDisplayRawWifiSignal
  unsigned int x23 : 1;
  unsigned int x24 : 1;
  StatusBarRawData values;
} StatusBarOverrideData;

@interface UIStatusBarServer : NSObject {
  struct __CFRunLoopSource { } * _source;
  //<UIStatusBarServerClient> * _statusBar;
  id<UIStatusBarServerClient> _statusBar;
}

//@property (nonatomic, retain) <UIStatusBarServerClient> *statusBar;
@property (nonatomic, retain) id<UIStatusBarServerClient> statusBar;

+ (unsigned int)_publisherPort;
+ (unsigned int)_serverPort;
+ (void)addStatusBarItem:(int)arg1;
+ (void)addStyleOverrides:(int)arg1;
+ (id)getDoubleHeightStatusStringForStyle:(long long)arg1;
+ (double)getGlowAnimationEndTimeForStyle:(long long)arg1;
+ (bool)getGlowAnimationStateForStyle:(long long)arg1;
//+ (const struct { bool x1[29]; BOOL x2[64]; int x3; int x4; BOOL x5[100]; BOOL x6[100]; BOOL x7[2][100]; BOOL x8[1024]; unsigned int x9; int x10; int x11; unsigned int x12; int x13; unsigned int x14; BOOL x15[150]; int x16; int x17; unsigned int x18 : 1; unsigned int x19 : 1; unsigned int x20 : 1; BOOL x21[256]; unsigned int x22 : 1; unsigned int x23 : 1; unsigned int x24 : 1; unsigned int x25 : 1; unsigned int x26 : 1; unsigned int x27; unsigned int x28 : 1; unsigned int x29 : 1; BOOL x30[256]; BOOL x31[256]; BOOL x32[100]; }*)getStatusBarData;
+ (const StatusBarRawData *)getStatusBarData;
//+ (struct { bool x1[29]; unsigned int x2 : 1; unsigned int x3 : 1; unsigned int x4 : 1; unsigned int x5 : 1; unsigned int x6 : 2; unsigned int x7 : 1; unsigned int x8 : 1; unsigned int x9 : 1; unsigned int x10 : 1; unsigned int x11 : 1; unsigned int x12 : 1; unsigned int x13 : 1; unsigned int x14 : 1; unsigned int x15 : 1; unsigned int x16 : 1; unsigned int x17 : 1; unsigned int x18 : 1; unsigned int x19 : 1; unsigned int x20 : 1; unsigned int x21 : 1; unsigned int x22 : 1; unsigned int x23 : 1; unsigned int x24 : 1; struct { bool x_25_1_1[29]; BOOL x_25_1_2[64]; int x_25_1_3; int x_25_1_4; BOOL x_25_1_5[100]; BOOL x_25_1_6[100]; BOOL x_25_1_7[2][100]; BOOL x_25_1_8[1024]; unsigned int x_25_1_9; int x_25_1_10; int x_25_1_11; unsigned int x_25_1_12; int x_25_1_13; unsigned int x_25_1_14; BOOL x_25_1_15[150]; int x_25_1_16; int x_25_1_17; unsigned int x_25_1_18 : 1; unsigned int x_25_1_19 : 1; unsigned int x_25_1_20 : 1; BOOL x_25_1_21[256]; unsigned int x_25_1_22 : 1; unsigned int x_25_1_23 : 1; unsigned int x_25_1_24 : 1; unsigned int x_25_1_25 : 1; unsigned int x_25_1_26 : 1; unsigned int x_25_1_27; unsigned int x_25_1_28 : 1; unsigned int x_25_1_29 : 1; BOOL x_25_1_30[256]; BOOL x_25_1_31[256]; BOOL x_25_1_32[100]; } x25; }*)getStatusBarOverrideData;
+ (StatusBarOverrideData *)getStatusBarOverrideData;
+ (int)getStyleOverrides;
+ (void)permanentizeStatusBarOverrideData;
+ (void)postDoubleHeightStatusString:(id)arg1 forStyle:(long long)arg2;
+ (void)postGlowAnimationState:(bool)arg1 forStyle:(long long)arg2;
//+ (void)postStatusBarData:(const struct { bool x1[29]; BOOL x2[64]; int x3; int x4; BOOL x5[100]; BOOL x6[100]; BOOL x7[2][100]; BOOL x8[1024]; unsigned int x9; int x10; int x11; unsigned int x12; int x13; unsigned int x14; BOOL x15[150]; int x16; int x17; unsigned int x18 : 1; unsigned int x19 : 1; unsigned int x20 : 1; BOOL x21[256]; unsigned int x22 : 1; unsigned int x23 : 1; unsigned int x24 : 1; unsigned int x25 : 1; unsigned int x26 : 1; unsigned int x27; unsigned int x28 : 1; unsigned int x29 : 1; BOOL x30[256]; BOOL x31[256]; BOOL x32[100]; }*)arg1 withActions:(int)arg2;
+ (void)postStatusBarData:(const StatusBarRawData *)arg1 withActions:(int)arg2;
//+ (void)postStatusBarOverrideData:(struct { bool x1[29]; unsigned int x2 : 1; unsigned int x3 : 1; unsigned int x4 : 1; unsigned int x5 : 1; unsigned int x6 : 2; unsigned int x7 : 1; unsigned int x8 : 1; unsigned int x9 : 1; unsigned int x10 : 1; unsigned int x11 : 1; unsigned int x12 : 1; unsigned int x13 : 1; unsigned int x14 : 1; unsigned int x15 : 1; unsigned int x16 : 1; unsigned int x17 : 1; unsigned int x18 : 1; unsigned int x19 : 1; unsigned int x20 : 1; unsigned int x21 : 1; unsigned int x22 : 1; unsigned int x23 : 1; unsigned int x24 : 1; struct { bool x_25_1_1[29]; BOOL x_25_1_2[64]; int x_25_1_3; int x_25_1_4; BOOL x_25_1_5[100]; BOOL x_25_1_6[100]; BOOL x_25_1_7[2][100]; BOOL x_25_1_8[1024]; unsigned int x_25_1_9; int x_25_1_10; int x_25_1_11; unsigned int x_25_1_12; int x_25_1_13; unsigned int x_25_1_14; BOOL x_25_1_15[150]; int x_25_1_16; int x_25_1_17; unsigned int x_25_1_18 : 1; unsigned int x_25_1_19 : 1; unsigned int x_25_1_20 : 1; BOOL x_25_1_21[256]; unsigned int x_25_1_22 : 1; unsigned int x_25_1_23 : 1; unsigned int x_25_1_24 : 1; unsigned int x_25_1_25 : 1; unsigned int x_25_1_26 : 1; unsigned int x_25_1_27; unsigned int x_25_1_28 : 1; unsigned int x_25_1_29 : 1; BOOL x_25_1_30[256]; BOOL x_25_1_31[256]; BOOL x_25_1_32[100]; } x25; }*)arg1;
+ (void)postStatusBarOverrideData:(StatusBarOverrideData *)arg1;
+ (void)removeStatusBarItem:(int)arg1;
+ (void)removeStyleOverrides:(int)arg1;
+ (void)runServer;

//- (void).cxx_destruct;
- (void)_receivedDoubleHeightStatus:(const char *)arg1 forStyle:(long long)arg2;
- (void)_receivedGlowAnimationState:(bool)arg1 forStyle:(long long)arg2;
- (void)_receivedStatusBarData:(struct { bool x1[29]; BOOL x2[64]; int x3; int x4; BOOL x5[100]; BOOL x6[100]; BOOL x7[2][100]; BOOL x8[1024]; unsigned int x9; int x10; int x11; unsigned int x12; int x13; unsigned int x14; BOOL x15[150]; int x16; int x17; unsigned int x18 : 1; unsigned int x19 : 1; unsigned int x20 : 1; BOOL x21[256]; unsigned int x22 : 1; unsigned int x23 : 1; unsigned int x24 : 1; unsigned int x25 : 1; unsigned int x26 : 1; unsigned int x27; unsigned int x28 : 1; unsigned int x29 : 1; BOOL x30[256]; BOOL x31[256]; BOOL x32[100]; }*)arg1 actions:(int)arg2;
- (void)_receivedStyleOverrides:(int)arg1;
- (void)dealloc;
- (id)initWithStatusBar:(id)arg1;
//- (void)setStatusBar:(id)arg1;
//- (id)statusBar;

@end

@implementation SDStatusBarOverriderPost9_3

@synthesize timeString;
@synthesize carrierName;
@synthesize bluetoothConnected;
@synthesize bluetoothEnabled;
@synthesize hideBatteryPercentage;

- (void)enableOverrides
{
  StatusBarOverrideData *overrides = [UIStatusBarServer getStatusBarOverrideData];
  
  // Set 9:41 time in current localization
  overrides->overrideTimeString = 1;
  strcpy(overrides->values.timeString, [self.timeString cStringUsingEncoding:NSUTF8StringEncoding]);

  // Enable 5 bars of mobile (iPhone only)
  if ([UIDevice currentDevice].userInterfaceIdiom == UIUserInterfaceIdiomPhone) {
    overrides->booloverrideItemIsEnabled[ItemIsEnabledGsmSignalStrengthShowDots] = 1;
    overrides->values.boolitemIsEnabled[ItemIsEnabledGsmSignalStrengthShowDots] = 1;
    overrides->overrideGsmSignalStrengthBars = 1;
    overrides->values.gsmSignalStrengthBars = 5;
  }
  
  // Remove carrier text for iPhone, set it to "iPad" for the iPad
  NSString *carrierText = self.carrierName;
  if ([carrierText length] <= 0) {
    carrierText = ([UIDevice currentDevice].userInterfaceIdiom == UIUserInterfaceIdiomPhone) ? @"" : @"iPad";
  }
  overrides->overrideServiceString = 1;
  strcpy(overrides->values.serviceString, [carrierText cStringUsingEncoding:NSUTF8StringEncoding]);

  // Battery
  if (self.hideBatteryPercentage) {
    overrides->booloverrideItemIsEnabled[ItemIsEnabledBatteryDetailString] = 0;
    overrides->values.boolitemIsEnabled[ItemIsEnabledBatteryDetailString] = 0;
    overrides->overrideBatteryDetailString = 0;
    strcpy(overrides->values.batteryDetailString, "");
  } else {
    overrides->booloverrideItemIsEnabled[ItemIsEnabledBatteryDetailString] = 1;
    overrides->values.boolitemIsEnabled[ItemIsEnabledBatteryDetailString] = 1;
    overrides->overrideBatteryDetailString = 1;
    strcpy(overrides->values.batteryDetailString, [@"100%" cStringUsingEncoding:NSUTF8StringEncoding]);
  }
  
  // Bluetooth
  overrides->booloverrideItemIsEnabled[ItemIsEnabledBatteryBluetoothIcon] = self.bluetoothEnabled;
  overrides->values.boolitemIsEnabled[ItemIsEnabledBatteryBluetoothIcon] = self.bluetoothEnabled;
  if (self.bluetoothEnabled) {
    overrides->overrideBluetoothConnected = self.bluetoothConnected;
    overrides->values.bluetoothConnected = self.bluetoothConnected;
  }
  
  // Actually update the status bar
  [UIStatusBarServer postStatusBarOverrideData:overrides];
  
  // Lock in the changes, reset simulator will remove this
  [UIStatusBarServer permanentizeStatusBarOverrideData];
}

- (void)disableOverrides
{
  StatusBarOverrideData *overrides = [UIStatusBarServer getStatusBarOverrideData];
  
  // Remove specific overrides (separate flags)
  overrides->overrideTimeString = 0;
  overrides->overrideGsmSignalStrengthBars = 0;
  overrides->overrideBatteryDetailString = 0;
  overrides->overrideBluetoothConnected = 0;
  
  // Remove all overrides that use the array of bools
  memset(overrides->booloverrideItemIsEnabled, 0, sizeof(overrides->booloverrideItemIsEnabled));
  memset(overrides->values.boolitemIsEnabled, 0, sizeof(overrides->values.boolitemIsEnabled));
  
  // Carrier text (it's an override to set it back to the default)
  overrides->overrideServiceString = 1;
  strcpy(overrides->values.serviceString, [NSLocalizedString(@"Carrier", @"Carrier") cStringUsingEncoding:NSUTF8StringEncoding]);
  
  // Actually update the status bar
  [UIStatusBarServer postStatusBarOverrideData:overrides];
  
  // Have to call this to remove all the overrides
  [UIStatusBarServer permanentizeStatusBarOverrideData];
}

@end
