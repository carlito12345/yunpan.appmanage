.class public final Lcom/hjq/permissions/manifest/node/PermissionManifestInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_MAX_SDK_VERSION:I = 0x7fffffff

.field private static final REQUESTED_PERMISSION_NEVER_FOR_LOCATION:I


# instance fields
.field public maxSdkVersion:I

.field public name:Ljava/lang/String;

.field public usesPermissionFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/hjq/permissions/tools/PermissionVersion;->isAndroid12()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x10000

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sput v1, Lcom/hjq/permissions/manifest/node/PermissionManifestInfo;->REQUESTED_PERMISSION_NEVER_FOR_LOCATION:I

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sput v1, Lcom/hjq/permissions/manifest/node/PermissionManifestInfo;->REQUESTED_PERMISSION_NEVER_FOR_LOCATION:I

    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7fffffff

    .line 5
    .line 6
    .line 7
    iput v0, p0, Lcom/hjq/permissions/manifest/node/PermissionManifestInfo;->maxSdkVersion:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public neverForLocation()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/hjq/permissions/manifest/node/PermissionManifestInfo;->usesPermissionFlags:I

    .line 2
    .line 3
    sget v1, Lcom/hjq/permissions/manifest/node/PermissionManifestInfo;->REQUESTED_PERMISSION_NEVER_FOR_LOCATION:I

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method
