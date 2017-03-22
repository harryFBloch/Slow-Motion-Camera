//
//  ViewController.m
//  VideoCam
//
//  Created by harry bloch on 4/12/16.
//  Copyright © 2016 harry bloch. All rights reserved.
//

#import "ViewController.h"
#import "AAPLPreview.h"

@import AVFoundation;
@import Photos;

typedef NS_ENUM( NSInteger, AVCamSetupResult ) {
    AVCamSetupResultSuccess,
    AVCamSetupResultCameraNotAuthorized,
    AVCamSetupResultSessionConfigurationFailed
};

@interface ViewController ()<AVCaptureFileOutputRecordingDelegate>

- (IBAction)record:(id)sender;
- (IBAction)slowMo:(id)sender;
- (IBAction)switchCAm:(id)sender;
- (IBAction)browseVids:(id)sender;

@property (nonatomic) AVCamSetupResult setupResult;

@property (weak, nonatomic) IBOutlet AAPLPreview *preView;

@property (nonatomic) dispatch_queue_t sessionQueue;
@property (nonatomic) AVCaptureSession *session;
@property (nonatomic) AVCaptureDeviceInput *videoDeviceInput;
@property (nonatomic) AVCaptureMovieFileOutput *movieFileOutput;
@property (nonatomic) AVCaptureStillImageOutput *stillImageOutput;


@property (nonatomic, getter=isSessionRunning) BOOL sessionRunning;
@property (nonatomic) UIBackgroundTaskIdentifier backgroundRecordingID;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self setupSession];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)record:(id)sender {
    
}

- (IBAction)slowMo:(id)sender {
    
}

- (IBAction)switchCAm:(id)sender {
    
}

- (IBAction)browseVids:(id)sender {
    
}
-(void)setupSession{
    self.session = [[AVCaptureSession alloc] init];
    self.preView.session = self.session;
    self.sessionQueue = dispatch_queue_create("session queue", DISPATCH_QUEUE_SERIAL);
    
    
}

@end
























































