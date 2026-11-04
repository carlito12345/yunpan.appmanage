.class public Lcom/yunpan/appmanage/ui/ActivityTextHzh;
.super Lda/g;
.source "SourceFile"


# static fields
.field public static final synthetic P:I


# instance fields
.field public C:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public D:Landroid/widget/TextView;

.field public E:Landroid/widget/TextView;

.field public F:Landroid/widget/TextView;

.field public G:Lua/m7;

.field public H:Lua/m7;

.field public I:Lua/m7;

.field public K:Ljava/lang/String;

.field public L:Ljava/lang/String;

.field public M:I

.field public N:I

.field public final O:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lda/g;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->O:Landroid/os/Handler;

    .line 14
    .line 15
    return-void
.end method

.method public static z(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-string v1, ": "

    .line 23
    .line 24
    invoke-static {v0, v1, p0}, Lg/b;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public final A(ZLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->M:I

    .line 4
    .line 5
    add-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    iput v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->M:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->N:I

    .line 11
    .line 12
    add-int/lit8 v0, v0, 0x1

    .line 13
    .line 14
    iput v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->N:I

    .line 15
    .line 16
    :goto_0
    move-object v1, p3

    .line 17
    :goto_1
    if-eqz v1, :cond_2

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    instance-of v3, v1, Ljava/lang/SecurityException;

    .line 24
    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    const-string v3, "allowEmbedded"

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    const-string p1, "Android 7.x \u9700\u8981\u76ee\u6807\u9875\u9762\u58f0\u660e allowEmbedded=true"

    .line 38
    .line 39
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    const/16 v1, 0x1e

    .line 49
    .line 50
    if-le v0, v1, :cond_3

    .line 51
    .line 52
    new-instance p1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string p2, "\u542f\u52a8\u5931\u8d25: "

    .line 55
    .line 56
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-static {p3}, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->z(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_3
    iget-object p3, p0, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->O:Landroid/os/Handler;

    .line 75
    .line 76
    new-instance v0, Landroidx/fragment/app/g;

    .line 77
    .line 78
    invoke-direct {v0, p0, p1, p2}, Landroidx/fragment/app/g;-><init>(Lcom/yunpan/appmanage/ui/ActivityTextHzh;ZLjava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const-wide/16 p1, 0x15e

    .line 82
    .line 83
    invoke-virtual {p3, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public final B(Ljava/lang/String;Z)V
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-string v2, "\u5df2\u542f\u52a8"

    .line 4
    .line 5
    const-string v3, "\u53f3\u4fa7"

    .line 6
    .line 7
    const-string v4, "\u5de6\u4fa7"

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    iget-object v5, p0, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->G:Lua/m7;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v5, p0, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->H:Lua/m7;

    .line 15
    .line 16
    :goto_0
    if-nez v5, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    iget-object v6, v5, Lua/m7;->a:Landroid/view/View;

    .line 20
    .line 21
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 22
    .line 23
    const/16 v8, 0x15

    .line 24
    .line 25
    const/4 v9, 0x0

    .line 26
    if-lt v7, v8, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 29
    .line 30
    .line 31
    move-result-object v8

    .line 32
    invoke-static {v8, p1}, Lg7/d;->g(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    move-result-object v8

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    move-object v8, v9

    .line 38
    :goto_1
    if-nez v8, :cond_3

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 41
    .line 42
    .line 43
    move-result-object v8

    .line 44
    invoke-virtual {v8, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    .line 46
    .line 47
    move-result-object v8

    .line 48
    :cond_3
    const/16 v10, 0x1a

    .line 49
    .line 50
    if-eqz v8, :cond_6

    .line 51
    .line 52
    const/high16 v11, 0x10000000

    .line 53
    .line 54
    invoke-virtual {v8, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 55
    .line 56
    .line 57
    const/16 v11, 0x18

    .line 58
    .line 59
    if-lt v7, v11, :cond_5

    .line 60
    .line 61
    if-lt v7, v10, :cond_4

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_4
    invoke-virtual {v8}, Landroid/content/Intent;->getFlags()I

    .line 65
    .line 66
    .line 67
    move-result v11

    .line 68
    const v12, -0x8000001

    .line 69
    .line 70
    .line 71
    and-int/2addr v11, v12

    .line 72
    invoke-virtual {v8, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 73
    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_5
    :goto_2
    const/high16 v11, 0x8000000

    .line 77
    .line 78
    invoke-virtual {v8, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 79
    .line 80
    .line 81
    :cond_6
    :goto_3
    if-nez v8, :cond_7

    .line 82
    .line 83
    const-string p1, "\u672a\u627e\u5230\u8be5\u5e94\u7528\u7684\u542f\u52a8\u5165\u53e3"

    .line 84
    .line 85
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_7
    :try_start_0
    const-string v11, "mSurface"

    .line 90
    .line 91
    invoke-static {v6, v11}, Lua/m7;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v11

    .line 95
    if-eqz v11, :cond_8

    .line 96
    .line 97
    :goto_4
    const/4 v7, 0x1

    .line 98
    goto :goto_5

    .line 99
    :cond_8
    const-string v11, "mVirtualDisplay"

    .line 100
    .line 101
    invoke-static {v6, v11}, Lua/m7;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v11

    .line 105
    if-eqz v11, :cond_9

    .line 106
    .line 107
    goto :goto_4

    .line 108
    :cond_9
    invoke-virtual {v5}, Lua/m7;->f()I

    .line 109
    .line 110
    .line 111
    move-result v11

    .line 112
    if-ltz v11, :cond_a

    .line 113
    .line 114
    goto :goto_4

    .line 115
    :cond_a
    iget-object v11, v5, Lua/m7;->f:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 116
    .line 117
    if-eqz v11, :cond_b

    .line 118
    .line 119
    if-lt v7, v10, :cond_b

    .line 120
    .line 121
    :try_start_1
    invoke-virtual {v11, v6, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    instance-of v9, v7, Ljava/lang/Boolean;

    .line 126
    .line 127
    if-eqz v9, :cond_b

    .line 128
    .line 129
    check-cast v7, Ljava/lang/Boolean;

    .line 130
    .line 131
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 132
    .line 133
    .line 134
    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    goto :goto_5

    .line 136
    :catchall_0
    nop

    .line 137
    :cond_b
    const/4 v7, 0x0

    .line 138
    :goto_5
    if-nez v7, :cond_c

    .line 139
    .line 140
    :try_start_2
    new-instance v7, Ljava/lang/IllegalStateException;

    .line 141
    .line 142
    const-string v9, "embedded host not ready"

    .line 143
    .line 144
    invoke-direct {v7, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0, p2, p1, v7}, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->A(ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 148
    .line 149
    .line 150
    return-void

    .line 151
    :catchall_1
    move-exception v7

    .line 152
    goto :goto_8

    .line 153
    :cond_c
    iput-object v5, p0, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->I:Lua/m7;

    .line 154
    .line 155
    new-array v7, v1, [Ljava/lang/Object;

    .line 156
    .line 157
    aput-object v8, v7, v0

    .line 158
    .line 159
    iget-object v9, v5, Lua/m7;->b:Ljava/lang/reflect/Method;

    .line 160
    .line 161
    invoke-virtual {v9, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    .line 165
    .line 166
    .line 167
    if-eqz p2, :cond_d

    .line 168
    .line 169
    iput v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->M:I

    .line 170
    .line 171
    goto :goto_6

    .line 172
    :cond_d
    iput v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->N:I

    .line 173
    .line 174
    :goto_6
    if-eqz p2, :cond_e

    .line 175
    .line 176
    move-object v7, v4

    .line 177
    goto :goto_7

    .line 178
    :cond_e
    move-object v7, v3

    .line 179
    :goto_7
    invoke-virtual {v7, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v7

    .line 183
    invoke-static {v7}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 184
    .line 185
    .line 186
    goto/16 :goto_f

    .line 187
    .line 188
    :goto_8
    move-object v9, v7

    .line 189
    :goto_9
    instance-of v11, v9, Ljava/lang/reflect/InvocationTargetException;

    .line 190
    .line 191
    if-eqz v11, :cond_f

    .line 192
    .line 193
    move-object v11, v9

    .line 194
    check-cast v11, Ljava/lang/reflect/InvocationTargetException;

    .line 195
    .line 196
    invoke-virtual {v11}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    .line 197
    .line 198
    .line 199
    move-result-object v12

    .line 200
    if-eqz v12, :cond_f

    .line 201
    .line 202
    invoke-virtual {v11}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    .line 203
    .line 204
    .line 205
    move-result-object v9

    .line 206
    goto :goto_9

    .line 207
    :cond_f
    if-nez v9, :cond_10

    .line 208
    .line 209
    goto :goto_a

    .line 210
    :cond_10
    move-object v7, v9

    .line 211
    :goto_a
    invoke-static {v7}, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->z(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-object v9, v7

    .line 215
    :goto_b
    if-eqz v9, :cond_12

    .line 216
    .line 217
    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v11

    .line 221
    instance-of v12, v9, Ljava/lang/SecurityException;

    .line 222
    .line 223
    if-eqz v12, :cond_11

    .line 224
    .line 225
    if-eqz v11, :cond_11

    .line 226
    .line 227
    const-string v12, "allowEmbedded"

    .line 228
    .line 229
    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 230
    .line 231
    .line 232
    move-result v11

    .line 233
    if-eqz v11, :cond_11

    .line 234
    .line 235
    goto :goto_c

    .line 236
    :cond_11
    invoke-virtual {v9}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 237
    .line 238
    .line 239
    move-result-object v9

    .line 240
    goto :goto_b

    .line 241
    :cond_12
    const/4 v1, 0x0

    .line 242
    :goto_c
    if-eqz v1, :cond_13

    .line 243
    .line 244
    const-string p1, "Android 7.x \u9700\u8981\u76ee\u6807\u9875\u9762\u58f0\u660e allowEmbedded=true"

    .line 245
    .line 246
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    return-void

    .line 250
    :cond_13
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 251
    .line 252
    if-ge v1, v10, :cond_14

    .line 253
    .line 254
    goto :goto_e

    .line 255
    :cond_14
    invoke-virtual {v5}, Lua/m7;->f()I

    .line 256
    .line 257
    .line 258
    move-result v1

    .line 259
    if-gez v1, :cond_15

    .line 260
    .line 261
    goto :goto_e

    .line 262
    :cond_15
    :try_start_3
    invoke-static {}, Ld2/c;->f()Landroid/app/ActivityOptions;

    .line 263
    .line 264
    .line 265
    move-result-object v9

    .line 266
    invoke-static {v9, v1}, Leg/a;->j(Landroid/app/ActivityOptions;I)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v9}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    invoke-virtual {p0, v8, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 274
    .line 275
    .line 276
    iput-object v5, p0, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->I:Lua/m7;

    .line 277
    .line 278
    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    .line 279
    .line 280
    .line 281
    if-eqz p2, :cond_16

    .line 282
    .line 283
    iput v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->M:I

    .line 284
    .line 285
    goto :goto_d

    .line 286
    :cond_16
    iput v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->N:I

    .line 287
    .line 288
    :goto_d
    new-instance v0, Ljava/lang/StringBuilder;

    .line 289
    .line 290
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 291
    .line 292
    .line 293
    if-eqz p2, :cond_17

    .line 294
    .line 295
    move-object v3, v4

    .line 296
    :cond_17
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 307
    .line 308
    .line 309
    goto :goto_f

    .line 310
    :catchall_2
    :goto_e
    invoke-virtual {p0, p2, p1, v7}, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->A(ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 311
    .line 312
    .line 313
    :goto_f
    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    if-ne v0, v1, :cond_4

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-nez v0, :cond_3

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_3

    .line 20
    .line 21
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->I:Lua/m7;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->G:Lua/m7;

    .line 27
    .line 28
    :goto_0
    const/4 v2, 0x0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Lua/m7;->h()Z

    .line 33
    .line 34
    .line 35
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    goto :goto_1

    .line 37
    :catchall_0
    nop

    .line 38
    :goto_1
    if-eqz v2, :cond_2

    .line 39
    .line 40
    return v1

    .line 41
    :cond_2
    invoke-super {p0, p1}, Lq/i;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    return p1

    .line 46
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-ne v0, v1, :cond_4

    .line 51
    .line 52
    return v1

    .line 53
    :cond_4
    invoke-super {p0, p1}, Lq/i;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    return p1
.end method

.method public final onDestroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->O:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->G:Lua/m7;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    :try_start_0
    iget-object v2, v0, Lua/m7;->c:Ljava/lang/reflect/Method;

    .line 13
    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    iget-object v0, v0, Lua/m7;->a:Landroid/view/View;

    .line 17
    .line 18
    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    :catchall_0
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->H:Lua/m7;

    .line 22
    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_2
    :try_start_1
    iget-object v2, v0, Lua/m7;->c:Ljava/lang/reflect/Method;

    .line 27
    .line 28
    if-eqz v2, :cond_3

    .line 29
    .line 30
    iget-object v0, v0, Lua/m7;->a:Landroid/view/View;

    .line 31
    .line 32
    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 33
    .line 34
    .line 35
    :catchall_1
    :cond_3
    :goto_1
    invoke-super {p0}, Lda/g;->onDestroy()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final t()I
    .locals 1

    .line 1
    const v0, 0x7f0e0059

    return v0
.end method

.method public final u()V
    .locals 13

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    const v4, 0x7f0b0558

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v4}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 15
    .line 16
    iput-object v4, p0, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->C:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 17
    .line 18
    const v4, 0x7f0b03ad

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v4}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    new-instance v6, Lua/k7;

    .line 26
    .line 27
    const/4 v7, 0x0

    .line 28
    invoke-direct {v6, p0, v7}, Lua/k7;-><init>(Lcom/yunpan/appmanage/ui/ActivityTextHzh;I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    .line 33
    .line 34
    const v5, 0x7f0b0584

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v5}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    if-eqz v5, :cond_0

    .line 42
    .line 43
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    :cond_0
    const v5, 0x7f0b03d2

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v5}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    check-cast v5, Landroid/widget/TextView;

    .line 54
    .line 55
    iput-object v5, p0, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->D:Landroid/widget/TextView;

    .line 56
    .line 57
    const-string v6, "\u5de6\u5e94\u7528"

    .line 58
    .line 59
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    iget-object v5, p0, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->D:Landroid/widget/TextView;

    .line 63
    .line 64
    new-instance v6, Lua/k7;

    .line 65
    .line 66
    invoke-direct {v6, p0, v3}, Lua/k7;-><init>(Lcom/yunpan/appmanage/ui/ActivityTextHzh;I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    .line 71
    .line 72
    new-instance v5, Landroid/widget/TextView;

    .line 73
    .line 74
    iget-object v6, p0, Lda/g;->A:Lda/g;

    .line 75
    .line 76
    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 77
    .line 78
    .line 79
    iput-object v5, p0, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->E:Landroid/widget/TextView;

    .line 80
    .line 81
    invoke-static {}, Landroid/view/View;->generateViewId()I

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    invoke-virtual {v5, v6}, Landroid/view/View;->setId(I)V

    .line 86
    .line 87
    .line 88
    iget-object v5, p0, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->E:Landroid/widget/TextView;

    .line 89
    .line 90
    const-string v6, "\u53f3\u5e94\u7528"

    .line 91
    .line 92
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    .line 94
    .line 95
    iget-object v5, p0, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->E:Landroid/widget/TextView;

    .line 96
    .line 97
    iget-object v6, p0, Lda/g;->A:Lda/g;

    .line 98
    .line 99
    invoke-virtual {v6}, Lda/g;->getResources()Landroid/content/res/Resources;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    const v8, 0x7f060027

    .line 104
    .line 105
    .line 106
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 111
    .line 112
    .line 113
    iget-object v5, p0, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->E:Landroid/widget/TextView;

    .line 114
    .line 115
    iget-object v6, p0, Lda/g;->A:Lda/g;

    .line 116
    .line 117
    invoke-virtual {v6}, Lda/g;->getResources()Landroid/content/res/Resources;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    const v8, 0x7f0705d7

    .line 122
    .line 123
    .line 124
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 125
    .line 126
    .line 127
    move-result v6

    .line 128
    int-to-float v6, v6

    .line 129
    invoke-virtual {v5, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 130
    .line 131
    .line 132
    iget-object v5, p0, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->E:Landroid/widget/TextView;

    .line 133
    .line 134
    const v6, 0x7f08009b

    .line 135
    .line 136
    .line 137
    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 138
    .line 139
    .line 140
    iget-object v5, p0, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->E:Landroid/widget/TextView;

    .line 141
    .line 142
    invoke-virtual {v5, v3}, Landroid/view/View;->setClickable(Z)V

    .line 143
    .line 144
    .line 145
    iget-object v5, p0, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->E:Landroid/widget/TextView;

    .line 146
    .line 147
    invoke-virtual {v5, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 148
    .line 149
    .line 150
    iget-object v5, p0, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->E:Landroid/widget/TextView;

    .line 151
    .line 152
    const/16 v6, 0x11

    .line 153
    .line 154
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 155
    .line 156
    .line 157
    iget-object v5, p0, Lda/g;->A:Lda/g;

    .line 158
    .line 159
    invoke-virtual {v5}, Lda/g;->getResources()Landroid/content/res/Resources;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    const v8, 0x7f0700ef

    .line 164
    .line 165
    .line 166
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    .line 167
    .line 168
    .line 169
    move-result v5

    .line 170
    float-to-int v5, v5

    .line 171
    iget-object v8, p0, Lda/g;->A:Lda/g;

    .line 172
    .line 173
    invoke-virtual {v8}, Lda/g;->getResources()Landroid/content/res/Resources;

    .line 174
    .line 175
    .line 176
    move-result-object v8

    .line 177
    const v9, 0x7f0700a1

    .line 178
    .line 179
    .line 180
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    .line 181
    .line 182
    .line 183
    move-result v8

    .line 184
    float-to-int v8, v8

    .line 185
    iget-object v9, p0, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->E:Landroid/widget/TextView;

    .line 186
    .line 187
    invoke-virtual {v9, v5, v8, v5, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 188
    .line 189
    .line 190
    new-instance v5, Li0/e;

    .line 191
    .line 192
    const/4 v8, -0x2

    .line 193
    invoke-direct {v5, v8, v8}, Li0/e;-><init>(II)V

    .line 194
    .line 195
    .line 196
    iget-object v9, p0, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->D:Landroid/widget/TextView;

    .line 197
    .line 198
    invoke-virtual {v9}, Landroid/view/View;->getId()I

    .line 199
    .line 200
    .line 201
    move-result v9

    .line 202
    iput v9, v5, Li0/e;->i:I

    .line 203
    .line 204
    iget-object v9, p0, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->D:Landroid/widget/TextView;

    .line 205
    .line 206
    invoke-virtual {v9}, Landroid/view/View;->getId()I

    .line 207
    .line 208
    .line 209
    move-result v9

    .line 210
    iput v9, v5, Li0/e;->l:I

    .line 211
    .line 212
    iget-object v9, p0, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->D:Landroid/widget/TextView;

    .line 213
    .line 214
    invoke-virtual {v9}, Landroid/view/View;->getId()I

    .line 215
    .line 216
    .line 217
    move-result v9

    .line 218
    iput v9, v5, Li0/e;->s:I

    .line 219
    .line 220
    iget-object v9, p0, Lda/g;->A:Lda/g;

    .line 221
    .line 222
    invoke-virtual {v9}, Lda/g;->getResources()Landroid/content/res/Resources;

    .line 223
    .line 224
    .line 225
    move-result-object v9

    .line 226
    const v10, 0x7f070214

    .line 227
    .line 228
    .line 229
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    .line 230
    .line 231
    .line 232
    move-result v9

    .line 233
    float-to-int v9, v9

    .line 234
    invoke-virtual {v5, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 235
    .line 236
    .line 237
    iget-object v9, p0, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->C:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 238
    .line 239
    iget-object v11, p0, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->E:Landroid/widget/TextView;

    .line 240
    .line 241
    invoke-virtual {v9, v11, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    .line 243
    .line 244
    iget-object v5, p0, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->E:Landroid/widget/TextView;

    .line 245
    .line 246
    new-instance v9, Lua/k7;

    .line 247
    .line 248
    invoke-direct {v9, p0, v2}, Lua/k7;-><init>(Lcom/yunpan/appmanage/ui/ActivityTextHzh;I)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v5, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    .line 253
    .line 254
    new-instance v5, Landroid/widget/TextView;

    .line 255
    .line 256
    iget-object v9, p0, Lda/g;->A:Lda/g;

    .line 257
    .line 258
    invoke-direct {v5, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 259
    .line 260
    .line 261
    iput-object v5, p0, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->F:Landroid/widget/TextView;

    .line 262
    .line 263
    const-string v9, "\u53cc\u5e94\u7528\u540c\u5c4f\u89e6\u63a7"

    .line 264
    .line 265
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    .line 267
    .line 268
    iget-object v5, p0, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->F:Landroid/widget/TextView;

    .line 269
    .line 270
    iget-object v9, p0, Lda/g;->A:Lda/g;

    .line 271
    .line 272
    invoke-virtual {v9}, Lda/g;->getResources()Landroid/content/res/Resources;

    .line 273
    .line 274
    .line 275
    move-result-object v9

    .line 276
    const v11, 0x7f06004c

    .line 277
    .line 278
    .line 279
    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getColor(I)I

    .line 280
    .line 281
    .line 282
    move-result v9

    .line 283
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 284
    .line 285
    .line 286
    iget-object v5, p0, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->F:Landroid/widget/TextView;

    .line 287
    .line 288
    iget-object v9, p0, Lda/g;->A:Lda/g;

    .line 289
    .line 290
    invoke-virtual {v9}, Lda/g;->getResources()Landroid/content/res/Resources;

    .line 291
    .line 292
    .line 293
    move-result-object v9

    .line 294
    const v12, 0x7f0705e3

    .line 295
    .line 296
    .line 297
    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 298
    .line 299
    .line 300
    move-result v9

    .line 301
    int-to-float v9, v9

    .line 302
    invoke-virtual {v5, v7, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 303
    .line 304
    .line 305
    iget-object v5, p0, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->F:Landroid/widget/TextView;

    .line 306
    .line 307
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 308
    .line 309
    .line 310
    new-instance v5, Li0/e;

    .line 311
    .line 312
    invoke-direct {v5, v7, v8}, Li0/e;-><init>(II)V

    .line 313
    .line 314
    .line 315
    iput v4, v5, Li0/e;->i:I

    .line 316
    .line 317
    iput v4, v5, Li0/e;->l:I

    .line 318
    .line 319
    iget-object v8, p0, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->E:Landroid/widget/TextView;

    .line 320
    .line 321
    invoke-virtual {v8}, Landroid/view/View;->getId()I

    .line 322
    .line 323
    .line 324
    move-result v8

    .line 325
    iput v8, v5, Li0/e;->s:I

    .line 326
    .line 327
    iput v7, v5, Li0/e;->v:I

    .line 328
    .line 329
    iget-object v8, p0, Lda/g;->A:Lda/g;

    .line 330
    .line 331
    invoke-virtual {v8}, Lda/g;->getResources()Landroid/content/res/Resources;

    .line 332
    .line 333
    .line 334
    move-result-object v8

    .line 335
    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimension(I)F

    .line 336
    .line 337
    .line 338
    move-result v8

    .line 339
    float-to-int v8, v8

    .line 340
    invoke-virtual {v5, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 341
    .line 342
    .line 343
    iget-object v8, p0, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->C:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 344
    .line 345
    iget-object v9, p0, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->F:Landroid/widget/TextView;

    .line 346
    .line 347
    invoke-virtual {v8, v9, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 348
    .line 349
    .line 350
    :try_start_0
    invoke-virtual {p0}, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->y()Lua/m7;

    .line 351
    .line 352
    .line 353
    move-result-object v5

    .line 354
    iput-object v5, p0, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->G:Lua/m7;

    .line 355
    .line 356
    invoke-virtual {p0}, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->y()Lua/m7;

    .line 357
    .line 358
    .line 359
    move-result-object v5

    .line 360
    iput-object v5, p0, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->H:Lua/m7;

    .line 361
    .line 362
    iget-object v5, p0, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->G:Lua/m7;

    .line 363
    .line 364
    iput-object v5, p0, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->I:Lua/m7;

    .line 365
    .line 366
    invoke-virtual {p0}, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->x()V

    .line 367
    .line 368
    .line 369
    const-string v5, "\u8bf7\u9009\u62e9\u5de6\u53f3\u4e24\u4fa7\u5e94\u7528"

    .line 370
    .line 371
    invoke-static {v5}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    .line 373
    .line 374
    goto/16 :goto_3

    .line 375
    .line 376
    :catchall_0
    move-exception v5

    .line 377
    new-array v8, v0, [Ljava/lang/String;

    .line 378
    .line 379
    const-string v9, "android.app.ActivityView"

    .line 380
    .line 381
    aput-object v9, v8, v7

    .line 382
    .line 383
    const-string v9, "com.android.wm.shell.TaskView"

    .line 384
    .line 385
    aput-object v9, v8, v3

    .line 386
    .line 387
    const-string v9, "com.android.wm.shell.TaskViewFactory"

    .line 388
    .line 389
    aput-object v9, v8, v2

    .line 390
    .line 391
    const-string v9, "com.android.wm.shell.TaskViewFactoryController"

    .line 392
    .line 393
    const/4 v10, 0x3

    .line 394
    aput-object v9, v8, v10

    .line 395
    .line 396
    const-string v9, "com.android.wm.shell.ShellTaskOrganizer"

    .line 397
    .line 398
    const/4 v10, 0x4

    .line 399
    aput-object v9, v8, v10

    .line 400
    .line 401
    const-string v9, "com.android.wm.shell.common.SyncTransactionQueue"

    .line 402
    .line 403
    const/4 v10, 0x5

    .line 404
    aput-object v9, v8, v10

    .line 405
    .line 406
    const-string v9, "com.android.wm.shell.taskview.TaskView"

    .line 407
    .line 408
    const/4 v10, 0x6

    .line 409
    aput-object v9, v8, v10

    .line 410
    .line 411
    const-string v9, "com.android.wm.shell.taskview.TaskViewTaskController"

    .line 412
    .line 413
    const/4 v10, 0x7

    .line 414
    aput-object v9, v8, v10

    .line 415
    .line 416
    const-string v9, "android.window.TaskOrganizer"

    .line 417
    .line 418
    aput-object v9, v8, v1

    .line 419
    .line 420
    const-string v1, "android.window.TaskView"

    .line 421
    .line 422
    const/16 v9, 0x9

    .line 423
    .line 424
    aput-object v1, v8, v9

    .line 425
    .line 426
    const/4 v1, 0x0

    .line 427
    :goto_0
    if-ge v1, v0, :cond_1

    .line 428
    .line 429
    aget-object v9, v8, v1

    .line 430
    .line 431
    :try_start_1
    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 432
    .line 433
    .line 434
    move-result-object v9

    .line 435
    invoke-virtual {v9}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    .line 436
    .line 437
    .line 438
    move-result-object v9

    .line 439
    array-length v9, v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 440
    goto :goto_1

    .line 441
    :catchall_1
    move-exception v9

    .line 442
    invoke-static {v9}, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->z(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    :goto_1
    add-int/2addr v1, v3

    .line 446
    goto :goto_0

    .line 447
    :cond_1
    new-instance v0, Landroid/widget/TextView;

    .line 448
    .line 449
    iget-object v1, p0, Lda/g;->A:Lda/g;

    .line 450
    .line 451
    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v1

    .line 458
    if-nez v1, :cond_2

    .line 459
    .line 460
    const-string v1, ""

    .line 461
    .line 462
    goto :goto_2

    .line 463
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 464
    .line 465
    const-string v3, "\n\n"

    .line 466
    .line 467
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v3

    .line 474
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v1

    .line 481
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 482
    .line 483
    const-string v5, "\u5f53\u524d\u7cfb\u7edf\u6ca1\u6709\u53ef\u7528\u7684 android.app.ActivityView\u3002\n\n\u517c\u5bb9\u5efa\u8bae\uff1a\n1. Android 5.0-11\uff1a\u4f18\u5148\u4f7f\u7528 ActivityView\uff0c\u753b\u9762\u548c\u89e6\u6478\u7531\u7cfb\u7edf\u5bb9\u5668\u5206\u53d1\u3002\n2. Android 12+\uff1a\u5982\u679c framework ActivityView \u88ab\u5220\u9664\uff0c\u9700\u8981\u63a5\u5165 ROM/Shell TaskView\u3002\n3. MediaProjection \u53ea\u9002\u5408\u663e\u793a\uff0c\u89e6\u6478\u9700\u8981\u989d\u5916\u5750\u6807\u6620\u5c04\u548c\u4e8b\u4ef6\u6ce8\u5165\u3002"

    .line 484
    .line 485
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 486
    .line 487
    .line 488
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v1

    .line 495
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    .line 497
    .line 498
    iget-object v1, p0, Lda/g;->A:Lda/g;

    .line 499
    .line 500
    invoke-virtual {v1}, Lda/g;->getResources()Landroid/content/res/Resources;

    .line 501
    .line 502
    .line 503
    move-result-object v1

    .line 504
    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getColor(I)I

    .line 505
    .line 506
    .line 507
    move-result v1

    .line 508
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 509
    .line 510
    .line 511
    const/high16 v1, 0x41900000    # 18.0f

    .line 512
    .line 513
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 514
    .line 515
    .line 516
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 517
    .line 518
    .line 519
    const/16 v1, 0x1e

    .line 520
    .line 521
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 522
    .line 523
    .line 524
    new-instance v1, Li0/e;

    .line 525
    .line 526
    invoke-direct {v1, v7, v7}, Li0/e;-><init>(II)V

    .line 527
    .line 528
    .line 529
    iput v4, v1, Li0/e;->j:I

    .line 530
    .line 531
    iput v7, v1, Li0/e;->l:I

    .line 532
    .line 533
    iput v7, v1, Li0/e;->t:I

    .line 534
    .line 535
    iput v7, v1, Li0/e;->v:I

    .line 536
    .line 537
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->C:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 538
    .line 539
    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 540
    .line 541
    .line 542
    const-string v0, "\u5f53\u524d\u7cfb\u7edf\u4e0d\u652f\u6301 ActivityView"

    .line 543
    .line 544
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 545
    .line 546
    .line 547
    :goto_3
    return-void
.end method

.method public final x()V
    .locals 7

    .line 1
    invoke-static {}, Landroid/view/View;->generateViewId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/view/View;->generateViewId()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->G:Lua/m7;

    .line 10
    .line 11
    iget-object v2, v2, Lua/m7;->a:Landroid/view/View;

    .line 12
    .line 13
    invoke-virtual {v2, v0}, Landroid/view/View;->setId(I)V

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->H:Lua/m7;

    .line 17
    .line 18
    iget-object v2, v2, Lua/m7;->a:Landroid/view/View;

    .line 19
    .line 20
    invoke-virtual {v2, v1}, Landroid/view/View;->setId(I)V

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->G:Lua/m7;

    .line 24
    .line 25
    iget-object v2, v2, Lua/m7;->a:Landroid/view/View;

    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    invoke-virtual {v2, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->G:Lua/m7;

    .line 32
    .line 33
    iget-object v2, v2, Lua/m7;->a:Landroid/view/View;

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 36
    .line 37
    .line 38
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->H:Lua/m7;

    .line 39
    .line 40
    iget-object v2, v2, Lua/m7;->a:Landroid/view/View;

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 43
    .line 44
    .line 45
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->H:Lua/m7;

    .line 46
    .line 47
    iget-object v2, v2, Lua/m7;->a:Landroid/view/View;

    .line 48
    .line 49
    invoke-virtual {v2, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->G:Lua/m7;

    .line 53
    .line 54
    iget-object v2, v2, Lua/m7;->a:Landroid/view/View;

    .line 55
    .line 56
    new-instance v3, Lua/l7;

    .line 57
    .line 58
    const/4 v4, 0x0

    .line 59
    invoke-direct {v3, p0, v4}, Lua/l7;-><init>(Lcom/yunpan/appmanage/ui/ActivityTextHzh;I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 63
    .line 64
    .line 65
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->H:Lua/m7;

    .line 66
    .line 67
    iget-object v2, v2, Lua/m7;->a:Landroid/view/View;

    .line 68
    .line 69
    new-instance v3, Lua/l7;

    .line 70
    .line 71
    const/4 v4, 0x1

    .line 72
    invoke-direct {v3, p0, v4}, Lua/l7;-><init>(Lcom/yunpan/appmanage/ui/ActivityTextHzh;I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 76
    .line 77
    .line 78
    iget-object v2, p0, Lda/g;->A:Lda/g;

    .line 79
    .line 80
    invoke-virtual {v2}, Lda/g;->getResources()Landroid/content/res/Resources;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    const v3, 0x7f070095

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    float-to-int v2, v2

    .line 92
    iget-object v3, p0, Lda/g;->A:Lda/g;

    .line 93
    .line 94
    invoke-virtual {v3}, Lda/g;->getResources()Landroid/content/res/Resources;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    const v4, 0x7f0701d8

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    float-to-int v3, v3

    .line 106
    new-instance v4, Li0/e;

    .line 107
    .line 108
    const/4 v5, 0x0

    .line 109
    invoke-direct {v4, v5, v5}, Li0/e;-><init>(II)V

    .line 110
    .line 111
    .line 112
    const v6, 0x7f0b03ad

    .line 113
    .line 114
    .line 115
    iput v6, v4, Li0/e;->j:I

    .line 116
    .line 117
    iput v5, v4, Li0/e;->l:I

    .line 118
    .line 119
    iput v5, v4, Li0/e;->t:I

    .line 120
    .line 121
    iput v1, v4, Li0/e;->u:I

    .line 122
    .line 123
    invoke-virtual {v4, v2, v2, v3, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 124
    .line 125
    .line 126
    new-instance v1, Li0/e;

    .line 127
    .line 128
    invoke-direct {v1, v5, v5}, Li0/e;-><init>(II)V

    .line 129
    .line 130
    .line 131
    iput v6, v1, Li0/e;->j:I

    .line 132
    .line 133
    iput v5, v1, Li0/e;->l:I

    .line 134
    .line 135
    iput v0, v1, Li0/e;->s:I

    .line 136
    .line 137
    iput v5, v1, Li0/e;->v:I

    .line 138
    .line 139
    invoke-virtual {v1, v3, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 140
    .line 141
    .line 142
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->C:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 143
    .line 144
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->G:Lua/m7;

    .line 145
    .line 146
    iget-object v2, v2, Lua/m7;->a:Landroid/view/View;

    .line 147
    .line 148
    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    .line 150
    .line 151
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->C:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 152
    .line 153
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->H:Lua/m7;

    .line 154
    .line 155
    iget-object v2, v2, Lua/m7;->a:Landroid/view/View;

    .line 156
    .line 157
    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    .line 159
    .line 160
    return-void
.end method

.method public final y()Lua/m7;
    .locals 20

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-string v2, "android.app.ActivityView"

    .line 4
    .line 5
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    array-length v4, v3

    .line 14
    const/4 v5, 0x0

    .line 15
    move-object v7, v5

    .line 16
    const/4 v6, 0x0

    .line 17
    :goto_0
    if-ge v6, v4, :cond_2

    .line 18
    .line 19
    aget-object v8, v3, v6

    .line 20
    .line 21
    invoke-static {v8}, Lua/m7;->b(Ljava/lang/reflect/Constructor;)Z

    .line 22
    .line 23
    .line 24
    move-result v9

    .line 25
    if-eqz v9, :cond_1

    .line 26
    .line 27
    if-eqz v7, :cond_0

    .line 28
    .line 29
    invoke-virtual {v8}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    move-result-object v9

    .line 33
    array-length v9, v9

    .line 34
    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    move-result-object v10

    .line 38
    array-length v10, v10

    .line 39
    if-ge v9, v10, :cond_1

    .line 40
    .line 41
    :cond_0
    move-object v7, v8

    .line 42
    :cond_1
    add-int/2addr v6, v1

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    if-nez v7, :cond_4

    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    array-length v4, v3

    .line 51
    const/4 v6, 0x0

    .line 52
    :goto_1
    if-ge v6, v4, :cond_4

    .line 53
    .line 54
    aget-object v8, v3, v6

    .line 55
    .line 56
    invoke-static {v8}, Lua/m7;->b(Ljava/lang/reflect/Constructor;)Z

    .line 57
    .line 58
    .line 59
    move-result v9

    .line 60
    if-eqz v9, :cond_3

    .line 61
    .line 62
    move-object v7, v8

    .line 63
    goto :goto_2

    .line 64
    :cond_3
    add-int/2addr v6, v1

    .line 65
    goto :goto_1

    .line 66
    :cond_4
    :goto_2
    if-eqz v7, :cond_11

    .line 67
    .line 68
    invoke-virtual {v7, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    array-length v4, v3

    .line 76
    new-array v4, v4, [Ljava/lang/Object;

    .line 77
    .line 78
    const/4 v6, 0x0

    .line 79
    :goto_3
    array-length v8, v3

    .line 80
    if-ge v6, v8, :cond_b

    .line 81
    .line 82
    aget-object v8, v3, v6

    .line 83
    .line 84
    const-class v9, Landroid/content/Context;

    .line 85
    .line 86
    invoke-virtual {v9, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 87
    .line 88
    .line 89
    move-result v9

    .line 90
    if-eqz v9, :cond_5

    .line 91
    .line 92
    aput-object p0, v4, v6

    .line 93
    .line 94
    goto :goto_5

    .line 95
    :cond_5
    const-class v9, Landroid/util/AttributeSet;

    .line 96
    .line 97
    invoke-virtual {v9, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 98
    .line 99
    .line 100
    move-result v9

    .line 101
    if-eqz v9, :cond_6

    .line 102
    .line 103
    aput-object v5, v4, v6

    .line 104
    .line 105
    goto :goto_5

    .line 106
    :cond_6
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 107
    .line 108
    if-eq v8, v9, :cond_9

    .line 109
    .line 110
    const-class v9, Ljava/lang/Integer;

    .line 111
    .line 112
    if-ne v8, v9, :cond_7

    .line 113
    .line 114
    goto :goto_4

    .line 115
    :cond_7
    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 116
    .line 117
    if-eq v8, v9, :cond_8

    .line 118
    .line 119
    const-class v9, Ljava/lang/Boolean;

    .line 120
    .line 121
    if-ne v8, v9, :cond_a

    .line 122
    .line 123
    :cond_8
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 124
    .line 125
    aput-object v8, v4, v6

    .line 126
    .line 127
    goto :goto_5

    .line 128
    :cond_9
    :goto_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 129
    .line 130
    .line 131
    move-result-object v8

    .line 132
    aput-object v8, v4, v6

    .line 133
    .line 134
    :cond_a
    :goto_5
    add-int/2addr v6, v1

    .line 135
    goto :goto_3

    .line 136
    :cond_b
    invoke-virtual {v7, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    move-object v7, v3

    .line 141
    check-cast v7, Landroid/view/View;

    .line 142
    .line 143
    new-array v1, v1, [Ljava/lang/Class;

    .line 144
    .line 145
    const-class v3, Landroid/content/Intent;

    .line 146
    .line 147
    aput-object v3, v1, v0

    .line 148
    .line 149
    const-string v0, "startActivity"

    .line 150
    .line 151
    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 152
    .line 153
    .line 154
    move-result-object v8

    .line 155
    const-string v0, "release"

    .line 156
    .line 157
    invoke-static {v2, v0}, Lua/m7;->d(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    .line 158
    .line 159
    .line 160
    move-result-object v9

    .line 161
    const-string v0, "getVirtualDisplayId"

    .line 162
    .line 163
    invoke-static {v2, v0}, Lua/m7;->d(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    .line 164
    .line 165
    .line 166
    move-result-object v10

    .line 167
    const-string v0, "getDisplayId"

    .line 168
    .line 169
    invoke-static {v2, v0}, Lua/m7;->d(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    .line 170
    .line 171
    .line 172
    move-result-object v11

    .line 173
    const-string v1, "isAttachedToDisplay"

    .line 174
    .line 175
    invoke-static {v2, v1}, Lua/m7;->d(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    .line 176
    .line 177
    .line 178
    move-result-object v12

    .line 179
    const-string v1, "performBackPress"

    .line 180
    .line 181
    invoke-static {v2, v1}, Lua/m7;->d(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    if-nez v1, :cond_c

    .line 186
    .line 187
    const-string v1, "onBackPressed"

    .line 188
    .line 189
    invoke-static {v2, v1}, Lua/m7;->d(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    :cond_c
    move-object v13, v1

    .line 194
    const-string v1, "injectInputEvent"

    .line 195
    .line 196
    const-class v3, Landroid/view/InputEvent;

    .line 197
    .line 198
    invoke-static {v2, v1, v3}, Lua/m7;->e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 199
    .line 200
    .line 201
    move-result-object v14

    .line 202
    const-string v1, "mActivityContainer"

    .line 203
    .line 204
    invoke-static {v7, v1}, Lua/m7;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v15

    .line 208
    if-nez v15, :cond_d

    .line 209
    .line 210
    move-object/from16 v16, v5

    .line 211
    .line 212
    goto :goto_6

    .line 213
    :cond_d
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    const-string v2, "injectEvent"

    .line 218
    .line 219
    invoke-static {v1, v2, v3}, Lua/m7;->e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    move-object/from16 v16, v1

    .line 224
    .line 225
    :goto_6
    if-nez v15, :cond_e

    .line 226
    .line 227
    move-object/from16 v17, v5

    .line 228
    .line 229
    goto :goto_7

    .line 230
    :cond_e
    const-string v1, "mIActivityContainer"

    .line 231
    .line 232
    invoke-static {v15, v1}, Lua/m7;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    move-object/from16 v17, v1

    .line 237
    .line 238
    :goto_7
    if-nez v17, :cond_f

    .line 239
    .line 240
    move-object/from16 v18, v5

    .line 241
    .line 242
    goto :goto_8

    .line 243
    :cond_f
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    invoke-static {v1, v0}, Lua/m7;->d(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    move-object/from16 v18, v0

    .line 252
    .line 253
    :goto_8
    if-nez v17, :cond_10

    .line 254
    .line 255
    :goto_9
    move-object/from16 v19, v5

    .line 256
    .line 257
    goto :goto_a

    .line 258
    :cond_10
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    const-string v1, "getStackId"

    .line 263
    .line 264
    invoke-static {v0, v1}, Lua/m7;->d(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    .line 265
    .line 266
    .line 267
    move-result-object v5

    .line 268
    goto :goto_9

    .line 269
    :goto_a
    new-instance v0, Lua/m7;

    .line 270
    .line 271
    move-object v6, v0

    .line 272
    invoke-direct/range {v6 .. v19}, Lua/m7;-><init>(Landroid/view/View;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 273
    .line 274
    .line 275
    return-object v0

    .line 276
    :cond_11
    new-instance v0, Ljava/lang/NoSuchMethodException;

    .line 277
    .line 278
    const-string v1, "No supported ActivityView constructor"

    .line 279
    .line 280
    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    goto :goto_c

    .line 284
    :goto_b
    throw v0

    .line 285
    :goto_c
    goto :goto_b
.end method
