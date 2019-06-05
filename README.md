# WebPImageSerialization

`WebPImageSerialization` encodes and decodes between `UIImage`
and [WebP](https://developers.google.com/speed/webp/) images,
following the API conventions of Foundation's `NSJSONSerialization` class.

By default, `UIImage` initializers can't decode animated images from GIF files.
This library uses swizzling to provide this functionality for you.
To opt out of this behavior,
set `WEBP_NO_UIIMAGE_INITIALIZER_SWIZZLING` in your build environment.
If you're using CocoaPods,
you can add this build setting to your `Podfile`:

```ruby
post_install do |r|
  r.pods_project.targets.each do |target|
    if target.name == 'WebPImageSerialization' then
      target.build_configurations.each do |config|
        config.build_settings['GCC_PREPROCESSOR_DEFINITIONS'] ||=
          ['$(inherited)', 'WEBP_NO_UIIMAGE_INITIALIZER_SWIZZLING=1']
      end
    end
  end
end
```

## Installation

### Carthage

To integrate WebPImageSerialization into your Xcode project using Carthage, specify it in your Cartfile:

```
github "OnlyMyRailgun/WebPImageSerialization" ~> 0.4.0
```

## Usage

### Decoding

```objective-c
UIImageView *imageView = ...;
imageView.image = [UIImage imageNamed:@"image.webp"];
```

### Encoding

```objective-c
NSData *data = UIImageWebPRepresentation(imageView.image);
```

---

## Contact

Mattt ([@mattt](https://twitter.com/mattt))

## License

WebPImageSerialization is available under the MIT license. See the LICENSE file for more info.
