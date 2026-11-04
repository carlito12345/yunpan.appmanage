.class public Lvd/s;
.super Ljava/net/URLConnection;
.source "SourceFile"

# interfaces
.implements Lvc/n;


# static fields
.field public static final i:Lorg/slf4j/Logger;


# instance fields
.field public a:J

.field public b:J

.field public c:J

.field public d:J

.field public final e:Lvc/b;

.field public final f:Lvd/e0;

.field public final g:Lvd/y;

.field public h:Lvd/g0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lvd/s;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lvd/s;->i:Lorg/slf4j/Logger;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lxc/a;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/net/URL;

    .line 2
    iget-object v1, p2, Lxc/a;->d:Lvd/g;

    const/4 v2, 0x0

    .line 3
    invoke-direct {v0, v2, p1, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    invoke-direct {p0, v0, p2}, Lvd/s;-><init>(Ljava/net/URL;Lvc/b;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lvc/b;)V
    .locals 2

    .line 4
    invoke-direct {p0, p1}, Ljava/net/URLConnection;-><init>(Ljava/net/URL;)V

    .line 5
    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p2, Ljava/net/MalformedURLException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid SMB URL: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 7
    :cond_1
    :goto_0
    iput-object p2, p0, Lvd/s;->e:Lvc/b;

    .line 8
    new-instance v0, Lvd/y;

    invoke-direct {v0, p1, p2}, Lvd/y;-><init>(Ljava/net/URL;Lvc/b;)V

    iput-object v0, p0, Lvd/s;->g:Lvd/y;

    .line 9
    sget-object p1, Lvd/e0;->f:Lorg/slf4j/Logger;

    .line 10
    invoke-interface {p2}, Lvc/b;->e()Lvc/f;

    move-result-object p1

    check-cast p1, Lwc/a;

    .line 11
    iget-boolean p1, p1, Lwc/a;->n0:Z

    if-eqz p1, :cond_2

    .line 12
    new-instance p1, Lvd/f0;

    invoke-direct {p1, p2}, Lvd/f0;-><init>(Lvc/b;)V

    goto :goto_1

    .line 13
    :cond_2
    new-instance p1, Lvd/e0;

    invoke-direct {p1, p2}, Lvd/e0;-><init>(Lvc/b;)V

    .line 14
    :goto_1
    iput-object p1, p0, Lvd/s;->f:Lvd/e0;

    return-void
.end method


# virtual methods
.method public final declared-synchronized A()Lvd/g0;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lvd/s;->h:Lvd/g0;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, v0, Lvd/g0;->b:Lvd/e0;

    .line 7
    .line 8
    invoke-virtual {v0}, Lvd/e0;->l()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lvd/s;->h:Lvd/g0;

    .line 16
    .line 17
    invoke-virtual {v0}, Lvd/g0;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    monitor-exit p0

    .line 21
    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    :try_start_1
    iget-object v0, p0, Lvd/s;->h:Lvd/g0;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    iget-object v0, p0, Lvd/s;->e:Lvc/b;

    .line 29
    .line 30
    invoke-interface {v0}, Lvc/b;->e()Lvc/f;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lwc/a;

    .line 35
    .line 36
    iget-boolean v0, v0, Lwc/a;->o0:Z

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    iget-object v0, p0, Lvd/s;->h:Lvd/g0;

    .line 41
    .line 42
    invoke-virtual {v0}, Lvd/g0;->P()V

    .line 43
    .line 44
    .line 45
    :cond_2
    iget-object v0, p0, Lvd/s;->f:Lvd/e0;

    .line 46
    .line 47
    iget-object v1, p0, Lvd/s;->g:Lvd/y;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lvd/e0;->f(Lvd/y;)Lvd/g0;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iput-object v0, p0, Lvd/s;->h:Lvd/g0;

    .line 54
    .line 55
    iget-object v1, v0, Lvd/g0;->b:Lvd/e0;

    .line 56
    .line 57
    iget-object v0, v0, Lvd/g0;->a:Lvd/y;

    .line 58
    .line 59
    const/4 v2, 0x0

    .line 60
    invoke-virtual {v1, v0, v2}, Lvd/e0;->h(Lvd/y;Lad/f;)Lvd/y;

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lvd/s;->e:Lvc/b;

    .line 64
    .line 65
    invoke-interface {v0}, Lvc/b;->e()Lvc/f;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Lwc/a;

    .line 70
    .line 71
    iget-boolean v0, v0, Lwc/a;->o0:Z

    .line 72
    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    iget-object v0, p0, Lvd/s;->h:Lvd/g0;

    .line 76
    .line 77
    invoke-virtual {v0}, Lvd/g0;->r()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    .line 79
    .line 80
    monitor-exit p0

    .line 81
    return-object v0

    .line 82
    :cond_3
    :try_start_2
    iget-object v0, p0, Lvd/s;->h:Lvd/g0;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    .line 84
    monitor-exit p0

    .line 85
    return-object v0

    .line 86
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 87
    throw v0
.end method

.method public J()I
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    :try_start_0
    iget-object v2, p0, Lvd/s;->g:Lvd/y;

    .line 4
    .line 5
    invoke-virtual {v2}, Lvd/y;->e()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/16 v3, 0x8

    .line 10
    .line 11
    if-ne v2, v3, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lvd/s;->A()Lvd/g0;

    .line 14
    .line 15
    .line 16
    move-result-object v3
    :try_end_0
    .catch Lvc/c; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :try_start_1
    iget-object v4, p0, Lvd/s;->g:Lvd/y;

    .line 18
    .line 19
    invoke-virtual {v3}, Lvd/g0;->M()I

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    iput v5, v4, Lvd/y;->h:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    .line 25
    :try_start_2
    invoke-virtual {v3}, Lvd/g0;->close()V
    :try_end_2
    .catch Lvc/c; {:try_start_2 .. :try_end_2} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :catch_0
    move-exception v0

    .line 30
    goto :goto_2

    .line 31
    :catchall_0
    move-exception v2

    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    :try_start_3
    invoke-virtual {v3}, Lvd/g0;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_1
    move-exception v3

    .line 39
    :try_start_4
    const-class v4, Ljava/lang/Throwable;
    :try_end_4
    .catch Lvc/c; {:try_start_4 .. :try_end_4} :catch_0

    .line 40
    .line 41
    :try_start_5
    const-string v5, "addSuppressed"

    .line 42
    .line 43
    new-array v6, v1, [Ljava/lang/Class;

    .line 44
    .line 45
    aput-object v4, v6, v0

    .line 46
    .line 47
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    new-array v1, v1, [Ljava/lang/Object;

    .line 52
    .line 53
    aput-object v3, v1, v0

    .line 54
    .line 55
    invoke-virtual {v4, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 56
    .line 57
    .line 58
    :catch_1
    :cond_0
    :goto_0
    :try_start_6
    throw v2
    :try_end_6
    .catch Lvc/c; {:try_start_6 .. :try_end_6} :catch_0

    .line 59
    :cond_1
    :goto_1
    return v2

    .line 60
    :goto_2
    invoke-static {v0}, Lvd/r;->c(Lvc/c;)Lvd/r;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    throw v0
.end method

.method public final K()J
    .locals 9

    .line 1
    iget-object v0, p0, Lvd/s;->g:Lvd/y;

    .line 2
    .line 3
    invoke-virtual {v0}, Lvd/y;->f()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-wide/16 v1, 0x0

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    if-gt v0, v3, :cond_0

    .line 15
    .line 16
    return-wide v1

    .line 17
    :cond_0
    iget-wide v4, p0, Lvd/s;->b:J

    .line 18
    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide v6

    .line 23
    sget-object v0, Lvd/s;->i:Lorg/slf4j/Logger;

    .line 24
    .line 25
    cmp-long v8, v4, v6

    .line 26
    .line 27
    if-lez v8, :cond_1

    .line 28
    .line 29
    const-string v1, "Using cached attributes"

    .line 30
    .line 31
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto/16 :goto_7

    .line 35
    .line 36
    :cond_1
    iput-wide v1, p0, Lvd/s;->a:J

    .line 37
    .line 38
    :try_start_0
    iget-object v1, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_2

    .line 49
    .line 50
    goto/16 :goto_6

    .line 51
    .line 52
    :cond_2
    iget-object v1, p0, Lvd/s;->g:Lvd/y;

    .line 53
    .line 54
    invoke-virtual {v1}, Lvd/y;->d()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    if-nez v1, :cond_4

    .line 59
    .line 60
    iget-object v1, p0, Lvd/s;->g:Lvd/y;

    .line 61
    .line 62
    invoke-virtual {v1}, Lvd/y;->e()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    const/4 v2, 0x2

    .line 67
    const/4 v4, 0x0

    .line 68
    if-ne v1, v2, :cond_3

    .line 69
    .line 70
    iget-object v1, p0, Lvd/s;->e:Lvc/b;

    .line 71
    .line 72
    invoke-interface {v1}, Lvc/b;->i()Lvc/k;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    iget-object v2, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    check-cast v1, Lsd/f;

    .line 83
    .line 84
    invoke-virtual {v1, v2, v3}, Lsd/f;->e(Ljava/lang/String;Z)[Lsd/k;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    aget-object v0, v1, v4

    .line 89
    .line 90
    goto :goto_6

    .line 91
    :catch_0
    move-exception v0

    .line 92
    goto :goto_3

    .line 93
    :catch_1
    move-exception v1

    .line 94
    goto :goto_4

    .line 95
    :catch_2
    move-exception v1

    .line 96
    goto :goto_5

    .line 97
    :cond_3
    iget-object v1, p0, Lvd/s;->e:Lvc/b;

    .line 98
    .line 99
    invoke-interface {v1}, Lvc/b;->i()Lvc/k;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    iget-object v2, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 104
    .line 105
    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    check-cast v1, Lsd/f;

    .line 110
    .line 111
    invoke-virtual {v1, v2, v4}, Lsd/f;->e(Ljava/lang/String;Z)[Lsd/k;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    aget-object v1, v1, v4

    .line 116
    .line 117
    invoke-virtual {v1}, Lsd/k;->c()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    goto :goto_6

    .line 121
    :cond_4
    invoke-virtual {p0}, Lvd/s;->A()Lvd/g0;

    .line 122
    .line 123
    .line 124
    move-result-object v1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lvd/r; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lvc/c; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :try_start_1
    iget-object v2, p0, Lvd/s;->g:Lvd/y;

    .line 126
    .line 127
    invoke-virtual {v2}, Lvd/y;->e()I

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    const/16 v3, 0x8

    .line 132
    .line 133
    if-ne v2, v3, :cond_5

    .line 134
    .line 135
    invoke-virtual {p0}, Lvd/s;->A()Lvd/g0;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    if-eqz v2, :cond_6

    .line 140
    .line 141
    invoke-virtual {v2}, Lvd/g0;->close()V

    .line 142
    .line 143
    .line 144
    goto :goto_0

    .line 145
    :catchall_0
    move-exception v2

    .line 146
    goto :goto_1

    .line 147
    :cond_5
    iget-object v2, p0, Lvd/s;->g:Lvd/y;

    .line 148
    .line 149
    invoke-virtual {v2}, Lvd/y;->f()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    const/4 v3, 0x4

    .line 154
    invoke-virtual {p0, v1, v2, v3}, Lvd/s;->O(Lvd/g0;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    .line 156
    .line 157
    :cond_6
    :goto_0
    if-eqz v1, :cond_8

    .line 158
    .line 159
    :try_start_2
    invoke-virtual {v1}, Lvd/g0;->close()V
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lvd/r; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lvc/c; {:try_start_2 .. :try_end_2} :catch_0

    .line 160
    .line 161
    .line 162
    goto :goto_6

    .line 163
    :goto_1
    if-eqz v1, :cond_7

    .line 164
    .line 165
    :try_start_3
    invoke-virtual {v1}, Lvd/g0;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 166
    .line 167
    .line 168
    goto :goto_2

    .line 169
    :catchall_1
    move-exception v1

    .line 170
    :try_start_4
    invoke-static {v2, v1}, Lta/q;->u(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 171
    .line 172
    .line 173
    :cond_7
    :goto_2
    throw v2
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lvd/r; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lvc/c; {:try_start_4 .. :try_end_4} :catch_0

    .line 174
    :goto_3
    invoke-static {v0}, Lvd/r;->c(Lvc/c;)Lvd/r;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    throw v0

    .line 179
    :goto_4
    const-string v2, "exists:"

    .line 180
    .line 181
    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 182
    .line 183
    .line 184
    iget v0, v1, Lvd/r;->a:I

    .line 185
    .line 186
    sparse-switch v0, :sswitch_data_0

    .line 187
    .line 188
    .line 189
    throw v1

    .line 190
    :goto_5
    const-string v2, "Unknown host"

    .line 191
    .line 192
    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 193
    .line 194
    .line 195
    :cond_8
    :goto_6
    :sswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 196
    .line 197
    .line 198
    move-result-wide v0

    .line 199
    iget-object v2, p0, Lvd/s;->e:Lvc/b;

    .line 200
    .line 201
    invoke-interface {v2}, Lvc/b;->e()Lvc/f;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    check-cast v2, Lwc/a;

    .line 206
    .line 207
    iget-wide v2, v2, Lwc/a;->l0:J

    .line 208
    .line 209
    add-long/2addr v0, v2

    .line 210
    iput-wide v0, p0, Lvd/s;->b:J

    .line 211
    .line 212
    :goto_7
    iget-wide v0, p0, Lvd/s;->a:J

    .line 213
    .line 214
    return-wide v0

    .line 215
    :sswitch_data_0
    .sparse-switch
        -0x3ffffff1 -> :sswitch_0
        -0x3fffffcd -> :sswitch_0
        -0x3fffffcc -> :sswitch_0
        -0x3fffffc6 -> :sswitch_0
    .end sparse-switch
.end method

.method public final L()J
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-wide v2, p0, Lvd/s;->d:J

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v4

    .line 9
    cmp-long v6, v2, v4

    .line 10
    .line 11
    if-lez v6, :cond_0

    .line 12
    .line 13
    iget-wide v0, p0, Lvd/s;->c:J

    .line 14
    .line 15
    return-wide v0

    .line 16
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lvd/s;->A()Lvd/g0;

    .line 17
    .line 18
    .line 19
    move-result-object v2
    :try_end_0
    .catch Lvc/c; {:try_start_0 .. :try_end_0} :catch_1

    .line 20
    :try_start_1
    invoke-virtual {p0}, Lvd/s;->J()I

    .line 21
    .line 22
    .line 23
    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    const/16 v4, 0x8

    .line 25
    .line 26
    if-ne v3, v4, :cond_3

    .line 27
    .line 28
    const/4 v3, 0x3

    .line 29
    :try_start_2
    invoke-virtual {p0, v2, v3}, Lvd/s;->N(Lvd/g0;B)Ldd/h;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Lad/a;
    :try_end_2
    .catch Lvd/r; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception v3

    .line 37
    :try_start_3
    sget-object v4, Lvd/s;->i:Lorg/slf4j/Logger;

    .line 38
    .line 39
    const-string v5, "getDiskFreeSpace"

    .line 40
    .line 41
    invoke-interface {v4, v5, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    iget v4, v3, Lvd/r;->a:I

    .line 45
    .line 46
    const v5, -0x3fffffff    # -2.0000002f

    .line 47
    .line 48
    .line 49
    if-eq v4, v5, :cond_1

    .line 50
    .line 51
    const v5, -0x3ffffffd    # -2.0000007f

    .line 52
    .line 53
    .line 54
    if-ne v4, v5, :cond_2

    .line 55
    .line 56
    :cond_1
    invoke-virtual {v2}, Lvd/g0;->O()Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-nez v4, :cond_2

    .line 61
    .line 62
    const/4 v3, -0x1

    .line 63
    invoke-virtual {p0, v2, v3}, Lvd/s;->N(Lvd/g0;B)Ldd/h;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    check-cast v3, Lad/a;

    .line 68
    .line 69
    :goto_0
    invoke-interface {v3}, Lad/a;->w()J

    .line 70
    .line 71
    .line 72
    move-result-wide v3

    .line 73
    iput-wide v3, p0, Lvd/s;->c:J

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :catchall_0
    move-exception v3

    .line 77
    goto :goto_4

    .line 78
    :cond_2
    throw v3

    .line 79
    :cond_3
    iget-object v4, p0, Lvd/s;->g:Lvd/y;

    .line 80
    .line 81
    invoke-virtual {v4}, Lvd/y;->d()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    if-nez v5, :cond_4

    .line 86
    .line 87
    invoke-virtual {v4}, Lvd/y;->f()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    if-gt v4, v1, :cond_4

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_4
    const/16 v4, 0x10

    .line 99
    .line 100
    if-eq v3, v4, :cond_5

    .line 101
    .line 102
    iget-object v3, p0, Lvd/s;->g:Lvd/y;

    .line 103
    .line 104
    invoke-virtual {v3}, Lvd/y;->f()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    const/4 v4, 0x5

    .line 109
    invoke-virtual {p0, v2, v3, v4}, Lvd/s;->O(Lvd/g0;Ljava/lang/String;I)V

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_5
    :goto_1
    const-wide/16 v3, 0x0

    .line 114
    .line 115
    iput-wide v3, p0, Lvd/s;->c:J

    .line 116
    .line 117
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 118
    .line 119
    .line 120
    move-result-wide v3

    .line 121
    iget-object v5, p0, Lvd/s;->e:Lvc/b;

    .line 122
    .line 123
    invoke-interface {v5}, Lvc/b;->e()Lvc/f;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    check-cast v5, Lwc/a;

    .line 128
    .line 129
    iget-wide v5, v5, Lwc/a;->l0:J

    .line 130
    .line 131
    add-long/2addr v3, v5

    .line 132
    iput-wide v3, p0, Lvd/s;->d:J

    .line 133
    .line 134
    iget-wide v0, p0, Lvd/s;->c:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 135
    .line 136
    if-eqz v2, :cond_6

    .line 137
    .line 138
    :try_start_4
    invoke-virtual {v2}, Lvd/g0;->close()V
    :try_end_4
    .catch Lvc/c; {:try_start_4 .. :try_end_4} :catch_1

    .line 139
    .line 140
    .line 141
    goto :goto_3

    .line 142
    :catch_1
    move-exception v0

    .line 143
    goto :goto_6

    .line 144
    :cond_6
    :goto_3
    return-wide v0

    .line 145
    :goto_4
    if-eqz v2, :cond_7

    .line 146
    .line 147
    :try_start_5
    invoke-virtual {v2}, Lvd/g0;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 148
    .line 149
    .line 150
    goto :goto_5

    .line 151
    :catchall_1
    move-exception v2

    .line 152
    :try_start_6
    const-class v4, Ljava/lang/Throwable;
    :try_end_6
    .catch Lvc/c; {:try_start_6 .. :try_end_6} :catch_1

    .line 153
    .line 154
    :try_start_7
    const-string v5, "addSuppressed"

    .line 155
    .line 156
    new-array v6, v1, [Ljava/lang/Class;

    .line 157
    .line 158
    aput-object v4, v6, v0

    .line 159
    .line 160
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    new-array v1, v1, [Ljava/lang/Object;

    .line 165
    .line 166
    aput-object v2, v1, v0

    .line 167
    .line 168
    invoke-virtual {v4, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 169
    .line 170
    .line 171
    :catch_2
    :cond_7
    :goto_5
    :try_start_8
    throw v3
    :try_end_8
    .catch Lvc/c; {:try_start_8 .. :try_end_8} :catch_1

    .line 172
    :goto_6
    invoke-static {v0}, Lvd/r;->c(Lvc/c;)Lvd/r;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    throw v0
.end method

.method public final M(Ljava/lang/String;IIII)Lvd/t;
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v9, p1

    .line 4
    .line 5
    const/16 v0, 0x20

    .line 6
    .line 7
    const/16 v2, 0x40

    .line 8
    .line 9
    const/4 v3, 0x4

    .line 10
    const/4 v4, 0x3

    .line 11
    const/4 v5, 0x5

    .line 12
    const/16 v6, 0x10

    .line 13
    .line 14
    const/4 v8, 0x2

    .line 15
    const/4 v13, 0x1

    .line 16
    const/4 v14, 0x0

    .line 17
    sget-object v10, Lvd/s;->i:Lorg/slf4j/Logger;

    .line 18
    .line 19
    invoke-virtual/range {p0 .. p0}, Lvd/s;->A()Lvd/g0;

    .line 20
    .line 21
    .line 22
    move-result-object v15

    .line 23
    :try_start_0
    invoke-interface {v10}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    const/16 v11, 0x80

    .line 28
    .line 29
    if-eqz v7, :cond_0

    .line 30
    .line 31
    const-string v7, "openUnshared: %s flags: %x access: %x attrs: %x options: %x"

    .line 32
    .line 33
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v12

    .line 37
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v16

    .line 41
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v17

    .line 45
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v18

    .line 49
    new-array v11, v5, [Ljava/lang/Object;

    .line 50
    .line 51
    aput-object v9, v11, v14

    .line 52
    .line 53
    aput-object v12, v11, v13

    .line 54
    .line 55
    aput-object v16, v11, v8

    .line 56
    .line 57
    aput-object v17, v11, v4

    .line 58
    .line 59
    aput-object v18, v11, v3

    .line 60
    .line 61
    invoke-static {v7, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    invoke-interface {v10, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catchall_0
    move-exception v0

    .line 70
    move-object v2, v0

    .line 71
    goto/16 :goto_7

    .line 72
    .line 73
    :cond_0
    :goto_0
    invoke-virtual {v15}, Lvd/g0;->J()Lvc/f;

    .line 74
    .line 75
    .line 76
    move-result-object v11

    .line 77
    invoke-virtual {v15}, Lvd/g0;->O()Z

    .line 78
    .line 79
    .line 80
    move-result v7

    .line 81
    if-eqz v7, :cond_5

    .line 82
    .line 83
    new-instance v7, Ljd/d;

    .line 84
    .line 85
    invoke-direct {v7, v9, v11}, Ljd/d;-><init>(Ljava/lang/String;Lvc/f;)V

    .line 86
    .line 87
    .line 88
    move/from16 v12, p3

    .line 89
    .line 90
    iput v12, v7, Ljd/d;->y:I

    .line 91
    .line 92
    and-int/lit8 v10, p2, 0x40

    .line 93
    .line 94
    if-ne v10, v2, :cond_1

    .line 95
    .line 96
    and-int/lit8 v14, p2, 0x10

    .line 97
    .line 98
    if-ne v14, v6, :cond_1

    .line 99
    .line 100
    iput v5, v7, Ljd/d;->B:I

    .line 101
    .line 102
    :goto_1
    move/from16 v0, p4

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_1
    if-ne v10, v2, :cond_2

    .line 106
    .line 107
    iput v3, v7, Ljd/d;->B:I

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_2
    and-int/lit8 v2, p2, 0x20

    .line 111
    .line 112
    if-ne v2, v0, :cond_3

    .line 113
    .line 114
    iput v8, v7, Ljd/d;->B:I

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_3
    and-int/lit8 v0, p2, 0x10

    .line 118
    .line 119
    if-ne v0, v6, :cond_4

    .line 120
    .line 121
    iput v4, v7, Ljd/d;->B:I

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_4
    iput v13, v7, Ljd/d;->B:I

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :goto_2
    iput v0, v7, Ljd/d;->A:I

    .line 128
    .line 129
    const/16 v0, 0x80

    .line 130
    .line 131
    iput v0, v7, Ljd/d;->z:I

    .line 132
    .line 133
    const/4 v2, 0x0

    .line 134
    new-array v0, v2, [Lvd/l;

    .line 135
    .line 136
    const/4 v2, 0x0

    .line 137
    invoke-virtual {v15, v7, v2, v0}, Lvd/g0;->Q(Lad/c;Lad/d;[Lvd/l;)Lad/d;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    check-cast v0, Ljd/e;

    .line 142
    .line 143
    iget-wide v7, v0, Ljd/e;->E:J

    .line 144
    .line 145
    new-instance v14, Lvd/t;

    .line 146
    .line 147
    iget-object v4, v0, Ljd/e;->F:[B

    .line 148
    .line 149
    iget-wide v5, v0, Ljd/e;->E:J

    .line 150
    .line 151
    move-object v2, v14

    .line 152
    move-object v3, v11

    .line 153
    move-wide/from16 v17, v5

    .line 154
    .line 155
    move-object v5, v15

    .line 156
    move-object/from16 v6, p1

    .line 157
    .line 158
    move-wide/from16 v19, v7

    .line 159
    .line 160
    move/from16 v7, p2

    .line 161
    .line 162
    move/from16 v8, p3

    .line 163
    .line 164
    move-wide/from16 v9, v17

    .line 165
    .line 166
    invoke-direct/range {v2 .. v10}, Lvd/t;-><init>(Lvc/f;[BLvd/g0;Ljava/lang/String;IIJ)V

    .line 167
    .line 168
    .line 169
    move-object v13, v11

    .line 170
    move-wide/from16 v7, v19

    .line 171
    .line 172
    const/4 v2, 0x1

    .line 173
    const/4 v5, 0x1

    .line 174
    goto/16 :goto_6

    .line 175
    .line 176
    :cond_5
    move/from16 v12, p3

    .line 177
    .line 178
    move/from16 v0, p4

    .line 179
    .line 180
    invoke-virtual {v15, v6}, Lvd/g0;->N(I)Z

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    if-eqz v2, :cond_6

    .line 185
    .line 186
    new-instance v14, Lfd/h;

    .line 187
    .line 188
    invoke-direct {v14, v11}, Lfd/h;-><init>(Lvc/f;)V

    .line 189
    .line 190
    .line 191
    new-instance v10, Lfd/g;

    .line 192
    .line 193
    move-object v2, v10

    .line 194
    move-object v3, v11

    .line 195
    move-object/from16 v4, p1

    .line 196
    .line 197
    move/from16 v5, p2

    .line 198
    .line 199
    move/from16 v6, p3

    .line 200
    .line 201
    move/from16 v7, p4

    .line 202
    .line 203
    move/from16 v8, p5

    .line 204
    .line 205
    invoke-direct/range {v2 .. v8}, Lfd/g;-><init>(Lvc/f;Ljava/lang/String;IIII)V

    .line 206
    .line 207
    .line 208
    const/4 v2, 0x0

    .line 209
    new-array v0, v2, [Lvd/l;

    .line 210
    .line 211
    invoke-virtual {v15, v10, v14, v0}, Lvd/g0;->Q(Lad/c;Lad/d;[Lvd/l;)Lad/d;

    .line 212
    .line 213
    .line 214
    iget-wide v7, v14, Lfd/h;->Z:J

    .line 215
    .line 216
    iget-object v0, v1, Lvd/s;->g:Lvd/y;

    .line 217
    .line 218
    iget v2, v14, Lfd/h;->P:I

    .line 219
    .line 220
    iput v2, v0, Lvd/y;->h:I

    .line 221
    .line 222
    new-instance v0, Lvd/t;

    .line 223
    .line 224
    iget v4, v14, Lfd/h;->M:I

    .line 225
    .line 226
    iget-wide v5, v14, Lfd/h;->Z:J

    .line 227
    .line 228
    move-object v2, v0

    .line 229
    move-object v3, v11

    .line 230
    move-wide/from16 v17, v5

    .line 231
    .line 232
    move-object v5, v15

    .line 233
    move-object/from16 v6, p1

    .line 234
    .line 235
    move-wide/from16 v20, v7

    .line 236
    .line 237
    move/from16 v7, p2

    .line 238
    .line 239
    move/from16 v8, p3

    .line 240
    .line 241
    const/16 v9, 0x80

    .line 242
    .line 243
    move/from16 v10, p5

    .line 244
    .line 245
    move-object v13, v11

    .line 246
    move-wide/from16 v11, v17

    .line 247
    .line 248
    invoke-direct/range {v2 .. v12}, Lvd/t;-><init>(Lvc/f;ILvd/g0;Ljava/lang/String;IIIIJ)V

    .line 249
    .line 250
    .line 251
    move-wide/from16 v7, v20

    .line 252
    .line 253
    const/4 v2, 0x1

    .line 254
    const/4 v5, 0x1

    .line 255
    move-object/from16 v22, v14

    .line 256
    .line 257
    move-object v14, v0

    .line 258
    move-object/from16 v0, v22

    .line 259
    .line 260
    goto/16 :goto_6

    .line 261
    .line 262
    :cond_6
    move-object v13, v11

    .line 263
    new-instance v14, Lfd/l;

    .line 264
    .line 265
    invoke-direct {v14, v13}, Lfd/l;-><init>(Lvc/f;)V

    .line 266
    .line 267
    .line 268
    new-instance v11, Lfd/k;

    .line 269
    .line 270
    move-object v2, v11

    .line 271
    move-object v3, v13

    .line 272
    move-object/from16 v4, p1

    .line 273
    .line 274
    move/from16 v5, p3

    .line 275
    .line 276
    move/from16 v6, p4

    .line 277
    .line 278
    move/from16 v7, p2

    .line 279
    .line 280
    invoke-direct/range {v2 .. v7}, Lfd/k;-><init>(Lvc/f;Ljava/lang/String;III)V

    .line 281
    .line 282
    .line 283
    const/4 v2, 0x0

    .line 284
    new-array v0, v2, [Lvd/l;

    .line 285
    .line 286
    invoke-virtual {v15, v11, v14, v0}, Lvd/g0;->Q(Lad/c;Lad/d;[Lvd/l;)Lad/d;

    .line 287
    .line 288
    .line 289
    iget-object v0, v1, Lvd/s;->g:Lvd/y;

    .line 290
    .line 291
    iget v2, v14, Lfd/l;->P:I

    .line 292
    .line 293
    iput v2, v0, Lvd/y;->h:I

    .line 294
    .line 295
    iget v0, v14, Lfd/l;->N:I

    .line 296
    .line 297
    int-to-long v2, v0

    .line 298
    new-instance v0, Lfd/q;

    .line 299
    .line 300
    invoke-direct {v0, v13}, Lfd/q;-><init>(Lvc/f;)V

    .line 301
    .line 302
    .line 303
    iput v8, v0, Lfd/q;->H:I

    .line 304
    .line 305
    new-instance v4, Lfd/r;

    .line 306
    .line 307
    invoke-direct {v4, v13}, Lfd/r;-><init>(Lvc/f;)V

    .line 308
    .line 309
    .line 310
    iget v5, v14, Lfd/l;->L:I

    .line 311
    .line 312
    iput v5, v0, Lfd/q;->G:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    .line 314
    const/4 v5, 0x0

    .line 315
    :try_start_1
    new-array v6, v5, [Lvd/l;

    .line 316
    .line 317
    invoke-virtual {v15, v0, v4, v6}, Lvd/g0;->Q(Lad/c;Lad/d;[Lvd/l;)Lad/d;

    .line 318
    .line 319
    .line 320
    invoke-interface {v10}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 321
    .line 322
    .line 323
    move-result v0

    .line 324
    if-eqz v0, :cond_7

    .line 325
    .line 326
    iget-wide v5, v4, Lfd/r;->G:J

    .line 327
    .line 328
    cmp-long v0, v5, v2

    .line 329
    .line 330
    if-eqz v0, :cond_7

    .line 331
    .line 332
    const-string v0, "Open returned wrong size %d != %d"

    .line 333
    .line 334
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 335
    .line 336
    .line 337
    move-result-object v5

    .line 338
    iget-wide v6, v4, Lfd/r;->G:J

    .line 339
    .line 340
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 341
    .line 342
    .line 343
    move-result-object v6

    .line 344
    new-array v7, v8, [Ljava/lang/Object;

    .line 345
    .line 346
    const/4 v8, 0x0

    .line 347
    aput-object v5, v7, v8

    .line 348
    .line 349
    const/4 v5, 0x1

    .line 350
    aput-object v6, v7, v5

    .line 351
    .line 352
    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    invoke-interface {v10, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    goto :goto_3

    .line 360
    :catch_0
    move-exception v0

    .line 361
    goto :goto_4

    .line 362
    :cond_7
    :goto_3
    iget-wide v2, v4, Lfd/r;->G:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 363
    .line 364
    move-wide/from16 v17, v2

    .line 365
    .line 366
    const/4 v0, 0x1

    .line 367
    goto :goto_5

    .line 368
    :goto_4
    :try_start_2
    const-string v4, "Seek failed"

    .line 369
    .line 370
    invoke-interface {v10, v4, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 371
    .line 372
    .line 373
    move-wide/from16 v17, v2

    .line 374
    .line 375
    const/4 v0, 0x0

    .line 376
    :goto_5
    new-instance v20, Lvd/t;

    .line 377
    .line 378
    iget v4, v14, Lfd/l;->L:I

    .line 379
    .line 380
    const/4 v10, 0x0

    .line 381
    const/4 v11, 0x0

    .line 382
    move-object/from16 v2, v20

    .line 383
    .line 384
    move-object v3, v13

    .line 385
    move-object v5, v15

    .line 386
    move-object/from16 v6, p1

    .line 387
    .line 388
    move/from16 v7, p2

    .line 389
    .line 390
    move/from16 v8, p3

    .line 391
    .line 392
    move v9, v10

    .line 393
    move v10, v11

    .line 394
    move-wide/from16 v11, v17

    .line 395
    .line 396
    invoke-direct/range {v2 .. v12}, Lvd/t;-><init>(Lvc/f;ILvd/g0;Ljava/lang/String;IIIIJ)V

    .line 397
    .line 398
    .line 399
    move v5, v0

    .line 400
    move-object v0, v14

    .line 401
    move-wide/from16 v7, v17

    .line 402
    .line 403
    move-object/from16 v14, v20

    .line 404
    .line 405
    const/4 v2, 0x0

    .line 406
    :goto_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 407
    .line 408
    .line 409
    move-result-wide v3

    .line 410
    move-object v11, v13

    .line 411
    check-cast v11, Lwc/a;

    .line 412
    .line 413
    iget-wide v9, v11, Lwc/a;->l0:J

    .line 414
    .line 415
    add-long/2addr v3, v9

    .line 416
    if-eqz v5, :cond_8

    .line 417
    .line 418
    iput-wide v7, v1, Lvd/s;->c:J

    .line 419
    .line 420
    iput-wide v3, v1, Lvd/s;->d:J

    .line 421
    .line 422
    :cond_8
    if-eqz v2, :cond_9

    .line 423
    .line 424
    invoke-interface {v0}, Lad/i;->getLastWriteTime()J

    .line 425
    .line 426
    .line 427
    move-result-wide v5

    .line 428
    iput-wide v5, v1, Lvd/s;->a:J

    .line 429
    .line 430
    iput-wide v3, v1, Lvd/s;->b:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 431
    .line 432
    :cond_9
    invoke-virtual {v15}, Lvd/g0;->close()V

    .line 433
    .line 434
    .line 435
    return-object v14

    .line 436
    :goto_7
    if-eqz v15, :cond_a

    .line 437
    .line 438
    :try_start_3
    invoke-virtual {v15}, Lvd/g0;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 439
    .line 440
    .line 441
    goto :goto_8

    .line 442
    :catchall_1
    move-exception v0

    .line 443
    move-object v3, v0

    .line 444
    const-class v0, Ljava/lang/Throwable;

    .line 445
    .line 446
    :try_start_4
    const-string v4, "addSuppressed"

    .line 447
    .line 448
    const/4 v5, 0x1

    .line 449
    new-array v6, v5, [Ljava/lang/Class;

    .line 450
    .line 451
    const/4 v7, 0x0

    .line 452
    aput-object v0, v6, v7

    .line 453
    .line 454
    invoke-virtual {v0, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 455
    .line 456
    .line 457
    move-result-object v0

    .line 458
    new-array v4, v5, [Ljava/lang/Object;

    .line 459
    .line 460
    aput-object v3, v4, v7

    .line 461
    .line 462
    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 463
    .line 464
    .line 465
    :catch_1
    :cond_a
    :goto_8
    goto :goto_a

    .line 466
    :goto_9
    throw v2

    .line 467
    :goto_a
    goto :goto_9
.end method

.method public final N(Lvd/g0;B)Ldd/h;
    .locals 6

    .line 1
    invoke-virtual {p1}, Lvd/g0;->O()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-class v1, Lad/a;

    .line 6
    .line 7
    const-string v2, "Incompatible file information class"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    new-instance v0, Lkd/a;

    .line 13
    .line 14
    invoke-virtual {p1}, Lvd/g0;->J()Lvc/f;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-direct {v0, v4}, Lkd/a;-><init>(Lvc/f;)V

    .line 19
    .line 20
    .line 21
    const/4 v4, 0x2

    .line 22
    iput-byte v4, v0, Lkd/a;->y:B

    .line 23
    .line 24
    iput-byte p2, v0, Lkd/a;->z:B

    .line 25
    .line 26
    new-array p2, v3, [Lid/c;

    .line 27
    .line 28
    invoke-virtual {p0, p1, v0, p2}, Lvd/s;->P(Lvd/g0;Lkd/a;[Lid/c;)Lid/d;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lkd/b;

    .line 33
    .line 34
    iget-object p2, p1, Lkd/b;->F:Lvc/g;

    .line 35
    .line 36
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    if-eqz p2, :cond_0

    .line 45
    .line 46
    iget-object p1, p1, Lkd/b;->F:Lvc/g;

    .line 47
    .line 48
    check-cast p1, Ldd/h;

    .line 49
    .line 50
    return-object p1

    .line 51
    :cond_0
    new-instance p1, Lvc/c;

    .line 52
    .line 53
    invoke-direct {p1, v2}, Lvc/c;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p1

    .line 57
    :cond_1
    new-instance v0, Lhd/d;

    .line 58
    .line 59
    invoke-virtual {p1}, Lvd/g0;->J()Lvc/f;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-direct {v0, v4, p2}, Lhd/d;-><init>(Lvc/f;I)V

    .line 64
    .line 65
    .line 66
    new-instance v4, Lhd/c;

    .line 67
    .line 68
    invoke-virtual {p1}, Lvd/g0;->J()Lvc/f;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-direct {v4, v5, p2}, Lhd/c;-><init>(Lvc/f;I)V

    .line 73
    .line 74
    .line 75
    new-array p2, v3, [Lvd/l;

    .line 76
    .line 77
    invoke-virtual {p1, v4, v0, p2}, Lvd/g0;->Q(Lad/c;Lad/d;[Lvd/l;)Lad/d;

    .line 78
    .line 79
    .line 80
    iget-object p1, v0, Lhd/d;->M0:Lad/a;

    .line 81
    .line 82
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-eqz p1, :cond_2

    .line 91
    .line 92
    iget-object p1, v0, Lhd/d;->M0:Lad/a;

    .line 93
    .line 94
    return-object p1

    .line 95
    :cond_2
    new-instance p1, Lvc/c;

    .line 96
    .line 97
    invoke-direct {p1, v2}, Lvc/c;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p1
.end method

.method public final O(Lvd/g0;Ljava/lang/String;I)V
    .locals 12

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    sget-object v2, Lvd/s;->i:Lorg/slf4j/Logger;

    .line 4
    .line 5
    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v4, "queryPath: "

    .line 14
    .line 15
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {p1}, Lvd/g0;->O()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    const/4 p2, 0x0

    .line 35
    new-array p3, v1, [Lid/c;

    .line 36
    .line 37
    invoke-virtual {p0, p1, p2, p3}, Lvd/s;->P(Lvd/g0;Lkd/a;[Lid/c;)Lid/d;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Lad/i;

    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    const/16 v3, 0x10

    .line 45
    .line 46
    invoke-virtual {p1, v3}, Lvd/g0;->N(I)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_6

    .line 51
    .line 52
    new-instance v0, Lhd/f;

    .line 53
    .line 54
    invoke-virtual {p1}, Lvd/g0;->J()Lvc/f;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-direct {v0, v3, p3}, Lhd/f;-><init>(Lvc/f;I)V

    .line 59
    .line 60
    .line 61
    new-instance v3, Lhd/e;

    .line 62
    .line 63
    invoke-virtual {p1}, Lvd/g0;->J()Lvc/f;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-direct {v3, v4, p2, p3}, Lhd/e;-><init>(Lvc/f;Ljava/lang/String;I)V

    .line 68
    .line 69
    .line 70
    new-array p2, v1, [Lvd/l;

    .line 71
    .line 72
    invoke-virtual {p1, v3, v0, p2}, Lvd/g0;->Q(Lad/c;Lad/d;[Lvd/l;)Lad/d;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    check-cast p2, Lhd/f;

    .line 77
    .line 78
    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 79
    .line 80
    .line 81
    move-result p3

    .line 82
    if-eqz p3, :cond_2

    .line 83
    .line 84
    new-instance p3, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string v0, "Path information "

    .line 87
    .line 88
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p3

    .line 98
    invoke-interface {v2, p3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    :cond_2
    iget-object p3, p2, Lhd/f;->M0:Ldd/f;

    .line 102
    .line 103
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    move-result-object p3

    .line 107
    const-class v0, Ldd/a;

    .line 108
    .line 109
    invoke-virtual {v0, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 110
    .line 111
    .line 112
    move-result p3

    .line 113
    if-eqz p3, :cond_5

    .line 114
    .line 115
    iget-object p2, p2, Lhd/f;->M0:Ldd/f;

    .line 116
    .line 117
    check-cast p2, Ldd/a;

    .line 118
    .line 119
    instance-of p3, p2, Ldd/b;

    .line 120
    .line 121
    if-eqz p3, :cond_3

    .line 122
    .line 123
    move-object p3, p2

    .line 124
    check-cast p3, Ldd/b;

    .line 125
    .line 126
    iget v0, p3, Ldd/b;->e:I

    .line 127
    .line 128
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    iget-wide v0, p3, Ldd/b;->c:J

    .line 132
    .line 133
    iput-wide v0, p0, Lvd/s;->a:J

    .line 134
    .line 135
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 139
    .line 140
    .line 141
    move-result-wide p2

    .line 142
    invoke-virtual {p1}, Lvd/g0;->J()Lvc/f;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    check-cast p1, Lwc/a;

    .line 147
    .line 148
    iget-wide v0, p1, Lwc/a;->l0:J

    .line 149
    .line 150
    add-long/2addr p2, v0

    .line 151
    iput-wide p2, p0, Lvd/s;->b:J

    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_3
    instance-of p3, p2, Ldd/g;

    .line 155
    .line 156
    if-eqz p3, :cond_4

    .line 157
    .line 158
    check-cast p2, Ldd/g;

    .line 159
    .line 160
    iget-wide p2, p2, Ldd/g;->b:J

    .line 161
    .line 162
    iput-wide p2, p0, Lvd/s;->c:J

    .line 163
    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 165
    .line 166
    .line 167
    move-result-wide p2

    .line 168
    invoke-virtual {p1}, Lvd/g0;->J()Lvc/f;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    check-cast p1, Lwc/a;

    .line 173
    .line 174
    iget-wide v0, p1, Lwc/a;->l0:J

    .line 175
    .line 176
    add-long/2addr p2, v0

    .line 177
    iput-wide p2, p0, Lvd/s;->d:J

    .line 178
    .line 179
    :cond_4
    :goto_0
    return-void

    .line 180
    :cond_5
    new-instance p1, Lvc/c;

    .line 181
    .line 182
    const-string p2, "Incompatible file information class"

    .line 183
    .line 184
    invoke-direct {p1, p2}, Lvc/c;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    throw p1

    .line 188
    :cond_6
    new-instance p3, Lfd/n;

    .line 189
    .line 190
    invoke-virtual {p1}, Lvd/g0;->J()Lvc/f;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    const-string v4, "addSuppressed"

    .line 195
    .line 196
    const-class v5, Ljava/lang/Throwable;

    .line 197
    .line 198
    iget-object v6, p1, Lvd/g0;->b:Lvd/e0;

    .line 199
    .line 200
    invoke-virtual {v6}, Lvd/e0;->i()Lvd/z;

    .line 201
    .line 202
    .line 203
    move-result-object v6

    .line 204
    :try_start_0
    iget-object v7, v6, Lvd/z;->d:Lvd/b0;

    .line 205
    .line 206
    invoke-virtual {v7}, Lvd/b0;->b0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 207
    .line 208
    .line 209
    :try_start_1
    invoke-virtual {v7}, Lvd/b0;->l0()Lad/k;

    .line 210
    .line 211
    .line 212
    move-result-object v8

    .line 213
    instance-of v9, v8, Lfd/j;

    .line 214
    .line 215
    if-eqz v9, :cond_7

    .line 216
    .line 217
    check-cast v8, Lfd/j;

    .line 218
    .line 219
    iget-object v8, v8, Lfd/j;->H:Lfd/b;

    .line 220
    .line 221
    iget v8, v8, Lfd/b;->n:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    .line 223
    mul-int/lit16 v8, v8, 0x3e8

    .line 224
    .line 225
    int-to-long v8, v8

    .line 226
    const-wide/16 v10, 0x3c

    .line 227
    .line 228
    mul-long v8, v8, v10

    .line 229
    .line 230
    :try_start_2
    invoke-virtual {v7}, Lhe/e;->Y()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 231
    .line 232
    .line 233
    invoke-virtual {v6}, Lvd/z;->O()V

    .line 234
    .line 235
    .line 236
    goto :goto_1

    .line 237
    :catchall_0
    move-exception p1

    .line 238
    goto :goto_2

    .line 239
    :cond_7
    :try_start_3
    invoke-virtual {v7}, Lhe/e;->Y()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 240
    .line 241
    .line 242
    invoke-virtual {v6}, Lvd/z;->O()V

    .line 243
    .line 244
    .line 245
    const-wide/16 v8, 0x0

    .line 246
    .line 247
    :goto_1
    invoke-direct {p3, v3, v8, v9}, Lfd/n;-><init>(Lvc/f;J)V

    .line 248
    .line 249
    .line 250
    new-instance v0, Lfd/m;

    .line 251
    .line 252
    invoke-virtual {p1}, Lvd/g0;->J()Lvc/f;

    .line 253
    .line 254
    .line 255
    move-result-object v3

    .line 256
    invoke-direct {v0, p2, v3}, Lfd/m;-><init>(Ljava/lang/String;Lvc/f;)V

    .line 257
    .line 258
    .line 259
    new-array p2, v1, [Lvd/l;

    .line 260
    .line 261
    invoke-virtual {p1, v0, p3, p2}, Lvd/g0;->Q(Lad/c;Lad/d;[Lvd/l;)Lad/d;

    .line 262
    .line 263
    .line 264
    move-result-object p2

    .line 265
    check-cast p2, Lfd/n;

    .line 266
    .line 267
    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 268
    .line 269
    .line 270
    move-result p3

    .line 271
    if-eqz p3, :cond_8

    .line 272
    .line 273
    new-instance p3, Ljava/lang/StringBuilder;

    .line 274
    .line 275
    const-string v0, "Legacy path information "

    .line 276
    .line 277
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object p3

    .line 287
    invoke-interface {v2, p3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    :cond_8
    iget p3, p2, Lfd/n;->G:I

    .line 291
    .line 292
    invoke-virtual {p2}, Lfd/n;->getLastWriteTime()J

    .line 293
    .line 294
    .line 295
    move-result-wide v0

    .line 296
    iput-wide v0, p0, Lvd/s;->a:J

    .line 297
    .line 298
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 299
    .line 300
    .line 301
    move-result-wide v0

    .line 302
    invoke-virtual {p1}, Lvd/g0;->J()Lvc/f;

    .line 303
    .line 304
    .line 305
    move-result-object p3

    .line 306
    check-cast p3, Lwc/a;

    .line 307
    .line 308
    iget-wide v2, p3, Lwc/a;->l0:J

    .line 309
    .line 310
    add-long/2addr v0, v2

    .line 311
    iput-wide v0, p0, Lvd/s;->b:J

    .line 312
    .line 313
    iget p2, p2, Lfd/n;->K:I

    .line 314
    .line 315
    int-to-long p2, p2

    .line 316
    iput-wide p2, p0, Lvd/s;->c:J

    .line 317
    .line 318
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 319
    .line 320
    .line 321
    move-result-wide p2

    .line 322
    invoke-virtual {p1}, Lvd/g0;->J()Lvc/f;

    .line 323
    .line 324
    .line 325
    move-result-object p1

    .line 326
    check-cast p1, Lwc/a;

    .line 327
    .line 328
    iget-wide v0, p1, Lwc/a;->l0:J

    .line 329
    .line 330
    add-long/2addr p2, v0

    .line 331
    iput-wide p2, p0, Lvd/s;->d:J

    .line 332
    .line 333
    return-void

    .line 334
    :goto_2
    :try_start_4
    invoke-virtual {v7}, Lhe/e;->Y()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 335
    .line 336
    .line 337
    goto :goto_3

    .line 338
    :catchall_1
    move-exception p2

    .line 339
    :try_start_5
    new-array p3, v0, [Ljava/lang/Class;

    .line 340
    .line 341
    aput-object v5, p3, v1

    .line 342
    .line 343
    invoke-virtual {v5, v4, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 344
    .line 345
    .line 346
    move-result-object p3

    .line 347
    new-array v2, v0, [Ljava/lang/Object;

    .line 348
    .line 349
    aput-object p2, v2, v1

    .line 350
    .line 351
    invoke-virtual {p3, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 352
    .line 353
    .line 354
    :catch_0
    :goto_3
    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 355
    :catchall_2
    move-exception p1

    .line 356
    if-eqz v6, :cond_9

    .line 357
    .line 358
    :try_start_7
    invoke-virtual {v6}, Lvd/z;->O()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 359
    .line 360
    .line 361
    goto :goto_4

    .line 362
    :catchall_3
    move-exception p2

    .line 363
    :try_start_8
    new-array p3, v0, [Ljava/lang/Class;

    .line 364
    .line 365
    aput-object v5, p3, v1

    .line 366
    .line 367
    invoke-virtual {v5, v4, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 368
    .line 369
    .line 370
    move-result-object p3

    .line 371
    new-array v0, v0, [Ljava/lang/Object;

    .line 372
    .line 373
    aput-object p2, v0, v1

    .line 374
    .line 375
    invoke-virtual {p3, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 376
    .line 377
    .line 378
    :catch_1
    :cond_9
    :goto_4
    throw p1
.end method

.method public final varargs P(Lvd/g0;Lkd/a;[Lid/c;)Lid/d;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    new-instance v2, Ljd/d;

    .line 4
    .line 5
    invoke-virtual {p1}, Lvd/g0;->J()Lvc/f;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    iget-object v4, p0, Lvd/s;->g:Lvd/y;

    .line 10
    .line 11
    invoke-virtual {v4}, Lvd/y;->f()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-direct {v2, v4, v3}, Ljd/d;-><init>(Ljava/lang/String;Lvc/f;)V

    .line 16
    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    :try_start_0
    iput v1, v2, Ljd/d;->B:I

    .line 20
    .line 21
    const/16 v4, 0x80

    .line 22
    .line 23
    iput v4, v2, Ljd/d;->z:I

    .line 24
    .line 25
    iput v4, v2, Ljd/d;->y:I

    .line 26
    .line 27
    const/4 v4, 0x3

    .line 28
    iput v4, v2, Ljd/d;->A:I

    .line 29
    .line 30
    if-eqz p2, :cond_0

    .line 31
    .line 32
    invoke-virtual {v2, p2}, Lid/b;->g0(Lid/b;)Z

    .line 33
    .line 34
    .line 35
    array-length v4, p3

    .line 36
    const/4 v5, 0x0

    .line 37
    :goto_0
    if-ge v5, v4, :cond_1

    .line 38
    .line 39
    aget-object v6, p3, v5

    .line 40
    .line 41
    invoke-virtual {p2, v6}, Lid/b;->g0(Lid/b;)Z

    .line 42
    .line 43
    .line 44
    add-int/2addr v5, v1

    .line 45
    move-object p2, v6

    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception p2

    .line 48
    goto :goto_2

    .line 49
    :catch_1
    move-exception p2

    .line 50
    goto :goto_2

    .line 51
    :cond_0
    move-object p2, v2

    .line 52
    :cond_1
    new-instance p3, Ljd/b;

    .line 53
    .line 54
    invoke-virtual {p1}, Lvd/g0;->J()Lvc/f;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    iget-object v5, p0, Lvd/s;->g:Lvd/y;

    .line 59
    .line 60
    invoke-virtual {v5}, Lvd/y;->f()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    sget-object v6, Lid/e;->a:[B

    .line 65
    .line 66
    invoke-direct {p3, v4, v6, v5}, Ljd/b;-><init>(Lvc/f;[BLjava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iput v1, p3, Ljd/b;->A:I

    .line 70
    .line 71
    invoke-virtual {p2, p3}, Lid/b;->g0(Lid/b;)Z

    .line 72
    .line 73
    .line 74
    new-array p2, v0, [Lvd/l;

    .line 75
    .line 76
    invoke-virtual {p1, v2, v3, p2}, Lvd/g0;->Q(Lad/c;Lad/d;[Lvd/l;)Lad/d;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    check-cast p2, Ljd/e;

    .line 81
    .line 82
    iget-object p3, p3, Lid/c;->x:Lid/d;

    .line 83
    .line 84
    check-cast p3, Ljd/c;

    .line 85
    .line 86
    iget v4, p3, Ljd/c;->F:I

    .line 87
    .line 88
    and-int/2addr v4, v1

    .line 89
    if-eqz v4, :cond_2

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_2
    move-object p3, p2

    .line 93
    :goto_1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    invoke-interface {p3}, Lad/i;->getLastWriteTime()J

    .line 97
    .line 98
    .line 99
    move-result-wide v4

    .line 100
    iput-wide v4, p0, Lvd/s;->a:J

    .line 101
    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 103
    .line 104
    .line 105
    move-result-wide v4

    .line 106
    invoke-virtual {p1}, Lvd/g0;->J()Lvc/f;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    check-cast v6, Lwc/a;

    .line 111
    .line 112
    iget-wide v6, v6, Lwc/a;->l0:J

    .line 113
    .line 114
    add-long/2addr v4, v6

    .line 115
    iput-wide v4, p0, Lvd/s;->b:J

    .line 116
    .line 117
    invoke-interface {p3}, Lad/i;->getSize()J

    .line 118
    .line 119
    .line 120
    move-result-wide v4

    .line 121
    iput-wide v4, p0, Lvd/s;->c:J

    .line 122
    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 124
    .line 125
    .line 126
    move-result-wide v4

    .line 127
    invoke-virtual {p1}, Lvd/g0;->J()Lvc/f;

    .line 128
    .line 129
    .line 130
    move-result-object p3

    .line 131
    check-cast p3, Lwc/a;

    .line 132
    .line 133
    iget-wide v6, p3, Lwc/a;->l0:J

    .line 134
    .line 135
    add-long/2addr v4, v6

    .line 136
    iput-wide v4, p0, Lvd/s;->d:J

    .line 137
    .line 138
    iget-object p2, p2, Lid/b;->w:Lid/b;

    .line 139
    .line 140
    check-cast p2, Lad/d;

    .line 141
    .line 142
    check-cast p2, Lid/d;
    :try_end_0
    .catch Lvc/c; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .line 144
    return-object p2

    .line 145
    :goto_2
    :try_start_1
    iget-object p3, v2, Lid/c;->x:Lid/d;

    .line 146
    .line 147
    check-cast p3, Ljd/e;

    .line 148
    .line 149
    iget-boolean v2, p3, Lid/d;->x:Z

    .line 150
    .line 151
    if-eqz v2, :cond_3

    .line 152
    .line 153
    iget v2, p3, Lid/b;->j:I

    .line 154
    .line 155
    if-nez v2, :cond_3

    .line 156
    .line 157
    new-instance v2, Ljd/b;

    .line 158
    .line 159
    invoke-virtual {p1}, Lvd/g0;->J()Lvc/f;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    iget-object p3, p3, Ljd/e;->F:[B

    .line 164
    .line 165
    invoke-direct {v2, v4, p3}, Ljd/b;-><init>(Lvc/f;[B)V

    .line 166
    .line 167
    .line 168
    new-array p3, v1, [Lvd/l;

    .line 169
    .line 170
    sget-object v4, Lvd/l;->b:Lvd/l;

    .line 171
    .line 172
    aput-object v4, p3, v0

    .line 173
    .line 174
    invoke-virtual {p1, v2, v3, p3}, Lvd/g0;->Q(Lad/c;Lad/d;[Lvd/l;)Lad/d;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 175
    .line 176
    .line 177
    goto :goto_3

    .line 178
    :catch_2
    move-exception p1

    .line 179
    sget-object p3, Lvd/s;->i:Lorg/slf4j/Logger;

    .line 180
    .line 181
    const-string v2, "Failed to close after failure"

    .line 182
    .line 183
    invoke-interface {p3, v2, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 184
    .line 185
    .line 186
    const-class p3, Ljava/lang/Throwable;

    .line 187
    .line 188
    :try_start_2
    const-string v2, "addSuppressed"

    .line 189
    .line 190
    new-array v3, v1, [Ljava/lang/Class;

    .line 191
    .line 192
    aput-object p3, v3, v0

    .line 193
    .line 194
    invoke-virtual {p3, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 195
    .line 196
    .line 197
    move-result-object p3

    .line 198
    new-array v1, v1, [Ljava/lang/Object;

    .line 199
    .line 200
    aput-object p1, v1, v0

    .line 201
    .line 202
    invoke-virtual {p3, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 203
    .line 204
    .line 205
    :catch_3
    :cond_3
    :goto_3
    goto :goto_5

    .line 206
    :goto_4
    throw p2

    .line 207
    :goto_5
    goto :goto_4
.end method

.method public final declared-synchronized close()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lvd/s;->h:Lvd/g0;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lvd/s;->h:Lvd/g0;

    .line 8
    .line 9
    iget-object v1, p0, Lvd/s;->e:Lvc/b;

    .line 10
    .line 11
    invoke-interface {v1}, Lvc/b;->e()Lvc/f;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lwc/a;

    .line 16
    .line 17
    iget-boolean v1, v1, Lwc/a;->o0:Z

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Lvd/g0;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :goto_0
    monitor-exit p0

    .line 28
    return-void

    .line 29
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    throw v0
.end method

.method public final connect()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lvd/s;->A()Lvd/g0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lvd/g0;->close()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lvd/s;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast p1, Lvc/n;

    .line 6
    .line 7
    if-ne p0, p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    return p1

    .line 11
    :cond_0
    iget-object v0, p0, Lvd/s;->g:Lvd/y;

    .line 12
    .line 13
    check-cast p1, Lvd/s;

    .line 14
    .line 15
    iget-object p1, p1, Lvd/s;->g:Lvd/y;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lvd/y;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1

    .line 22
    :cond_1
    const/4 p1, 0x0

    .line 23
    return p1
.end method

.method public final getContentLength()I
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lvd/s;->L()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0
    :try_end_0
    .catch Lvd/r; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    const-wide v2, 0xffffffffL

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    and-long/2addr v0, v2

    .line 11
    long-to-int v1, v0

    .line 12
    return v1

    .line 13
    :catch_0
    move-exception v0

    .line 14
    sget-object v1, Lvd/s;->i:Lorg/slf4j/Logger;

    .line 15
    .line 16
    const-string v2, "getContentLength"

    .line 17
    .line 18
    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    return v0
.end method

.method public final getContentLengthLong()J
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lvd/s;->L()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0
    :try_end_0
    .catch Lvd/r; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-wide v0

    .line 6
    :catch_0
    move-exception v0

    .line 7
    sget-object v1, Lvd/s;->i:Lorg/slf4j/Logger;

    .line 8
    .line 9
    const-string v2, "getContentLength"

    .line 10
    .line 11
    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    const-wide/16 v0, 0x0

    .line 15
    .line 16
    return-wide v0
.end method

.method public final getDate()J
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lvd/s;->K()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0
    :try_end_0
    .catch Lvd/r; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-wide v0

    .line 6
    :catch_0
    move-exception v0

    .line 7
    sget-object v1, Lvd/s;->i:Lorg/slf4j/Logger;

    .line 8
    .line 9
    const-string v2, "getDate"

    .line 10
    .line 11
    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    const-wide/16 v0, 0x0

    .line 15
    .line 16
    return-wide v0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 2

    .line 1
    new-instance v0, Lvd/u;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lvd/u;-><init>(Lvd/s;Z)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public final getLastModified()J
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lvd/s;->K()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0
    :try_end_0
    .catch Lvd/r; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-wide v0

    .line 6
    :catch_0
    move-exception v0

    .line 7
    sget-object v1, Lvd/s;->i:Lorg/slf4j/Logger;

    .line 8
    .line 9
    const-string v2, "getLastModified"

    .line 10
    .line 11
    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    const-wide/16 v0, 0x0

    .line 15
    .line 16
    return-wide v0
.end method

.method public final getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 1
    new-instance v0, Lvd/v;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lvd/v;-><init>(Lvd/s;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lvd/s;->g:Lvd/y;

    .line 2
    .line 3
    invoke-virtual {v0}, Lvd/y;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public r(Lfd/g;Lfd/h;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-boolean v1, Lge/b;->d:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v1, "^(smb.*:).*(@.*)$"

    .line 14
    .line 15
    const-string v2, "$1******$2"

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :cond_0
    return-object v0
.end method
