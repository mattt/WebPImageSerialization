// WebPImageSerialization.h
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

@import Foundation;

#if defined(__IPHONE_OS_VERSION_MIN_REQUIRED)

@import UIKit;

NS_ASSUME_NONNULL_BEGIN

/// Decoding WebP Image Data

/**
 
 */
extern __attribute__((overloadable)) UIImage * _Nullable UIImageWithWebPData(NSData *data);

/**
 
 */
extern __attribute__((overloadable)) UIImage * _Nullable UIImageWithWebPData(NSData *data, CGFloat scale, NSError * __autoreleasing *error);

/**
 
 */
extern __attribute__((overloadable)) UIImage * _Nullable UIImageWithWebPData(NSData *data, CGFloat scale, CGSize fittingSize, NSError * __autoreleasing *error);

/// Encoding WebP Image Data

/**

 */
typedef NS_ENUM(NSUInteger, WebPImagePreset) {
    WebPImageDefaultPreset,
    WebPImagePicturePreset,
    WebPImagePhotoPreset,
    WebPImageDrawingPreset,
    WebPImageIconPreset,
    WebPImageTextPreset,
};

/**
 
 */
extern __attribute__((overloadable)) NSData * _Nullable UIImageWebPRepresentation(UIImage *image);

/**
 
 */
extern __attribute__((overloadable)) NSData * _Nullable UIImageWebPRepresentation(UIImage *image, WebPImagePreset preset, CGFloat quality, NSError * __autoreleasing *error);

#pragma mark -

/**
 
 */
@interface WebPImageSerialization : NSObject

/// Creating a WebPImage

/**

 */
+ (UIImage * _Nullable)imageWithData:(NSData *)data
                               error:(NSError * __autoreleasing *)error;

/**

 */
+ (UIImage * _Nullable)imageWithData:(NSData *)data
                               scale:(CGFloat)scale
                               error:(NSError * __autoreleasing *)error;

/**

 */
+ (UIImage * _Nullable)imageWithData:(NSData *)data
                               scale:(CGFloat)scale
                         fittingSize:(CGSize)fittingSize
                               error:(NSError * __autoreleasing *)error;

/// Creating WebPImage Data

/**

 */
+ (NSData * _Nullable)dataWithImage:(UIImage *)image
                              error:(NSError * __autoreleasing *)error;

/**
 
 */
+ (NSData * _Nullable)dataWithImage:(UIImage *)image
                             preset:(WebPImagePreset)preset
                            quality:(CGFloat)quality
                              error:(NSError * __autoreleasing *)error;

@end

/**
 
 */
extern NSString * const WebPImageErrorDomain;

NS_ASSUME_NONNULL_END

#endif
