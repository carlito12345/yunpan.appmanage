.class public Lcom/hsae/autosdk/source/SourceConst;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hsae/autosdk/source/SourceConst$App;,
        Lcom/hsae/autosdk/source/SourceConst$AudioWarningState;
    }
.end annotation


# static fields
.field public static ACTIVITY_HIDE:Z = false

.field public static ACTIVITY_SHOW:Z = true

.field public static final AUDIO_CONNECTION_STATE:I = 0x1

.field public static final AUDIO_DISCONNECTION_STATE:I = 0x0

.field public static final AUDIO_LEVLE_1:I = 0x1

.field public static final AUDIO_LEVLE_2:I = 0x2

.field public static final DEFAULT_APP:Lcom/hsae/autosdk/source/SourceConst$App;

.field public static final FUNCTION_NBAND:I = 0x0

.field public static final FUNCTION_NULL:I = -0x1

.field public static final FUNCTION_WBAND:I = 0x1

.field public static final IBINDER_SOURCE:Ljava/lang/String; = "com.hsae.auto.IBINDER_SOURCE"

.field public static final IOCTL_AM_VOLUME:I = 0x111

.field public static final IOCTL_ANDROID_PHONE_VOLUME:I = 0x132

.field public static final IOCTL_AUDIO_LOUDNESS_DISABLE:I = 0x128

.field public static final IOCTL_AUDIO_LOUDNESS_ENABLE:I = 0x127

.field public static final IOCTL_BT_MODE:I = 0x0

.field public static final IOCTL_FM_VOLUME:I = 0x110

.field public static final IOCTL_FUNCTION_AUDIO1:I = 0x103

.field public static final IOCTL_FUNCTION_BTPHONE:I = 0x105

.field public static final IOCTL_FUNCTION_CARPLAY_NBAND:I = 0x107

.field public static final IOCTL_FUNCTION_CARPLAY_WBAND:I = 0x106

.field public static final IOCTL_FUNCTION_MAINVOL_DOWN:I = 0x126

.field public static final IOCTL_FUNCTION_MAINVOL_UP:I = 0x125

.field public static final IOCTL_FUNCTION_MIC1:I = 0x104

.field public static final IOCTL_FUNCTION_NBAND_8k:I = 0x124

.field public static final IOCTL_FUNCTION_WBAND_16K:I = 0x123

.field public static final IOCTL_MEDIA_MODE:I = 0x1

.field public static final IOCTL_MEDIA_VOLUME:I = 0x109

.field public static final IOCTL_TEST_CHECKDEVICE_DISABLE:I = 0x130

.field public static final IOCTL_TEST_CHECKDEVICE_ENABLE:I = 0x129

.field private static final TAG:Ljava/lang/String; = "SourceConst"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/hsae/autosdk/source/SourceConst$App;->LAUNCHER:Lcom/hsae/autosdk/source/SourceConst$App;

    .line 2
    .line 3
    sput-object v0, Lcom/hsae/autosdk/source/SourceConst;->DEFAULT_APP:Lcom/hsae/autosdk/source/SourceConst$App;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
