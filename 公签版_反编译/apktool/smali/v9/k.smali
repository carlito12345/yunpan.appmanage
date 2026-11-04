.class public abstract Lv9/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/os/Handler;

.field public static final b:Landroidx/media3/exoplayer/video/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lv9/k;->a:Landroid/os/Handler;

    .line 11
    .line 12
    new-instance v0, Landroidx/media3/exoplayer/video/a;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/video/a;-><init>(I)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lv9/k;->b:Landroidx/media3/exoplayer/video/a;

    .line 19
    .line 20
    return-void
.end method
