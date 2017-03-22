//
//  AAPLPreview.m
//  VideoCam
//
//  Created by harry bloch on 4/12/16.
//  Copyright © 2016 harry bloch. All rights reserved.
//

#import "AAPLPreview.h"
@import AVFoundation;

@implementation AAPLPreview

+ (Class)layerClass
{
    return [AVCaptureVideoPreviewLayer class];
}

- (AVCaptureSession *)session
{
    AVCaptureVideoPreviewLayer *previewLayer = (AVCaptureVideoPreviewLayer *)self.layer;
    return previewLayer.session;
}

- (void)setSession:(AVCaptureSession *)session
{
    AVCaptureVideoPreviewLayer *previewLayer = (AVCaptureVideoPreviewLayer *)self.layer;
    previewLayer.session = session;
}
@end
