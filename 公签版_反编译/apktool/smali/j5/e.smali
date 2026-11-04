.class public final Lj5/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj5/a;


# instance fields
.field public final a:La2/g1;

.field public final b:Ljava/io/File;

.field public final c:J

.field public final d:La2/g1;

.field public e:Ld5/d;


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, La2/g1;

    .line 5
    .line 6
    const/16 v1, 0x1a

    .line 7
    .line 8
    invoke-direct {v0, v1}, La2/g1;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lj5/e;->d:La2/g1;

    .line 12
    .line 13
    iput-object p1, p0, Lj5/e;->b:Ljava/io/File;

    .line 14
    .line 15
    iput-wide p2, p0, Lj5/e;->c:J

    .line 16
    .line 17
    new-instance p1, La2/g1;

    .line 18
    .line 19
    const/16 p2, 0x1b

    .line 20
    .line 21
    invoke-direct {p1, p2}, La2/g1;-><init>(I)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lj5/e;->a:La2/g1;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Ld5/d;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lj5/e;->e:Ld5/d;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lj5/e;->b:Ljava/io/File;

    .line 7
    .line 8
    iget-wide v1, p0, Lj5/e;->c:J

    .line 9
    .line 10
    invoke-static {v0, v1, v2}, Ld5/d;->O(Ljava/io/File;J)Ld5/d;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lj5/e;->e:Ld5/d;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    :goto_0
    iget-object v0, p0, Lj5/e;->e:Ld5/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    monitor-exit p0

    .line 22
    return-object v0

    .line 23
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    throw v0
.end method

.method public final n(Lf5/f;Lv3/f;)V
    .locals 6

    .line 1
    const-string v0, "Had two simultaneous puts for: "

    .line 2
    .line 3
    iget-object v1, p0, Lj5/e;->a:La2/g1;

    .line 4
    .line 5
    invoke-virtual {v1, p1}, La2/g1;->T(Lf5/f;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lj5/e;->d:La2/g1;

    .line 10
    .line 11
    monitor-enter v2

    .line 12
    :try_start_0
    iget-object v3, v2, La2/g1;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v3, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    check-cast v3, Lj5/b;

    .line 21
    .line 22
    if-nez v3, :cond_0

    .line 23
    .line 24
    iget-object v3, v2, La2/g1;->c:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v3, Lj5/c;

    .line 27
    .line 28
    invoke-virtual {v3}, Lj5/c;->a()Lj5/b;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    iget-object v4, v2, La2/g1;->b:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v4, Ljava/util/HashMap;

    .line 35
    .line 36
    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    goto/16 :goto_3

    .line 42
    .line 43
    :cond_0
    :goto_0
    iget v4, v3, Lj5/b;->b:I

    .line 44
    .line 45
    const/4 v5, 0x1

    .line 46
    add-int/2addr v4, v5

    .line 47
    iput v4, v3, Lj5/b;->b:I

    .line 48
    .line 49
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    iget-object v2, v3, Lj5/b;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 53
    .line 54
    .line 55
    :try_start_1
    const-string v2, "DiskLruCacheWrapper"

    .line 56
    .line 57
    const/4 v3, 0x2

    .line 58
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_1

    .line 63
    .line 64
    if-eqz p1, :cond_1

    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 67
    .line 68
    .line 69
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lj5/e;->a()Ld5/d;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p1, v1}, Ld5/d;->M(Ljava/lang/String;)La1/i;

    .line 74
    .line 75
    .line 76
    move-result-object v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 77
    if-eqz v2, :cond_2

    .line 78
    .line 79
    iget-object p1, p0, Lj5/e;->d:La2/g1;

    .line 80
    .line 81
    invoke-virtual {p1, v1}, La2/g1;->X(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_2
    :try_start_3
    invoke-virtual {p1, v1}, Ld5/d;->K(Ljava/lang/String;)Landroidx/room/i;

    .line 86
    .line 87
    .line 88
    move-result-object p1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 89
    if-eqz p1, :cond_5

    .line 90
    .line 91
    :try_start_4
    invoke-virtual {p1}, Landroidx/room/i;->e()Ljava/io/File;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    iget-object v2, p2, Lv3/f;->c:Ljava/lang/Object;

    .line 96
    .line 97
    iget-object v3, p2, Lv3/f;->d:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v3, Lf5/i;

    .line 100
    .line 101
    iget-object p2, p2, Lv3/f;->b:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast p2, Lf5/c;

    .line 104
    .line 105
    invoke-interface {p2, v2, v0, v3}, Lf5/c;->g(Ljava/lang/Object;Ljava/io/File;Lf5/i;)Z

    .line 106
    .line 107
    .line 108
    move-result p2

    .line 109
    if-eqz p2, :cond_3

    .line 110
    .line 111
    iget-object p2, p1, Landroidx/room/i;->d:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast p2, Ld5/d;

    .line 114
    .line 115
    invoke-static {p2, p1, v5}, Ld5/d;->r(Ld5/d;Landroidx/room/i;Z)V

    .line 116
    .line 117
    .line 118
    iput-boolean v5, p1, Landroidx/room/i;->a:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 119
    .line 120
    :cond_3
    :try_start_5
    iget-boolean p2, p1, Landroidx/room/i;->a:Z

    .line 121
    .line 122
    if-nez p2, :cond_6

    .line 123
    .line 124
    invoke-virtual {p1}, Landroidx/room/i;->c()V

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :catchall_1
    move-exception p2

    .line 129
    iget-boolean v0, p1, Landroidx/room/i;->a:Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 130
    .line 131
    if-nez v0, :cond_4

    .line 132
    .line 133
    :try_start_6
    invoke-virtual {p1}, Landroidx/room/i;->c()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 134
    .line 135
    .line 136
    :catch_0
    :cond_4
    :try_start_7
    throw p2

    .line 137
    :catchall_2
    move-exception p1

    .line 138
    goto :goto_2

    .line 139
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 140
    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    throw p1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 149
    :catch_1
    :cond_6
    :goto_1
    iget-object p1, p0, Lj5/e;->d:La2/g1;

    .line 150
    .line 151
    invoke-virtual {p1, v1}, La2/g1;->X(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    return-void

    .line 155
    :goto_2
    iget-object p2, p0, Lj5/e;->d:La2/g1;

    .line 156
    .line 157
    invoke-virtual {p2, v1}, La2/g1;->X(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    throw p1

    .line 161
    :goto_3
    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 162
    throw p1
.end method

.method public final y(Lf5/f;)Ljava/io/File;
    .locals 3

    .line 1
    iget-object v0, p0, Lj5/e;->a:La2/g1;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, La2/g1;->T(Lf5/f;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "DiskLruCacheWrapper"

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    :try_start_0
    invoke-virtual {p0}, Lj5/e;->a()Ld5/d;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1, v0}, Ld5/d;->M(Ljava/lang/String;)La1/i;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v0, v0, La1/i;->b:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v0, [Ljava/io/File;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    aget-object p1, v0, v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    :catch_0
    :cond_1
    return-object p1
.end method
