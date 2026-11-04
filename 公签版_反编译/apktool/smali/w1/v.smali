.class public final Lw1/v;
.super Lw1/c;
.source "SourceFile"


# instance fields
.field public final e:Landroid/content/Context;

.field public f:Lw1/j;

.field public g:Landroid/content/res/AssetFileDescriptor;

.field public h:Ljava/io/FileInputStream;

.field public i:J

.field public j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lw1/c;-><init>(Z)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lw1/v;->e:Landroid/content/Context;

    .line 10
    .line 11
    return-void
.end method

.method public static buildRawResourceUri(I)Landroid/net/Uri;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "rawresource:///"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method


# virtual methods
.method public final close()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lw1/v;->f:Lw1/j;

    .line 3
    .line 4
    const/16 v1, 0x7d0

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    :try_start_0
    iget-object v3, p0, Lw1/v;->h:Ljava/io/FileInputStream;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception v3

    .line 16
    goto :goto_5

    .line 17
    :catch_0
    move-exception v3

    .line 18
    goto :goto_4

    .line 19
    :cond_0
    :goto_0
    iput-object v0, p0, Lw1/v;->h:Ljava/io/FileInputStream;

    .line 20
    .line 21
    :try_start_1
    iget-object v3, p0, Lw1/v;->g:Landroid/content/res/AssetFileDescriptor;

    .line 22
    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :catchall_1
    move-exception v1

    .line 30
    goto :goto_3

    .line 31
    :catch_1
    move-exception v3

    .line 32
    goto :goto_2

    .line 33
    :cond_1
    :goto_1
    iput-object v0, p0, Lw1/v;->g:Landroid/content/res/AssetFileDescriptor;

    .line 34
    .line 35
    iget-boolean v0, p0, Lw1/v;->j:Z

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    iput-boolean v2, p0, Lw1/v;->j:Z

    .line 40
    .line 41
    invoke-virtual {p0}, Lw1/c;->l()V

    .line 42
    .line 43
    .line 44
    :cond_2
    return-void

    .line 45
    :goto_2
    :try_start_2
    new-instance v4, Lw1/u;

    .line 46
    .line 47
    invoke-direct {v4, v0, v3, v1}, Lw1/u;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 48
    .line 49
    .line 50
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 51
    :goto_3
    iput-object v0, p0, Lw1/v;->g:Landroid/content/res/AssetFileDescriptor;

    .line 52
    .line 53
    iget-boolean v0, p0, Lw1/v;->j:Z

    .line 54
    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    iput-boolean v2, p0, Lw1/v;->j:Z

    .line 58
    .line 59
    invoke-virtual {p0}, Lw1/c;->l()V

    .line 60
    .line 61
    .line 62
    :cond_3
    throw v1

    .line 63
    :goto_4
    :try_start_3
    new-instance v4, Lw1/u;

    .line 64
    .line 65
    invoke-direct {v4, v0, v3, v1}, Lw1/u;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 66
    .line 67
    .line 68
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 69
    :goto_5
    iput-object v0, p0, Lw1/v;->h:Ljava/io/FileInputStream;

    .line 70
    .line 71
    :try_start_4
    iget-object v4, p0, Lw1/v;->g:Landroid/content/res/AssetFileDescriptor;

    .line 72
    .line 73
    if-eqz v4, :cond_4

    .line 74
    .line 75
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 76
    .line 77
    .line 78
    goto :goto_6

    .line 79
    :catchall_2
    move-exception v1

    .line 80
    goto :goto_8

    .line 81
    :catch_2
    move-exception v3

    .line 82
    goto :goto_7

    .line 83
    :cond_4
    :goto_6
    iput-object v0, p0, Lw1/v;->g:Landroid/content/res/AssetFileDescriptor;

    .line 84
    .line 85
    iget-boolean v0, p0, Lw1/v;->j:Z

    .line 86
    .line 87
    if-eqz v0, :cond_5

    .line 88
    .line 89
    iput-boolean v2, p0, Lw1/v;->j:Z

    .line 90
    .line 91
    invoke-virtual {p0}, Lw1/c;->l()V

    .line 92
    .line 93
    .line 94
    :cond_5
    throw v3

    .line 95
    :goto_7
    :try_start_5
    new-instance v4, Lw1/u;

    .line 96
    .line 97
    invoke-direct {v4, v0, v3, v1}, Lw1/u;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 98
    .line 99
    .line 100
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 101
    :goto_8
    iput-object v0, p0, Lw1/v;->g:Landroid/content/res/AssetFileDescriptor;

    .line 102
    .line 103
    iget-boolean v0, p0, Lw1/v;->j:Z

    .line 104
    .line 105
    if-eqz v0, :cond_6

    .line 106
    .line 107
    iput-boolean v2, p0, Lw1/v;->j:Z

    .line 108
    .line 109
    invoke-virtual {p0}, Lw1/c;->l()V

    .line 110
    .line 111
    .line 112
    :cond_6
    throw v1
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lw1/v;->f:Lw1/j;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lw1/j;->a:Landroid/net/Uri;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return-object v0
.end method

