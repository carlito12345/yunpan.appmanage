.class public Ldh/e;
.super Ldh/c;
.source "SourceFile"

# interfaces
.implements Ldh/a;


# static fields
.field public static final J:Ljava/util/regex/Pattern;


# instance fields
.field public A:J

.field public final B:Leh/c;

.field public C:Ljava/lang/String;

.field public D:Ldh/h;

.field public E:Ldh/f;

.field public final F:La1/i;

.field public G:Z

.field public H:Ljava/util/HashMap;

.field public final I:Z

.field public t:I

.field public u:Lsh/c;

.field public v:I

.field public w:Ljava/lang/String;

.field public x:I

.field public y:I

.field public final z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "(\\d{1,3},\\d{1,3},\\d{1,3},\\d{1,3}),(\\d{1,3}),(\\d{1,3})"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Ldh/e;->J:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ldh/c;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lsh/c;->c:Lsh/c;

    .line 5
    .line 6
    new-instance v0, La1/i;

    .line 7
    .line 8
    const/16 v1, 0x13

    .line 9
    .line 10
    invoke-direct {v0, v1, p0}, La1/i;-><init>(ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Ldh/e;->F:La1/i;

    .line 14
    .line 15
    const-string v0, "org.apache.commons.net.ftp.ipAddressFromPasvResponse"

    .line 16
    .line 17
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iput-boolean v0, p0, Ldh/e;->I:Z

    .line 22
    .line 23
    invoke-virtual {p0}, Ldh/e;->r()V

    .line 24
    .line 25
    .line 26
    const-wide/16 v0, -0x1

    .line 27
    .line 28
    long-to-int v2, v0

    .line 29
    if-gez v2, :cond_0

    .line 30
    .line 31
    add-int/lit16 v2, v2, 0x3e8

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    .line 35
    .line 36
    :goto_0
    const v3, 0xf4240

    .line 37
    .line 38
    .line 39
    mul-int v2, v2, v3

    .line 40
    .line 41
    invoke-static {v2, v0, v1}, Lsh/c;->a(IJ)Lsh/c;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iput-object v0, p0, Ldh/e;->u:Lsh/c;

    .line 46
    .line 47
    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Ldh/e;->z:Z

    .line 49
    .line 50
    new-instance v0, Leh/c;

    .line 51
    .line 52
    invoke-direct {v0}, Leh/c;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Ldh/e;->B:Leh/c;

    .line 56
    .line 57
    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Ldh/e;->E:Ldh/f;

    .line 59
    .line 60
    new-instance v0, Ljava/util/Random;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 63
    .line 64
    .line 65
    return-void
.end method


# virtual methods
.method public final a(Ldh/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldh/e;->E:Ldh/f;

    .line 2
    .line 3
    return-void
.end method

.method public b()V
    .locals 7

    .line 1
    iget-object v0, p0, Lch/d;->b:Ljava/net/Socket;

    .line 2
    .line 3
    iget v1, p0, Lch/d;->a:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lch/d;->b:Ljava/net/Socket;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lch/d;->d:Ljava/io/InputStream;

    .line 15
    .line 16
    iget-object v0, p0, Lch/d;->b:Ljava/net/Socket;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lch/d;->e:Ljava/io/OutputStream;

    .line 23
    .line 24
    new-instance v0, Lfh/a;

    .line 25
    .line 26
    new-instance v1, Ljava/io/InputStreamReader;

    .line 27
    .line 28
    iget-object v2, p0, Lch/d;->d:Ljava/io/InputStream;

    .line 29
    .line 30
    iget-object v3, p0, Ldh/c;->n:Ljava/lang/String;

    .line 31
    .line 32
    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, v1}, Lfh/a;-><init>(Ljava/io/InputStreamReader;)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Ldh/c;->q:Ljava/io/BufferedReader;

    .line 39
    .line 40
    new-instance v0, Ljava/io/BufferedWriter;

    .line 41
    .line 42
    new-instance v1, Ljava/io/OutputStreamWriter;

    .line 43
    .line 44
    iget-object v2, p0, Lch/d;->e:Ljava/io/OutputStream;

    .line 45
    .line 46
    iget-object v3, p0, Ldh/c;->n:Ljava/lang/String;

    .line 47
    .line 48
    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Ldh/c;->r:Ljava/io/BufferedWriter;

    .line 55
    .line 56
    iget v0, p0, Lch/d;->f:I

    .line 57
    .line 58
    if-lez v0, :cond_1

    .line 59
    .line 60
    iget-object v0, p0, Lch/d;->b:Ljava/net/Socket;

    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/net/Socket;->getSoTimeout()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    iget-object v1, p0, Lch/d;->b:Ljava/net/Socket;

    .line 67
    .line 68
    iget v2, p0, Lch/d;->f:I

    .line 69
    .line 70
    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 71
    .line 72
    .line 73
    :try_start_0
    invoke-virtual {p0}, Ldh/c;->h()I

    .line 74
    .line 75
    .line 76
    iget v1, p0, Ldh/c;->j:I

    .line 77
    .line 78
    invoke-static {v1}, Lcom/bumptech/glide/c;->M(I)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_0

    .line 83
    .line 84
    invoke-virtual {p0}, Ldh/c;->h()I
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :catchall_0
    move-exception v1

    .line 89
    goto :goto_2

    .line 90
    :catch_0
    move-exception v1

    .line 91
    goto :goto_1

    .line 92
    :cond_0
    :goto_0
    iget-object v1, p0, Lch/d;->b:Ljava/net/Socket;

    .line 93
    .line 94
    invoke-virtual {v1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 95
    .line 96
    .line 97
    goto :goto_3

    .line 98
    :goto_1
    :try_start_1
    new-instance v2, Ljava/io/IOException;

    .line 99
    .line 100
    const-string v3, "Timed out waiting for initial connect reply"

    .line 101
    .line 102
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 106
    .line 107
    .line 108
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    :goto_2
    iget-object v2, p0, Lch/d;->b:Ljava/net/Socket;

    .line 110
    .line 111
    invoke-virtual {v2, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 112
    .line 113
    .line 114
    throw v1

    .line 115
    :cond_1
    invoke-virtual {p0}, Ldh/c;->h()I

    .line 116
    .line 117
    .line 118
    iget v0, p0, Ldh/c;->j:I

    .line 119
    .line 120
    invoke-static {v0}, Lcom/bumptech/glide/c;->M(I)Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-eqz v0, :cond_2

    .line 125
    .line 126
    invoke-virtual {p0}, Ldh/c;->h()I

    .line 127
    .line 128
    .line 129
    :cond_2
    :goto_3
    invoke-virtual {p0}, Ldh/e;->r()V

    .line 130
    .line 131
    .line 132
    iget-boolean v0, p0, Ldh/e;->G:Z

    .line 133
    .line 134
    if-eqz v0, :cond_5

    .line 135
    .line 136
    new-instance v0, Ljava/util/ArrayList;

    .line 137
    .line 138
    iget-object v1, p0, Ldh/c;->k:Ljava/util/ArrayList;

    .line 139
    .line 140
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 141
    .line 142
    .line 143
    iget v2, p0, Ldh/c;->j:I

    .line 144
    .line 145
    const-string v3, "UTF8"

    .line 146
    .line 147
    invoke-virtual {p0, v3}, Ldh/e;->q(Ljava/lang/String;)Z

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    const-string v4, "UTF-8"

    .line 152
    .line 153
    if-nez v3, :cond_3

    .line 154
    .line 155
    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    invoke-virtual {p0, v3}, Ldh/e;->q(Ljava/lang/String;)Z

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    if-eqz v3, :cond_4

    .line 168
    .line 169
    :cond_3
    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    iput-object v3, p0, Ldh/c;->n:Ljava/lang/String;

    .line 178
    .line 179
    new-instance v3, Lfh/a;

    .line 180
    .line 181
    new-instance v4, Ljava/io/InputStreamReader;

    .line 182
    .line 183
    iget-object v5, p0, Lch/d;->d:Ljava/io/InputStream;

    .line 184
    .line 185
    iget-object v6, p0, Ldh/c;->n:Ljava/lang/String;

    .line 186
    .line 187
    invoke-direct {v4, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-direct {v3, v4}, Lfh/a;-><init>(Ljava/io/InputStreamReader;)V

    .line 191
    .line 192
    .line 193
    iput-object v3, p0, Ldh/c;->q:Ljava/io/BufferedReader;

    .line 194
    .line 195
    new-instance v3, Ljava/io/BufferedWriter;

    .line 196
    .line 197
    new-instance v4, Ljava/io/OutputStreamWriter;

    .line 198
    .line 199
    iget-object v5, p0, Lch/d;->e:Ljava/io/OutputStream;

    .line 200
    .line 201
    iget-object v6, p0, Ldh/c;->n:Ljava/lang/String;

    .line 202
    .line 203
    invoke-direct {v4, v5, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 207
    .line 208
    .line 209
    iput-object v3, p0, Ldh/c;->r:Ljava/io/BufferedWriter;

    .line 210
    .line 211
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 215
    .line 216
    .line 217
    iput v2, p0, Ldh/c;->j:I

    .line 218
    .line 219
    const/4 v0, 0x1

    .line 220
    iput-boolean v0, p0, Ldh/c;->l:Z

    .line 221
    .line 222
    :cond_5
    return-void
.end method

.method public d()V
    .locals 0

    .line 1
    invoke-super {p0}, Ldh/c;->d()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ldh/e;->r()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public m(Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget v2, p0, Ldh/e;->t:I

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    const/4 v4, 0x2

    .line 9
    if-eq v2, v4, :cond_0

    .line 10
    .line 11
    return-object v3

    .line 12
    :cond_0
    iget-object v2, p0, Lch/d;->b:Ljava/net/Socket;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    instance-of v2, v2, Ljava/net/Inet6Address;

    .line 19
    .line 20
    iget-object v4, p0, Ldh/e;->u:Lsh/c;

    .line 21
    .line 22
    invoke-static {v4}, Landroid/support/v4/media/session/b;->J(Lsh/c;)I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    iget v5, p0, Ldh/e;->t:I

    .line 27
    .line 28
    const/16 v6, 0xd

    .line 29
    .line 30
    const-wide/16 v7, 0x0

    .line 31
    .line 32
    if-nez v5, :cond_b

    .line 33
    .line 34
    iget-object v5, p0, Lch/d;->b:Ljava/net/Socket;

    .line 35
    .line 36
    invoke-virtual {v5}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    sget-object v9, Lch/d;->i:Ljavax/net/ServerSocketFactory;

    .line 41
    .line 42
    invoke-virtual {v9, v1, v0, v5}, Ljavax/net/ServerSocketFactory;->createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    :try_start_0
    iget-object v2, p0, Lch/d;->b:Ljava/net/Socket;

    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v5}, Ljava/net/ServerSocket;->getLocalPort()I

    .line 55
    .line 56
    .line 57
    move-result v9

    .line 58
    invoke-virtual {p0, v2, v9}, Ldh/c;->g(Ljava/net/InetAddress;I)I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    invoke-static {v2}, Lcom/bumptech/glide/c;->L(I)Z

    .line 63
    .line 64
    .line 65
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    if-nez v2, :cond_2

    .line 67
    .line 68
    invoke-virtual {v5}, Ljava/net/ServerSocket;->close()V

    .line 69
    .line 70
    .line 71
    return-object v3

    .line 72
    :catchall_0
    move-exception p1

    .line 73
    goto :goto_1

    .line 74
    :cond_1
    :try_start_1
    iget-object v2, p0, Lch/d;->b:Ljava/net/Socket;

    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v5}, Ljava/net/ServerSocket;->getLocalPort()I

    .line 81
    .line 82
    .line 83
    move-result v9

    .line 84
    invoke-virtual {p0, v2, v9}, Ldh/c;->j(Ljava/net/InetAddress;I)I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    invoke-static {v2}, Lcom/bumptech/glide/c;->L(I)Z

    .line 89
    .line 90
    .line 91
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    if-nez v2, :cond_2

    .line 93
    .line 94
    invoke-virtual {v5}, Ljava/net/ServerSocket;->close()V

    .line 95
    .line 96
    .line 97
    return-object v3

    .line 98
    :cond_2
    :try_start_2
    iget-wide v9, p0, Ldh/e;->A:J

    .line 99
    .line 100
    cmp-long v2, v9, v7

    .line 101
    .line 102
    if-lez v2, :cond_4

    .line 103
    .line 104
    invoke-virtual {p0, v9, v10}, Ldh/e;->w(J)Z

    .line 105
    .line 106
    .line 107
    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    if-nez v2, :cond_4

    .line 109
    .line 110
    if-eqz v5, :cond_3

    .line 111
    .line 112
    invoke-virtual {v5}, Ljava/net/ServerSocket;->close()V

    .line 113
    .line 114
    .line 115
    :cond_3
    return-object v3

    .line 116
    :cond_4
    :try_start_3
    invoke-virtual {p0, p1, p2}, Ldh/c;->l(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    invoke-static {p1}, Lcom/bumptech/glide/c;->M(I)Z

    .line 121
    .line 122
    .line 123
    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 124
    if-nez p1, :cond_6

    .line 125
    .line 126
    if-eqz v5, :cond_5

    .line 127
    .line 128
    invoke-virtual {v5}, Ljava/net/ServerSocket;->close()V

    .line 129
    .line 130
    .line 131
    :cond_5
    return-object v3

    .line 132
    :cond_6
    if-ltz v4, :cond_7

    .line 133
    .line 134
    :try_start_4
    invoke-virtual {v5, v4}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    .line 135
    .line 136
    .line 137
    :cond_7
    invoke-virtual {v5}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    iget p2, p0, Ldh/e;->y:I

    .line 142
    .line 143
    if-eq p2, v6, :cond_8

    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_8
    new-instance p2, Ldh/b;

    .line 147
    .line 148
    invoke-direct {p2, p1}, Ldh/b;-><init>(Ljava/net/Socket;)V

    .line 149
    .line 150
    .line 151
    move-object p1, p2

    .line 152
    :goto_0
    if-ltz v4, :cond_9

    .line 153
    .line 154
    invoke-virtual {p1, v4}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 155
    .line 156
    .line 157
    :cond_9
    invoke-virtual {v5}, Ljava/net/ServerSocket;->close()V

    .line 158
    .line 159
    .line 160
    goto/16 :goto_5

    .line 161
    .line 162
    :goto_1
    if-eqz v5, :cond_a

    .line 163
    .line 164
    :try_start_5
    invoke-virtual {v5}, Ljava/net/ServerSocket;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 165
    .line 166
    .line 167
    goto :goto_2

    .line 168
    :catchall_1
    move-exception p2

    .line 169
    const-class v2, Ljava/lang/Throwable;

    .line 170
    .line 171
    :try_start_6
    const-string v3, "addSuppressed"

    .line 172
    .line 173
    new-array v4, v0, [Ljava/lang/Class;

    .line 174
    .line 175
    aput-object v2, v4, v1

    .line 176
    .line 177
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    new-array v0, v0, [Ljava/lang/Object;

    .line 182
    .line 183
    aput-object p2, v0, v1

    .line 184
    .line 185
    invoke-virtual {v2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 186
    .line 187
    .line 188
    :catch_0
    :cond_a
    :goto_2
    throw p1

    .line 189
    :cond_b
    iget-object v0, p0, Ldh/c;->k:Ljava/util/ArrayList;

    .line 190
    .line 191
    if-eqz v2, :cond_c

    .line 192
    .line 193
    const/16 v5, 0x9

    .line 194
    .line 195
    invoke-virtual {p0, v5}, Ldh/c;->k(I)I

    .line 196
    .line 197
    .line 198
    move-result v5

    .line 199
    const/16 v9, 0xe5

    .line 200
    .line 201
    if-ne v5, v9, :cond_c

    .line 202
    .line 203
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    check-cast v0, Ljava/lang/String;

    .line 208
    .line 209
    invoke-virtual {p0, v0}, Ldh/e;->n(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    goto :goto_3

    .line 213
    :cond_c
    if-eqz v2, :cond_d

    .line 214
    .line 215
    return-object v3

    .line 216
    :cond_d
    const/16 v2, 0x16

    .line 217
    .line 218
    invoke-virtual {p0, v2}, Ldh/c;->k(I)I

    .line 219
    .line 220
    .line 221
    move-result v2

    .line 222
    const/16 v5, 0xe3

    .line 223
    .line 224
    if-eq v2, v5, :cond_e

    .line 225
    .line 226
    return-object v3

    .line 227
    :cond_e
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    check-cast v0, Ljava/lang/String;

    .line 232
    .line 233
    invoke-virtual {p0, v0}, Ldh/e;->o(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    :goto_3
    sget-object v0, Lch/d;->h:Ljavax/net/SocketFactory;

    .line 237
    .line 238
    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    iget v1, p0, Ldh/e;->y:I

    .line 243
    .line 244
    if-eq v1, v6, :cond_f

    .line 245
    .line 246
    goto :goto_4

    .line 247
    :cond_f
    new-instance v1, Ldh/b;

    .line 248
    .line 249
    invoke-direct {v1, v0}, Ldh/b;-><init>(Ljava/net/Socket;)V

    .line 250
    .line 251
    .line 252
    move-object v0, v1

    .line 253
    :goto_4
    if-ltz v4, :cond_10

    .line 254
    .line 255
    invoke-virtual {v0, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 256
    .line 257
    .line 258
    :cond_10
    new-instance v1, Ljava/net/InetSocketAddress;

    .line 259
    .line 260
    iget-object v2, p0, Ldh/e;->w:Ljava/lang/String;

    .line 261
    .line 262
    iget v4, p0, Ldh/e;->v:I

    .line 263
    .line 264
    invoke-direct {v1, v2, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 265
    .line 266
    .line 267
    iget v2, p0, Lch/d;->f:I

    .line 268
    .line 269
    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 270
    .line 271
    .line 272
    iget-wide v1, p0, Ldh/e;->A:J

    .line 273
    .line 274
    cmp-long v4, v1, v7

    .line 275
    .line 276
    if-lez v4, :cond_11

    .line 277
    .line 278
    invoke-virtual {p0, v1, v2}, Ldh/e;->w(J)Z

    .line 279
    .line 280
    .line 281
    move-result v1

    .line 282
    if-nez v1, :cond_11

    .line 283
    .line 284
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 285
    .line 286
    .line 287
    return-object v3

    .line 288
    :cond_11
    invoke-virtual {p0, p1, p2}, Ldh/c;->l(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    .line 290
    .line 291
    move-result p1

    .line 292
    invoke-static {p1}, Lcom/bumptech/glide/c;->M(I)Z

    .line 293
    .line 294
    .line 295
    move-result p1

    .line 296
    if-nez p1, :cond_12

    .line 297
    .line 298
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 299
    .line 300
    .line 301
    return-object v3

    .line 302
    :cond_12
    move-object p1, v0

    .line 303
    :goto_5
    iget-boolean p2, p0, Ldh/e;->z:Z

    .line 304
    .line 305
    if-eqz p2, :cond_14

    .line 306
    .line 307
    invoke-virtual {p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    .line 308
    .line 309
    .line 310
    move-result-object p2

    .line 311
    iget-object v0, p0, Lch/d;->b:Ljava/net/Socket;

    .line 312
    .line 313
    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    invoke-virtual {p2, v0}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    move-result p2

    .line 321
    if-eqz p2, :cond_13

    .line 322
    .line 323
    goto :goto_6

    .line 324
    :cond_13
    invoke-virtual {p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    .line 325
    .line 326
    .line 327
    move-result-object p2

    .line 328
    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    .line 329
    .line 330
    .line 331
    new-instance p1, Ljava/io/IOException;

    .line 332
    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    .line 334
    .line 335
    const-string v1, "Host attempting data connection "

    .line 336
    .line 337
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object p2

    .line 344
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    const-string p2, " is not same as server "

    .line 348
    .line 349
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    iget-object p2, p0, Lch/d;->b:Ljava/net/Socket;

    .line 353
    .line 354
    invoke-virtual {p2}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    .line 355
    .line 356
    .line 357
    move-result-object p2

    .line 358
    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object p2

    .line 362
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object p2

    .line 369
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    throw p1

    .line 373
    :cond_14
    :goto_6
    return-object p1
.end method

.method public final n(Ljava/lang/String;)V
    .locals 6

    .line 1
    const/16 v0, 0x28

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    add-int/2addr v0, v1

    .line 9
    const/16 v2, 0x29

    .line 10
    .line 11
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    const/4 v3, 0x2

    .line 33
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    sub-int/2addr v4, v1

    .line 42
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    const-string v5, "Could not parse extended passive host information.\nServer Reply: "

    .line 47
    .line 48
    if-ne v0, v2, :cond_0

    .line 49
    .line 50
    if-ne v2, v3, :cond_0

    .line 51
    .line 52
    if-ne v3, v4, :cond_0

    .line 53
    .line 54
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    sub-int/2addr v0, v1

    .line 59
    const/4 v1, 0x3

    .line 60
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    iget-object v0, p0, Lch/d;->b:Ljava/net/Socket;

    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iput-object v0, p0, Ldh/e;->w:Ljava/lang/String;

    .line 79
    .line 80
    iput p1, p0, Ldh/e;->v:I

    .line 81
    .line 82
    return-void

    .line 83
    :catch_0
    new-instance v0, Lch/a;

    .line 84
    .line 85
    invoke-virtual {v5, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-direct {v0, p1}, Lch/a;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw v0

    .line 93
    :cond_0
    new-instance v0, Lch/a;

    .line 94
    .line 95
    invoke-virtual {v5, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-direct {v0, p1}, Lch/a;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw v0
.end method

.method public final o(Ljava/lang/String;)V
    .locals 5

    .line 1
    sget-object v0, Ldh/e;->J:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const-string v2, "Could not parse passive host information.\nServer Reply: "

    .line 12
    .line 13
    if-eqz v1, :cond_5

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    const-string v4, "0,0,0,0"

    .line 21
    .line 22
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    iget-object v1, p0, Lch/d;->b:Ljava/net/Socket;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const/16 v3, 0x2c

    .line 44
    .line 45
    const/16 v4, 0x2e

    .line 46
    .line 47
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    :goto_0
    const/4 v3, 0x2

    .line 52
    :try_start_0
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    const/4 v4, 0x3

    .line 61
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 69
    shl-int/lit8 v3, v3, 0x8

    .line 70
    .line 71
    or-int/2addr v0, v3

    .line 72
    iget-boolean v3, p0, Ldh/e;->I:Z

    .line 73
    .line 74
    if-eqz v3, :cond_2

    .line 75
    .line 76
    iget-object v3, p0, Ldh/e;->F:La1/i;

    .line 77
    .line 78
    if-eqz v3, :cond_4

    .line 79
    .line 80
    :try_start_1
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    invoke-virtual {v4}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    if-eqz v4, :cond_1

    .line 89
    .line 90
    iget-object v3, v3, La1/i;->b:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v3, Ldh/e;

    .line 93
    .line 94
    iget-object v3, v3, Lch/d;->b:Ljava/net/Socket;

    .line 95
    .line 96
    invoke-virtual {v3}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {v3}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    if-nez v4, :cond_1

    .line 105
    .line 106
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    goto :goto_1

    .line 111
    :cond_1
    move-object v3, v1

    .line 112
    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    if-nez v4, :cond_4

    .line 117
    .line 118
    const/4 v1, 0x0

    .line 119
    invoke-virtual {p0, v1}, Lch/d;->e(I)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0

    .line 120
    .line 121
    .line 122
    move-object v1, v3

    .line 123
    goto :goto_2

    .line 124
    :catch_0
    new-instance v0, Lch/a;

    .line 125
    .line 126
    invoke-static {v2, p1}, Lda/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-direct {v0, p1}, Lch/a;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw v0

    .line 134
    :cond_2
    iget-object p1, p0, Lch/d;->b:Ljava/net/Socket;

    .line 135
    .line 136
    if-nez p1, :cond_3

    .line 137
    .line 138
    const/4 v1, 0x0

    .line 139
    goto :goto_2

    .line 140
    :cond_3
    invoke-virtual {p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    :cond_4
    :goto_2
    iput-object v1, p0, Ldh/e;->w:Ljava/lang/String;

    .line 149
    .line 150
    iput v0, p0, Ldh/e;->v:I

    .line 151
    .line 152
    return-void

    .line 153
    :catch_1
    new-instance v0, Lch/a;

    .line 154
    .line 155
    const-string v1, "Could not parse passive port information.\nServer Reply: "

    .line 156
    .line 157
    invoke-static {v1, p1}, Lda/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-direct {v0, p1}, Lch/a;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    throw v0

    .line 165
    :cond_5
    new-instance v0, Lch/a;

    .line 166
    .line 167
    invoke-static {v2, p1}, Lda/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-direct {v0, p1}, Lch/a;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    throw v0
.end method

.method public final p(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "CWD"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Ldh/c;->l(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {p1}, Lcom/bumptech/glide/c;->L(I)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public final q(Ljava/lang/String;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Ldh/e;->H:Ljava/util/HashMap;

    .line 2
    .line 3
    if-nez v0, :cond_5

    .line 4
    .line 5
    const/16 v0, 0xa

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ldh/c;->k(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/16 v1, 0x212

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-static {v0}, Lcom/bumptech/glide/c;->L(I)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    new-instance v1, Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Ldh/e;->H:Ljava/util/HashMap;

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    :goto_0
    const/4 p1, 0x0

    .line 30
    return p1

    .line 31
    :cond_1
    iget-object v0, p0, Ldh/c;->k:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_5

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Ljava/lang/String;

    .line 48
    .line 49
    const-string v2, " "

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_2

    .line 56
    .line 57
    const/16 v2, 0x20

    .line 58
    .line 59
    const/4 v3, 0x1

    .line 60
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->indexOf(II)I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-lez v2, :cond_3

    .line 65
    .line 66
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    add-int/lit8 v2, v2, 0x1

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    goto :goto_2

    .line 77
    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    const-string v1, ""

    .line 82
    .line 83
    :goto_2
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 84
    .line 85
    invoke-virtual {v3, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    iget-object v3, p0, Ldh/e;->H:Ljava/util/HashMap;

    .line 90
    .line 91
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    if-nez v3, :cond_4

    .line 96
    .line 97
    new-instance v3, Ljava/util/HashSet;

    .line 98
    .line 99
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 100
    .line 101
    .line 102
    iget-object v4, p0, Ldh/e;->H:Ljava/util/HashMap;

    .line 103
    .line 104
    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_4
    iget-object v3, p0, Ldh/e;->H:Ljava/util/HashMap;

    .line 109
    .line 110
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    move-object v3, v2

    .line 115
    check-cast v3, Ljava/util/Set;

    .line 116
    .line 117
    :goto_3
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_5
    iget-object v0, p0, Ldh/e;->H:Ljava/util/HashMap;

    .line 122
    .line 123
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 124
    .line 125
    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    return p1
.end method

.method public final r()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ldh/e;->t:I

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Ldh/e;->w:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v2, -0x1

    .line 8
    iput v2, p0, Ldh/e;->v:I

    .line 9
    .line 10
    iput v0, p0, Ldh/e;->x:I

    .line 11
    .line 12
    const/16 v0, 0xa

    .line 13
    .line 14
    iput v0, p0, Ldh/e;->y:I

    .line 15
    .line 16
    const-wide/16 v2, 0x0

    .line 17
    .line 18
    iput-wide v2, p0, Ldh/e;->A:J

    .line 19
    .line 20
    iput-object v1, p0, Ldh/e;->C:Ljava/lang/String;

    .line 21
    .line 22
    iput-object v1, p0, Ldh/e;->D:Ldh/h;

    .line 23
    .line 24
    iput-object v1, p0, Ldh/e;->H:Ljava/util/HashMap;

    .line 25
    .line 26
    return-void
.end method

.method public final s(Ljava/lang/String;)[Ldh/g;
    .locals 4

    .line 1
    iget-object v0, p0, Ldh/e;->D:Ldh/h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_1

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Ldh/e;->B:Leh/c;

    .line 8
    .line 9
    iget-object v1, p0, Ldh/e;->E:Ldh/f;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    iget-object v1, v1, Ldh/f;->a:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-lez v1, :cond_1

    .line 20
    .line 21
    iget-object v1, p0, Ldh/e;->E:Ldh/f;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    iget-object v0, v1, Ldh/f;->a:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v0, v1}, Leh/c;->a(Ljava/lang/String;Ldh/f;)Ldh/h;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Ldh/e;->D:Ldh/h;

    .line 33
    .line 34
    iget-object v0, p0, Ldh/e;->E:Ldh/f;

    .line 35
    .line 36
    iget-object v0, v0, Ldh/f;->a:Ljava/lang/String;

    .line 37
    .line 38
    goto/16 :goto_1

    .line 39
    .line 40
    :cond_1
    const-string v1, "org.apache.commons.net.ftp.systemType"

    .line 41
    .line 42
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    if-nez v1, :cond_5

    .line 47
    .line 48
    iget-object v1, p0, Ldh/e;->C:Ljava/lang/String;

    .line 49
    .line 50
    if-nez v1, :cond_4

    .line 51
    .line 52
    const/16 v1, 0x27

    .line 53
    .line 54
    invoke-virtual {p0, v1}, Ldh/c;->k(I)I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    invoke-static {v1}, Lcom/bumptech/glide/c;->L(I)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    iget-object v1, p0, Ldh/c;->k:Ljava/util/ArrayList;

    .line 65
    .line 66
    const/4 v2, 0x1

    .line 67
    invoke-static {v2, v1}, Lta/q;->h(ILjava/util/ArrayList;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Ljava/lang/String;

    .line 72
    .line 73
    const/4 v2, 0x4

    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    iput-object v1, p0, Ldh/e;->C:Ljava/lang/String;

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    const-string v1, "org.apache.commons.net.ftp.systemType.default"

    .line 82
    .line 83
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    if-eqz v1, :cond_3

    .line 88
    .line 89
    iput-object v1, p0, Ldh/e;->C:Ljava/lang/String;

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 93
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string v1, "Unable to determine system type - response: "

    .line 97
    .line 98
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Ldh/c;->i()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw p1

    .line 116
    :cond_4
    :goto_0
    iget-object v1, p0, Ldh/e;->C:Ljava/lang/String;

    .line 117
    .line 118
    sget-object v2, Ldh/d;->a:Ljava/util/Properties;

    .line 119
    .line 120
    if-eqz v2, :cond_5

    .line 121
    .line 122
    invoke-virtual {v2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    if-eqz v2, :cond_5

    .line 127
    .line 128
    move-object v1, v2

    .line 129
    :cond_5
    iget-object v2, p0, Ldh/e;->E:Ldh/f;

    .line 130
    .line 131
    if-eqz v2, :cond_6

    .line 132
    .line 133
    new-instance v2, Ldh/f;

    .line 134
    .line 135
    iget-object v3, p0, Ldh/e;->E:Ldh/f;

    .line 136
    .line 137
    invoke-direct {v2, v1, v3}, Ldh/f;-><init>(Ljava/lang/String;Ldh/f;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    invoke-static {v1, v2}, Leh/c;->a(Ljava/lang/String;Ldh/f;)Ldh/h;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    iput-object v0, p0, Ldh/e;->D:Ldh/h;

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    if-eqz v1, :cond_a

    .line 154
    .line 155
    const/4 v0, 0x0

    .line 156
    invoke-static {v1, v0}, Leh/c;->a(Ljava/lang/String;Ldh/f;)Ldh/h;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    iput-object v0, p0, Ldh/e;->D:Ldh/h;

    .line 161
    .line 162
    :goto_1
    iget-object v0, p0, Ldh/e;->D:Ldh/h;

    .line 163
    .line 164
    const-string v1, "LIST"

    .line 165
    .line 166
    invoke-virtual {p0, v1, p1}, Ldh/e;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    new-instance v1, Ldh/i;

    .line 171
    .line 172
    iget-object v2, p0, Ldh/e;->E:Ldh/f;

    .line 173
    .line 174
    invoke-direct {v1, v0, v2}, Ldh/i;-><init>(Ldh/h;Ldh/f;)V

    .line 175
    .line 176
    .line 177
    if-nez p1, :cond_7

    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_7
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    iget-object v2, p0, Ldh/c;->n:Ljava/lang/String;

    .line 185
    .line 186
    invoke-virtual {v1, v0, v2}, Ldh/i;->a(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    .line 188
    .line 189
    :try_start_1
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 190
    .line 191
    .line 192
    :catch_0
    invoke-virtual {p0}, Ldh/c;->h()I

    .line 193
    .line 194
    .line 195
    :goto_2
    new-instance p1, Ljava/util/ArrayList;

    .line 196
    .line 197
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .line 199
    .line 200
    iget-object v0, v1, Ldh/i;->a:Ljava/util/LinkedList;

    .line 201
    .line 202
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    :cond_8
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    if-eqz v2, :cond_9

    .line 211
    .line 212
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    check-cast v2, Ljava/lang/String;

    .line 217
    .line 218
    iget-object v3, v1, Ldh/i;->b:Ldh/h;

    .line 219
    .line 220
    invoke-virtual {v3, v2}, Ldh/h;->b(Ljava/lang/String;)Ldh/g;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    if-eqz v2, :cond_8

    .line 225
    .line 226
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    goto :goto_3

    .line 230
    :cond_9
    sget-object v0, Ldh/i;->c:[Ldh/g;

    .line 231
    .line 232
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    check-cast p1, [Ldh/g;

    .line 237
    .line 238
    return-object p1

    .line 239
    :catchall_0
    move-exception v0

    .line 240
    :try_start_2
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 241
    .line 242
    .line 243
    :catch_1
    throw v0

    .line 244
    :cond_a
    new-instance p1, Landroidx/fragment/app/b0;

    .line 245
    .line 246
    const-string v0, "Parser key cannot be null"

    .line 247
    .line 248
    const/4 v1, 0x1

    .line 249
    invoke-direct {p1, v0, v1}, Landroidx/fragment/app/b0;-><init>(Ljava/lang/String;I)V

    .line 250
    .line 251
    .line 252
    goto :goto_5

    .line 253
    :goto_4
    throw p1

    .line 254
    :goto_5
    goto :goto_4
.end method

.method public final t(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "USER"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Ldh/c;->l(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    iget p1, p0, Ldh/c;->j:I

    .line 7
    .line 8
    invoke-static {p1}, Lcom/bumptech/glide/c;->L(I)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    return p1

    .line 16
    :cond_0
    iget p1, p0, Ldh/c;->j:I

    .line 17
    .line 18
    const/16 v0, 0x12c

    .line 19
    .line 20
    if-lt p1, v0, :cond_1

    .line 21
    .line 22
    const/16 v0, 0x190

    .line 23
    .line 24
    if-ge p1, v0, :cond_1

    .line 25
    .line 26
    const-string p1, "PASS"

    .line 27
    .line 28
    invoke-virtual {p0, p1, p2}, Ldh/c;->l(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    invoke-static {p1}, Lcom/bumptech/glide/c;->L(I)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    return p1

    .line 37
    :cond_1
    const/4 p1, 0x0

    .line 38
    return p1
.end method

.method public final u(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "MKD"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Ldh/c;->l(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {p1}, Lcom/bumptech/glide/c;->L(I)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public final v(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "RNFR"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Ldh/c;->l(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/16 v0, 0x12c

    .line 8
    .line 9
    if-lt p1, v0, :cond_0

    .line 10
    .line 11
    const/16 v0, 0x190

    .line 12
    .line 13
    if-ge p1, v0, :cond_0

    .line 14
    .line 15
    const-string p1, "RNTO"

    .line 16
    .line 17
    invoke-virtual {p0, p1, p2}, Ldh/c;->l(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-static {p1}, Lcom/bumptech/glide/c;->L(I)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    return p1
.end method

.method public final w(J)Z
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Ldh/e;->A:J

    .line 4
    .line 5
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string p2, "REST"

    .line 10
    .line 11
    invoke-virtual {p0, p2, p1}, Ldh/c;->l(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/16 p2, 0x12c

    .line 16
    .line 17
    if-lt p1, p2, :cond_0

    .line 18
    .line 19
    const/16 p2, 0x190

    .line 20
    .line 21
    if-ge p1, p2, :cond_0

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    :goto_0
    return p1
.end method

.method public final x(Ljava/lang/String;)Lfh/c;
    .locals 3

    .line 1
    const-string v0, "RETR"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Ldh/e;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    iget v0, p0, Ldh/e;->x:I

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    new-instance v0, Lfh/b;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    new-instance v2, Ljava/io/BufferedInputStream;

    .line 22
    .line 23
    invoke-direct {v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v2}, Lfh/b;-><init>(Ljava/io/BufferedInputStream;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :goto_0
    new-instance v1, Lfh/c;

    .line 35
    .line 36
    invoke-direct {v1, p1, v0}, Lfh/c;-><init>(Ljava/net/Socket;Ljava/io/InputStream;)V

    .line 37
    .line 38
    .line 39
    move-object p1, v1

    .line 40
    :goto_1
    return-object p1
.end method

.method public final y()V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    const-string v1, "AEILNTCFRPSBCZ"

    .line 3
    .line 4
    const/4 v2, 0x2

    .line 5
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "TYPE"

    .line 10
    .line 11
    invoke-virtual {p0, v1, v0}, Ldh/c;->l(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {v0}, Lcom/bumptech/glide/c;->L(I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iput v2, p0, Ldh/e;->x:I

    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final z(Ljava/lang/String;)Lfh/d;
    .locals 3

    .line 1
    const-string v0, "STOR"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Ldh/e;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    iget v0, p0, Ldh/e;->x:I

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    new-instance v0, Lfh/e;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    new-instance v2, Ljava/io/BufferedOutputStream;

    .line 22
    .line 23
    invoke-direct {v2, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v2}, Lfh/e;-><init>(Ljava/io/BufferedOutputStream;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :goto_0
    new-instance v1, Lfh/d;

    .line 35
    .line 36
    invoke-direct {v1, p1, v0}, Lfh/d;-><init>(Ljava/net/Socket;Ljava/io/OutputStream;)V

    .line 37
    .line 38
    .line 39
    move-object p1, v1

    .line 40
    :goto_1
    return-object p1
.end method
