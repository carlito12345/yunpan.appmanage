.class public final Lwd/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:[I

.field public static final d:Ljava/net/InetAddress;

.field public static final e:Lde/d;


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    invoke-static {}, Lde/d;->r()Lde/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lwd/c;->e:Lde/d;

    .line 6
    .line 7
    sget-object v0, Lwd/a;->a:Ljava/util/Properties;

    .line 8
    .line 9
    const-string v1, "jcifs.smb1.resolveOrder"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {}, Lae/g;->h()Ljava/net/InetAddress;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :try_start_0
    const-string v2, "jcifs.smb1.netbios.baddr"

    .line 20
    .line 21
    const-string v3, "255.255.255.255"

    .line 22
    .line 23
    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-static {v2, v3}, Lwd/a;->b(Ljava/lang/String;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    sput-object v2, Lwd/c;->d:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    nop

    .line 35
    :goto_0
    const/4 v2, 0x4

    .line 36
    const/4 v3, 0x2

    .line 37
    const/4 v4, 0x3

    .line 38
    const/4 v5, 0x0

    .line 39
    const/4 v6, 0x1

    .line 40
    if-eqz v0, :cond_8

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    if-nez v7, :cond_0

    .line 47
    .line 48
    goto/16 :goto_3

    .line 49
    .line 50
    :cond_0
    new-array v2, v2, [I

    .line 51
    .line 52
    new-instance v7, Ljava/util/StringTokenizer;

    .line 53
    .line 54
    const-string v8, ","

    .line 55
    .line 56
    invoke-direct {v7, v0, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const/4 v0, 0x0

    .line 60
    :cond_1
    :goto_1
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    .line 61
    .line 62
    .line 63
    move-result v8

    .line 64
    if-eqz v8, :cond_7

    .line 65
    .line 66
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    const-string v9, "LMHOSTS"

    .line 75
    .line 76
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 77
    .line 78
    .line 79
    move-result v9

    .line 80
    if-eqz v9, :cond_2

    .line 81
    .line 82
    add-int/lit8 v8, v0, 0x1

    .line 83
    .line 84
    aput v4, v2, v0

    .line 85
    .line 86
    :goto_2
    move v0, v8

    .line 87
    goto :goto_1

    .line 88
    :cond_2
    const-string v9, "WINS"

    .line 89
    .line 90
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result v9

    .line 94
    if-eqz v9, :cond_4

    .line 95
    .line 96
    if-nez v1, :cond_3

    .line 97
    .line 98
    sget v8, Lde/d;->b:I

    .line 99
    .line 100
    if-le v8, v6, :cond_1

    .line 101
    .line 102
    sget-object v8, Lwd/c;->e:Lde/d;

    .line 103
    .line 104
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_3
    add-int/lit8 v8, v0, 0x1

    .line 109
    .line 110
    aput v5, v2, v0

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_4
    const-string v9, "BCAST"

    .line 114
    .line 115
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 116
    .line 117
    .line 118
    move-result v9

    .line 119
    if-eqz v9, :cond_5

    .line 120
    .line 121
    add-int/lit8 v8, v0, 0x1

    .line 122
    .line 123
    aput v6, v2, v0

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_5
    const-string v9, "DNS"

    .line 127
    .line 128
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 129
    .line 130
    .line 131
    move-result v8

    .line 132
    if-eqz v8, :cond_6

    .line 133
    .line 134
    add-int/lit8 v8, v0, 0x1

    .line 135
    .line 136
    aput v3, v2, v0

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_6
    sget v8, Lde/d;->b:I

    .line 140
    .line 141
    if-le v8, v6, :cond_1

    .line 142
    .line 143
    sget-object v8, Lwd/c;->e:Lde/d;

    .line 144
    .line 145
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_7
    new-array v1, v0, [I

    .line 150
    .line 151
    sput-object v1, Lwd/c;->c:[I

    .line 152
    .line 153
    invoke-static {v2, v5, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    .line 155
    .line 156
    goto :goto_4

    .line 157
    :cond_8
    :goto_3
    if-nez v1, :cond_9

    .line 158
    .line 159
    new-array v0, v4, [I

    .line 160
    .line 161
    sput-object v0, Lwd/c;->c:[I

    .line 162
    .line 163
    aput v4, v0, v5

    .line 164
    .line 165
    aput v3, v0, v6

    .line 166
    .line 167
    aput v6, v0, v3

    .line 168
    .line 169
    goto :goto_4

    .line 170
    :cond_9
    new-array v0, v2, [I

    .line 171
    .line 172
    sput-object v0, Lwd/c;->c:[I

    .line 173
    .line 174
    aput v4, v0, v5

    .line 175
    .line 176
    aput v5, v0, v6

    .line 177
    .line 178
    aput v3, v0, v3

    .line 179
    .line 180
    aput v6, v0, v4

    .line 181
    .line 182
    :goto_4
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iput-object p1, p0, Lwd/c;->a:Ljava/lang/Object;

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 12
    .line 13
    .line 14
    throw p1
.end method

.method public static a(Ljava/lang/String;Z)[Lwd/c;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p0, :cond_f

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_f

    .line 10
    .line 11
    invoke-static {p0}, Lwd/c;->e(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    new-instance p1, Lwd/c;

    .line 19
    .line 20
    invoke-static {v3, v0, p0}, Lae/g;->d(Ljava/net/InetAddress;ILjava/lang/String;)Lae/g;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-direct {p1, p0}, Lwd/c;-><init>(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    new-array p0, v1, [Lwd/c;

    .line 28
    .line 29
    aput-object p1, p0, v0

    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_0
    const/4 v2, 0x0

    .line 33
    :goto_0
    sget-object v4, Lwd/c;->c:[I

    .line 34
    .line 35
    array-length v5, v4

    .line 36
    if-ge v2, v5, :cond_e

    .line 37
    .line 38
    :try_start_0
    aget v4, v4, v2

    .line 39
    .line 40
    const/16 v5, 0xf

    .line 41
    .line 42
    const/16 v6, 0x20

    .line 43
    .line 44
    if-eqz v4, :cond_9

    .line 45
    .line 46
    if-eq v4, v1, :cond_6

    .line 47
    .line 48
    const/4 v5, 0x2

    .line 49
    if-eq v4, v5, :cond_2

    .line 50
    .line 51
    const/4 v5, 0x3

    .line 52
    if-ne v4, v5, :cond_1

    .line 53
    .line 54
    sget-object v4, Lae/a;->a:Ljava/lang/String;

    .line 55
    .line 56
    const-class v4, Lae/a;

    .line 57
    .line 58
    monitor-enter v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :try_start_1
    new-instance v5, Lae/b;

    .line 60
    .line 61
    invoke-direct {v5, p0, v6, v3}, Lae/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-static {v5}, Lae/a;->a(Lae/b;)Lae/g;

    .line 65
    .line 66
    .line 67
    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 69
    if-nez v5, :cond_c

    .line 70
    .line 71
    goto/16 :goto_4

    .line 72
    .line 73
    :catchall_0
    move-exception v5

    .line 74
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 75
    :try_start_4
    throw v5

    .line 76
    :cond_1
    new-instance v4, Ljava/net/UnknownHostException;

    .line 77
    .line 78
    invoke-direct {v4, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw v4

    .line 82
    :cond_2
    const/4 v4, 0x0

    .line 83
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    if-ge v4, v5, :cond_5

    .line 88
    .line 89
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    if-nez v5, :cond_4

    .line 98
    .line 99
    invoke-static {p0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    array-length v5, v4

    .line 104
    new-array v5, v5, [Lwd/c;

    .line 105
    .line 106
    const/4 v6, 0x0

    .line 107
    :goto_2
    array-length v7, v4

    .line 108
    if-ge v6, v7, :cond_3

    .line 109
    .line 110
    new-instance v7, Lwd/c;

    .line 111
    .line 112
    aget-object v8, v4, v6

    .line 113
    .line 114
    invoke-direct {v7, v8}, Lwd/c;-><init>(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    aput-object v7, v5, v6

    .line 118
    .line 119
    add-int/2addr v6, v1

    .line 120
    goto :goto_2

    .line 121
    :cond_3
    return-object v5

    .line 122
    :cond_4
    add-int/2addr v4, v1

    .line 123
    goto :goto_1

    .line 124
    :cond_5
    new-instance v4, Ljava/net/UnknownHostException;

    .line 125
    .line 126
    invoke-direct {v4, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw v4

    .line 130
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    if-le v4, v5, :cond_7

    .line 135
    .line 136
    goto :goto_4

    .line 137
    :cond_7
    if-eqz p1, :cond_8

    .line 138
    .line 139
    sget-object v4, Lwd/c;->d:Ljava/net/InetAddress;

    .line 140
    .line 141
    invoke-static {p0, v4}, Lwd/c;->f(Ljava/lang/String;Ljava/net/InetAddress;)Lae/g;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    goto :goto_3

    .line 146
    :cond_8
    sget-object v4, Lwd/c;->d:Ljava/net/InetAddress;

    .line 147
    .line 148
    invoke-static {v4, v6, p0}, Lae/g;->d(Ljava/net/InetAddress;ILjava/lang/String;)Lae/g;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    goto :goto_3

    .line 153
    :cond_9
    const-string v4, "\u0001\u0002__MSBROWSE__\u0002"

    .line 154
    .line 155
    if-eq p0, v4, :cond_d

    .line 156
    .line 157
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    if-le v4, v5, :cond_a

    .line 162
    .line 163
    goto :goto_4

    .line 164
    :cond_a
    if-eqz p1, :cond_b

    .line 165
    .line 166
    invoke-static {}, Lae/g;->h()Ljava/net/InetAddress;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    invoke-static {p0, v4}, Lwd/c;->f(Ljava/lang/String;Ljava/net/InetAddress;)Lae/g;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    goto :goto_3

    .line 175
    :cond_b
    invoke-static {}, Lae/g;->h()Ljava/net/InetAddress;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    invoke-static {v4, v6, p0}, Lae/g;->d(Ljava/net/InetAddress;ILjava/lang/String;)Lae/g;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    :cond_c
    :goto_3
    new-instance v4, Lwd/c;

    .line 184
    .line 185
    invoke-direct {v4, v5}, Lwd/c;-><init>(Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    new-array v5, v1, [Lwd/c;

    .line 189
    .line 190
    aput-object v4, v5, v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 191
    .line 192
    return-object v5

    .line 193
    :catch_0
    :cond_d
    :goto_4
    add-int/2addr v2, v1

    .line 194
    goto/16 :goto_0

    .line 195
    .line 196
    :cond_e
    new-instance p1, Ljava/net/UnknownHostException;

    .line 197
    .line 198
    invoke-direct {p1, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    throw p1

    .line 202
    :cond_f
    new-instance p0, Ljava/net/UnknownHostException;

    .line 203
    .line 204
    invoke-direct {p0}, Ljava/net/UnknownHostException;-><init>()V

    .line 205
    .line 206
    .line 207
    goto :goto_6

    .line 208
    :goto_5
    throw p0

    .line 209
    :goto_6
    goto :goto_5
.end method

.method public static b(Ljava/lang/String;Z)Lwd/c;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lwd/c;->a(Ljava/lang/String;Z)[Lwd/c;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 p1, 0x0

    .line 6
    aget-object p0, p0, p1

    .line 7
    .line 8
    return-object p0
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x0

    .line 22
    :goto_0
    if-ge v2, v1, :cond_2

    .line 23
    .line 24
    add-int/lit8 v4, v2, 0x1

    .line 25
    .line 26
    aget-char v5, p0, v2

    .line 27
    .line 28
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-eqz v5, :cond_2

    .line 33
    .line 34
    if-ne v4, v1, :cond_0

    .line 35
    .line 36
    const/4 v5, 0x3

    .line 37
    if-ne v3, v5, :cond_0

    .line 38
    .line 39
    const/4 p0, 0x1

    .line 40
    return p0

    .line 41
    :cond_0
    if-ge v4, v1, :cond_1

    .line 42
    .line 43
    aget-char v5, p0, v4

    .line 44
    .line 45
    const/16 v6, 0x2e

    .line 46
    .line 47
    if-ne v5, v6, :cond_1

    .line 48
    .line 49
    add-int/lit8 v3, v3, 0x1

    .line 50
    .line 51
    add-int/lit8 v2, v2, 0x2

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    move v2, v4

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    return v0
.end method

.method public static f(Ljava/lang/String;Ljava/net/InetAddress;)Lae/g;
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-instance v1, Landroidx/leanback/widget/i;

    .line 3
    .line 4
    const/16 v2, 0xa

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-direct {v1, v2, v3}, Landroidx/leanback/widget/i;-><init>(IZ)V

    .line 8
    .line 9
    .line 10
    :goto_0
    if-eqz p1, :cond_1

    .line 11
    .line 12
    sget-object v2, Lae/g;->e:[Ljava/net/InetAddress;

    .line 13
    .line 14
    array-length v4, v2

    .line 15
    if-ge v3, v4, :cond_2

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/net/InetAddress;->hashCode()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    aget-object v2, v2, v3

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/net/InetAddress;->hashCode()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-ne v4, v2, :cond_0

    .line 28
    .line 29
    const/16 v2, 0x1b

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    add-int/2addr v3, v0

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    sget-object v2, Lae/g;->e:[Ljava/net/InetAddress;

    .line 35
    .line 36
    :cond_2
    const/16 v2, 0x1d

    .line 37
    .line 38
    :goto_1
    new-instance v3, Lwd/b;

    .line 39
    .line 40
    invoke-direct {v3, v1, p0, v2, p1}, Lwd/b;-><init>(Landroidx/leanback/widget/i;Ljava/lang/String;ILjava/net/InetAddress;)V

    .line 41
    .line 42
    .line 43
    new-instance v2, Lwd/b;

    .line 44
    .line 45
    const/16 v4, 0x20

    .line 46
    .line 47
    invoke-direct {v2, v1, p0, v4, p1}, Lwd/b;-><init>(Landroidx/leanback/widget/i;Ljava/lang/String;ILjava/net/InetAddress;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 54
    .line 55
    .line 56
    :try_start_0
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 61
    .line 62
    .line 63
    :goto_2
    iget p1, v1, Landroidx/leanback/widget/i;->b:I

    .line 64
    .line 65
    if-lez p1, :cond_3

    .line 66
    .line 67
    iget-object p1, v3, Lwd/b;->d:Lae/g;

    .line 68
    .line 69
    if-nez p1, :cond_3

    .line 70
    .line 71
    iget-object p1, v2, Lwd/b;->d:Lae/g;

    .line 72
    .line 73
    if-nez p1, :cond_3

    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :catchall_0
    move-exception p1

    .line 80
    goto :goto_3

    .line 81
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    iget-object p0, v3, Lwd/b;->d:Lae/g;

    .line 83
    .line 84
    if-eqz p0, :cond_4

    .line 85
    .line 86
    return-object p0

    .line 87
    :cond_4
    iget-object p0, v2, Lwd/b;->d:Lae/g;

    .line 88
    .line 89
    if-eqz p0, :cond_5

    .line 90
    .line 91
    return-object p0

    .line 92
    :cond_5
    iget-object p0, v3, Lwd/b;->f:Ljava/net/UnknownHostException;

    .line 93
    .line 94
    throw p0

    .line 95
    :goto_3
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    :try_start_3
    throw p1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 97
    :catch_0
    new-instance p1, Ljava/net/UnknownHostException;

    .line 98
    .line 99
    invoke-direct {p1, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    goto :goto_5

    .line 103
    :goto_4
    throw p1

    .line 104
    :goto_5
    goto :goto_4
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lwd/c;->a:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Lae/g;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lae/g;

    .line 8
    .line 9
    invoke-virtual {v0}, Lae/g;->f()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    check-cast v0, Ljava/net/InetAddress;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lwd/c;->a:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Lae/g;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lae/g;

    .line 8
    .line 9
    invoke-virtual {v0}, Lae/g;->g()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    check-cast v0, Ljava/net/InetAddress;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lwd/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lwd/c;

    .line 6
    .line 7
    iget-object p1, p1, Lwd/c;->a:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v0, p0, Lwd/c;->a:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lwd/c;->a:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lwd/c;->a:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
