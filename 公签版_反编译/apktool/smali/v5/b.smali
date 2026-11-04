.class public final Lv5/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lh5/x;


# instance fields
.field public final a:La0/e;

.field public final b:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v6, Lh5/x;

    .line 2
    .line 3
    new-instance v0, Lh5/k;

    .line 4
    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v11

    .line 9
    new-instance v12, Lt5/c;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {v12, v1}, Lt5/c;-><init>(I)V

    .line 13
    .line 14
    .line 15
    const-class v9, Ljava/lang/Object;

    .line 16
    .line 17
    const-class v10, Ljava/lang/Object;

    .line 18
    .line 19
    const-class v8, Ljava/lang/Object;

    .line 20
    .line 21
    const/4 v13, 0x0

    .line 22
    move-object v7, v0

    .line 23
    invoke-direct/range {v7 .. v13}, Lh5/k;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Lt5/a;Lv3/f;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    const-class v2, Ljava/lang/Object;

    .line 31
    .line 32
    const-class v3, Ljava/lang/Object;

    .line 33
    .line 34
    const-class v1, Ljava/lang/Object;

    .line 35
    .line 36
    const/4 v5, 0x0

    .line 37
    move-object v0, v6

    .line 38
    invoke-direct/range {v0 .. v5}, Lh5/x;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Lv3/f;)V

    .line 39
    .line 40
    .line 41
    sput-object v6, Lv5/b;->c:Lh5/x;

    .line 42
    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, La0/e;

    .line 5
    .line 6
    invoke-direct {v0}, La0/e;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lv5/b;->a:La0/e;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lv5/b;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lh5/x;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lv5/b;->a:La0/e;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lv5/b;->a:La0/e;

    .line 5
    .line 6
    new-instance v2, La6/o;

    .line 7
    .line 8
    invoke-direct {v2, p1, p2, p3}, La6/o;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 9
    .line 10
    .line 11
    if-eqz p4, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object p4, Lv5/b;->c:Lh5/x;

    .line 15
    .line 16
    :goto_0
    invoke-virtual {v1, v2, p4}, La0/t;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p1
.end method
