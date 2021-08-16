#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "tomcrypt.h"
#import "tomcrypt_argchk.h"
#import "tomcrypt_cfg.h"
#import "tomcrypt_cipher.h"
#import "tomcrypt_custom.h"
#import "tomcrypt_hash.h"
#import "tomcrypt_mac.h"
#import "tomcrypt_macros.h"
#import "tomcrypt_math.h"
#import "tomcrypt_misc.h"
#import "tomcrypt_pk.h"
#import "tomcrypt_pkcs.h"
#import "tomcrypt_private.h"
#import "tomcrypt_prng.h"

FOUNDATION_EXPORT double libtomcrypt_iosVersionNumber;
FOUNDATION_EXPORT const unsigned char libtomcrypt_iosVersionString[];

