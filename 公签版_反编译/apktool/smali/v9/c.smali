.class public abstract Lv9/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Lv9/i;

.field public static final b:[Lv9/i;

.field public static c:Z

.field public static d:Lv9/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Lv9/i;

    .line 3
    .line 4
    sput-object v1, Lv9/c;->a:[Lv9/i;

    .line 5
    .line 6
    new-array v0, v0, [Lv9/i;

    .line 7
    .line 8
    sput-object v0, Lv9/c;->b:[Lv9/i;

    .line 9
    .line 10
    return-void
.end method

.method public static declared-synchronized a()Lv9/i;
    .locals 3

    .line 1
    const-class v0, Lv9/c;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lv9/c;->b()Lv9/i;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-nez v1, :cond_2

    .line 9
    .line 10
    sget-boolean v1, Lv9/c;->c:Z

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    sput-boolean v1, Lv9/c;->c:Z

    .line 16
    .line 17
    sget-object v1, Lv9/c;->d:Lv9/a;

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    new-instance v1, Lv9/a;

    .line 22
    .line 23
    invoke-direct {v1}, Lv9/a;-><init>()V

    .line 24
    .line 25
    .line 26
    sput-object v1, Lv9/c;->d:Lv9/a;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception v1

    .line 30
    goto :goto_2

    .line 31
    :cond_0
    :goto_0
    sget-object v1, Lv9/c;->d:Lv9/a;

    .line 32
    .line 33
    invoke-virtual {v1}, Lv9/a;->a()Lv9/i;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const/4 v2, 0x0

    .line 38
    sput-boolean v2, Lv9/c;->c:Z

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    new-instance v1, Lu9/a;

    .line 42
    .line 43
    invoke-direct {v1}, Lu9/a;-><init>()V

    .line 44
    .line 45
    .line 46
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :cond_2
    :goto_1
    monitor-exit v0

    .line 48
    return-object v1

    .line 49
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    throw v1
.end method

.method public static b()Lv9/i;
    .locals 6

    .line 1
    sget-object v0, Lv9/c;->a:[Lv9/i;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lv9/c;->b:[Lv9/i;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aget-object v3, v1, v2

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    if-eqz v3, :cond_0

    .line 11
    .line 12
    iget v5, v3, Lv9/i;->c:I

    .line 13
    .line 14
    if-gez v5, :cond_0

    .line 15
    .line 16
    aput-object v4, v1, v2

    .line 17
    .line 18
    move-object v3, v4

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_2

    .line 22
    :cond_0
    :goto_0
    if-nez v3, :cond_2

    .line 23
    .line 24
    aget-object v1, v0, v2

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    iget v3, v1, Lv9/i;->c:I

    .line 29
    .line 30
    if-gez v3, :cond_1

    .line 31
    .line 32
    aput-object v4, v0, v2

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move-object v4, v1

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    move-object v4, v3

    .line 38
    :goto_1
    monitor-exit v0

    .line 39
    return-object v4

    .line 40
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw v1
.end method
