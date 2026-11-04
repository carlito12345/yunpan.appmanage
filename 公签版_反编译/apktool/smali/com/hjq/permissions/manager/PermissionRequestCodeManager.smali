.class public final Lcom/hjq/permissions/manager/PermissionRequestCodeManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final RANDOM:Ljava/util/Random;

.field private static final REQUEST_CODE_ARRAY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUEST_CODE_LIMIT_HIGH_VALUE:I = 0xffff

.field public static final REQUEST_CODE_LIMIT_LOW_VALUE:I = 0xff


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/hjq/permissions/manager/PermissionRequestCodeManager;->REQUEST_CODE_ARRAY:Ljava/util/List;

    .line 7
    .line 8
    new-instance v0, Ljava/util/Random;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/hjq/permissions/manager/PermissionRequestCodeManager;->RANDOM:Ljava/util/Random;

    .line 14
    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static declared-synchronized generateRandomRequestCode(I)I
    .locals 4

    .line 1
    const-class v0, Lcom/hjq/permissions/manager/PermissionRequestCodeManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :cond_0
    const/16 v1, 0x4e20

    .line 5
    .line 6
    if-le p0, v1, :cond_1

    .line 7
    .line 8
    add-int/lit16 v1, p0, -0x2710

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    :try_start_0
    div-int/lit8 v1, p0, 0x2

    .line 12
    .line 13
    :goto_0
    sget-object v2, Lcom/hjq/permissions/manager/PermissionRequestCodeManager;->RANDOM:Ljava/util/Random;

    .line 14
    .line 15
    sub-int v3, p0, v1

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    add-int/2addr v2, v1

    .line 22
    const/16 v1, 0x401

    .line 23
    .line 24
    if-eq v2, v1, :cond_0

    .line 25
    .line 26
    sget-object v1, Lcom/hjq/permissions/manager/PermissionRequestCodeManager;->REQUEST_CODE_ARRAY:Ljava/util/List;

    .line 27
    .line 28
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-nez v3, :cond_0

    .line 37
    .line 38
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    monitor-exit v0

    .line 46
    return v2

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    goto :goto_2

    .line 50
    :goto_1
    throw p0

    .line 51
    :goto_2
    goto :goto_1
.end method

.method public static declared-synchronized releaseRequestCode(I)V
    .locals 2

    .line 1
    const-class v0, Lcom/hjq/permissions/manager/PermissionRequestCodeManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/hjq/permissions/manager/PermissionRequestCodeManager;->REQUEST_CODE_ARRAY:Ljava/util/List;

    .line 5
    .line 6
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    throw p0
.end method
