.class public final Lkh/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lj$/util/concurrent/ConcurrentHashMap;

.field public static final b:[Ldg/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lkh/m;->a:Lj$/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    const/4 v0, 0x4

    .line 9
    new-array v0, v0, [Ldg/a;

    .line 10
    .line 11
    sput-object v0, Lkh/m;->b:[Ldg/a;

    .line 12
    .line 13
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

.method public static a(Ldg/a;)Ljava/util/ArrayList;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Ldg/a;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Ldg/a;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Ldg/a;->c:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Ldg/a;->d:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v1, Ljava/util/HashMap;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Ldg/a;->e:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 37
    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    iput-object v1, p0, Ldg/a;->f:Ljava/lang/Object;

    .line 41
    .line 42
    iput-boolean v2, p0, Ldg/a;->a:Z

    .line 43
    .line 44
    sget-object v1, Lkh/m;->b:[Ldg/a;

    .line 45
    .line 46
    monitor-enter v1

    .line 47
    :goto_0
    const/4 v3, 0x4

    .line 48
    if-ge v2, v3, :cond_1

    .line 49
    .line 50
    :try_start_0
    sget-object v3, Lkh/m;->b:[Ldg/a;

    .line 51
    .line 52
    aget-object v4, v3, v2

    .line 53
    .line 54
    if-nez v4, :cond_0

    .line 55
    .line 56
    aput-object p0, v3, v2

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    goto :goto_2

    .line 61
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    :goto_1
    monitor-exit v1

    .line 65
    return-object v0

    .line 66
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    goto :goto_4

    .line 68
    :goto_3
    throw p0

    .line 69
    :goto_4
    goto :goto_3
.end method

.method public static b()Ldg/a;
    .locals 5

    .line 1
    sget-object v0, Lkh/m;->b:[Ldg/a;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    const/4 v2, 0x4

    .line 6
    if-ge v1, v2, :cond_1

    .line 7
    .line 8
    :try_start_0
    sget-object v2, Lkh/m;->b:[Ldg/a;

    .line 9
    .line 10
    aget-object v3, v2, v1

    .line 11
    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    aput-object v4, v2, v1

    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-object v3

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    new-instance v0, Ldg/a;

    .line 26
    .line 27
    invoke-direct {v0}, Ldg/a;-><init>()V

    .line 28
    .line 29
    .line 30
    return-object v0

    .line 31
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    goto :goto_3

    .line 33
    :goto_2
    throw v1

    .line 34
    :goto_3
    goto :goto_2
.end method
