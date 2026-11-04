.class public Lcom/desay_svautomotive/libsvcarinfo/ModuleID;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FUNCTION_MAP:[I

.field public static final ID_ACCOUNT:I = 0x6

.field public static final ID_AUTO_PARKING:I = 0xa

.field public static final ID_AVP:I = 0x13

.field public static final ID_CAN_DIANOSE:I = 0x9

.field public static final ID_CAR_SETTING:I = 0x0

.field public static final ID_CAR_SETTING_2:I = 0x15

.field public static final ID_CLUSTER:I = 0x7

.field public static final ID_DIANOSE_CONTROL:I = 0xc

.field public static final ID_ERROR_UPLOAD:I = 0xb

.field public static final ID_HVAC:I = 0x10

.field public static final ID_MAX:I = 0x16

.field public static final ID_NEW_ENERGY:I = 0x1

.field public static final ID_OTHER:I = 0x5

.field public static final ID_RADAR:I = 0xf

.field public static final ID_READONLY_INFO:I = 0x4

.field public static final ID_REAR_UNIT:I = 0x11

.field public static final ID_REBOOT_INFO:I = 0xd

.field public static final ID_RVC:I = 0x14

.field public static final ID_SHARE_DATA:I = 0x12

.field public static final ID_TBOX_CALL:I = 0x2

.field public static final ID_TBOX_UPGRADE:I = 0xe

.field public static final ID_VEHICLE_ALARM:I = 0x8

.field public static final ID_VR:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x16

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/desay_svautomotive/libsvcarinfo/ModuleID;->FUNCTION_MAP:[I

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 4
        0xf
        0x10
        0x11
        0x12
        0xfe
        -0x1
        0x14
        0xfa
        0xf9
        0xf8
        0x2
        0xfd
        0xf7
        0xf5
        0xf4
        0x3
        0x7
        0xfb
        -0x2
        0xfc
        0x1
        0x15
    .end array-data
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
