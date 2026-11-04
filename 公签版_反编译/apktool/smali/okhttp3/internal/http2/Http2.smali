.class public final Lokhttp3/internal/http2/Http2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final BINARY:[Ljava/lang/String;

.field static final CONNECTION_PREFACE:Lfg/l;

.field static final FLAGS:[Ljava/lang/String;

.field static final FLAG_ACK:B = 0x1t

.field static final FLAG_COMPRESSED:B = 0x20t

.field static final FLAG_END_HEADERS:B = 0x4t

.field static final FLAG_END_PUSH_PROMISE:B = 0x4t

.field static final FLAG_END_STREAM:B = 0x1t

.field static final FLAG_NONE:B = 0x0t

.field static final FLAG_PADDED:B = 0x8t

.field static final FLAG_PRIORITY:B = 0x20t

.field private static final FRAME_NAMES:[Ljava/lang/String;

.field static final INITIAL_MAX_FRAME_SIZE:I = 0x4000

.field static final TYPE_CONTINUATION:B = 0x9t

.field static final TYPE_DATA:B = 0x0t

.field static final TYPE_GOAWAY:B = 0x7t

.field static final TYPE_HEADERS:B = 0x1t

.field static final TYPE_PING:B = 0x6t

.field static final TYPE_PRIORITY:B = 0x2t

.field static final TYPE_PUSH_PROMISE:B = 0x5t

.field static final TYPE_RST_STREAM:B = 0x3t

.field static final TYPE_SETTINGS:B = 0x4t

.field static final TYPE_WINDOW_UPDATE:B = 0x8t


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x3

    .line 3
    const-string v2, "PRIORITY"

    .line 4
    .line 5
    const/16 v3, 0x8

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x1

    .line 9
    sget-object v6, Lfg/l;->d:Lfg/l;

    .line 10
    .line 11
    const-string v6, "PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n"

    .line 12
    .line 13
    invoke-static {v6}, Lfg/e0;->e(Ljava/lang/String;)Lfg/l;

    .line 14
    .line 15
    .line 16
    move-result-object v6

    .line 17
    sput-object v6, Lokhttp3/internal/http2/Http2;->CONNECTION_PREFACE:Lfg/l;

    .line 18
    .line 19
    const/16 v6, 0xa

    .line 20
    .line 21
    new-array v6, v6, [Ljava/lang/String;

    .line 22
    .line 23
    const-string v7, "DATA"

    .line 24
    .line 25
    aput-object v7, v6, v4

    .line 26
    .line 27
    const-string v7, "HEADERS"

    .line 28
    .line 29
    aput-object v7, v6, v5

    .line 30
    .line 31
    const/4 v7, 0x2

    .line 32
    aput-object v2, v6, v7

    .line 33
    .line 34
    const-string v7, "RST_STREAM"

    .line 35
    .line 36
    aput-object v7, v6, v1

    .line 37
    .line 38
    const-string v7, "SETTINGS"

    .line 39
    .line 40
    aput-object v7, v6, v0

    .line 41
    .line 42
    const-string v7, "PUSH_PROMISE"

    .line 43
    .line 44
    const/4 v8, 0x5

    .line 45
    aput-object v7, v6, v8

    .line 46
    .line 47
    const-string v7, "PING"

    .line 48
    .line 49
    const/4 v8, 0x6

    .line 50
    aput-object v7, v6, v8

    .line 51
    .line 52
    const-string v7, "GOAWAY"

    .line 53
    .line 54
    const/4 v8, 0x7

    .line 55
    aput-object v7, v6, v8

    .line 56
    .line 57
    const-string v7, "WINDOW_UPDATE"

    .line 58
    .line 59
    aput-object v7, v6, v3

    .line 60
    .line 61
    const-string v7, "CONTINUATION"

    .line 62
    .line 63
    const/16 v8, 0x9

    .line 64
    .line 65
    aput-object v7, v6, v8

    .line 66
    .line 67
    sput-object v6, Lokhttp3/internal/http2/Http2;->FRAME_NAMES:[Ljava/lang/String;

    .line 68
    .line 69
    const/16 v6, 0x40

    .line 70
    .line 71
    new-array v6, v6, [Ljava/lang/String;

    .line 72
    .line 73
    sput-object v6, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    .line 74
    .line 75
    const/16 v6, 0x100

    .line 76
    .line 77
    new-array v6, v6, [Ljava/lang/String;

    .line 78
    .line 79
    sput-object v6, Lokhttp3/internal/http2/Http2;->BINARY:[Ljava/lang/String;

    .line 80
    .line 81
    const/4 v6, 0x0

    .line 82
    :goto_0
    sget-object v7, Lokhttp3/internal/http2/Http2;->BINARY:[Ljava/lang/String;

    .line 83
    .line 84
    array-length v8, v7

    .line 85
    const/16 v9, 0x20

    .line 86
    .line 87
    if-ge v6, v8, :cond_0

    .line 88
    .line 89
    invoke-static {v6}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v8

    .line 93
    new-array v10, v5, [Ljava/lang/Object;

    .line 94
    .line 95
    aput-object v8, v10, v4

    .line 96
    .line 97
    const-string v8, "%8s"

    .line 98
    .line 99
    invoke-static {v8, v10}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v8

    .line 103
    const/16 v10, 0x30

    .line 104
    .line 105
    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v8

    .line 109
    aput-object v8, v7, v6

    .line 110
    .line 111
    add-int/2addr v6, v5

    .line 112
    goto :goto_0

    .line 113
    :cond_0
    sget-object v6, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    .line 114
    .line 115
    const-string v7, ""

    .line 116
    .line 117
    aput-object v7, v6, v4

    .line 118
    .line 119
    const-string v7, "END_STREAM"

    .line 120
    .line 121
    aput-object v7, v6, v5

    .line 122
    .line 123
    filled-new-array {v5}, [I

    .line 124
    .line 125
    .line 126
    move-result-object v7

    .line 127
    const-string v8, "PADDED"

    .line 128
    .line 129
    aput-object v8, v6, v3

    .line 130
    .line 131
    aget v8, v7, v4

    .line 132
    .line 133
    or-int/lit8 v10, v8, 0x8

    .line 134
    .line 135
    new-instance v11, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .line 139
    .line 140
    aget-object v8, v6, v8

    .line 141
    .line 142
    const-string v12, "|PADDED"

    .line 143
    .line 144
    invoke-static {v8, v12, v11}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v8

    .line 148
    aput-object v8, v6, v10

    .line 149
    .line 150
    const-string v8, "END_HEADERS"

    .line 151
    .line 152
    aput-object v8, v6, v0

    .line 153
    .line 154
    aput-object v2, v6, v9

    .line 155
    .line 156
    const/16 v2, 0x24

    .line 157
    .line 158
    const-string v8, "END_HEADERS|PRIORITY"

    .line 159
    .line 160
    aput-object v8, v6, v2

    .line 161
    .line 162
    filled-new-array {v0, v9, v2}, [I

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    const/4 v2, 0x0

    .line 167
    :goto_1
    if-ge v2, v1, :cond_1

    .line 168
    .line 169
    aget v6, v0, v2

    .line 170
    .line 171
    aget v8, v7, v4

    .line 172
    .line 173
    sget-object v9, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    .line 174
    .line 175
    or-int v10, v8, v6

    .line 176
    .line 177
    new-instance v11, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .line 181
    .line 182
    aget-object v13, v9, v8

    .line 183
    .line 184
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    const/16 v13, 0x7c

    .line 188
    .line 189
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    aget-object v14, v9, v6

    .line 193
    .line 194
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v11

    .line 201
    aput-object v11, v9, v10

    .line 202
    .line 203
    or-int/2addr v10, v3

    .line 204
    new-instance v11, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .line 208
    .line 209
    aget-object v8, v9, v8

    .line 210
    .line 211
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    aget-object v6, v9, v6

    .line 218
    .line 219
    invoke-static {v6, v12, v11}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v6

    .line 223
    aput-object v6, v9, v10

    .line 224
    .line 225
    add-int/2addr v2, v5

    .line 226
    goto :goto_1

    .line 227
    :cond_1
    :goto_2
    sget-object v0, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    .line 228
    .line 229
    array-length v1, v0

    .line 230
    if-ge v4, v1, :cond_3

    .line 231
    .line 232
    aget-object v1, v0, v4

    .line 233
    .line 234
    if-nez v1, :cond_2

    .line 235
    .line 236
    sget-object v1, Lokhttp3/internal/http2/Http2;->BINARY:[Ljava/lang/String;

    .line 237
    .line 238
    aget-object v1, v1, v4

    .line 239
    .line 240
    aput-object v1, v0, v4

    .line 241
    .line 242
    :cond_2
    add-int/2addr v4, v5

    .line 243
    goto :goto_2

    .line 244
    :cond_3
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static formatFlags(BB)Ljava/lang/String;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p0, ""

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_6

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p0, v0, :cond_6

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    if-eq p0, v0, :cond_4

    .line 14
    .line 15
    const/4 v0, 0x6

    .line 16
    if-eq p0, v0, :cond_4

    .line 17
    .line 18
    const/4 v0, 0x7

    .line 19
    if-eq p0, v0, :cond_6

    .line 20
    .line 21
    const/16 v0, 0x8

    .line 22
    .line 23
    if-eq p0, v0, :cond_6

    .line 24
    .line 25
    sget-object v0, Lokhttp3/internal/http2/Http2;->FLAGS:[Ljava/lang/String;

    .line 26
    .line 27
    array-length v1, v0

    .line 28
    if-ge p1, v1, :cond_1

    .line 29
    .line 30
    aget-object v0, v0, p1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    sget-object v0, Lokhttp3/internal/http2/Http2;->BINARY:[Ljava/lang/String;

    .line 34
    .line 35
    aget-object v0, v0, p1

    .line 36
    .line 37
    :goto_0
    const/4 v1, 0x5

    .line 38
    if-ne p0, v1, :cond_2

    .line 39
    .line 40
    and-int/lit8 v1, p1, 0x4

    .line 41
    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    const-string p0, "HEADERS"

    .line 45
    .line 46
    const-string p1, "PUSH_PROMISE"

    .line 47
    .line 48
    invoke-virtual {v0, p0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :cond_2
    if-nez p0, :cond_3

    .line 54
    .line 55
    and-int/lit8 p0, p1, 0x20

    .line 56
    .line 57
    if-eqz p0, :cond_3

    .line 58
    .line 59
    const-string p0, "PRIORITY"

    .line 60
    .line 61
    const-string p1, "COMPRESSED"

    .line 62
    .line 63
    invoke-virtual {v0, p0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0

    .line 68
    :cond_3
    return-object v0

    .line 69
    :cond_4
    const/4 p0, 0x1

    .line 70
    if-ne p1, p0, :cond_5

    .line 71
    .line 72
    const-string p0, "ACK"

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_5
    sget-object p0, Lokhttp3/internal/http2/Http2;->BINARY:[Ljava/lang/String;

    .line 76
    .line 77
    aget-object p0, p0, p1

    .line 78
    .line 79
    :goto_1
    return-object p0

    .line 80
    :cond_6
    sget-object p0, Lokhttp3/internal/http2/Http2;->BINARY:[Ljava/lang/String;

    .line 81
    .line 82
    aget-object p0, p0, p1

    .line 83
    .line 84
    return-object p0
.end method

.method public static frameLog(ZIIBB)Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    sget-object v2, Lokhttp3/internal/http2/Http2;->FRAME_NAMES:[Ljava/lang/String;

    .line 4
    .line 5
    array-length v3, v2

    .line 6
    if-ge p3, v3, :cond_0

    .line 7
    .line 8
    aget-object v2, v2, p3

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    new-array v3, v1, [Ljava/lang/Object;

    .line 16
    .line 17
    aput-object v2, v3, v0

    .line 18
    .line 19
    const-string v2, "0x%02x"

    .line 20
    .line 21
    invoke-static {v2, v3}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    :goto_0
    invoke-static {p3, p4}, Lokhttp3/internal/http2/Http2;->formatFlags(BB)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    const-string p0, "<<"

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const-string p0, ">>"

    .line 35
    .line 36
    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    const/4 p4, 0x5

    .line 45
    new-array p4, p4, [Ljava/lang/Object;

    .line 46
    .line 47
    aput-object p0, p4, v0

    .line 48
    .line 49
    aput-object p1, p4, v1

    .line 50
    .line 51
    const/4 p0, 0x2

    .line 52
    aput-object p2, p4, p0

    .line 53
    .line 54
    const/4 p0, 0x3

    .line 55
    aput-object v2, p4, p0

    .line 56
    .line 57
    const/4 p0, 0x4

    .line 58
    aput-object p3, p4, p0

    .line 59
    .line 60
    const-string p0, "%s 0x%08x %5d %-13s %s"

    .line 61
    .line 62
    invoke-static {p0, p4}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0
.end method

.method public static varargs illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 2
    .line 3
    invoke-static {p0, p1}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    throw v0
.end method

.method public static varargs ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .locals 1

    .line 1
    new-instance v0, Ljava/io/IOException;

    .line 2
    .line 3
    invoke-static {p0, p1}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    throw v0
.end method
