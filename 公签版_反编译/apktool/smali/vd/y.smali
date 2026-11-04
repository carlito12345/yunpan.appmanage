.class public final Lvd/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final j:Lorg/slf4j/Logger;


# instance fields
.field public final a:Ljava/net/URL;

.field public b:Lbd/b;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:[Lvc/a;

.field public g:I

.field public h:I

.field public final i:Lvc/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lvd/y;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lvd/y;->j:Lorg/slf4j/Logger;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lvc/b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lvd/y;->b:Lbd/b;

    .line 6
    .line 7
    iput-object p2, p0, Lvd/y;->i:Lvc/b;

    .line 8
    .line 9
    iput-object p1, p0, Lvd/y;->a:Ljava/net/URL;

    .line 10
    .line 11
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    array-length v3, p0

    .line 9
    if-ge v0, v3, :cond_3

    .line 10
    .line 11
    aget-char v3, p0, v0

    .line 12
    .line 13
    const/16 v4, 0x26

    .line 14
    .line 15
    if-ne v3, v4, :cond_1

    .line 16
    .line 17
    if-le v1, v2, :cond_0

    .line 18
    .line 19
    new-instance v3, Ljava/lang/String;

    .line 20
    .line 21
    sub-int v4, v1, v2

    .line 22
    .line 23
    invoke-direct {v3, p0, v2, v4}, Ljava/lang/String;-><init>([CII)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    new-instance p1, Ljava/lang/String;

    .line 35
    .line 36
    sub-int/2addr v0, v1

    .line 37
    invoke-direct {p1, p0, v1, v0}, Ljava/lang/String;-><init>([CII)V

    .line 38
    .line 39
    .line 40
    return-object p1

    .line 41
    :cond_0
    add-int/lit8 v2, v0, 0x1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const/16 v4, 0x3d

    .line 45
    .line 46
    if-ne v3, v4, :cond_2

    .line 47
    .line 48
    move v1, v0

    .line 49
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    if-le v1, v2, :cond_4

    .line 53
    .line 54
    new-instance v0, Ljava/lang/String;

    .line 55
    .line 56
    sub-int v3, v1, v2

    .line 57
    .line 58
    invoke-direct {v0, p0, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_4

    .line 66
    .line 67
    add-int/lit8 v1, v1, 0x1

    .line 68
    .line 69
    new-instance p1, Ljava/lang/String;

    .line 70
    .line 71
    array-length v0, p0

    .line 72
    sub-int/2addr v0, v1

    .line 73
    invoke-direct {p1, p0, v1, v0}, Ljava/lang/String;-><init>([CII)V

    .line 74
    .line 75
    .line 76
    return-object p1

    .line 77
    :cond_4
    const/4 p0, 0x0

    .line 78
    return-object p0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 14

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lvd/y;->a:Ljava/net/URL;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    array-length v1, v0

    .line 13
    new-array v1, v1, [C

    .line 14
    .line 15
    array-length v2, v0

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v6, 0x0

    .line 20
    :goto_0
    const/16 v7, 0x2f

    .line 21
    .line 22
    const/4 v8, 0x1

    .line 23
    if-ge v4, v2, :cond_d

    .line 24
    .line 25
    if-eqz v5, :cond_b

    .line 26
    .line 27
    const/4 v9, 0x2

    .line 28
    if-eq v5, v8, :cond_0

    .line 29
    .line 30
    if-eq v5, v9, :cond_9

    .line 31
    .line 32
    goto/16 :goto_5

    .line 33
    .line 34
    :cond_0
    aget-char v10, v0, v4

    .line 35
    .line 36
    if-ne v10, v7, :cond_1

    .line 37
    .line 38
    goto :goto_5

    .line 39
    :cond_1
    const/16 v11, 0x2e

    .line 40
    .line 41
    if-ne v10, v11, :cond_3

    .line 42
    .line 43
    add-int/lit8 v12, v4, 0x1

    .line 44
    .line 45
    if-ge v12, v2, :cond_2

    .line 46
    .line 47
    aget-char v13, v0, v12

    .line 48
    .line 49
    if-ne v13, v7, :cond_3

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    goto/16 :goto_7

    .line 54
    .line 55
    :cond_2
    :goto_1
    move v4, v12

    .line 56
    goto :goto_5

    .line 57
    :cond_3
    add-int/lit8 v12, v4, 0x1

    .line 58
    .line 59
    if-ge v12, v2, :cond_8

    .line 60
    .line 61
    if-ne v10, v11, :cond_8

    .line 62
    .line 63
    aget-char v10, v0, v12

    .line 64
    .line 65
    if-ne v10, v11, :cond_8

    .line 66
    .line 67
    add-int/lit8 v10, v4, 0x2

    .line 68
    .line 69
    if-ge v10, v2, :cond_4

    .line 70
    .line 71
    aget-char v11, v0, v10

    .line 72
    .line 73
    if-ne v11, v7, :cond_8

    .line 74
    .line 75
    :cond_4
    if-ne v6, v8, :cond_5

    .line 76
    .line 77
    :goto_2
    move v4, v10

    .line 78
    goto :goto_5

    .line 79
    :cond_5
    :goto_3
    add-int/lit8 v4, v6, -0x1

    .line 80
    .line 81
    if-le v4, v8, :cond_7

    .line 82
    .line 83
    add-int/lit8 v6, v6, -0x2

    .line 84
    .line 85
    aget-char v6, v1, v6

    .line 86
    .line 87
    if-ne v6, v7, :cond_6

    .line 88
    .line 89
    goto :goto_4

    .line 90
    :cond_6
    move v6, v4

    .line 91
    goto :goto_3

    .line 92
    :cond_7
    :goto_4
    move v6, v4

    .line 93
    goto :goto_2

    .line 94
    :cond_8
    const/4 v5, 0x2

    .line 95
    :cond_9
    aget-char v9, v0, v4

    .line 96
    .line 97
    if-ne v9, v7, :cond_a

    .line 98
    .line 99
    const/4 v5, 0x1

    .line 100
    :cond_a
    add-int/lit8 v7, v6, 0x1

    .line 101
    .line 102
    aput-char v9, v1, v6

    .line 103
    .line 104
    move v6, v7

    .line 105
    goto :goto_5

    .line 106
    :cond_b
    aget-char v5, v0, v4

    .line 107
    .line 108
    if-ne v5, v7, :cond_c

    .line 109
    .line 110
    add-int/lit8 v7, v6, 0x1

    .line 111
    .line 112
    aput-char v5, v1, v6

    .line 113
    .line 114
    move v6, v7

    .line 115
    const/4 v5, 0x1

    .line 116
    :goto_5
    add-int/2addr v4, v8

    .line 117
    goto :goto_0

    .line 118
    :cond_c
    new-instance v0, Landroidx/fragment/app/b0;

    .line 119
    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    const-string v2, "Invalid smb: URL: "

    .line 126
    .line 127
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    iget-object v2, p0, Lvd/y;->a:Ljava/net/URL;

    .line 131
    .line 132
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    const/16 v2, 0xa

    .line 140
    .line 141
    invoke-direct {v0, v1, v2}, Landroidx/fragment/app/b0;-><init>(Ljava/lang/String;I)V

    .line 142
    .line 143
    .line 144
    throw v0

    .line 145
    :cond_d
    new-instance v0, Ljava/lang/String;

    .line 146
    .line 147
    invoke-direct {v0, v1, v3, v6}, Ljava/lang/String;-><init>([CII)V

    .line 148
    .line 149
    .line 150
    iput-object v0, p0, Lvd/y;->d:Ljava/lang/String;

    .line 151
    .line 152
    if-le v6, v8, :cond_10

    .line 153
    .line 154
    add-int/lit8 v1, v6, -0x1

    .line 155
    .line 156
    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->indexOf(II)I

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-gez v0, :cond_e

    .line 161
    .line 162
    iget-object v0, p0, Lvd/y;->d:Ljava/lang/String;

    .line 163
    .line 164
    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    iput-object v0, p0, Lvd/y;->e:Ljava/lang/String;

    .line 169
    .line 170
    const-string v0, "\\"

    .line 171
    .line 172
    iput-object v0, p0, Lvd/y;->c:Ljava/lang/String;

    .line 173
    .line 174
    goto :goto_6

    .line 175
    :cond_e
    if-ne v0, v1, :cond_f

    .line 176
    .line 177
    iget-object v1, p0, Lvd/y;->d:Ljava/lang/String;

    .line 178
    .line 179
    invoke-virtual {v1, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    iput-object v0, p0, Lvd/y;->e:Ljava/lang/String;

    .line 184
    .line 185
    const-string v0, "\\"

    .line 186
    .line 187
    iput-object v0, p0, Lvd/y;->c:Ljava/lang/String;

    .line 188
    .line 189
    goto :goto_6

    .line 190
    :cond_f
    iget-object v1, p0, Lvd/y;->d:Ljava/lang/String;

    .line 191
    .line 192
    invoke-virtual {v1, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    iput-object v1, p0, Lvd/y;->e:Ljava/lang/String;

    .line 197
    .line 198
    iget-object v1, p0, Lvd/y;->d:Ljava/lang/String;

    .line 199
    .line 200
    invoke-virtual {v1, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    const/16 v1, 0x5c

    .line 205
    .line 206
    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    iput-object v0, p0, Lvd/y;->c:Ljava/lang/String;

    .line 211
    .line 212
    goto :goto_6

    .line 213
    :cond_10
    const-string v0, "/"

    .line 214
    .line 215
    iput-object v0, p0, Lvd/y;->d:Ljava/lang/String;

    .line 216
    .line 217
    const/4 v0, 0x0

    .line 218
    iput-object v0, p0, Lvd/y;->e:Ljava/lang/String;

    .line 219
    .line 220
    const-string v0, "\\"

    .line 221
    .line 222
    iput-object v0, p0, Lvd/y;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    .line 224
    :goto_6
    monitor-exit p0

    .line 225
    return-void

    .line 226
    :goto_7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    goto :goto_9

    .line 228
    :goto_8
    throw v0

    .line 229
    :goto_9
    goto :goto_8
.end method

.method public final b()Lvc/a;
    .locals 7

    .line 1
    iget v0, p0, Lvd/y;->g:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_8

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lvd/y;->g:I

    .line 8
    .line 9
    iget-object v2, p0, Lvd/y;->f:[Lvc/a;

    .line 10
    .line 11
    if-nez v2, :cond_6

    .line 12
    .line 13
    iget-object v2, p0, Lvd/y;->a:Ljava/net/URL;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {v2}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iget-object v5, p0, Lvd/y;->i:Lvc/b;

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    :try_start_0
    const-string v4, "server"

    .line 32
    .line 33
    invoke-static {v2, v4}, Lvd/y;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    if-eqz v4, :cond_0

    .line 38
    .line 39
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    if-lez v6, :cond_0

    .line 44
    .line 45
    new-array v6, v1, [Lsd/k;

    .line 46
    .line 47
    iput-object v6, p0, Lvd/y;->f:[Lvc/a;

    .line 48
    .line 49
    invoke-interface {v5}, Lvc/b;->i()Lvc/k;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    check-cast v5, Lsd/f;

    .line 54
    .line 55
    invoke-virtual {v5, v4, v0}, Lsd/f;->e(Ljava/lang/String;Z)[Lsd/k;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    aget-object v4, v4, v0

    .line 60
    .line 61
    aput-object v4, v6, v0

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    goto/16 :goto_2

    .line 66
    .line 67
    :cond_0
    :goto_0
    const-string v4, "address"

    .line 68
    .line 69
    invoke-static {v2, v4}, Lvd/y;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    if-eqz v2, :cond_6

    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    if-lez v4, :cond_6

    .line 80
    .line 81
    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    new-array v1, v1, [Lsd/k;

    .line 90
    .line 91
    iput-object v1, p0, Lvd/y;->f:[Lvc/a;

    .line 92
    .line 93
    new-instance v4, Lsd/k;

    .line 94
    .line 95
    invoke-static {v3, v2}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-direct {v4, v2}, Lsd/k;-><init>(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    aput-object v4, v1, v0

    .line 103
    .line 104
    goto/16 :goto_3

    .line 105
    .line 106
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 107
    .line 108
    .line 109
    move-result v2
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    if-nez v2, :cond_3

    .line 111
    .line 112
    :try_start_1
    invoke-interface {v5}, Lvc/b;->i()Lvc/k;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    const-string v4, "\u0001\u0002__MSBROWSE__\u0002"

    .line 117
    .line 118
    check-cast v2, Lsd/f;

    .line 119
    .line 120
    invoke-virtual {v2, v1, v4}, Lsd/f;->i(ILjava/lang/String;)Lsd/h;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    new-array v4, v1, [Lsd/k;

    .line 125
    .line 126
    iput-object v4, p0, Lvd/y;->f:[Lvc/a;

    .line 127
    .line 128
    invoke-interface {v5}, Lvc/b;->i()Lvc/k;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    invoke-virtual {v2}, Lsd/h;->b()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    check-cast v6, Lsd/f;

    .line 137
    .line 138
    invoke-virtual {v6, v2, v0}, Lsd/f;->e(Ljava/lang/String;Z)[Lsd/k;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    aget-object v2, v2, v0

    .line 143
    .line 144
    aput-object v2, v4, v0
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    .line 145
    .line 146
    goto :goto_3

    .line 147
    :catch_1
    move-exception v0

    .line 148
    :try_start_2
    sget-object v2, Lvd/y;->j:Lorg/slf4j/Logger;

    .line 149
    .line 150
    const-string v4, "Unknown host"

    .line 151
    .line 152
    invoke-interface {v2, v4, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 153
    .line 154
    .line 155
    invoke-interface {v5}, Lvc/b;->e()Lvc/f;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    check-cast v2, Lwc/a;

    .line 160
    .line 161
    iget-object v2, v2, Lwc/a;->Q:Ljava/lang/String;

    .line 162
    .line 163
    if-eqz v2, :cond_2

    .line 164
    .line 165
    invoke-interface {v5}, Lvc/b;->i()Lvc/k;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-interface {v5}, Lvc/b;->e()Lvc/f;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    check-cast v2, Lwc/a;

    .line 174
    .line 175
    iget-object v2, v2, Lwc/a;->Q:Ljava/lang/String;

    .line 176
    .line 177
    check-cast v0, Lsd/f;

    .line 178
    .line 179
    invoke-virtual {v0, v2, v1}, Lsd/f;->e(Ljava/lang/String;Z)[Lsd/k;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    iput-object v0, p0, Lvd/y;->f:[Lvc/a;

    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_2
    throw v0

    .line 187
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    if-eqz v2, :cond_5

    .line 192
    .line 193
    const-string v2, "/"

    .line 194
    .line 195
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v2

    .line 199
    if-eqz v2, :cond_4

    .line 200
    .line 201
    goto :goto_1

    .line 202
    :cond_4
    invoke-interface {v5}, Lvc/b;->i()Lvc/k;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    check-cast v1, Lsd/f;

    .line 207
    .line 208
    invoke-virtual {v1, v3, v0}, Lsd/f;->e(Ljava/lang/String;Z)[Lsd/k;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    iput-object v0, p0, Lvd/y;->f:[Lvc/a;

    .line 213
    .line 214
    goto :goto_3

    .line 215
    :cond_5
    :goto_1
    invoke-interface {v5}, Lvc/b;->i()Lvc/k;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    check-cast v0, Lsd/f;

    .line 220
    .line 221
    invoke-virtual {v0, v3, v1}, Lsd/f;->e(Ljava/lang/String;Z)[Lsd/k;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    iput-object v0, p0, Lvd/y;->f:[Lvc/a;
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0

    .line 226
    .line 227
    goto :goto_3

    .line 228
    :goto_2
    new-instance v1, Lvc/c;

    .line 229
    .line 230
    const-string v2, "Failed to lookup address for name "

    .line 231
    .line 232
    invoke-static {v2, v3}, Lda/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    invoke-direct {v1, v2, v0}, Lvc/c;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 237
    .line 238
    .line 239
    throw v1

    .line 240
    :cond_6
    :goto_3
    iget v0, p0, Lvd/y;->g:I

    .line 241
    .line 242
    iget-object v1, p0, Lvd/y;->f:[Lvc/a;

    .line 243
    .line 244
    array-length v2, v1

    .line 245
    if-ge v0, v2, :cond_7

    .line 246
    .line 247
    add-int/lit8 v2, v0, 0x1

    .line 248
    .line 249
    iput v2, p0, Lvd/y;->g:I

    .line 250
    .line 251
    aget-object v0, v1, v0

    .line 252
    .line 253
    goto :goto_4

    .line 254
    :cond_7
    const/4 v0, 0x0

    .line 255
    :goto_4
    return-object v0

    .line 256
    :cond_8
    iget-object v2, p0, Lvd/y;->f:[Lvc/a;

    .line 257
    .line 258
    sub-int/2addr v0, v1

    .line 259
    aget-object v0, v2, v0

    .line 260
    .line 261
    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lvd/y;->a:Ljava/net/URL;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    :cond_0
    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance v0, Lvd/y;

    .line 2
    .line 3
    iget-object v1, p0, Lvd/y;->i:Lvc/b;

    .line 4
    .line 5
    iget-object v2, p0, Lvd/y;->a:Ljava/net/URL;

    .line 6
    .line 7
    invoke-direct {v0, v2, v1}, Lvd/y;-><init>(Ljava/net/URL;Lvc/b;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lvd/y;->d:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v1, v0, Lvd/y;->d:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v1, p0, Lvd/y;->e:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v1, v0, Lvd/y;->e:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v1, p0, Lvd/y;->b:Lbd/b;

    .line 19
    .line 20
    iput-object v1, v0, Lvd/y;->b:Lbd/b;

    .line 21
    .line 22
    iget-object v1, p0, Lvd/y;->c:Ljava/lang/String;

    .line 23
    .line 24
    iput-object v1, v0, Lvd/y;->c:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v1, p0, Lvd/y;->f:[Lvc/a;

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    array-length v1, v1

    .line 31
    new-array v1, v1, [Lsd/k;

    .line 32
    .line 33
    iput-object v1, v0, Lvd/y;->f:[Lvc/a;

    .line 34
    .line 35
    iget-object v2, p0, Lvd/y;->f:[Lvc/a;

    .line 36
    .line 37
    array-length v3, v2

    .line 38
    const/4 v4, 0x0

    .line 39
    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    .line 41
    .line 42
    :cond_0
    iget v1, p0, Lvd/y;->g:I

    .line 43
    .line 44
    iput v1, v0, Lvd/y;->g:I

    .line 45
    .line 46
    iget v1, p0, Lvd/y;->h:I

    .line 47
    .line 48
    iput v1, v0, Lvd/y;->h:I

    .line 49
    .line 50
    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lvd/y;->c:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lvd/y;->a()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lvd/y;->e:Ljava/lang/String;

    .line 9
    .line 10
    return-object v0
.end method

.method public final e()I
    .locals 3

    .line 1
    iget v0, p0, Lvd/y;->h:I

    .line 2
    .line 3
    if-nez v0, :cond_8

    .line 4
    .line 5
    invoke-virtual {p0}, Lvd/y;->f()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-le v0, v1, :cond_0

    .line 15
    .line 16
    iput v1, p0, Lvd/y;->h:I

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    invoke-virtual {p0}, Lvd/y;->d()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0}, Lvd/y;->d()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "IPC$"

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    const/16 v0, 0x10

    .line 38
    .line 39
    iput v0, p0, Lvd/y;->h:I

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const/16 v0, 0x8

    .line 43
    .line 44
    iput v0, p0, Lvd/y;->h:I

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    iget-object v0, p0, Lvd/y;->a:Ljava/net/URL;

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const/4 v2, 0x2

    .line 54
    if-eqz v1, :cond_7

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lvd/y;->b()Lvc/a;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-interface {v0}, Lvc/a;->a()Lvc/a;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Lvc/l;

    .line 76
    .line 77
    if-eqz v0, :cond_5

    .line 78
    .line 79
    check-cast v0, Lsd/h;

    .line 80
    .line 81
    iget-object v0, v0, Lsd/h;->a:Lsd/b;

    .line 82
    .line 83
    iget v0, v0, Lsd/b;->c:I

    .line 84
    .line 85
    const/16 v1, 0x1d

    .line 86
    .line 87
    if-eq v0, v1, :cond_4

    .line 88
    .line 89
    const/16 v1, 0x1b

    .line 90
    .line 91
    if-ne v0, v1, :cond_5

    .line 92
    .line 93
    :cond_4
    iput v2, p0, Lvd/y;->h:I
    :try_end_0
    .catch Lvc/c; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .line 95
    return v2

    .line 96
    :catch_0
    move-exception v0

    .line 97
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    instance-of v1, v1, Ljava/net/UnknownHostException;

    .line 102
    .line 103
    if-eqz v1, :cond_6

    .line 104
    .line 105
    sget-object v1, Lvd/y;->j:Lorg/slf4j/Logger;

    .line 106
    .line 107
    const-string v2, "Unknown host"

    .line 108
    .line 109
    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    .line 111
    .line 112
    :cond_5
    const/4 v0, 0x4

    .line 113
    iput v0, p0, Lvd/y;->h:I

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_6
    throw v0

    .line 117
    :cond_7
    :goto_0
    iput v2, p0, Lvd/y;->h:I

    .line 118
    .line 119
    :cond_8
    :goto_1
    iget v0, p0, Lvd/y;->h:I

    .line 120
    .line 121
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 10

    .line 1
    instance-of v0, p1, Lvd/y;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Lvd/y;

    .line 8
    .line 9
    iget-object v0, p0, Lvd/y;->a:Ljava/net/URL;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-object v0, p1, Lvd/y;->a:Ljava/net/URL;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    const/16 v0, 0x2f

    .line 22
    .line 23
    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    invoke-virtual {v5, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    sub-int v7, v0, v4

    .line 36
    .line 37
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    sub-int/2addr v0, v6

    .line 42
    const/4 v3, 0x1

    .line 43
    const/16 v8, 0x2e

    .line 44
    .line 45
    if-le v7, v3, :cond_1

    .line 46
    .line 47
    add-int/lit8 v9, v4, 0x1

    .line 48
    .line 49
    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    .line 50
    .line 51
    .line 52
    move-result v9

    .line 53
    if-ne v9, v8, :cond_1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    if-le v0, v3, :cond_2

    .line 57
    .line 58
    add-int/lit8 v3, v6, 0x1

    .line 59
    .line 60
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-ne v3, v8, :cond_2

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    if-ne v7, v0, :cond_5

    .line 68
    .line 69
    const/4 v3, 0x1

    .line 70
    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_5

    .line 75
    .line 76
    :goto_0
    iget-object v0, p0, Lvd/y;->c:Ljava/lang/String;

    .line 77
    .line 78
    if-nez v0, :cond_3

    .line 79
    .line 80
    invoke-virtual {p0}, Lvd/y;->a()V

    .line 81
    .line 82
    .line 83
    :cond_3
    iget-object v0, p0, Lvd/y;->d:Ljava/lang/String;

    .line 84
    .line 85
    iget-object v2, p1, Lvd/y;->c:Ljava/lang/String;

    .line 86
    .line 87
    if-nez v2, :cond_4

    .line 88
    .line 89
    invoke-virtual {p1}, Lvd/y;->a()V

    .line 90
    .line 91
    .line 92
    :cond_4
    iget-object v2, p1, Lvd/y;->d:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-eqz v0, :cond_5

    .line 99
    .line 100
    :try_start_0
    invoke-virtual {p0}, Lvd/y;->b()Lvc/a;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {p1}, Lvd/y;->b()Lvc/a;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result p1
    :try_end_0
    .catch Lvc/c; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    return p1

    .line 113
    :catch_0
    move-exception v0

    .line 114
    sget-object v1, Lvd/y;->j:Lorg/slf4j/Logger;

    .line 115
    .line 116
    const-string v2, "Unknown host"

    .line 117
    .line 118
    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Lvd/y;->c()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {p1}, Lvd/y;->c()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    return p1

    .line 134
    :cond_5
    return v1
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lvd/y;->c:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lvd/y;->a()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lvd/y;->c:Ljava/lang/String;

    .line 9
    .line 10
    return-object v0
.end method

.method public final g(Lbd/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Lvd/y;->b:Lbd/b;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lvd/y;->c:Ljava/lang/String;

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    iput-object p1, p0, Lvd/y;->b:Lbd/b;

    .line 13
    .line 14
    invoke-virtual {p0}, Lvd/y;->f()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    move-object v1, p1

    .line 19
    check-cast v1, Lbd/a;

    .line 20
    .line 21
    iget v1, v1, Lbd/a;->a:I

    .line 22
    .line 23
    const-string v2, "Path consumed out of range "

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    sget-object v4, Lvd/y;->j:Lorg/slf4j/Logger;

    .line 27
    .line 28
    if-gez v1, :cond_1

    .line 29
    .line 30
    new-instance v5, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-interface {v4, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object v5, p0, Lvd/y;->c:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    if-le v1, v5, :cond_2

    .line 54
    .line 55
    new-instance v5, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-interface {v4, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    :cond_2
    :goto_0
    invoke-interface {v4}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    const-string v5, "\'"

    .line 79
    .line 80
    if-eqz v2, :cond_3

    .line 81
    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    const-string v6, "UNC is \'"

    .line 85
    .line 86
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-interface {v4, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string v6, "Consumed \'"

    .line 105
    .line 106
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-interface {v4, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-interface {v4}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-eqz v1, :cond_4

    .line 135
    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    const-string v2, "Remaining \'"

    .line 139
    .line 140
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-interface {v4, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    :cond_4
    const-string v1, ""

    .line 157
    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    const-string v2, "\\"

    .line 163
    .line 164
    if-nez v1, :cond_5

    .line 165
    .line 166
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    if-eqz v1, :cond_6

    .line 171
    .line 172
    :cond_5
    const/16 v0, 0x8

    .line 173
    .line 174
    iput v0, p0, Lvd/y;->h:I

    .line 175
    .line 176
    move-object v0, v2

    .line 177
    :cond_6
    check-cast p1, Lbd/a;

    .line 178
    .line 179
    iget-object v1, p1, Lbd/a;->f:Ljava/lang/String;

    .line 180
    .line 181
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    if-nez v1, :cond_7

    .line 186
    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    iget-object v5, p1, Lbd/a;->f:Ljava/lang/String;

    .line 193
    .line 194
    invoke-static {v5, v0, v1}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    :cond_7
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    const/16 v3, 0x5c

    .line 203
    .line 204
    if-eq v1, v3, :cond_8

    .line 205
    .line 206
    const-string v1, "No slash at start of remaining DFS path "

    .line 207
    .line 208
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    invoke-interface {v4, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    :cond_8
    iput-object v0, p0, Lvd/y;->c:Ljava/lang/String;

    .line 216
    .line 217
    iget-object v1, p1, Lbd/a;->d:Ljava/lang/String;

    .line 218
    .line 219
    if-eqz v1, :cond_9

    .line 220
    .line 221
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    if-nez v1, :cond_9

    .line 226
    .line 227
    iget-object p1, p1, Lbd/a;->d:Ljava/lang/String;

    .line 228
    .line 229
    iput-object p1, p0, Lvd/y;->e:Ljava/lang/String;

    .line 230
    .line 231
    :cond_9
    if-eqz p2, :cond_a

    .line 232
    .line 233
    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 234
    .line 235
    .line 236
    move-result p1

    .line 237
    if-eqz p1, :cond_a

    .line 238
    .line 239
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 240
    .line 241
    .line 242
    move-result p1

    .line 243
    if-nez p1, :cond_a

    .line 244
    .line 245
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    :cond_a
    return-object v0
.end method

.method public final h()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lvd/y;->d()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    const-string v0, "IPC$"

    .line 8
    .line 9
    invoke-virtual {p0}, Lvd/y;->d()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    return v0

    .line 22
    :cond_1
    :goto_0
    sget-object v0, Lvd/y;->j:Lorg/slf4j/Logger;

    .line 23
    .line 24
    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v2, "Share is IPC "

    .line 33
    .line 34
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v2, p0, Lvd/y;->e:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    const/4 v0, 0x1

    .line 50
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lvd/y;->b()Lvc/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v0
    :try_end_0
    .catch Lvc/c; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    invoke-virtual {p0}, Lvd/y;->c()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    :goto_0
    iget-object v1, p0, Lvd/y;->c:Ljava/lang/String;

    .line 23
    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Lvd/y;->a()V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v1, p0, Lvd/y;->d:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    add-int/2addr v1, v0

    .line 40
    return v1
.end method

.method public final j()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lvd/y;->i:Lvc/b;

    .line 2
    .line 3
    invoke-interface {v0}, Lvc/b;->e()Lvc/f;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lwc/a;

    .line 8
    .line 9
    iget-boolean v1, v1, Lwc/a;->i:Z

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Lvc/b;->g()Lvd/a;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lvd/j;

    .line 18
    .line 19
    invoke-virtual {v0}, Lvd/j;->d()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Lvd/y;->h()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 34
    :goto_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    iget-object v1, p0, Lvd/y;->a:Ljava/net/URL;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/16 v1, 0x5b

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lvd/y;->c:Ljava/lang/String;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const-string v1, "unc="

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lvd/y;->c:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v1, p0, Lvd/y;->d:Ljava/lang/String;

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    const-string v1, "canon="

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lvd/y;->d:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    :cond_1
    iget-object v1, p0, Lvd/y;->b:Lbd/b;

    .line 46
    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    const-string v1, "dfsReferral="

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lvd/y;->b:Lbd/b;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    :cond_2
    const/16 v1, 0x5d

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    return-object v0
.end method
