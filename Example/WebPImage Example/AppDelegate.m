// AppDelegate.m
//
// Copyright (c) 2014 – 2020 Mattt (http://mat.tt/)
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

#import "AppDelegate.h"

#import "WebPImageSerialization.h"

@implementation AppDelegate
@synthesize window;

- (BOOL)application:(__unused UIApplication *)application
didFinishLaunchingWithOptions:(__unused NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

    UIViewController *viewController = [[UIViewController alloc] init];
    self.window.rootViewController = viewController;

    UIImage *image = [UIImage imageNamed:@"image.webp"];
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    imageView.autoresizingMask = UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin |
                                    UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    
    CGSize viewSize = viewController.view.frame.size;
    CGSize imageSize = imageView.frame.size;
    if (imageSize.width > viewSize.width || imageSize.height > viewSize.height) {
        CGFloat minimumSize = viewSize.width < viewSize.height ? viewSize.width : viewSize.height;
        imageView.frame = (CGRect){CGPointZero, (CGSize){minimumSize, minimumSize}};
        imageView.frame = CGRectInset(imageView.frame, 20.0, 20.0);
    }
    
    imageView.center = viewController.view.center;
    [viewController.view addSubview:imageView];

    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];

    return YES;
}

@end
