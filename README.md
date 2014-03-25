WebPImageSerialization
======================

`WebPImageSerialization` encodes and decodes between `UIImage` and [WebP](https://developers.google.com/speed/webp/) image data, following the API conventions of Foundation's `NSJSONSerialization` class.

Keen on C functions, are you? Well, `WebPImageSerialization` provides functions as well, for creating a `UIImage` from data, and generating a WebP representation of an existing `UIImage`.

What's that? You'd prefer _not to write any additional code_? You're in luck! **So long as you don't `#define WEBP_NO_UIIMAGE_INITIALIZER_SWIZZLING`, `UIImage` will natively support WebP image data**, allowing you to treat it no differently than `JPEG`, `GIF`, `PNG`, or `TIFF`.

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

![WebP Image](https://github.com/mattt/WebPImageSerialization/blob/master/Example/WebPImage%20Example/image.webp)

---

## Contact

Mattt Thompson

- http://github.com/mattt
- http://twitter.com/mattt
- m@mattt.me

## License

WebPImageSerialization is available under the MIT license. See the LICENSE file for more info.
