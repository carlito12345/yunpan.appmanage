.class public abstract Lae/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/util/Hashtable;

.field public static c:J

.field public static d:I

.field public static final e:Lde/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lwd/a;->a:Ljava/util/Properties;

    .line 2
    .line 3
    const-string v1, "jcifs.smb1.netbios.lmhosts"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lae/a;->a:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v0, Ljava/util/Hashtable;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lae/a;->b:Ljava/util/Hashtable;

    .line 17
    .line 18
    const-wide/16 v0, 0x1

    .line 19
    .line 20
    sput-wide v0, Lae/a;->c:J

    .line 21
    .line 22
    invoke-static {}, Lde/d;->r()Lde/d;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lae/a;->e:Lde/d;

    .line 27
    .line 28
    return-void
.end method

.method public static declared-synchronized a(Lae/b;)Lae/g;
    .locals 8

    .line 1
    const-class v0, Lae/a;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    sget-object v2, Lae/a;->a:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v2, :cond_1

    .line 8
    .line 9
    new-instance v3, Ljava/io/File;

    .line 10
    .line 11
    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    .line 15
    .line 16
    .line 17
    move-result-wide v4

    .line 18
    sget-wide v6, Lae/a;->c:J

    .line 19
    .line 20
    cmp-long v2, v4, v6

    .line 21
    .line 22
    if-lez v2, :cond_0

    .line 23
    .line 24
    sput-wide v4, Lae/a;->c:J

    .line 25
    .line 26
    sget-object v2, Lae/a;->b:Ljava/util/Hashtable;

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 29
    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    sput v2, Lae/a;->d:I

    .line 33
    .line 34
    new-instance v2, Ljava/io/FileReader;

    .line 35
    .line 36
    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v2}, Lae/a;->b(Ljava/io/InputStreamReader;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_4

    .line 45
    :catch_0
    move-exception p0

    .line 46
    goto :goto_1

    .line 47
    :catch_1
    move-exception p0

    .line 48
    goto :goto_2

    .line 49
    :cond_0
    :goto_0
    sget-object v2, Lae/a;->b:Ljava/util/Hashtable;

    .line 50
    .line 51
    invoke-virtual {v2, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    check-cast p0, Lae/g;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    move-object v1, p0

    .line 58
    goto :goto_3

    .line 59
    :goto_1
    :try_start_1
    sget v2, Lde/d;->b:I

    .line 60
    .line 61
    if-lez v2, :cond_1

    .line 62
    .line 63
    sget-object v2, Lae/a;->e:Lde/d;

    .line 64
    .line 65
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 66
    .line 67
    .line 68
    goto :goto_3

    .line 69
    :goto_2
    sget v2, Lde/d;->b:I

    .line 70
    .line 71
    const/4 v3, 0x1

    .line 72
    if-le v2, v3, :cond_1

    .line 73
    .line 74
    sget-object v2, Lae/a;->e:Lde/d;

    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    .line 81
    .line 82
    :cond_1
    :goto_3
    monitor-exit v0

    .line 83
    return-object v1

    .line 84
    :goto_4
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    throw p0
.end method

.method public static b(Ljava/io/InputStreamReader;)V
    .locals 10

    .line 1
    new-instance v0, Ljava/io/BufferedReader;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_c

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v1, 0x0

    .line 28
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    const/16 v3, 0x23

    .line 33
    .line 34
    if-ne v2, v3, :cond_7

    .line 35
    .line 36
    const-string v1, "#INCLUDE "

    .line 37
    .line 38
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    const-string v2, "#END_ALTERNATE"

    .line 43
    .line 44
    if-eqz v1, :cond_4

    .line 45
    .line 46
    const/16 v1, 0x5c

    .line 47
    .line 48
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v4, "smb1:"

    .line 59
    .line 60
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const/16 v4, 0x2f

    .line 64
    .line 65
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    sget v1, Lae/a;->d:I

    .line 77
    .line 78
    if-lez v1, :cond_3

    .line 79
    .line 80
    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    .line 81
    .line 82
    new-instance v3, Lce/u0;

    .line 83
    .line 84
    invoke-direct {v3, p0}, Lce/u0;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-direct {v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 88
    .line 89
    .line 90
    invoke-static {v1}, Lae/a;->b(Ljava/io/InputStreamReader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .line 92
    .line 93
    sget p0, Lae/a;->d:I

    .line 94
    .line 95
    add-int/lit8 p0, p0, -0x1

    .line 96
    .line 97
    sput p0, Lae/a;->d:I

    .line 98
    .line 99
    :cond_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    if-eqz p0, :cond_0

    .line 104
    .line 105
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 114
    .line 115
    .line 116
    move-result p0

    .line 117
    if-eqz p0, :cond_2

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :catch_0
    move-exception p0

    .line 121
    sget-object v1, Lae/a;->e:Lde/d;

    .line 122
    .line 123
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_3
    new-instance v1, Ljava/io/InputStreamReader;

    .line 131
    .line 132
    new-instance v2, Lce/u0;

    .line 133
    .line 134
    invoke-direct {v2, p0}, Lce/u0;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 138
    .line 139
    .line 140
    invoke-static {v1}, Lae/a;->b(Ljava/io/InputStreamReader;)V

    .line 141
    .line 142
    .line 143
    goto/16 :goto_0

    .line 144
    .line 145
    :cond_4
    const-string v1, "#BEGIN_ALTERNATE"

    .line 146
    .line 147
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    if-eqz v1, :cond_5

    .line 152
    .line 153
    sget p0, Lae/a;->d:I

    .line 154
    .line 155
    add-int/lit8 p0, p0, 0x1

    .line 156
    .line 157
    sput p0, Lae/a;->d:I

    .line 158
    .line 159
    goto/16 :goto_0

    .line 160
    .line 161
    :cond_5
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 162
    .line 163
    .line 164
    move-result p0

    .line 165
    if-eqz p0, :cond_0

    .line 166
    .line 167
    sget p0, Lae/a;->d:I

    .line 168
    .line 169
    if-gtz p0, :cond_6

    .line 170
    .line 171
    goto/16 :goto_0

    .line 172
    .line 173
    :cond_6
    add-int/lit8 p0, p0, -0x1

    .line 174
    .line 175
    sput p0, Lae/a;->d:I

    .line 176
    .line 177
    new-instance p0, Ljava/io/IOException;

    .line 178
    .line 179
    const-string v0, "no lmhosts alternate includes loaded"

    .line 180
    .line 181
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    throw p0

    .line 185
    :cond_7
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    if-eqz v2, :cond_0

    .line 194
    .line 195
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    const/16 v3, 0x2e

    .line 200
    .line 201
    const/4 v4, 0x0

    .line 202
    const/16 v5, 0x2e

    .line 203
    .line 204
    const/4 v6, 0x0

    .line 205
    :goto_1
    array-length v7, v2

    .line 206
    if-ge v4, v7, :cond_9

    .line 207
    .line 208
    if-ne v5, v3, :cond_9

    .line 209
    .line 210
    const/4 v7, 0x0

    .line 211
    :goto_2
    array-length v8, v2

    .line 212
    if-ge v4, v8, :cond_8

    .line 213
    .line 214
    aget-char v5, v2, v4

    .line 215
    .line 216
    const/16 v8, 0x30

    .line 217
    .line 218
    if-lt v5, v8, :cond_8

    .line 219
    .line 220
    const/16 v9, 0x39

    .line 221
    .line 222
    if-gt v5, v9, :cond_8

    .line 223
    .line 224
    mul-int/lit8 v7, v7, 0xa

    .line 225
    .line 226
    add-int/2addr v7, v5

    .line 227
    sub-int/2addr v7, v8

    .line 228
    add-int/lit8 v4, v4, 0x1

    .line 229
    .line 230
    goto :goto_2

    .line 231
    :cond_8
    shl-int/lit8 v6, v6, 0x8

    .line 232
    .line 233
    add-int/2addr v6, v7

    .line 234
    add-int/lit8 v4, v4, 0x1

    .line 235
    .line 236
    goto :goto_1

    .line 237
    :cond_9
    :goto_3
    array-length v3, v2

    .line 238
    if-ge v4, v3, :cond_a

    .line 239
    .line 240
    aget-char v3, v2, v4

    .line 241
    .line 242
    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    .line 243
    .line 244
    .line 245
    move-result v3

    .line 246
    if-eqz v3, :cond_a

    .line 247
    .line 248
    add-int/lit8 v4, v4, 0x1

    .line 249
    .line 250
    goto :goto_3

    .line 251
    :cond_a
    move v3, v4

    .line 252
    :goto_4
    array-length v5, v2

    .line 253
    if-ge v3, v5, :cond_b

    .line 254
    .line 255
    aget-char v5, v2, v3

    .line 256
    .line 257
    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    .line 258
    .line 259
    .line 260
    move-result v5

    .line 261
    if-nez v5, :cond_b

    .line 262
    .line 263
    add-int/lit8 v3, v3, 0x1

    .line 264
    .line 265
    goto :goto_4

    .line 266
    :cond_b
    new-instance v2, Lae/b;

    .line 267
    .line 268
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object p0

    .line 272
    const/16 v3, 0x20

    .line 273
    .line 274
    const/4 v4, 0x0

    .line 275
    invoke-direct {v2, p0, v3, v4}, Lae/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 276
    .line 277
    .line 278
    new-instance p0, Lae/g;

    .line 279
    .line 280
    invoke-direct {p0, v2, v6, v1}, Lae/g;-><init>(Lae/b;II)V

    .line 281
    .line 282
    .line 283
    sget-object v1, Lae/a;->b:Ljava/util/Hashtable;

    .line 284
    .line 285
    invoke-virtual {v1, v2, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    goto/16 :goto_0

    .line 289
    .line 290
    :cond_c
    return-void
.end method
