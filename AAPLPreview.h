//
//  AAPLPreview.h
//  VideoCam
//
//  Created by harry bloch on 4/12/16.
//  Copyright © 2016 harry bloch. All rights reserved.
//

#import <UIKit/UIKit.h>
@class AVCaptureSession;

@interface AAPLPreview : UIView

@property (nonatomic) AVCaptureSession *session;

@end