.method public final j(Lw1/j;)J
    .locals 15

    .line 1
    move-object v1, p0

    .line 2
    move-object/from16 v0, p1

    .line 3
    .line 4
    iput-object v0, v1, Lw1/v;->f:Lw1/j;

    .line 5
    .line 6
    invoke-virtual {p0}, Lw1/c;->m()V

    .line 7
    .line 8
    .line 9
    iget-object v2, v0, Lw1/j;->a:Landroid/net/Uri;

    .line 10
    .line 11
    invoke-virtual {v2}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const-string v4, "rawresource"

    .line 20
    .line 21
    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    const-string v4, "Resource identifier must be an integer."

    .line 26
    .line 27
    const/16 v5, 0x3ec

    .line 28
    .line 29
    const/4 v6, 0x0

    .line 30
    const/4 v7, 0x1

    .line 31
    iget-object v8, v1, Lw1/v;->e:Landroid/content/Context;

    .line 32
    .line 33
    const/16 v9, 0x7d5

    .line 34
    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v8

    .line 45
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 46
    .line 47
    .line 48
    move-result v10

    .line 49
    if-ne v10, v7, :cond_0

    .line 50
    .line 51
    const/4 v10, 0x0

    .line 52
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v8

    .line 56
    check-cast v8, Ljava/lang/String;

    .line 57
    .line 58
    :try_start_0
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    goto/16 :goto_4

    .line 63
    .line 64
    :catch_0
    new-instance v0, Lw1/u;

    .line 65
    .line 66
    invoke-direct {v0, v4, v6, v5}, Lw1/u;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 67
    .line 68
    .line 69
    throw v0

    .line 70
    :cond_0
    new-instance v0, Lw1/u;

    .line 71
    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v3, "rawresource:// URI must have exactly one path element, found "

    .line 75
    .line 76
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-direct {v0, v2}, Lw1/u;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw v0

    .line 94
    :cond_1
    const-string v3, "android.resource"

    .line 95
    .line 96
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v10

    .line 100
    invoke-static {v3, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    if-eqz v3, :cond_12

    .line 105
    .line 106
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    const-string v10, "/"

    .line 114
    .line 115
    invoke-virtual {v3, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 116
    .line 117
    .line 118
    move-result v10

    .line 119
    if-eqz v10, :cond_2

    .line 120
    .line 121
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    :cond_2
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v10

    .line 129
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 130
    .line 131
    .line 132
    move-result v10

    .line 133
    if-eqz v10, :cond_3

    .line 134
    .line 135
    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v10

    .line 139
    goto :goto_0

    .line 140
    :cond_3
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v10

    .line 144
    :goto_0
    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v11

    .line 148
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v11

    .line 152
    if-eqz v11, :cond_4

    .line 153
    .line 154
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 155
    .line 156
    .line 157
    move-result-object v8

    .line 158
    goto :goto_1

    .line 159
    :cond_4
    :try_start_1
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 160
    .line 161
    .line 162
    move-result-object v8

    .line 163
    invoke-virtual {v8, v10}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    .line 164
    .line 165
    .line 166
    move-result-object v8
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_5

    .line 167
    :goto_1
    const-string v11, "\\d+"

    .line 168
    .line 169
    invoke-virtual {v3, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 170
    .line 171
    .line 172
    move-result v11

    .line 173
    if-eqz v11, :cond_5

    .line 174
    .line 175
    :try_start_2
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 176
    .line 177
    .line 178
    move-result v3
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 179
    :goto_2
    move v4, v3

    .line 180
    goto :goto_3

    .line 181
    :catch_1
    new-instance v0, Lw1/u;

    .line 182
    .line 183
    invoke-direct {v0, v4, v6, v5}, Lw1/u;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 184
    .line 185
    .line 186
    throw v0

    .line 187
    :cond_5
    const-string v4, ":"

    .line 188
    .line 189
    invoke-static {v10, v4, v3}, Lg/b;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    const-string v4, "raw"

    .line 194
    .line 195
    invoke-virtual {v8, v3, v4, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    .line 197
    .line 198
    move-result v3

    .line 199
    if-eqz v3, :cond_11

    .line 200
    .line 201
    goto :goto_2

    .line 202
    :goto_3
    move-object v3, v8

    .line 203
    :goto_4
    :try_start_3
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    .line 204
    .line 205
    .line 206
    move-result-object v3
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_4

    .line 207
    const/16 v4, 0x7d0

    .line 208
    .line 209
    if-eqz v3, :cond_10

    .line 210
    .line 211
    iput-object v3, v1, Lw1/v;->g:Landroid/content/res/AssetFileDescriptor;

    .line 212
    .line 213
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    .line 214
    .line 215
    .line 216
    move-result-wide v2

    .line 217
    new-instance v5, Ljava/io/FileInputStream;

    .line 218
    .line 219
    iget-object v8, v1, Lw1/v;->g:Landroid/content/res/AssetFileDescriptor;

    .line 220
    .line 221
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 222
    .line 223
    .line 224
    move-result-object v8

    .line 225
    invoke-direct {v5, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 226
    .line 227
    .line 228
    iput-object v5, v1, Lw1/v;->h:Ljava/io/FileInputStream;

    .line 229
    .line 230
    const/16 v8, 0x7d8

    .line 231
    .line 232
    const-wide/16 v9, -0x1

    .line 233
    .line 234
    iget-wide v11, v0, Lw1/j;->e:J

    .line 235
    .line 236
    cmp-long v13, v2, v9

    .line 237
    .line 238
    if-eqz v13, :cond_7

    .line 239
    .line 240
    cmp-long v13, v11, v2

    .line 241
    .line 242
    if-gtz v13, :cond_6

    .line 243
    .line 244
    goto :goto_5

    .line 245
    :cond_6
    :try_start_4
    new-instance v0, Lw1/u;

    .line 246
    .line 247
    invoke-direct {v0, v6, v6, v8}, Lw1/u;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 248
    .line 249
    .line 250
    throw v0

    .line 251
    :catch_2
    move-exception v0

    .line 252
    goto/16 :goto_9

    .line 253
    .line 254
    :catch_3
    move-exception v0

    .line 255
    goto/16 :goto_a

    .line 256
    .line 257
    :cond_7
    :goto_5
    iget-object v13, v1, Lw1/v;->g:Landroid/content/res/AssetFileDescriptor;

    .line 258
    .line 259
    invoke-virtual {v13}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    .line 260
    .line 261
    .line 262
    move-result-wide v13

    .line 263
    add-long v6, v13, v11

    .line 264
    .line 265
    invoke-virtual {v5, v6, v7}, Ljava/io/FileInputStream;->skip(J)J

    .line 266
    .line 267
    .line 268
    move-result-wide v6

    .line 269
    sub-long/2addr v6, v13

    .line 270
    cmp-long v13, v6, v11

    .line 271
    .line 272
    if-nez v13, :cond_f

    .line 273
    .line 274
    const-wide/16 v11, 0x0

    .line 275
    .line 276
    cmp-long v13, v2, v9

    .line 277
    .line 278
    if-nez v13, :cond_a

    .line 279
    .line 280
    invoke-virtual {v5}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    .line 285
    .line 286
    .line 287
    move-result-wide v5

    .line 288
    cmp-long v3, v5, v11

    .line 289
    .line 290
    if-nez v3, :cond_8

    .line 291
    .line 292
    iput-wide v9, v1, Lw1/v;->i:J

    .line 293
    .line 294
    goto :goto_6

    .line 295
    :cond_8
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    .line 296
    .line 297
    .line 298
    move-result-wide v5

    .line 299
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->position()J

    .line 300
    .line 301
    .line 302
    move-result-wide v2

    .line 303
    sub-long/2addr v5, v2

    .line 304
    iput-wide v5, v1, Lw1/v;->i:J

    .line 305
    .line 306
    cmp-long v2, v5, v11

    .line 307
    .line 308
    if-ltz v2, :cond_9

    .line 309
    .line 310
    goto :goto_6

    .line 311
    :cond_9
    new-instance v0, Lw1/u;

    .line 312
    .line 313
    const/4 v2, 0x0

    .line 314
    invoke-direct {v0, v2, v2, v8}, Lw1/u;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 315
    .line 316
    .line 317
    throw v0

    .line 318
    :cond_a
    sub-long/2addr v2, v6

    .line 319
    iput-wide v2, v1, Lw1/v;->i:J
    :try_end_4
    .catch Lw1/u; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 320
    .line 321
    cmp-long v5, v2, v11

    .line 322
    .line 323
    if-ltz v5, :cond_e

    .line 324
    .line 325
    :goto_6
    iget-wide v2, v0, Lw1/j;->f:J

    .line 326
    .line 327
    cmp-long v4, v2, v9

    .line 328
    .line 329
    if-eqz v4, :cond_c

    .line 330
    .line 331
    iget-wide v4, v1, Lw1/v;->i:J

    .line 332
    .line 333
    cmp-long v6, v4, v9

    .line 334
    .line 335
    if-nez v6, :cond_b

    .line 336
    .line 337
    move-wide v4, v2

    .line 338
    goto :goto_7

    .line 339
    :cond_b
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 340
    .line 341
    .line 342
    move-result-wide v4

    .line 343
    :goto_7
    iput-wide v4, v1, Lw1/v;->i:J

    .line 344
    .line 345
    :cond_c
    const/4 v4, 0x1

    .line 346
    iput-boolean v4, v1, Lw1/v;->j:Z

    .line 347
    .line 348
    invoke-virtual/range {p0 .. p1}, Lw1/c;->n(Lw1/j;)V

    .line 349
    .line 350
    .line 351
    cmp-long v0, v2, v9

    .line 352
    .line 353
    if-eqz v0, :cond_d

    .line 354
    .line 355
    goto :goto_8

    .line 356
    :cond_d
    iget-wide v2, v1, Lw1/v;->i:J

    .line 357
    .line 358
    :goto_8
    return-wide v2

    .line 359
    :cond_e
    :try_start_5
    new-instance v0, Lw1/i;

    .line 360
    .line 361
    invoke-direct {v0, v8}, Lw1/i;-><init>(I)V

    .line 362
    .line 363
    .line 364
    throw v0

    .line 365
    :cond_f
    new-instance v0, Lw1/u;

    .line 366
    .line 367
    const/4 v2, 0x0

    .line 368
    invoke-direct {v0, v2, v2, v8}, Lw1/u;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 369
    .line 370
    .line 371
    throw v0
    :try_end_5
    .catch Lw1/u; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 372
    :goto_9
    new-instance v2, Lw1/u;

    .line 373
    .line 374
    const/4 v3, 0x0

    .line 375
    invoke-direct {v2, v3, v0, v4}, Lw1/u;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 376
    .line 377
    .line 378
    throw v2

    .line 379
    :goto_a
    throw v0

    .line 380
    :cond_10
    move-object v3, v6

    .line 381
    new-instance v0, Lw1/u;

    .line 382
    .line 383
    new-instance v5, Ljava/lang/StringBuilder;

    .line 384
    .line 385
    const-string v6, "Resource is compressed: "

    .line 386
    .line 387
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v2

    .line 397
    invoke-direct {v0, v2, v3, v4}, Lw1/u;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 398
    .line 399
    .line 400
    throw v0

    .line 401
    :catch_4
    move-exception v0

    .line 402
    move-object v3, v6

    .line 403
    move-object v2, v0

    .line 404
    new-instance v0, Lw1/u;

    .line 405
    .line 406
    invoke-direct {v0, v3, v2, v9}, Lw1/u;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 407
    .line 408
    .line 409
    throw v0

    .line 410
    :cond_11
    move-object v3, v6

    .line 411
    new-instance v0, Lw1/u;

    .line 412
    .line 413
    const-string v2, "Resource not found."

    .line 414
    .line 415
    invoke-direct {v0, v2, v3, v9}, Lw1/u;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 416
    .line 417
    .line 418
    throw v0

    .line 419
    :catch_5
    move-exception v0

    .line 420
    new-instance v2, Lw1/u;

    .line 421
    .line 422
    const-string v3, "Package in android.resource:// URI not found. Check http://g.co/dev/packagevisibility."

    .line 423
    .line 424
    invoke-direct {v2, v3, v0, v9}, Lw1/u;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 425
    .line 426
    .line 427
    throw v2

    .line 428
    :cond_12
    new-instance v0, Lw1/u;

    .line 429
    .line 430
    new-instance v3, Ljava/lang/StringBuilder;

    .line 431
    .line 432
    const-string v4, "Unsupported URI scheme ("

    .line 433
    .line 434
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v2

    .line 441
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    .line 443
    .line 444
    const-string v2, "). Only android.resource is supported."

    .line 445
    .line 446
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v2

    .line 453
    const/4 v3, 0x0

    .line 454
    invoke-direct {v0, v2, v3, v5}, Lw1/u;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 455
    .line 456
    .line 457
    goto :goto_c

    .line 458
    :goto_b
    throw v0

    .line 459
    :goto_c
    goto :goto_b
.end method

.method public final read([BII)I
    .locals 9

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    iget-wide v0, p0, Lw1/v;->i:J

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    const/4 v4, -0x1

    .line 10
    cmp-long v5, v0, v2

    .line 11
    .line 12
    if-nez v5, :cond_1

    .line 13
    .line 14
    return v4

    .line 15
    :cond_1
    const/16 v2, 0x7d0

    .line 16
    .line 17
    const-wide/16 v5, -0x1

    .line 18
    .line 19
    cmp-long v3, v0, v5

    .line 20
    .line 21
    if-nez v3, :cond_2

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    int-to-long v7, p3

    .line 25
    :try_start_0
    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->min(JJ)J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    long-to-int p3, v0

    .line 30
    :goto_0
    iget-object v0, p0, Lw1/v;->h:Ljava/io/FileInputStream;

    .line 31
    .line 32
    sget-object v1, Lu1/f0;->a:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    .line 35
    .line 36
    .line 37
    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    if-ne p1, v4, :cond_4

    .line 39
    .line 40
    iget-wide p1, p0, Lw1/v;->i:J

    .line 41
    .line 42
    cmp-long p3, p1, v5

    .line 43
    .line 44
    if-nez p3, :cond_3

    .line 45
    .line 46
    return v4

    .line 47
    :cond_3
    new-instance p1, Lw1/u;

    .line 48
    .line 49
    new-instance p2, Ljava/io/EOFException;

    .line 50
    .line 51
    invoke-direct {p2}, Ljava/io/EOFException;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string p3, "End of stream reached having not read sufficient data."

    .line 55
    .line 56
    invoke-direct {p1, p3, p2, v2}, Lw1/u;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 57
    .line 58
    .line 59
    throw p1

    .line 60
    :cond_4
    iget-wide p2, p0, Lw1/v;->i:J

    .line 61
    .line 62
    cmp-long v0, p2, v5

    .line 63
    .line 64
    if-eqz v0, :cond_5

    .line 65
    .line 66
    int-to-long v0, p1

    .line 67
    sub-long/2addr p2, v0

    .line 68
    iput-wide p2, p0, Lw1/v;->i:J

    .line 69
    .line 70
    :cond_5
    invoke-virtual {p0, p1}, Lw1/c;->k(I)V

    .line 71
    .line 72
    .line 73
    return p1

    .line 74
    :catch_0
    move-exception p1

    .line 75
    new-instance p2, Lw1/u;

    .line 76
    .line 77
    const/4 p3, 0x0

    .line 78
    invoke-direct {p2, p3, p1, v2}, Lw1/u;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 79
    .line 80
    .line 81
    throw p2
.end method
