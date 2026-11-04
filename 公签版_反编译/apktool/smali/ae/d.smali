.class public final Lae/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final n:I

.field public static final p:I

.field public static final q:I

.field public static final r:I

.field public static final s:I

.field public static final t:I

.field public static final v:Ljava/net/InetAddress;

.field public static final w:Ljava/lang/String;

.field public static final x:Lde/d;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:I

.field public c:I

.field public final d:[B

.field public final e:[B

.field public f:Ljava/net/DatagramSocket;

.field public final g:Ljava/net/DatagramPacket;

.field public final h:Ljava/net/DatagramPacket;

.field public final i:Ljava/util/HashMap;

.field public j:Ljava/lang/Thread;

.field public k:I

.field public final l:[I

.field public final m:Ljava/net/InetAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "jcifs.smb1.netbios.snd_buf_size"

    .line 2
    .line 3
    const/16 v1, 0x240

    .line 4
    .line 5
    invoke-static {v1, v0}, Lwd/a;->c(ILjava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sput v0, Lae/d;->n:I

    .line 10
    .line 11
    const-string v0, "jcifs.smb1.netbios.rcv_buf_size"

    .line 12
    .line 13
    invoke-static {v1, v0}, Lwd/a;->c(ILjava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    sput v0, Lae/d;->p:I

    .line 18
    .line 19
    const-string v0, "jcifs.smb1.netbios.soTimeout"

    .line 20
    .line 21
    const/16 v1, 0x1388

    .line 22
    .line 23
    invoke-static {v1, v0}, Lwd/a;->c(ILjava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    sput v0, Lae/d;->q:I

    .line 28
    .line 29
    const-string v0, "jcifs.smb1.netbios.retryCount"

    .line 30
    .line 31
    const/4 v1, 0x2

    .line 32
    invoke-static {v1, v0}, Lwd/a;->c(ILjava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    sput v0, Lae/d;->r:I

    .line 37
    .line 38
    const-string v0, "jcifs.smb1.netbios.retryTimeout"

    .line 39
    .line 40
    const/16 v1, 0xbb8

    .line 41
    .line 42
    invoke-static {v1, v0}, Lwd/a;->c(ILjava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    sput v0, Lae/d;->s:I

    .line 47
    .line 48
    const-string v0, "jcifs.smb1.netbios.lport"

    .line 49
    .line 50
    const/4 v1, 0x0

    .line 51
    invoke-static {v1, v0}, Lwd/a;->c(ILjava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    sput v0, Lae/d;->t:I

    .line 56
    .line 57
    const-string v0, "jcifs.smb1.netbios.laddr"

    .line 58
    .line 59
    const/4 v1, 0x0

    .line 60
    invoke-static {v0, v1}, Lwd/a;->b(Ljava/lang/String;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    sput-object v0, Lae/d;->v:Ljava/net/InetAddress;

    .line 65
    .line 66
    sget-object v0, Lwd/a;->a:Ljava/util/Properties;

    .line 67
    .line 68
    const-string v1, "jcifs.smb1.resolveOrder"

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    sput-object v0, Lae/d;->w:Ljava/lang/String;

    .line 75
    .line 76
    invoke-static {}, Lde/d;->r()Lde/d;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    sput-object v0, Lae/d;->x:Lde/d;

    .line 81
    .line 82
    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lae/d;->a:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lae/d;->i:Ljava/util/HashMap;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lae/d;->k:I

    .line 20
    .line 21
    sget v1, Lae/d;->t:I

    .line 22
    .line 23
    iput v1, p0, Lae/d;->b:I

    .line 24
    .line 25
    :try_start_0
    const-string v1, "jcifs.smb1.netbios.baddr"

    .line 26
    .line 27
    const-string v2, "255.255.255.255"

    .line 28
    .line 29
    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-static {v1, v2}, Lwd/a;->b(Ljava/lang/String;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iput-object v1, p0, Lae/d;->m:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    nop

    .line 41
    :goto_0
    sget v1, Lae/d;->n:I

    .line 42
    .line 43
    new-array v2, v1, [B

    .line 44
    .line 45
    iput-object v2, p0, Lae/d;->d:[B

    .line 46
    .line 47
    sget v3, Lae/d;->p:I

    .line 48
    .line 49
    new-array v4, v3, [B

    .line 50
    .line 51
    iput-object v4, p0, Lae/d;->e:[B

    .line 52
    .line 53
    new-instance v5, Ljava/net/DatagramPacket;

    .line 54
    .line 55
    iget-object v6, p0, Lae/d;->m:Ljava/net/InetAddress;

    .line 56
    .line 57
    const/16 v7, 0x89

    .line 58
    .line 59
    invoke-direct {v5, v2, v1, v6, v7}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 60
    .line 61
    .line 62
    iput-object v5, p0, Lae/d;->h:Ljava/net/DatagramPacket;

    .line 63
    .line 64
    new-instance v1, Ljava/net/DatagramPacket;

    .line 65
    .line 66
    invoke-direct {v1, v4, v3}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 67
    .line 68
    .line 69
    iput-object v1, p0, Lae/d;->g:Ljava/net/DatagramPacket;

    .line 70
    .line 71
    const/4 v1, 0x1

    .line 72
    const/4 v2, 0x3

    .line 73
    const/4 v3, 0x2

    .line 74
    sget-object v4, Lae/d;->w:Ljava/lang/String;

    .line 75
    .line 76
    if-eqz v4, :cond_8

    .line 77
    .line 78
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    if-nez v5, :cond_0

    .line 83
    .line 84
    goto/16 :goto_3

    .line 85
    .line 86
    :cond_0
    new-array v5, v2, [I

    .line 87
    .line 88
    new-instance v6, Ljava/util/StringTokenizer;

    .line 89
    .line 90
    const-string v7, ","

    .line 91
    .line 92
    invoke-direct {v6, v4, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    const/4 v4, 0x0

    .line 96
    :cond_1
    :goto_1
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    .line 97
    .line 98
    .line 99
    move-result v7

    .line 100
    if-eqz v7, :cond_7

    .line 101
    .line 102
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    const-string v8, "LMHOSTS"

    .line 111
    .line 112
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 113
    .line 114
    .line 115
    move-result v8

    .line 116
    if-eqz v8, :cond_2

    .line 117
    .line 118
    add-int/lit8 v7, v4, 0x1

    .line 119
    .line 120
    aput v1, v5, v4

    .line 121
    .line 122
    :goto_2
    move v4, v7

    .line 123
    goto :goto_1

    .line 124
    :cond_2
    const-string v8, "WINS"

    .line 125
    .line 126
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 127
    .line 128
    .line 129
    move-result v8

    .line 130
    sget-object v9, Lae/d;->x:Lde/d;

    .line 131
    .line 132
    if-eqz v8, :cond_4

    .line 133
    .line 134
    invoke-static {}, Lae/g;->h()Ljava/net/InetAddress;

    .line 135
    .line 136
    .line 137
    move-result-object v7

    .line 138
    if-nez v7, :cond_3

    .line 139
    .line 140
    sget v7, Lde/d;->b:I

    .line 141
    .line 142
    if-le v7, v1, :cond_1

    .line 143
    .line 144
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_3
    add-int/lit8 v7, v4, 0x1

    .line 149
    .line 150
    aput v2, v5, v4

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_4
    const-string v8, "BCAST"

    .line 154
    .line 155
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 156
    .line 157
    .line 158
    move-result v8

    .line 159
    if-eqz v8, :cond_5

    .line 160
    .line 161
    add-int/lit8 v7, v4, 0x1

    .line 162
    .line 163
    aput v3, v5, v4

    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_5
    const-string v8, "DNS"

    .line 167
    .line 168
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 169
    .line 170
    .line 171
    move-result v7

    .line 172
    if-eqz v7, :cond_6

    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_6
    sget v7, Lde/d;->b:I

    .line 176
    .line 177
    if-le v7, v1, :cond_1

    .line 178
    .line 179
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_7
    new-array v1, v4, [I

    .line 184
    .line 185
    iput-object v1, p0, Lae/d;->l:[I

    .line 186
    .line 187
    invoke-static {v5, v0, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    .line 189
    .line 190
    goto :goto_4

    .line 191
    :cond_8
    :goto_3
    invoke-static {}, Lae/g;->h()Ljava/net/InetAddress;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    if-nez v4, :cond_9

    .line 196
    .line 197
    new-array v2, v3, [I

    .line 198
    .line 199
    iput-object v2, p0, Lae/d;->l:[I

    .line 200
    .line 201
    aput v1, v2, v0

    .line 202
    .line 203
    aput v3, v2, v1

    .line 204
    .line 205
    goto :goto_4

    .line 206
    :cond_9
    new-array v4, v2, [I

    .line 207
    .line 208
    iput-object v4, p0, Lae/d;->l:[I

    .line 209
    .line 210
    aput v1, v4, v0

    .line 211
    .line 212
    aput v2, v4, v1

    .line 213
    .line 214
    aput v3, v4, v3

    .line 215
    .line 216
    :goto_4
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lae/d;->c:I

    .line 3
    .line 4
    sget v0, Lae/d;->q:I

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iput p1, p0, Lae/d;->c:I

    .line 13
    .line 14
    :cond_0
    iget-object p1, p0, Lae/d;->f:Ljava/net/DatagramSocket;

    .line 15
    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    new-instance p1, Ljava/net/DatagramSocket;

    .line 19
    .line 20
    iget v0, p0, Lae/d;->b:I

    .line 21
    .line 22
    sget-object v1, Lae/d;->v:Ljava/net/InetAddress;

    .line 23
    .line 24
    invoke-direct {p1, v0, v1}, Ljava/net/DatagramSocket;-><init>(ILjava/net/InetAddress;)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lae/d;->f:Ljava/net/DatagramSocket;

    .line 28
    .line 29
    new-instance p1, Ljava/lang/Thread;

    .line 30
    .line 31
    const-string v0, "JCIFS-NameServiceClient"

    .line 32
    .line 33
    invoke-direct {p1, p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lae/d;->j:Ljava/lang/Thread;

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lae/d;->j:Ljava/lang/Thread;

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 45
    .line 46
    .line 47
    :cond_1
    return-void
.end method

.method public final b(Lae/b;Ljava/net/InetAddress;)Lae/g;
    .locals 11

    .line 1
    new-instance v0, Lae/c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, v1}, Lae/c;-><init>(Lae/b;I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lae/c;

    .line 8
    .line 9
    invoke-direct {v1}, Lae/c;-><init>()V

    .line 10
    .line 11
    .line 12
    sget-object v2, Lae/d;->x:Lde/d;

    .line 13
    .line 14
    sget v3, Lae/d;->s:I

    .line 15
    .line 16
    sget v4, Lae/d;->r:I

    .line 17
    .line 18
    const/4 v5, 0x3

    .line 19
    const/4 v6, 0x0

    .line 20
    const/4 v7, 0x1

    .line 21
    if-eqz p2, :cond_4

    .line 22
    .line 23
    iput-object p2, v0, Lae/e;->y:Ljava/net/InetAddress;

    .line 24
    .line 25
    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    .line 26
    .line 27
    .line 28
    move-result-object v8

    .line 29
    aget-byte v5, v8, v5

    .line 30
    .line 31
    const/4 v8, -0x1

    .line 32
    if-ne v5, v8, :cond_0

    .line 33
    .line 34
    const/4 v6, 0x1

    .line 35
    :cond_0
    iput-boolean v6, v0, Lae/e;->p:Z

    .line 36
    .line 37
    :goto_0
    :try_start_0
    invoke-virtual {p0, v0, v1, v3}, Lae/d;->d(Lae/e;Lae/e;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    iget-boolean v5, v1, Lae/e;->j:Z

    .line 41
    .line 42
    if-eqz v5, :cond_1

    .line 43
    .line 44
    iget v5, v1, Lae/e;->e:I

    .line 45
    .line 46
    if-nez v5, :cond_1

    .line 47
    .line 48
    iget-object p1, v1, Lae/e;->b:[Lae/g;

    .line 49
    .line 50
    array-length v0, p1

    .line 51
    sub-int/2addr v0, v7

    .line 52
    aget-object p1, p1, v0

    .line 53
    .line 54
    iget-object p1, p1, Lae/g;->a:Lae/b;

    .line 55
    .line 56
    invoke-virtual {p2}, Ljava/net/InetAddress;->hashCode()I

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    iput p2, p1, Lae/b;->d:I

    .line 61
    .line 62
    iget-object p1, v1, Lae/e;->b:[Lae/g;

    .line 63
    .line 64
    aget-object p1, p1, v0

    .line 65
    .line 66
    return-object p1

    .line 67
    :cond_1
    add-int/2addr v4, v8

    .line 68
    if-lez v4, :cond_2

    .line 69
    .line 70
    iget-boolean v5, v0, Lae/e;->p:Z

    .line 71
    .line 72
    if-eqz v5, :cond_2

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    new-instance p2, Ljava/net/UnknownHostException;

    .line 76
    .line 77
    iget-object p1, p1, Lae/b;->a:Ljava/lang/String;

    .line 78
    .line 79
    invoke-direct {p2, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p2

    .line 83
    :catch_0
    move-exception p2

    .line 84
    sget v0, Lde/d;->b:I

    .line 85
    .line 86
    if-le v0, v7, :cond_3

    .line 87
    .line 88
    invoke-virtual {p2, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 89
    .line 90
    .line 91
    :cond_3
    new-instance p2, Ljava/net/UnknownHostException;

    .line 92
    .line 93
    iget-object p1, p1, Lae/b;->a:Ljava/lang/String;

    .line 94
    .line 95
    invoke-direct {p2, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw p2

    .line 99
    :cond_4
    const/4 p2, 0x0

    .line 100
    :goto_1
    iget-object v8, p0, Lae/d;->l:[I

    .line 101
    .line 102
    array-length v9, v8

    .line 103
    if-ge p2, v9, :cond_c

    .line 104
    .line 105
    :try_start_1
    aget v9, v8, p2

    .line 106
    .line 107
    if-eq v9, v7, :cond_a

    .line 108
    .line 109
    const/4 v10, 0x2

    .line 110
    if-eq v9, v10, :cond_5

    .line 111
    .line 112
    if-eq v9, v5, :cond_5

    .line 113
    .line 114
    goto :goto_4

    .line 115
    :cond_5
    if-ne v9, v5, :cond_6

    .line 116
    .line 117
    iget-object v9, p1, Lae/b;->a:Ljava/lang/String;

    .line 118
    .line 119
    const-string v10, "\u0001\u0002__MSBROWSE__\u0002"

    .line 120
    .line 121
    if-eq v9, v10, :cond_6

    .line 122
    .line 123
    iget v9, p1, Lae/b;->c:I

    .line 124
    .line 125
    const/16 v10, 0x1d

    .line 126
    .line 127
    if-eq v9, v10, :cond_6

    .line 128
    .line 129
    invoke-static {}, Lae/g;->h()Ljava/net/InetAddress;

    .line 130
    .line 131
    .line 132
    move-result-object v9

    .line 133
    iput-object v9, v0, Lae/e;->y:Ljava/net/InetAddress;

    .line 134
    .line 135
    iput-boolean v6, v0, Lae/e;->p:Z

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_6
    iget-object v9, p0, Lae/d;->m:Ljava/net/InetAddress;

    .line 139
    .line 140
    iput-object v9, v0, Lae/e;->y:Ljava/net/InetAddress;

    .line 141
    .line 142
    iput-boolean v7, v0, Lae/e;->p:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 143
    .line 144
    :goto_2
    move v9, v4

    .line 145
    :goto_3
    add-int/lit8 v10, v9, -0x1

    .line 146
    .line 147
    if-lez v9, :cond_b

    .line 148
    .line 149
    :try_start_2
    invoke-virtual {p0, v0, v1, v3}, Lae/d;->d(Lae/e;Lae/e;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 150
    .line 151
    .line 152
    :try_start_3
    iget-boolean v9, v1, Lae/e;->j:Z

    .line 153
    .line 154
    if-eqz v9, :cond_7

    .line 155
    .line 156
    iget v9, v1, Lae/e;->e:I

    .line 157
    .line 158
    if-nez v9, :cond_7

    .line 159
    .line 160
    iget-object v8, v1, Lae/e;->b:[Lae/g;

    .line 161
    .line 162
    aget-object v8, v8, v6

    .line 163
    .line 164
    iget-object v8, v8, Lae/g;->a:Lae/b;

    .line 165
    .line 166
    iget-object v9, v0, Lae/e;->y:Ljava/net/InetAddress;

    .line 167
    .line 168
    invoke-virtual {v9}, Ljava/net/InetAddress;->hashCode()I

    .line 169
    .line 170
    .line 171
    move-result v9

    .line 172
    iput v9, v8, Lae/b;->d:I

    .line 173
    .line 174
    iget-object v8, v1, Lae/e;->b:[Lae/g;

    .line 175
    .line 176
    aget-object p1, v8, v6

    .line 177
    .line 178
    return-object p1

    .line 179
    :cond_7
    aget v9, v8, p2

    .line 180
    .line 181
    if-ne v9, v5, :cond_8

    .line 182
    .line 183
    goto :goto_4

    .line 184
    :cond_8
    move v9, v10

    .line 185
    goto :goto_3

    .line 186
    :catch_1
    move-exception v8

    .line 187
    sget v9, Lde/d;->b:I

    .line 188
    .line 189
    if-le v9, v7, :cond_9

    .line 190
    .line 191
    invoke-virtual {v8, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 192
    .line 193
    .line 194
    :cond_9
    new-instance v8, Ljava/net/UnknownHostException;

    .line 195
    .line 196
    iget-object v9, p1, Lae/b;->a:Ljava/lang/String;

    .line 197
    .line 198
    invoke-direct {v8, v9}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    throw v8

    .line 202
    :cond_a
    invoke-static {p1}, Lae/a;->a(Lae/b;)Lae/g;

    .line 203
    .line 204
    .line 205
    move-result-object v8

    .line 206
    if-eqz v8, :cond_b

    .line 207
    .line 208
    iget-object v9, v8, Lae/g;->a:Lae/b;

    .line 209
    .line 210
    iput v6, v9, Lae/b;->d:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 211
    .line 212
    return-object v8

    .line 213
    :catch_2
    :cond_b
    :goto_4
    add-int/lit8 p2, p2, 0x1

    .line 214
    .line 215
    goto :goto_1

    .line 216
    :cond_c
    new-instance p2, Ljava/net/UnknownHostException;

    .line 217
    .line 218
    iget-object p1, p1, Lae/b;->a:Ljava/lang/String;

    .line 219
    .line 220
    invoke-direct {p2, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    goto :goto_6

    .line 224
    :goto_5
    throw p2

    .line 225
    :goto_6
    goto :goto_5
.end method

.method public final c(Lae/g;)[Lae/g;
    .locals 6

    .line 1
    new-instance v0, Lae/i;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lae/i;-><init>(Lae/g;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lae/c;

    .line 7
    .line 8
    new-instance v2, Lae/b;

    .line 9
    .line 10
    const-string v3, "*\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000"

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x0

    .line 14
    invoke-direct {v2, v3, v4, v5}, Lae/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v3, 0x2

    .line 18
    invoke-direct {v1, v2, v3}, Lae/c;-><init>(Lae/b;I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lae/g;->f()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iput-object v2, v1, Lae/e;->y:Ljava/net/InetAddress;

    .line 30
    .line 31
    sget v2, Lae/d;->r:I

    .line 32
    .line 33
    :goto_0
    add-int/lit8 v3, v2, -0x1

    .line 34
    .line 35
    if-lez v2, :cond_3

    .line 36
    .line 37
    :try_start_0
    sget v2, Lae/d;->s:I

    .line 38
    .line 39
    invoke-virtual {p0, v1, v0, v2}, Lae/d;->d(Lae/e;Lae/e;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    iget-boolean v2, v0, Lae/e;->j:Z

    .line 43
    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    iget v2, v0, Lae/e;->e:I

    .line 47
    .line 48
    if-nez v2, :cond_1

    .line 49
    .line 50
    iget-object p1, v1, Lae/e;->y:Ljava/net/InetAddress;

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/net/InetAddress;->hashCode()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    :goto_1
    iget-object v1, v0, Lae/i;->C:[Lae/g;

    .line 57
    .line 58
    array-length v2, v1

    .line 59
    if-ge v4, v2, :cond_0

    .line 60
    .line 61
    aget-object v1, v1, v4

    .line 62
    .line 63
    iget-object v1, v1, Lae/g;->a:Lae/b;

    .line 64
    .line 65
    iput p1, v1, Lae/b;->d:I

    .line 66
    .line 67
    add-int/lit8 v4, v4, 0x1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_0
    return-object v1

    .line 71
    :cond_1
    move v2, v3

    .line 72
    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    sget v1, Lde/d;->b:I

    .line 75
    .line 76
    const/4 v2, 0x1

    .line 77
    if-le v1, v2, :cond_2

    .line 78
    .line 79
    sget-object v1, Lae/d;->x:Lde/d;

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 82
    .line 83
    .line 84
    :cond_2
    new-instance v0, Ljava/net/UnknownHostException;

    .line 85
    .line 86
    invoke-virtual {p1}, Lae/g;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-direct {v0, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw v0

    .line 94
    :cond_3
    new-instance v0, Ljava/net/UnknownHostException;

    .line 95
    .line 96
    iget-object p1, p1, Lae/g;->a:Lae/b;

    .line 97
    .line 98
    iget-object p1, p1, Lae/b;->a:Ljava/lang/String;

    .line 99
    .line 100
    invoke-direct {v0, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    goto :goto_3

    .line 104
    :goto_2
    throw v0

    .line 105
    :goto_3
    goto :goto_2
.end method

.method public final d(Lae/e;Lae/e;I)V
    .locals 12

    .line 1
    sget-object v0, Lae/g;->e:[Ljava/net/InetAddress;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    const/4 v1, 0x1

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    :cond_0
    monitor-enter p2

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    add-int/lit8 v3, v0, -0x1

    .line 11
    .line 12
    if-lez v0, :cond_b

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lae/d;->a:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 17
    :try_start_1
    iget v4, p0, Lae/d;->k:I

    .line 18
    .line 19
    add-int/2addr v4, v1

    .line 20
    iput v4, p0, Lae/d;->k:I

    .line 21
    .line 22
    const v5, 0xffff

    .line 23
    .line 24
    .line 25
    and-int/2addr v4, v5

    .line 26
    if-nez v4, :cond_1

    .line 27
    .line 28
    iput v1, p0, Lae/d;->k:I

    .line 29
    .line 30
    :cond_1
    iget v4, p0, Lae/d;->k:I

    .line 31
    .line 32
    iput v4, p1, Lae/e;->c:I

    .line 33
    .line 34
    new-instance v5, Ljava/lang/Integer;

    .line 35
    .line 36
    invoke-direct {v5, v4}, Ljava/lang/Integer;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 37
    .line 38
    .line 39
    :try_start_2
    iget-object v2, p0, Lae/d;->h:Ljava/net/DatagramPacket;

    .line 40
    .line 41
    iget-object v4, p1, Lae/e;->y:Ljava/net/InetAddress;

    .line 42
    .line 43
    invoke-virtual {v2, v4}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 44
    .line 45
    .line 46
    iget-object v2, p0, Lae/d;->h:Ljava/net/DatagramPacket;

    .line 47
    .line 48
    iget-object v4, p0, Lae/d;->d:[B

    .line 49
    .line 50
    invoke-virtual {p1, v4}, Lae/e;->i([B)I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    invoke-virtual {v2, v4}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 55
    .line 56
    .line 57
    const/4 v2, 0x0

    .line 58
    iput-boolean v2, p2, Lae/e;->j:Z

    .line 59
    .line 60
    iget-object v4, p0, Lae/d;->i:Ljava/util/HashMap;

    .line 61
    .line 62
    invoke-virtual {v4, v5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    add-int/lit16 v4, p3, 0x3e8

    .line 66
    .line 67
    invoke-virtual {p0, v4}, Lae/d;->a(I)V

    .line 68
    .line 69
    .line 70
    iget-object v4, p0, Lae/d;->f:Ljava/net/DatagramSocket;

    .line 71
    .line 72
    iget-object v6, p0, Lae/d;->h:Ljava/net/DatagramPacket;

    .line 73
    .line 74
    invoke-virtual {v4, v6}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 75
    .line 76
    .line 77
    sget v4, Lde/d;->b:I

    .line 78
    .line 79
    const/4 v6, 0x3

    .line 80
    if-le v4, v6, :cond_2

    .line 81
    .line 82
    sget-object v4, Lae/d;->x:Lde/d;

    .line 83
    .line 84
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    iget-object v6, p0, Lae/d;->d:[B

    .line 88
    .line 89
    iget-object v7, p0, Lae/d;->h:Ljava/net/DatagramPacket;

    .line 90
    .line 91
    invoke-virtual {v7}, Ljava/net/DatagramPacket;->getLength()I

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    invoke-static {v4, v6, v2, v7}, Lde/c;->a(Ljava/io/PrintStream;[BII)V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :catchall_0
    move-exception p1

    .line 100
    move-object v2, v5

    .line 101
    goto/16 :goto_7

    .line 102
    .line 103
    :cond_2
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 105
    .line 106
    .line 107
    move-result-wide v6

    .line 108
    :goto_2
    if-lez p3, :cond_4

    .line 109
    .line 110
    int-to-long v8, p3

    .line 111
    invoke-virtual {p2, v8, v9}, Ljava/lang/Object;->wait(J)V

    .line 112
    .line 113
    .line 114
    iget-boolean p3, p2, Lae/e;->j:Z

    .line 115
    .line 116
    if-eqz p3, :cond_3

    .line 117
    .line 118
    iget p3, p1, Lae/e;->s:I

    .line 119
    .line 120
    iget v0, p2, Lae/e;->u:I
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 121
    .line 122
    if-ne p3, v0, :cond_3

    .line 123
    .line 124
    :try_start_4
    iget-object p1, p0, Lae/d;->i:Ljava/util/HashMap;

    .line 125
    .line 126
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 130
    return-void

    .line 131
    :catchall_1
    move-exception p1

    .line 132
    goto/16 :goto_b

    .line 133
    .line 134
    :catchall_2
    move-exception p1

    .line 135
    move-object v2, v5

    .line 136
    goto/16 :goto_9

    .line 137
    .line 138
    :catch_0
    move-exception p1

    .line 139
    move-object v2, v5

    .line 140
    goto :goto_8

    .line 141
    :cond_3
    :try_start_5
    iput-boolean v2, p2, Lae/e;->j:Z

    .line 142
    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 144
    .line 145
    .line 146
    move-result-wide v10
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 147
    sub-long/2addr v10, v6

    .line 148
    sub-long/2addr v8, v10

    .line 149
    long-to-int p3, v8

    .line 150
    goto :goto_2

    .line 151
    :cond_4
    :try_start_6
    iget-object v0, p0, Lae/d;->i:Ljava/util/HashMap;

    .line 152
    .line 153
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    iget-object v0, p0, Lae/d;->a:Ljava/lang/Object;

    .line 157
    .line 158
    monitor-enter v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 159
    :try_start_7
    iget-object v4, p1, Lae/e;->y:Ljava/net/InetAddress;

    .line 160
    .line 161
    const/4 v6, 0x0

    .line 162
    :goto_3
    if-eqz v4, :cond_6

    .line 163
    .line 164
    sget-object v7, Lae/g;->e:[Ljava/net/InetAddress;

    .line 165
    .line 166
    array-length v8, v7

    .line 167
    if-ge v6, v8, :cond_6

    .line 168
    .line 169
    invoke-virtual {v4}, Ljava/net/InetAddress;->hashCode()I

    .line 170
    .line 171
    .line 172
    move-result v8

    .line 173
    aget-object v7, v7, v6

    .line 174
    .line 175
    invoke-virtual {v7}, Ljava/net/InetAddress;->hashCode()I

    .line 176
    .line 177
    .line 178
    move-result v7

    .line 179
    if-ne v8, v7, :cond_5

    .line 180
    .line 181
    const/4 v4, 0x1

    .line 182
    goto :goto_4

    .line 183
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_6
    const/4 v4, 0x0

    .line 187
    :goto_4
    if-nez v4, :cond_7

    .line 188
    .line 189
    monitor-exit v0

    .line 190
    goto :goto_a

    .line 191
    :catchall_3
    move-exception p1

    .line 192
    goto :goto_6

    .line 193
    :cond_7
    iget-object v4, p1, Lae/e;->y:Ljava/net/InetAddress;

    .line 194
    .line 195
    invoke-static {}, Lae/g;->h()Ljava/net/InetAddress;

    .line 196
    .line 197
    .line 198
    move-result-object v6

    .line 199
    if-ne v4, v6, :cond_a

    .line 200
    .line 201
    sget v4, Lae/g;->h:I

    .line 202
    .line 203
    add-int/2addr v4, v1

    .line 204
    sget-object v6, Lae/g;->e:[Ljava/net/InetAddress;

    .line 205
    .line 206
    array-length v7, v6

    .line 207
    if-ge v4, v7, :cond_8

    .line 208
    .line 209
    move v2, v4

    .line 210
    :cond_8
    sput v2, Lae/g;->h:I

    .line 211
    .line 212
    array-length v4, v6

    .line 213
    if-nez v4, :cond_9

    .line 214
    .line 215
    goto :goto_5

    .line 216
    :cond_9
    aget-object v2, v6, v2

    .line 217
    .line 218
    :cond_a
    :goto_5
    invoke-static {}, Lae/g;->h()Ljava/net/InetAddress;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    iput-object v2, p1, Lae/e;->y:Ljava/net/InetAddress;

    .line 223
    .line 224
    monitor-exit v0

    .line 225
    move v0, v3

    .line 226
    move-object v2, v5

    .line 227
    goto/16 :goto_0

    .line 228
    .line 229
    :goto_6
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 230
    :try_start_8
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 231
    :catchall_4
    move-exception p1

    .line 232
    :goto_7
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 233
    :try_start_a
    throw p1
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 234
    :catchall_5
    move-exception p1

    .line 235
    goto :goto_9

    .line 236
    :catch_1
    move-exception p1

    .line 237
    :goto_8
    :try_start_b
    new-instance p3, Ljava/io/IOException;

    .line 238
    .line 239
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    invoke-direct {p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    throw p3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 247
    :goto_9
    :try_start_c
    iget-object p3, p0, Lae/d;->i:Ljava/util/HashMap;

    .line 248
    .line 249
    invoke-virtual {p3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    throw p1

    .line 253
    :cond_b
    :goto_a
    monitor-exit p2

    .line 254
    return-void

    .line 255
    :goto_b
    monitor-exit p2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 256
    goto :goto_d

    .line 257
    :goto_c
    throw p1

    .line 258
    :goto_d
    goto :goto_c
.end method

.method public final e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lae/d;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lae/d;->f:Ljava/net/DatagramSocket;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    .line 10
    .line 11
    .line 12
    iput-object v2, p0, Lae/d;->f:Ljava/net/DatagramSocket;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception v1

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :goto_0
    iput-object v2, p0, Lae/d;->j:Ljava/lang/Thread;

    .line 18
    .line 19
    iget-object v1, p0, Lae/d;->i:Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 22
    .line 23
    .line 24
    monitor-exit v0

    .line 25
    return-void

    .line 26
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw v1
.end method

.method public final run()V
    .locals 5

    .line 1
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lae/d;->j:Ljava/lang/Thread;

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-ne v0, v1, :cond_4

    .line 8
    .line 9
    iget-object v0, p0, Lae/d;->g:Ljava/net/DatagramPacket;

    .line 10
    .line 11
    sget v1, Lae/d;->p:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lae/d;->f:Ljava/net/DatagramSocket;

    .line 17
    .line 18
    iget v1, p0, Lae/d;->c:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lae/d;->f:Ljava/net/DatagramSocket;

    .line 24
    .line 25
    iget-object v1, p0, Lae/d;->g:Ljava/net/DatagramPacket;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 28
    .line 29
    .line 30
    sget v0, Lde/d;->b:I

    .line 31
    .line 32
    const/4 v1, 0x3

    .line 33
    if-le v0, v1, :cond_1

    .line 34
    .line 35
    sget-object v0, Lae/d;->x:Lde/d;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    goto :goto_6

    .line 43
    :catch_0
    move-exception v0

    .line 44
    goto :goto_5

    .line 45
    :cond_1
    :goto_1
    iget-object v0, p0, Lae/d;->e:[B

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    invoke-static {v2, v0}, Lae/e;->b(I[B)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    iget-object v3, p0, Lae/d;->i:Ljava/util/HashMap;

    .line 53
    .line 54
    new-instance v4, Ljava/lang/Integer;

    .line 55
    .line 56
    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Lae/e;

    .line 64
    .line 65
    if-eqz v0, :cond_0

    .line 66
    .line 67
    iget-boolean v3, v0, Lae/e;->j:Z

    .line 68
    .line 69
    if-eqz v3, :cond_2

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    monitor-enter v0
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :try_start_1
    iget-object v3, p0, Lae/d;->e:[B

    .line 74
    .line 75
    invoke-virtual {v0, v3}, Lae/e;->f([B)V

    .line 76
    .line 77
    .line 78
    const/4 v3, 0x1

    .line 79
    iput-boolean v3, v0, Lae/e;->j:Z

    .line 80
    .line 81
    sget v3, Lde/d;->b:I

    .line 82
    .line 83
    if-le v3, v1, :cond_3

    .line 84
    .line 85
    sget-object v1, Lae/d;->x:Lde/d;

    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    iget-object v3, p0, Lae/d;->e:[B

    .line 91
    .line 92
    iget-object v4, p0, Lae/d;->g:Ljava/net/DatagramPacket;

    .line 93
    .line 94
    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getLength()I

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    invoke-static {v1, v3, v2, v4}, Lde/c;->a(Ljava/io/PrintStream;[BII)V

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :catchall_1
    move-exception v1

    .line 103
    goto :goto_3

    .line 104
    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 105
    .line 106
    .line 107
    monitor-exit v0

    .line 108
    goto :goto_0

    .line 109
    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 110
    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    :catch_1
    :cond_4
    :goto_4
    invoke-virtual {p0}, Lae/d;->e()V

    .line 112
    .line 113
    .line 114
    goto :goto_7

    .line 115
    :goto_5
    :try_start_3
    sget v1, Lde/d;->b:I

    .line 116
    .line 117
    const/4 v2, 0x2

    .line 118
    if-le v1, v2, :cond_4

    .line 119
    .line 120
    sget-object v1, Lae/d;->x:Lde/d;

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 123
    .line 124
    .line 125
    goto :goto_4

    .line 126
    :goto_6
    invoke-virtual {p0}, Lae/d;->e()V

    .line 127
    .line 128
    .line 129
    throw v0

    .line 130
    :goto_7
    return-void
.end method
