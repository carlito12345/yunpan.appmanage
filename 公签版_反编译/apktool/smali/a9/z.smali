.class public final La9/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La9/j;


# instance fields
.field public final a:Ljava/util/Vector;

.field public final b:Lm7/e;


# direct methods
.method public constructor <init>(Lm7/e;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/Vector;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, La9/z;->a:Ljava/util/Vector;

    .line 10
    .line 11
    iput-object p1, p0, La9/z;->b:Lm7/e;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final declared-synchronized a([B)Z
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "from remote:"

    .line 3
    .line 4
    iget-object v1, p0, La9/z;->b:Lm7/e;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {v1, p1, v2}, La9/r;->j(Lm7/e;[B[B)La9/r;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    new-instance v1, La9/i;

    .line 12
    .line 13
    invoke-direct {v1, v0, p1}, La9/i;-><init>(Ljava/lang/String;La9/r;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v1}, La9/z;->b(La9/i;)V
    :try_end_0
    .catch La9/n; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    monitor-exit p0

    .line 20
    const/4 p1, 0x1

    .line 21
    return p1

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    throw p1

    .line 25
    :catch_0
    monitor-exit p0

    .line 26
    const/4 p1, 0x0

    .line 27
    return p1
.end method

.method public final declared-synchronized b(La9/i;)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, La9/z;->a:Ljava/util/Vector;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_4

    .line 9
    .line 10
    iget-object v0, p1, La9/i;->a:La9/r;

    .line 11
    .line 12
    invoke-virtual {v0}, La9/r;->h()[B

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, La9/z;->a:Ljava/util/Vector;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    monitor-exit p0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto :goto_2

    .line 27
    :cond_0
    const/4 v1, 0x0

    .line 28
    :goto_0
    :try_start_1
    iget-object v2, p0, La9/z;->a:Ljava/util/Vector;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-ge v1, v2, :cond_3

    .line 35
    .line 36
    iget-object v2, p0, La9/z;->a:Ljava/util/Vector;

    .line 37
    .line 38
    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, La9/i;

    .line 43
    .line 44
    iget-object v2, v2, La9/i;->a:La9/r;

    .line 45
    .line 46
    invoke-virtual {v2}, La9/r;->h()[B

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    if-eqz v2, :cond_2

    .line 51
    .line 52
    invoke-static {v0, v2}, La9/h0;->a([B[B)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_2

    .line 57
    .line 58
    iget-object v3, p1, La9/i;->a:La9/r;

    .line 59
    .line 60
    iget-boolean v3, v3, La9/r;->d:Z

    .line 61
    .line 62
    if-nez v3, :cond_1

    .line 63
    .line 64
    iget-object v3, p0, La9/z;->a:Ljava/util/Vector;

    .line 65
    .line 66
    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    check-cast v3, La9/i;

    .line 71
    .line 72
    iget-object v3, v3, La9/i;->a:La9/r;

    .line 73
    .line 74
    iget-boolean v3, v3, La9/r;->d:Z

    .line 75
    .line 76
    if-eqz v3, :cond_1

    .line 77
    .line 78
    invoke-virtual {p0, v2}, La9/z;->c([B)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_1
    monitor-exit p0

    .line 83
    return-void

    .line 84
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    :try_start_2
    iget-object v0, p0, La9/z;->a:Ljava/util/Vector;

    .line 88
    .line 89
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    .line 91
    .line 92
    :cond_4
    monitor-exit p0

    .line 93
    return-void

    .line 94
    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 95
    goto :goto_4

    .line 96
    :goto_3
    throw p1

    .line 97
    :goto_4
    goto :goto_3
.end method

.method public final declared-synchronized c([B)Z
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    :try_start_0
    iget-object v2, p0, La9/z;->a:Ljava/util/Vector;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-ge v1, v2, :cond_3

    .line 15
    .line 16
    iget-object v2, p0, La9/z;->a:Ljava/util/Vector;

    .line 17
    .line 18
    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, La9/i;

    .line 23
    .line 24
    iget-object v3, v2, La9/i;->a:La9/r;

    .line 25
    .line 26
    invoke-virtual {v3}, La9/r;->h()[B

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    if-eqz v3, :cond_2

    .line 31
    .line 32
    invoke-static {p1, v3}, La9/h0;->a([B[B)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-nez v3, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    iget-object p1, p0, La9/z;->a:Ljava/util/Vector;

    .line 40
    .line 41
    invoke-virtual {p1, v2}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    iget-object p1, v2, La9/i;->a:La9/r;

    .line 45
    .line 46
    invoke-virtual {p1}, La9/r;->d()V

    .line 47
    .line 48
    .line 49
    const/4 p1, 0x0

    .line 50
    iput-object p1, v2, La9/i;->a:La9/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    monitor-exit p0

    .line 53
    const/4 p1, 0x1

    .line 54
    return p1

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    goto :goto_2

    .line 57
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    monitor-exit p0

    .line 61
    return v0

    .line 62
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    goto :goto_4

    .line 64
    :goto_3
    throw p1

    .line 65
    :goto_4
    goto :goto_3
.end method
