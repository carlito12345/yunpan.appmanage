.class public final Lx/c;
.super La9/o;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/Object;

.field public final c:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, La9/o;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lx/b;

    .line 5
    .line 6
    invoke-direct {v0}, Lx/b;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x4

    .line 10
    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lx/c;->c:Ljava/util/concurrent/ExecutorService;

    .line 15
    .line 16
    return-void
.end method
