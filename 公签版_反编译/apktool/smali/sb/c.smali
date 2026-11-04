.class public final Lsb/c;
.super Landroid/os/Handler;
.source "SourceFile"


# static fields
.field public static final a:Lsb/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lsb/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lsb/c;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lsb/c;->a:Lsb/c;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
