.class public final Lu1/z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lu1/z;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lu1/z;

    .line 2
    .line 3
    invoke-direct {v0}, Lu1/z;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lu1/z;->a:Lu1/z;

    .line 7
    .line 8
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


# virtual methods
.method public final a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lu1/b0;
    .locals 2

    .line 1
    new-instance v0, Lu1/b0;

    .line 2
    .line 3
    new-instance v1, Landroid/os/Handler;

    .line 4
    .line 5
    invoke-direct {v1, p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lu1/b0;-><init>(Landroid/os/Handler;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method
