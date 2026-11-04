.class public abstract Lm9/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public transient c:Lokhttp3/OkHttpClient;

.field public transient d:Ljava/lang/Object;

.field public final e:I

.field public f:I

.field public g:Ljava/lang/String;

.field public final h:Lk9/c;

.field public final i:Lk9/a;

.field public transient j:Lokhttp3/Request;

.field public transient k:Lnh/b;

.field public transient l:Lnh/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lk9/c;

    .line 5
    .line 6
    invoke-direct {v0}, Lk9/c;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lm9/e;->h:Lk9/c;

    .line 10
    .line 11
    new-instance v0, Lk9/a;

    .line 12
    .line 13
    invoke-direct {v0}, Lk9/a;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lm9/e;->i:Lk9/a;

    .line 17
    .line 18
    iput-object p1, p0, Lm9/e;->a:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p1, p0, Lm9/e;->b:Ljava/lang/String;

    .line 21
    .line 22
    sget-object p1, Lb9/a;->a:Lb9/b;

    .line 23
    .line 24
    sget-object v0, Lk9/a;->c:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-nez v3, :cond_0

    .line 54
    .line 55
    const/16 v3, 0x2d

    .line 56
    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const/16 v0, 0x2c

    .line 64
    .line 65
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v0, ";q=0.8"

    .line 72
    .line 73
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    sput-object v0, Lk9/a;->c:Ljava/lang/String;

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    sget-object v0, Lk9/a;->c:Ljava/lang/String;

    .line 84
    .line 85
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-nez v1, :cond_2

    .line 90
    .line 91
    const-string v1, "Accept-Language"

    .line 92
    .line 93
    invoke-virtual {p0, v1, v0}, Lm9/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    :cond_2
    sget-object v0, Lk9/a;->d:Ljava/lang/String;

    .line 97
    .line 98
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-nez v0, :cond_3

    .line 103
    .line 104
    sget-object v0, Lk9/a;->d:Ljava/lang/String;

    .line 105
    .line 106
    goto/16 :goto_3

    .line 107
    .line 108
    :cond_3
    const/4 v0, 0x0

    .line 109
    :try_start_0
    const-string v1, "com.android.internal.R$string"

    .line 110
    .line 111
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    const-string v2, "web_user_agent"

    .line 116
    .line 117
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    check-cast v1, Ljava/lang/Integer;

    .line 126
    .line 127
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    const-string v1, "please call OkGo.getInstance().init() first in application!"

    .line 131
    .line 132
    invoke-static {v0, v1}, Ln9/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :catch_0
    nop

    .line 137
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-eqz v1, :cond_4

    .line 142
    .line 143
    const-string v0, "okhttp-okgo/jeasonlzy"

    .line 144
    .line 145
    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    new-instance v2, Ljava/lang/StringBuffer;

    .line 150
    .line 151
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 152
    .line 153
    .line 154
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 155
    .line 156
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    if-lez v4, :cond_5

    .line 161
    .line 162
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_5
    const-string v3, "1.0"

    .line 167
    .line 168
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    .line 170
    .line 171
    :goto_1
    const-string v3, "; "

    .line 172
    .line 173
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    if-eqz v4, :cond_6

    .line 181
    .line 182
    invoke-virtual {v4, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 194
    .line 195
    .line 196
    move-result v5

    .line 197
    if-nez v5, :cond_7

    .line 198
    .line 199
    const-string v5, "-"

    .line 200
    .line 201
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v4, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 209
    .line 210
    .line 211
    goto :goto_2

    .line 212
    :cond_6
    const-string v1, "en"

    .line 213
    .line 214
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 215
    .line 216
    .line 217
    :cond_7
    :goto_2
    const-string v1, "REL"

    .line 218
    .line 219
    sget-object v4, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 220
    .line 221
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    if-eqz v1, :cond_8

    .line 226
    .line 227
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 228
    .line 229
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 230
    .line 231
    .line 232
    move-result v4

    .line 233
    if-lez v4, :cond_8

    .line 234
    .line 235
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 239
    .line 240
    .line 241
    :cond_8
    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 242
    .line 243
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 244
    .line 245
    .line 246
    move-result v3

    .line 247
    if-lez v3, :cond_9

    .line 248
    .line 249
    const-string v3, " Build/"

    .line 250
    .line 251
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 255
    .line 256
    .line 257
    :cond_9
    const/4 v1, 0x2

    .line 258
    new-array v1, v1, [Ljava/lang/Object;

    .line 259
    .line 260
    const/4 v3, 0x0

    .line 261
    aput-object v2, v1, v3

    .line 262
    .line 263
    const-string v2, "Mobile "

    .line 264
    .line 265
    const/4 v3, 0x1

    .line 266
    aput-object v2, v1, v3

    .line 267
    .line 268
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    sput-object v0, Lk9/a;->d:Ljava/lang/String;

    .line 273
    .line 274
    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 275
    .line 276
    .line 277
    move-result v1

    .line 278
    if-nez v1, :cond_a

    .line 279
    .line 280
    const-string v1, "User-Agent"

    .line 281
    .line 282
    invoke-virtual {p0, v1, v0}, Lm9/e;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 286
    .line 287
    .line 288
    iget v0, p1, Lb9/b;->c:I

    .line 289
    .line 290
    iput v0, p0, Lm9/e;->e:I

    .line 291
    .line 292
    iget p1, p1, Lb9/b;->d:I

    .line 293
    .line 294
    iput p1, p0, Lm9/e;->f:I

    .line 295
    .line 296
    return-void
.end method


# virtual methods
.method public final a()Lokhttp3/Response;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lm9/e;->f()Lokhttp3/Call;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final b(Lnh/b;)V
    .locals 6

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x1

    .line 4
    const/4 v3, 0x2

    .line 5
    iput-object p1, p0, Lm9/e;->k:Lnh/b;

    .line 6
    .line 7
    iget v4, p0, Lm9/e;->f:I

    .line 8
    .line 9
    invoke-static {v4}, Ld0/f;->c(I)I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    const/4 v5, 0x0

    .line 14
    if-eqz v4, :cond_4

    .line 15
    .line 16
    if-eq v4, v2, :cond_3

    .line 17
    .line 18
    if-eq v4, v3, :cond_2

    .line 19
    .line 20
    if-eq v4, v1, :cond_1

    .line 21
    .line 22
    if-eq v4, v0, :cond_0

    .line 23
    .line 24
    move-object v0, v5

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v0, Ld9/b;

    .line 27
    .line 28
    invoke-direct {v0, p0, v2}, Ld9/b;-><init>(Lm9/e;I)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    new-instance v0, Ld9/b;

    .line 33
    .line 34
    invoke-direct {v0, p0, v1}, Ld9/b;-><init>(Lm9/e;I)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    new-instance v1, Ld9/b;

    .line 39
    .line 40
    invoke-direct {v1, p0, v0}, Ld9/b;-><init>(Lm9/e;I)V

    .line 41
    .line 42
    .line 43
    move-object v0, v1

    .line 44
    goto :goto_0

    .line 45
    :cond_3
    new-instance v0, Ld9/b;

    .line 46
    .line 47
    invoke-direct {v0, p0, v3}, Ld9/b;-><init>(Lm9/e;I)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_4
    new-instance v0, Ld9/b;

    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    invoke-direct {v0, p0, v1}, Ld9/b;-><init>(Lm9/e;I)V

    .line 55
    .line 56
    .line 57
    :goto_0
    const-string v1, "policy == null"

    .line 58
    .line 59
    invoke-static {v0, v1}, Ln9/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object v1, v0, Ld9/b;->a:Lm9/e;

    .line 63
    .line 64
    iget-object v2, v1, Lm9/e;->g:Ljava/lang/String;

    .line 65
    .line 66
    if-nez v2, :cond_5

    .line 67
    .line 68
    iget-object v2, v1, Lm9/e;->h:Lk9/c;

    .line 69
    .line 70
    iget-object v2, v2, Lk9/c;->a:Ljava/util/LinkedHashMap;

    .line 71
    .line 72
    iget-object v4, v1, Lm9/e;->b:Ljava/lang/String;

    .line 73
    .line 74
    invoke-static {v4, v2}, Ln9/a;->c(Ljava/lang/String;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    const-string v4, "cacheKey == null"

    .line 79
    .line 80
    invoke-static {v2, v4}, Ln9/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iput-object v2, v1, Lm9/e;->g:Ljava/lang/String;

    .line 84
    .line 85
    :cond_5
    iget v2, v1, Lm9/e;->f:I

    .line 86
    .line 87
    if-nez v2, :cond_6

    .line 88
    .line 89
    iput v3, v1, Lm9/e;->f:I

    .line 90
    .line 91
    :cond_6
    iget v1, v1, Lm9/e;->f:I

    .line 92
    .line 93
    if-ne v1, v3, :cond_7

    .line 94
    .line 95
    iget v1, v0, Ld9/b;->f:I

    .line 96
    .line 97
    packed-switch v1, :pswitch_data_0

    .line 98
    .line 99
    .line 100
    iput-object p1, v0, Ld9/b;->e:Lnh/b;

    .line 101
    .line 102
    new-instance p1, Ld9/f;

    .line 103
    .line 104
    invoke-direct {p1, v0}, Ld9/f;-><init>(Ld9/b;)V

    .line 105
    .line 106
    .line 107
    invoke-static {p1}, Ld9/b;->f(Ljava/lang/Runnable;)V

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :pswitch_0
    iput-object p1, v0, Ld9/b;->e:Lnh/b;

    .line 112
    .line 113
    new-instance p1, Ld9/e;

    .line 114
    .line 115
    invoke-direct {p1, v0}, Ld9/e;-><init>(Ld9/b;)V

    .line 116
    .line 117
    .line 118
    invoke-static {p1}, Ld9/b;->f(Ljava/lang/Runnable;)V

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :pswitch_1
    iput-object p1, v0, Ld9/b;->e:Lnh/b;

    .line 123
    .line 124
    new-instance p1, Ld9/d;

    .line 125
    .line 126
    invoke-direct {p1, v0}, Ld9/d;-><init>(Ld9/b;)V

    .line 127
    .line 128
    .line 129
    invoke-static {p1}, Ld9/b;->f(Ljava/lang/Runnable;)V

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :pswitch_2
    iput-object p1, v0, Ld9/b;->e:Lnh/b;

    .line 134
    .line 135
    new-instance p1, Ld9/c;

    .line 136
    .line 137
    invoke-direct {p1, v0}, Ld9/c;-><init>(Ld9/b;)V

    .line 138
    .line 139
    .line 140
    invoke-static {p1}, Ld9/b;->f(Ljava/lang/Runnable;)V

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :pswitch_3
    iput-object p1, v0, Ld9/b;->e:Lnh/b;

    .line 145
    .line 146
    new-instance p1, Ld9/a;

    .line 147
    .line 148
    invoke-direct {p1, v0}, Ld9/a;-><init>(Ld9/b;)V

    .line 149
    .line 150
    .line 151
    invoke-static {p1}, Ld9/b;->f(Ljava/lang/Runnable;)V

    .line 152
    .line 153
    .line 154
    :goto_1
    return-void

    .line 155
    :cond_7
    sget p1, Lg9/a;->a:I

    .line 156
    .line 157
    throw v5

    .line 158
    nop

    .line 159
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract c(Lm9/d;)Lokhttp3/Request;
.end method

.method public abstract d()Lokhttp3/RequestBody;
.end method

.method public final f()Lokhttp3/Call;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lm9/e;->d()Lokhttp3/RequestBody;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v1, Lm9/d;

    .line 8
    .line 9
    iget-object v2, p0, Lm9/e;->k:Lnh/b;

    .line 10
    .line 11
    invoke-direct {v1, v0, v2}, Lm9/d;-><init>(Lokhttp3/RequestBody;Lnh/b;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v1}, Lm9/e;->c(Lm9/d;)Lokhttp3/Request;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lm9/e;->j:Lokhttp3/Request;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    invoke-virtual {p0, v0}, Lm9/e;->c(Lm9/d;)Lokhttp3/Request;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lm9/e;->j:Lokhttp3/Request;

    .line 27
    .line 28
    :goto_0
    iget-object v0, p0, Lm9/e;->c:Lokhttp3/OkHttpClient;

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    sget-object v0, Lb9/a;->a:Lb9/b;

    .line 33
    .line 34
    iget-object v1, v0, Lb9/b;->b:Lokhttp3/OkHttpClient;

    .line 35
    .line 36
    const-string v2, "please call OkGo.getInstance().setOkHttpClient() first in application!"

    .line 37
    .line 38
    invoke-static {v1, v2}, Ln9/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, v0, Lb9/b;->b:Lokhttp3/OkHttpClient;

    .line 42
    .line 43
    iput-object v0, p0, Lm9/e;->c:Lokhttp3/OkHttpClient;

    .line 44
    .line 45
    :cond_1
    iget-object v0, p0, Lm9/e;->c:Lokhttp3/OkHttpClient;

    .line 46
    .line 47
    iget-object v1, p0, Lm9/e;->j:Lokhttp3/Request;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    return-object v0
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lm9/e;->i:Lk9/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lk9/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final varargs h(Ljava/lang/String;Ljava/lang/String;[Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lm9/e;->h:Lk9/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    array-length v1, p3

    .line 7
    if-lez v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    aget-boolean p3, p3, v1

    .line 11
    .line 12
    invoke-virtual {v0, p1, p2, p3}, Lk9/c;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p3, 0x1

    .line 17
    invoke-virtual {v0, p1, p2, p3}, Lk9/c;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method
