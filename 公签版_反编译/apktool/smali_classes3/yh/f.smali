.class public final Lyh/f;
.super Lyh/b;
.source "SourceFile"


# instance fields
.field public final b:Lyh/c;

.field public final c:Lyh/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lyh/b;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lyh/c;

    .line 5
    .line 6
    invoke-direct {v0}, Lyh/c;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lyh/f;->b:Lyh/c;

    .line 10
    .line 11
    new-instance v0, Lyh/c;

    .line 12
    .line 13
    invoke-direct {v0}, Lyh/c;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lyh/f;->c:Lyh/c;

    .line 17
    .line 18
    return-void
.end method

.method public static e(Lyh/c;I)Ljava/lang/Object;
    .locals 2

    .line 1
    const v0, 0x8000

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-ge p1, v0, :cond_0

    .line 6
    .line 7
    return-object v1

    .line 8
    :cond_0
    monitor-enter p0

    .line 9
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lyh/d;

    .line 18
    .line 19
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    return-object v1

    .line 23
    :cond_1
    invoke-virtual {p1}, Lyh/d;->a()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Ljava/lang/ref/Reference;

    .line 28
    .line 29
    if-nez p0, :cond_2

    .line 30
    .line 31
    return-object v1

    .line 32
    :cond_2
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    if-eqz p0, :cond_1

    .line 37
    .line 38
    return-object p0

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    goto :goto_1

    .line 42
    :goto_0
    throw p1

    .line 43
    :goto_1
    goto :goto_0
.end method

.method public static f(Lyh/c;Ljava/lang/Object;I)V
    .locals 1

    .line 1
    const v0, 0x8000

    .line 2
    .line 3
    .line 4
    if-ge p2, v0, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    monitor-enter p0

    .line 8
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0, v0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lyh/d;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    new-instance v0, Lyh/d;

    .line 21
    .line 22
    invoke-direct {v0}, Lyh/d;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p0, p2, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    new-instance p0, Ljava/lang/ref/SoftReference;

    .line 37
    .line 38
    invoke-direct {p0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p0}, Lyh/d;->b(Ljava/lang/ref/SoftReference;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    throw p1
.end method


# virtual methods
.method public final a(I)[B
    .locals 1

    .line 1
    iget-object v0, p0, Lyh/f;->b:Lyh/c;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lyh/f;->e(Lyh/c;I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [B

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-array v0, p1, [B

    .line 12
    .line 13
    :cond_0
    return-object v0
.end method

.method public final b(IZ)[I
    .locals 1

    .line 1
    iget-object v0, p0, Lyh/f;->c:Lyh/c;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lyh/f;->e(Lyh/c;I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [I

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-array v0, p1, [I

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    if-eqz p2, :cond_1

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    invoke-static {v0, p1}, Ljava/util/Arrays;->fill([II)V

    .line 18
    .line 19
    .line 20
    :cond_1
    :goto_0
    return-object v0
.end method

.method public final c([B)V
    .locals 2

    .line 1
    array-length v0, p1

    .line 2
    iget-object v1, p0, Lyh/f;->b:Lyh/c;

    .line 3
    .line 4
    invoke-static {v1, p1, v0}, Lyh/f;->f(Lyh/c;Ljava/lang/Object;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final d([I)V
    .locals 2

    .line 1
    array-length v0, p1

    .line 2
    iget-object v1, p0, Lyh/f;->c:Lyh/c;

    .line 3
    .line 4
    invoke-static {v1, p1, v0}, Lyh/f;->f(Lyh/c;Ljava/lang/Object;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
