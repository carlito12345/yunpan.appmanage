.class public final Lcom/alibaba/sdk/android/oss/common/OSSConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_BASE_THREAD_POOL_SIZE:I = 0x5

.field public static final DEFAULT_BUFFER_SIZE:I = 0x2000

.field public static final DEFAULT_CHARSET_NAME:Ljava/lang/String; = "utf-8"

.field public static final DEFAULT_CNAME_EXCLUDE_LIST:[Ljava/lang/String;

.field public static final DEFAULT_FILE_SIZE_LIMIT:J = 0x140000000L

.field public static final DEFAULT_OBJECT_CONTENT_TYPE:Ljava/lang/String; = "application/octet-stream"

.field public static final DEFAULT_OSS_ENDPOINT:Ljava/lang/String; = "http://oss-cn-hangzhou.aliyuncs.com"

.field public static final DEFAULT_RETRY_COUNT:I = 0x2

.field public static final DEFAULT_STREAM_BUFFER_SIZE:I = 0x20000

.field public static final DEFAULT_XML_ENCODING:Ljava/lang/String; = "utf-8"

.field public static final KB:I = 0x400

.field public static final MIN_PART_SIZE_LIMIT:J = 0x19000L

.field public static final OBJECT_NAME_MAX_LENGTH:I = 0x400

.field public static final OSS_ORIGN_HOST:[Ljava/lang/String;

.field public static final PRODUCT_DEFAULT:Ljava/lang/String; = "oss"

.field public static final RESOURCE_NAME_COMMON:Ljava/lang/String; = "common"

.field public static final RESOURCE_NAME_OSS:Ljava/lang/String; = "oss"

.field public static final SDK_VERSION:Ljava/lang/String; = "2.9.21"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    const-string v0, "aliyuncs.com"

    .line 2
    .line 3
    const-string v1, "aliyun-inc.com"

    .line 4
    .line 5
    const-string v2, "aliyun.com"

    .line 6
    .line 7
    const/4 v3, 0x3

    .line 8
    new-array v4, v3, [Ljava/lang/String;

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    aput-object v0, v4, v5

    .line 12
    .line 13
    const/4 v6, 0x1

    .line 14
    aput-object v1, v4, v6

    .line 15
    .line 16
    const/4 v7, 0x2

    .line 17
    aput-object v2, v4, v7

    .line 18
    .line 19
    sput-object v4, Lcom/alibaba/sdk/android/oss/common/OSSConstants;->DEFAULT_CNAME_EXCLUDE_LIST:[Ljava/lang/String;

    .line 20
    .line 21
    new-array v3, v3, [Ljava/lang/String;

    .line 22
    .line 23
    aput-object v0, v3, v5

    .line 24
    .line 25
    aput-object v1, v3, v6

    .line 26
    .line 27
    aput-object v2, v3, v7

    .line 28
    .line 29
    sput-object v3, Lcom/alibaba/sdk/android/oss/common/OSSConstants;->OSS_ORIGN_HOST:[Ljava/lang/String;

    .line 30
    .line 31
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
