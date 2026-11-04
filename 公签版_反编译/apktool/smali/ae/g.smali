.class public final Lae/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:[Ljava/net/InetAddress;

.field public static final f:Lae/d;

.field public static final g:I

.field public static h:I

.field public static final i:Ljava/util/HashMap;

.field public static final j:Ljava/util/HashMap;

.field public static final k:Lae/b;

.field public static final l:Lae/g;

.field public static final m:Lae/g;


# instance fields
.field public a:Lae/b;

.field public final b:I

.field public c:Z

.field public d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/net/InetAddress;

    .line 3
    .line 4
    sget-object v2, Lwd/a;->a:Ljava/util/Properties;

    .line 5
    .line 6
    const-string v3, "jcifs.smb1.netbios.wins"

    .line 7
    .line 8
    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    new-instance v3, Ljava/util/StringTokenizer;

    .line 15
    .line 16
    const-string v4, ","

    .line 17
    .line 18
    invoke-direct {v3, v2, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    new-array v4, v2, [Ljava/net/InetAddress;

    .line 26
    .line 27
    const/4 v5, 0x0

    .line 28
    :goto_0
    if-ge v5, v2, :cond_0

    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    :try_start_0
    invoke-static {v6}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    aput-object v6, v4, v5
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    add-int/lit8 v5, v5, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception v2

    .line 44
    sget v3, Lde/d;->b:I

    .line 45
    .line 46
    if-lez v3, :cond_1

    .line 47
    .line 48
    sget-object v3, Lwd/a;->b:Lde/d;

    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_0
    move-object v1, v4

    .line 58
    :cond_1
    :goto_1
    sput-object v1, Lae/g;->e:[Ljava/net/InetAddress;

    .line 59
    .line 60
    new-instance v1, Lae/d;

    .line 61
    .line 62
    invoke-direct {v1}, Lae/d;-><init>()V

    .line 63
    .line 64
    .line 65
    sput-object v1, Lae/g;->f:Lae/d;

    .line 66
    .line 67
    const-string v1, "jcifs.smb1.netbios.cachePolicy"

    .line 68
    .line 69
    const/16 v2, 0x1e

    .line 70
    .line 71
    invoke-static {v2, v1}, Lwd/a;->c(ILjava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    sput v1, Lae/g;->g:I

    .line 76
    .line 77
    sput v0, Lae/g;->h:I

    .line 78
    .line 79
    new-instance v1, Ljava/util/HashMap;

    .line 80
    .line 81
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 82
    .line 83
    .line 84
    sput-object v1, Lae/g;->i:Ljava/util/HashMap;

    .line 85
    .line 86
    new-instance v2, Ljava/util/HashMap;

    .line 87
    .line 88
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 89
    .line 90
    .line 91
    sput-object v2, Lae/g;->j:Ljava/util/HashMap;

    .line 92
    .line 93
    new-instance v2, Lae/b;

    .line 94
    .line 95
    const-string v3, "0.0.0.0"

    .line 96
    .line 97
    const/4 v4, 0x0

    .line 98
    invoke-direct {v2, v3, v0, v4}, Lae/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 99
    .line 100
    .line 101
    sput-object v2, Lae/g;->k:Lae/b;

    .line 102
    .line 103
    new-instance v3, Lae/g;

    .line 104
    .line 105
    invoke-direct {v3, v2, v0}, Lae/g;-><init>(Lae/b;I)V

    .line 106
    .line 107
    .line 108
    sput-object v3, Lae/g;->l:Lae/g;

    .line 109
    .line 110
    new-instance v5, Lae/f;

    .line 111
    .line 112
    const-wide/16 v6, -0x1

    .line 113
    .line 114
    invoke-direct {v5, v3, v6, v7}, Lae/f;-><init>(Lae/g;J)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    sget-object v1, Lae/d;->v:Ljava/net/InetAddress;

    .line 121
    .line 122
    if-nez v1, :cond_2

    .line 123
    .line 124
    :try_start_1
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    .line 125
    .line 126
    .line 127
    move-result-object v1
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    .line 128
    goto :goto_2

    .line 129
    :catch_1
    :try_start_2
    const-string v2, "127.0.0.1"

    .line 130
    .line 131
    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 132
    .line 133
    .line 134
    move-result-object v1
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_2

    .line 135
    :catch_2
    :cond_2
    :goto_2
    sget-object v2, Lwd/a;->a:Ljava/util/Properties;

    .line 136
    .line 137
    const-string v3, "jcifs.smb1.netbios.hostname"

    .line 138
    .line 139
    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    if-eqz v3, :cond_3

    .line 144
    .line 145
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 146
    .line 147
    .line 148
    move-result v5

    .line 149
    if-nez v5, :cond_4

    .line 150
    .line 151
    :cond_3
    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    new-instance v5, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    const-string v8, "JCIFS"

    .line 158
    .line 159
    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    const/4 v8, 0x2

    .line 163
    aget-byte v9, v3, v8

    .line 164
    .line 165
    and-int/lit16 v9, v9, 0xff

    .line 166
    .line 167
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    const-string v9, "_"

    .line 171
    .line 172
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    const/4 v10, 0x3

    .line 176
    aget-byte v3, v3, v10

    .line 177
    .line 178
    and-int/lit16 v3, v3, 0xff

    .line 179
    .line 180
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 187
    .line 188
    .line 189
    move-result-wide v9

    .line 190
    const-wide v11, 0x406fe00000000000L    # 255.0

    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    mul-double v9, v9, v11

    .line 196
    .line 197
    double-to-int v3, v9

    .line 198
    invoke-static {v3, v8}, Lde/c;->c(II)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    :cond_4
    new-instance v5, Lae/b;

    .line 210
    .line 211
    const-string v8, "jcifs.smb1.netbios.scope"

    .line 212
    .line 213
    invoke-virtual {v2, v8, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    invoke-direct {v5, v3, v0, v2}, Lae/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 218
    .line 219
    .line 220
    new-instance v2, Lae/g;

    .line 221
    .line 222
    invoke-virtual {v1}, Ljava/net/InetAddress;->hashCode()I

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    invoke-direct {v2, v5, v1, v0}, Lae/g;-><init>(Lae/b;II)V

    .line 227
    .line 228
    .line 229
    sput-object v2, Lae/g;->m:Lae/g;

    .line 230
    .line 231
    invoke-static {v5, v2, v6, v7}, Lae/g;->b(Lae/b;Lae/g;J)V

    .line 232
    .line 233
    .line 234
    return-void
.end method

.method public constructor <init>(Lae/b;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lae/g;->a:Lae/b;

    .line 3
    iput p2, p0, Lae/g;->b:I

    return-void
.end method

.method public constructor <init>(Lae/b;II)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lae/g;->a:Lae/b;

    .line 6
    iput p2, p0, Lae/g;->b:I

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lae/g;->c:Z

    return-void
.end method

.method public static a(Lae/b;Lae/g;)V
    .locals 5

    .line 1
    sget v0, Lae/g;->g:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, -0x1

    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    mul-int/lit16 v0, v0, 0x3e8

    .line 14
    .line 15
    int-to-long v3, v0

    .line 16
    add-long/2addr v1, v3

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const-wide/16 v1, -0x1

    .line 19
    .line 20
    :goto_0
    invoke-static {p0, p1, v1, v2}, Lae/g;->b(Lae/b;Lae/g;J)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public static b(Lae/b;Lae/g;J)V
    .locals 2

    .line 1
    sget v0, Lae/g;->g:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v0, Lae/g;->i:Ljava/util/HashMap;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lae/f;

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    new-instance v1, Lae/f;

    .line 18
    .line 19
    invoke-direct {v1, p1, p2, p3}, Lae/f;-><init>(Lae/g;J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    iput-object p1, v1, Lae/f;->a:Lae/g;

    .line 29
    .line 30
    iput-wide p2, v1, Lae/f;->b:J

    .line 31
    .line 32
    :goto_0
    monitor-exit v0

    .line 33
    return-void

    .line 34
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw p0
.end method

.method public static c(Lae/b;Ljava/net/InetAddress;)Lae/g;
    .locals 3

    .line 1
    iget v0, p0, Lae/b;->c:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    sget-object p1, Lae/g;->f:Lae/d;

    .line 10
    .line 11
    iget-object p1, p1, Lae/d;->m:Ljava/net/InetAddress;

    .line 12
    .line 13
    :cond_0
    if-eqz p1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/net/InetAddress;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 v0, 0x0

    .line 21
    :goto_0
    iput v0, p0, Lae/b;->d:I

    .line 22
    .line 23
    invoke-static {p0}, Lae/g;->e(Lae/b;)Lae/g;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-nez v0, :cond_5

    .line 28
    .line 29
    sget-object v1, Lae/g;->j:Ljava/util/HashMap;

    .line 30
    .line 31
    monitor-enter v1

    .line 32
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    invoke-virtual {v1, p0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    monitor-exit v1

    .line 42
    const/4 v0, 0x0

    .line 43
    goto :goto_3

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_6

    .line 46
    :catch_0
    :cond_2
    :goto_1
    sget-object v0, Lae/g;->j:Ljava/util/HashMap;

    .line 47
    .line 48
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    if-eqz v2, :cond_3

    .line 53
    .line 54
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    invoke-static {p0}, Lae/g;->e(Lae/b;)Lae/g;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    if-nez v1, :cond_4

    .line 64
    .line 65
    monitor-enter v0

    .line 66
    :try_start_3
    invoke-virtual {v0, p0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    monitor-exit v0

    .line 70
    goto :goto_2

    .line 71
    :catchall_1
    move-exception p0

    .line 72
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 73
    throw p0

    .line 74
    :cond_4
    :goto_2
    move-object v0, v1

    .line 75
    :goto_3
    if-nez v0, :cond_5

    .line 76
    .line 77
    :try_start_4
    sget-object v1, Lae/g;->f:Lae/d;

    .line 78
    .line 79
    invoke-virtual {v1, p0, p1}, Lae/d;->b(Lae/b;Ljava/net/InetAddress;)Lae/g;

    .line 80
    .line 81
    .line 82
    move-result-object v0
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 83
    :goto_4
    invoke-static {p0, v0}, Lae/g;->a(Lae/b;Lae/g;)V

    .line 84
    .line 85
    .line 86
    invoke-static {p0}, Lae/g;->i(Lae/b;)V

    .line 87
    .line 88
    .line 89
    goto :goto_7

    .line 90
    :catchall_2
    move-exception p1

    .line 91
    goto :goto_5

    .line 92
    :catch_1
    :try_start_5
    sget-object v0, Lae/g;->l:Lae/g;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 93
    .line 94
    goto :goto_4

    .line 95
    :goto_5
    invoke-static {p0, v0}, Lae/g;->a(Lae/b;Lae/g;)V

    .line 96
    .line 97
    .line 98
    invoke-static {p0}, Lae/g;->i(Lae/b;)V

    .line 99
    .line 100
    .line 101
    throw p1

    .line 102
    :goto_6
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 103
    throw p0

    .line 104
    :cond_5
    :goto_7
    sget-object p1, Lae/g;->l:Lae/g;

    .line 105
    .line 106
    if-eq v0, p1, :cond_6

    .line 107
    .line 108
    return-object v0

    .line 109
    :cond_6
    new-instance p1, Ljava/net/UnknownHostException;

    .line 110
    .line 111
    invoke-virtual {p0}, Lae/b;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-direct {p1, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    goto :goto_9

    .line 119
    :goto_8
    throw p1

    .line 120
    :goto_9
    goto :goto_8
.end method

.method public static d(Ljava/net/InetAddress;ILjava/lang/String;)Lae/g;
    .locals 11

    .line 1
    if-eqz p2, :cond_c

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_6

    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x0

    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    new-instance v0, Lae/b;

    .line 24
    .line 25
    invoke-direct {v0, p2, p1, v2}, Lae/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0, p0}, Lae/g;->c(Lae/b;Ljava/net/InetAddress;)Lae/g;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const/4 v3, 0x0

    .line 38
    const/4 v4, 0x0

    .line 39
    const/4 v5, 0x0

    .line 40
    :goto_0
    array-length v6, v1

    .line 41
    if-ge v3, v6, :cond_9

    .line 42
    .line 43
    aget-char v6, v1, v3

    .line 44
    .line 45
    const/16 v7, 0x30

    .line 46
    .line 47
    if-lt v6, v7, :cond_8

    .line 48
    .line 49
    const/16 v8, 0x39

    .line 50
    .line 51
    if-le v6, v8, :cond_2

    .line 52
    .line 53
    goto :goto_4

    .line 54
    :cond_2
    const/4 v9, 0x0

    .line 55
    :goto_1
    const/16 v10, 0x2e

    .line 56
    .line 57
    if-eq v6, v10, :cond_6

    .line 58
    .line 59
    if-lt v6, v7, :cond_5

    .line 60
    .line 61
    if-le v6, v8, :cond_3

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_3
    mul-int/lit8 v9, v9, 0xa

    .line 65
    .line 66
    add-int/2addr v9, v6

    .line 67
    sub-int/2addr v9, v7

    .line 68
    add-int/lit8 v3, v3, 0x1

    .line 69
    .line 70
    array-length v6, v1

    .line 71
    if-lt v3, v6, :cond_4

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_4
    aget-char v6, v1, v3

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_5
    :goto_2
    new-instance v0, Lae/b;

    .line 78
    .line 79
    invoke-direct {v0, p2, p1, v2}, Lae/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-static {v0, p0}, Lae/g;->c(Lae/b;Ljava/net/InetAddress;)Lae/g;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    return-object p0

    .line 87
    :cond_6
    :goto_3
    const/16 v6, 0xff

    .line 88
    .line 89
    if-le v9, v6, :cond_7

    .line 90
    .line 91
    new-instance v0, Lae/b;

    .line 92
    .line 93
    invoke-direct {v0, p2, p1, v2}, Lae/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-static {v0, p0}, Lae/g;->c(Lae/b;Ljava/net/InetAddress;)Lae/g;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    return-object p0

    .line 101
    :cond_7
    shl-int/lit8 v5, v5, 0x8

    .line 102
    .line 103
    add-int/2addr v5, v9

    .line 104
    add-int/lit8 v4, v4, 0x1

    .line 105
    .line 106
    add-int/lit8 v3, v3, 0x1

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_8
    :goto_4
    new-instance v0, Lae/b;

    .line 110
    .line 111
    invoke-direct {v0, p2, p1, v2}, Lae/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-static {v0, p0}, Lae/g;->c(Lae/b;Ljava/net/InetAddress;)Lae/g;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    return-object p0

    .line 119
    :cond_9
    const/4 v0, 0x4

    .line 120
    if-ne v4, v0, :cond_b

    .line 121
    .line 122
    const-string v0, "."

    .line 123
    .line 124
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-eqz v0, :cond_a

    .line 129
    .line 130
    goto :goto_5

    .line 131
    :cond_a
    new-instance p0, Lae/g;

    .line 132
    .line 133
    sget-object p1, Lae/g;->k:Lae/b;

    .line 134
    .line 135
    invoke-direct {p0, p1, v5}, Lae/g;-><init>(Lae/b;I)V

    .line 136
    .line 137
    .line 138
    return-object p0

    .line 139
    :cond_b
    :goto_5
    new-instance v0, Lae/b;

    .line 140
    .line 141
    invoke-direct {v0, p2, p1, v2}, Lae/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-static {v0, p0}, Lae/g;->c(Lae/b;Ljava/net/InetAddress;)Lae/g;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    return-object p0

    .line 149
    :cond_c
    :goto_6
    sget-object p0, Lae/g;->m:Lae/g;

    .line 150
    .line 151
    return-object p0
.end method

.method public static e(Lae/b;)Lae/g;
    .locals 7

    .line 1
    sget v0, Lae/g;->g:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    sget-object v0, Lae/g;->i:Ljava/util/HashMap;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lae/f;

    .line 15
    .line 16
    if-eqz p0, :cond_1

    .line 17
    .line 18
    iget-wide v2, p0, Lae/f;->b:J

    .line 19
    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v4

    .line 24
    cmp-long v6, v2, v4

    .line 25
    .line 26
    if-gez v6, :cond_1

    .line 27
    .line 28
    iget-wide v2, p0, Lae/f;->b:J

    .line 29
    .line 30
    const-wide/16 v4, 0x0

    .line 31
    .line 32
    cmp-long v6, v2, v4

    .line 33
    .line 34
    if-ltz v6, :cond_1

    .line 35
    .line 36
    move-object p0, v1

    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    :goto_0
    if-eqz p0, :cond_2

    .line 41
    .line 42
    iget-object v1, p0, Lae/f;->a:Lae/g;

    .line 43
    .line 44
    :cond_2
    monitor-exit v0

    .line 45
    return-object v1

    .line 46
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    throw p0
.end method

.method public static h()Ljava/net/InetAddress;
    .locals 2

    .line 1
    sget-object v0, Lae/g;->e:[Ljava/net/InetAddress;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget v1, Lae/g;->h:I

    .line 9
    .line 10
    aget-object v0, v0, v1

    .line 11
    .line 12
    :goto_0
    return-object v0
.end method

.method public static i(Lae/b;)V
    .locals 1

    .line 1
    sget-object v0, Lae/g;->j:Ljava/util/HashMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 8
    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    instance-of v0, p1, Lae/g;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p1, Lae/g;

    .line 8
    .line 9
    iget p1, p1, Lae/g;->b:I

    .line 10
    .line 11
    iget v0, p0, Lae/g;->b:I

    .line 12
    .line 13
    if-ne p1, v0, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    return p1
.end method

.method public final f()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lae/g;->b:I

    .line 7
    .line 8
    ushr-int/lit8 v2, v1, 0x18

    .line 9
    .line 10
    and-int/lit16 v2, v2, 0xff

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, "."

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    ushr-int/lit8 v3, v1, 0x10

    .line 21
    .line 22
    and-int/lit16 v3, v3, 0xff

    .line 23
    .line 24
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    ushr-int/lit8 v3, v1, 0x8

    .line 31
    .line 32
    and-int/lit16 v3, v3, 0xff

    .line 33
    .line 34
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    and-int/lit16 v1, v1, 0xff

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lae/g;->a:Lae/b;

    .line 2
    .line 3
    sget-object v1, Lae/g;->k:Lae/b;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lae/g;->f()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, v0, Lae/b;->a:Ljava/lang/String;

    .line 13
    .line 14
    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lae/g;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lae/g;->a:Lae/b;

    .line 7
    .line 8
    invoke-virtual {v1}, Lae/b;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, "/"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lae/g;->f()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    return-object v0
.end method
