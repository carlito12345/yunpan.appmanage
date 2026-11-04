.class public abstract Lwb/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwb/d;


# static fields
.field public static final c:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field public a:Lio/github/rosemoe/sora/widget/CodeEditor;

.field public b:Lmb/g;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x2

    .line 10
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 15
    .line 16
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 17
    .line 18
    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 19
    .line 20
    const/16 v1, 0x80

    .line 21
    .line 22
    invoke-direct {v8, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 23
    .line 24
    .line 25
    const/4 v3, 0x2

    .line 26
    const-wide/16 v5, 0x1

    .line 27
    .line 28
    move-object v2, v0

    .line 29
    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Lwb/c;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 33
    .line 34
    return-void
.end method

.method public constructor <init>(Lio/github/rosemoe/sora/widget/CodeEditor;Lmb/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lwb/c;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 5
    .line 6
    iput-object p2, p0, Lwb/c;->b:Lmb/g;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final synthetic b(Lmb/g;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final s(II)[F
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [F

    .line 3
    .line 4
    invoke-interface {p0, p1, p2, v0}, Lwb/d;->e(II[F)[F

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public final t()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lwb/c;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getInlayHints()Lkb/a;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method
