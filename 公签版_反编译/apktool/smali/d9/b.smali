.class public final Ld9/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lm9/e;

.field public volatile b:I

.field public c:Z

.field public d:Lokhttp3/Call;

.field public e:Lnh/b;

.field public final synthetic f:I


# direct methods
.method public constructor <init>(Lm9/e;I)V
    .locals 0

    .line 1
    iput p2, p0, Ld9/b;->f:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p2, 0x0

    .line 7
    iput p2, p0, Ld9/b;->b:I

    .line 8
    .line 9
    iput-object p1, p0, Ld9/b;->a:Lm9/e;

    .line 10
    .line 11
    return-void
.end method

.method public static a(Ld9/b;Lokhttp3/Headers;Ljava/lang/Object;)V
    .locals 12

    .line 1
    iget-object p0, p0, Ld9/b;->a:Lm9/e;

    .line 2
    .line 3
    iget v0, p0, Lm9/e;->f:I

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    instance-of v1, p2, Landroid/graphics/Bitmap;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    :goto_0
    return-void

    .line 14
    :cond_1
    iget-object p0, p0, Lm9/e;->g:Ljava/lang/String;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    const/4 v2, 0x0

    .line 18
    if-ne v0, v1, :cond_c

    .line 19
    .line 20
    const-string v0, "Date"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-wide/16 v3, 0x0

    .line 27
    .line 28
    :try_start_0
    invoke-static {v0}, Lk9/a;->a(Ljava/lang/String;)J

    .line 29
    .line 30
    .line 31
    move-result-wide v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    goto :goto_1

    .line 33
    :catch_0
    move-wide v0, v3

    .line 34
    :goto_1
    const-string v5, "Expires"

    .line 35
    .line 36
    invoke-virtual {p1, v5}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    :try_start_1
    invoke-static {v5}, Lk9/a;->a(Ljava/lang/String;)J

    .line 41
    .line 42
    .line 43
    move-result-wide v5
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 44
    goto :goto_2

    .line 45
    :catch_1
    const-wide/16 v5, -0x1

    .line 46
    .line 47
    :goto_2
    const-string v7, "Cache-Control"

    .line 48
    .line 49
    invoke-virtual {p1, v7}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    const-string v8, "Pragma"

    .line 54
    .line 55
    invoke-virtual {p1, v8}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    if-eqz v7, :cond_2

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_2
    if-eqz v8, :cond_3

    .line 63
    .line 64
    move-object v7, v8

    .line 65
    goto :goto_3

    .line 66
    :cond_3
    move-object v7, v2

    .line 67
    :goto_3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    if-eqz v8, :cond_5

    .line 72
    .line 73
    cmp-long v8, v5, v3

    .line 74
    .line 75
    if-gtz v8, :cond_5

    .line 76
    .line 77
    :cond_4
    :goto_4
    move-object p1, v2

    .line 78
    goto/16 :goto_9

    .line 79
    .line 80
    :cond_5
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 81
    .line 82
    .line 83
    move-result v8

    .line 84
    if-nez v8, :cond_8

    .line 85
    .line 86
    new-instance v8, Ljava/util/StringTokenizer;

    .line 87
    .line 88
    const-string v9, ","

    .line 89
    .line 90
    invoke-direct {v8, v7, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    move-wide v9, v3

    .line 94
    :cond_6
    :goto_5
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    .line 95
    .line 96
    .line 97
    move-result v7

    .line 98
    if-eqz v7, :cond_9

    .line 99
    .line 100
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v7

    .line 108
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 109
    .line 110
    .line 111
    move-result-object v11

    .line 112
    invoke-virtual {v7, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v7

    .line 116
    const-string v11, "no-cache"

    .line 117
    .line 118
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v11

    .line 122
    if-nez v11, :cond_4

    .line 123
    .line 124
    const-string v11, "no-store"

    .line 125
    .line 126
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v11

    .line 130
    if-eqz v11, :cond_7

    .line 131
    .line 132
    goto :goto_4

    .line 133
    :cond_7
    const-string v11, "max-age="

    .line 134
    .line 135
    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 136
    .line 137
    .line 138
    move-result v11

    .line 139
    if-eqz v11, :cond_6

    .line 140
    .line 141
    const/16 v11, 0x8

    .line 142
    .line 143
    :try_start_2
    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v7

    .line 147
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 148
    .line 149
    .line 150
    move-result-wide v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 151
    cmp-long v7, v9, v3

    .line 152
    .line 153
    if-gtz v7, :cond_6

    .line 154
    .line 155
    goto :goto_4

    .line 156
    :catch_2
    move-exception v7

    .line 157
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    .line 158
    .line 159
    .line 160
    goto :goto_5

    .line 161
    :cond_8
    move-wide v9, v3

    .line 162
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 163
    .line 164
    .line 165
    move-result-wide v7

    .line 166
    cmp-long v11, v0, v3

    .line 167
    .line 168
    if-lez v11, :cond_a

    .line 169
    .line 170
    goto :goto_6

    .line 171
    :cond_a
    move-wide v0, v7

    .line 172
    :goto_6
    cmp-long v7, v9, v3

    .line 173
    .line 174
    if-lez v7, :cond_b

    .line 175
    .line 176
    const-wide/16 v3, 0x3e8

    .line 177
    .line 178
    mul-long v9, v9, v3

    .line 179
    .line 180
    add-long v3, v9, v0

    .line 181
    .line 182
    goto :goto_7

    .line 183
    :cond_b
    cmp-long v0, v5, v3

    .line 184
    .line 185
    if-ltz v0, :cond_d

    .line 186
    .line 187
    move-wide v3, v5

    .line 188
    goto :goto_7

    .line 189
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 190
    .line 191
    .line 192
    move-result-wide v3

    .line 193
    :cond_d
    :goto_7
    new-instance v0, Lk9/a;

    .line 194
    .line 195
    invoke-direct {v0}, Lk9/a;-><init>()V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1}, Lokhttp3/Headers;->names()Ljava/util/Set;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 207
    .line 208
    .line 209
    move-result v5

    .line 210
    if-eqz v5, :cond_e

    .line 211
    .line 212
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v5

    .line 216
    check-cast v5, Ljava/lang/String;

    .line 217
    .line 218
    invoke-virtual {p1, v5}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v6

    .line 222
    invoke-virtual {v0, v5, v6}, Lk9/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    goto :goto_8

    .line 226
    :cond_e
    new-instance p1, Lc9/a;

    .line 227
    .line 228
    invoke-direct {p1}, Lc9/a;-><init>()V

    .line 229
    .line 230
    .line 231
    iput-object p0, p1, Lc9/a;->a:Ljava/lang/String;

    .line 232
    .line 233
    iput-object p2, p1, Lc9/a;->d:Ljava/lang/Object;

    .line 234
    .line 235
    iput-wide v3, p1, Lc9/a;->b:J

    .line 236
    .line 237
    iput-object v0, p1, Lc9/a;->c:Lk9/a;

    .line 238
    .line 239
    :goto_9
    if-nez p1, :cond_f

    .line 240
    .line 241
    sget p0, Lg9/a;->a:I

    .line 242
    .line 243
    throw v2

    .line 244
    :cond_f
    sget p0, Lg9/a;->a:I

    .line 245
    .line 246
    goto :goto_b

    .line 247
    :goto_a
    throw v2

    .line 248
    :goto_b
    goto :goto_a
.end method

.method public static f(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Lb9/a;->a:Lb9/b;

    .line 2
    .line 3
    iget-object v0, v0, Lb9/b;->a:Landroid/os/Handler;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b(Lv3/f;)V
    .locals 2

    .line 1
    iget v0, p0, Ld9/b;->f:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Ld9/f;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1}, Ld9/f;-><init>(Ld9/b;Lv3/f;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Ld9/b;->f(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_0
    new-instance v0, Ld9/e;

    .line 16
    .line 17
    invoke-direct {v0, p0, p1}, Ld9/e;-><init>(Ld9/b;Lv3/f;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Ld9/b;->f(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_1
    new-instance v0, Ld9/d;

    .line 25
    .line 26
    invoke-direct {v0, p0, p1}, Ld9/d;-><init>(Ld9/b;Lv3/f;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Ld9/b;->f(Ljava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_2
    new-instance v0, Ld9/c;

    .line 34
    .line 35
    invoke-direct {v0, p0, p1}, Ld9/c;-><init>(Ld9/b;Lv3/f;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Ld9/b;->f(Ljava/lang/Runnable;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :pswitch_3
    new-instance v0, Ld9/a;

    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    invoke-direct {v0, p0, p1, v1}, Ld9/a;-><init>(Ld9/b;Lv3/f;I)V

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Ld9/b;->f(Ljava/lang/Runnable;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Lv3/f;)V
    .locals 3

    .line 1
    iget v0, p0, Ld9/b;->f:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Ly7/b;

    .line 7
    .line 8
    const/16 v1, 0xa

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v0, v1, p0, p1, v2}, Ly7/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Ld9/b;->f(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    new-instance v0, Ly7/b;

    .line 19
    .line 20
    const/16 v1, 0x9

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-direct {v0, v1, p0, p1, v2}, Ly7/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Ld9/b;->f(Ljava/lang/Runnable;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_1
    new-instance v0, Ly7/b;

    .line 31
    .line 32
    const/16 v1, 0x8

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-direct {v0, v1, p0, p1, v2}, Ly7/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Ld9/b;->f(Ljava/lang/Runnable;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :pswitch_2
    new-instance v0, Ly7/b;

    .line 43
    .line 44
    const/4 v1, 0x7

    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-direct {v0, v1, p0, p1, v2}, Ly7/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 47
    .line 48
    .line 49
    invoke-static {v0}, Ld9/b;->f(Ljava/lang/Runnable;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :pswitch_3
    new-instance v0, Ly7/b;

    .line 54
    .line 55
    const/4 v1, 0x6

    .line 56
    const/4 v2, 0x0

    .line 57
    invoke-direct {v0, v1, p0, p1, v2}, Ly7/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 58
    .line 59
    .line 60
    invoke-static {v0}, Ld9/b;->f(Ljava/lang/Runnable;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    nop

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized d()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Ld9/b;->c:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Ld9/b;->c:Z

    .line 8
    .line 9
    iget-object v0, p0, Ld9/b;->a:Lm9/e;

    .line 10
    .line 11
    invoke-virtual {v0}, Lm9/e;->f()Lokhttp3/Call;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Ld9/b;->d:Lokhttp3/Call;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    :try_start_1
    const-string v0, "Already executed!"

    .line 22
    .line 23
    new-instance v1, Landroidx/fragment/app/b0;

    .line 24
    .line 25
    const/4 v2, 0x3

    .line 26
    invoke-direct {v1, v0, v2}, Landroidx/fragment/app/b0;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    throw v1

    .line 30
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    throw v0
.end method

.method public final e()V
    .locals 3

    .line 1
    iget-object v0, p0, Ld9/b;->d:Lokhttp3/Call;

    .line 2
    .line 3
    new-instance v1, La1/i;

    .line 4
    .line 5
    const/16 v2, 0x12

    .line 6
    .line 7
    invoke-direct {v1, v2, p0}, La1/i;-><init>(ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
