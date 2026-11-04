.class public final Lpa/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/hsae/autosdk/hmi/IHmi;

.field public final b:Lcom/yunpan/appmanage/service/AccService;

.field public c:I

.field public d:Lz7/o;

.field public e:Ljava/util/ArrayList;

.field public final f:Lpa/g;

.field public g:I

.field public h:J

.field public i:I

.field public j:J

.field public k:I

.field public l:J

.field public final m:Ljava/util/HashSet;

.field public final n:Lcom/yunpan/appmanage/carsdk/u;


# direct methods
.method public constructor <init>(Lcom/yunpan/appmanage/service/AccService;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x12c

    .line 5
    .line 6
    iput v0, p0, Lpa/h;->c:I

    .line 7
    .line 8
    new-instance v0, Lpa/g;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lpa/g;-><init>(Lpa/h;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lpa/h;->f:Lpa/g;

    .line 14
    .line 15
    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lpa/h;->g:I

    .line 17
    .line 18
    const-wide/16 v1, 0x0

    .line 19
    .line 20
    iput-wide v1, p0, Lpa/h;->h:J

    .line 21
    .line 22
    iput v0, p0, Lpa/h;->i:I

    .line 23
    .line 24
    iput-wide v1, p0, Lpa/h;->j:J

    .line 25
    .line 26
    iput v0, p0, Lpa/h;->k:I

    .line 27
    .line 28
    iput-wide v1, p0, Lpa/h;->l:J

    .line 29
    .line 30
    new-instance v0, Ljava/util/HashSet;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lpa/h;->m:Ljava/util/HashSet;

    .line 36
    .line 37
    new-instance v0, Ljava/util/HashSet;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 40
    .line 41
    .line 42
    new-instance v0, Lcom/yunpan/appmanage/carsdk/u;

    .line 43
    .line 44
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const/16 v2, 0xd

    .line 49
    .line 50
    invoke-direct {v0, p0, v1, v2}, Lcom/yunpan/appmanage/carsdk/u;-><init>(Ljava/lang/Object;Landroid/os/Looper;I)V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lpa/h;->n:Lcom/yunpan/appmanage/carsdk/u;

    .line 54
    .line 55
    iput-object p1, p0, Lpa/h;->b:Lcom/yunpan/appmanage/service/AccService;

    .line 56
    .line 57
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    const-string v0, "isOpen"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lpa/h;->b:Lcom/yunpan/appmanage/service/AccService;

    .line 4
    .line 5
    invoke-static {v1}, Lq4/a;->t(Landroid/content/Context;)Lz7/s;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "intervalTime"

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Lz7/p;->e()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    iput v2, p0, Lpa/h;->c:I

    .line 20
    .line 21
    const-string v2, "keys"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iput-object v1, p0, Lpa/h;->d:Lz7/o;

    .line 28
    .line 29
    new-instance v1, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    :goto_0
    iget-object v3, p0, Lpa/h;->d:Lz7/o;

    .line 36
    .line 37
    iget-object v3, v3, Lz7/o;->a:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-ge v2, v3, :cond_2

    .line 44
    .line 45
    new-instance v3, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;

    .line 46
    .line 47
    invoke-direct {v3}, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;-><init>()V

    .line 48
    .line 49
    .line 50
    iget-object v4, p0, Lpa/h;->d:Lz7/o;

    .line 51
    .line 52
    invoke-virtual {v4, v2}, Lz7/o;->l(I)Lz7/p;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {v4}, Lz7/p;->g()Lz7/s;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    iget-object v4, v4, Lz7/s;->a:Lb8/n;

    .line 61
    .line 62
    invoke-virtual {v4, v0}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    if-eqz v4, :cond_0

    .line 67
    .line 68
    iget-object v4, p0, Lpa/h;->d:Lz7/o;

    .line 69
    .line 70
    invoke-virtual {v4, v2}, Lz7/o;->l(I)Lz7/p;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-virtual {v4}, Lz7/p;->g()Lz7/s;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-virtual {v4, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-virtual {v4}, Lz7/p;->b()Z

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    iput-boolean v4, v3, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->isOpen:Z

    .line 87
    .line 88
    if-nez v4, :cond_0

    .line 89
    .line 90
    goto/16 :goto_1

    .line 91
    .line 92
    :cond_0
    iput v2, v3, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->pos:I

    .line 93
    .line 94
    iget-object v4, p0, Lpa/h;->d:Lz7/o;

    .line 95
    .line 96
    invoke-virtual {v4, v2}, Lz7/o;->l(I)Lz7/p;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-virtual {v4}, Lz7/p;->g()Lz7/s;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    const-string v5, "keyCode"

    .line 105
    .line 106
    invoke-virtual {v4, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    invoke-virtual {v4}, Lz7/p;->e()I

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    iput v4, v3, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->keyCode:I

    .line 115
    .line 116
    iget-object v4, p0, Lpa/h;->d:Lz7/o;

    .line 117
    .line 118
    invoke-virtual {v4, v2}, Lz7/o;->l(I)Lz7/p;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    invoke-virtual {v4}, Lz7/p;->g()Lz7/s;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    const-string v5, "zhKeyCode"

    .line 127
    .line 128
    invoke-virtual {v4, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    invoke-virtual {v4}, Lz7/p;->e()I

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    iput v4, v3, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->zhKeyCode:I

    .line 137
    .line 138
    iget-object v4, p0, Lpa/h;->d:Lz7/o;

    .line 139
    .line 140
    invoke-virtual {v4, v2}, Lz7/o;->l(I)Lz7/p;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    invoke-virtual {v4}, Lz7/p;->g()Lz7/s;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    const-string v5, "click"

    .line 149
    .line 150
    invoke-virtual {v4, v5}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    iget-object v4, v4, Lz7/o;->a:Ljava/util/ArrayList;

    .line 155
    .line 156
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    xor-int/lit8 v4, v4, 0x1

    .line 161
    .line 162
    iput-boolean v4, v3, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->isHaveClick:Z

    .line 163
    .line 164
    iget-object v4, p0, Lpa/h;->d:Lz7/o;

    .line 165
    .line 166
    invoke-virtual {v4, v2}, Lz7/o;->l(I)Lz7/p;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    invoke-virtual {v4}, Lz7/p;->g()Lz7/s;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    const-string v5, "longClick"

    .line 175
    .line 176
    invoke-virtual {v4, v5}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    iget-object v4, v4, Lz7/o;->a:Ljava/util/ArrayList;

    .line 181
    .line 182
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 183
    .line 184
    .line 185
    move-result v4

    .line 186
    xor-int/lit8 v4, v4, 0x1

    .line 187
    .line 188
    iput-boolean v4, v3, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->isHaveLongClick:Z

    .line 189
    .line 190
    iget-object v4, p0, Lpa/h;->d:Lz7/o;

    .line 191
    .line 192
    invoke-virtual {v4, v2}, Lz7/o;->l(I)Lz7/p;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    invoke-virtual {v4}, Lz7/p;->g()Lz7/s;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    const-string v5, "doubleClick"

    .line 201
    .line 202
    invoke-virtual {v4, v5}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 203
    .line 204
    .line 205
    move-result-object v4

    .line 206
    iget-object v4, v4, Lz7/o;->a:Ljava/util/ArrayList;

    .line 207
    .line 208
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 209
    .line 210
    .line 211
    move-result v4

    .line 212
    xor-int/lit8 v4, v4, 0x1

    .line 213
    .line 214
    iput-boolean v4, v3, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->isHaveDoubleClick:Z

    .line 215
    .line 216
    iget-object v4, p0, Lpa/h;->d:Lz7/o;

    .line 217
    .line 218
    invoke-virtual {v4, v2}, Lz7/o;->l(I)Lz7/p;

    .line 219
    .line 220
    .line 221
    move-result-object v4

    .line 222
    invoke-virtual {v4}, Lz7/p;->g()Lz7/s;

    .line 223
    .line 224
    .line 225
    move-result-object v4

    .line 226
    const-string v5, "zhClick"

    .line 227
    .line 228
    invoke-virtual {v4, v5}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 229
    .line 230
    .line 231
    move-result-object v4

    .line 232
    iget-object v4, v4, Lz7/o;->a:Ljava/util/ArrayList;

    .line 233
    .line 234
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 235
    .line 236
    .line 237
    move-result v4

    .line 238
    if-eqz v4, :cond_1

    .line 239
    .line 240
    const/4 v4, -0x1

    .line 241
    iput v4, v3, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->zhKeyCode:I

    .line 242
    .line 243
    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 247
    .line 248
    goto/16 :goto_0

    .line 249
    .line 250
    :catch_0
    nop

    .line 251
    goto :goto_2

    .line 252
    :cond_2
    iput-object v1, p0, Lpa/h;->e:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    .line 254
    :goto_2
    iget-object v0, p0, Lpa/h;->e:Ljava/util/ArrayList;

    .line 255
    .line 256
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 257
    .line 258
    .line 259
    move-result v0

    .line 260
    if-eqz v0, :cond_3

    .line 261
    .line 262
    invoke-virtual {p0}, Lpa/h;->c()V

    .line 263
    .line 264
    .line 265
    return-void

    .line 266
    :cond_3
    iget-object v0, p0, Lpa/h;->a:Lcom/hsae/autosdk/hmi/IHmi;

    .line 267
    .line 268
    if-nez v0, :cond_6

    .line 269
    .line 270
    :try_start_1
    const-string v0, "com.hsae.auto.IBINDER_HMI"

    .line 271
    .line 272
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    if-nez v0, :cond_4

    .line 277
    .line 278
    return-void

    .line 279
    :cond_4
    invoke-static {v0}, Lcom/hsae/autosdk/hmi/IHmi$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hsae/autosdk/hmi/IHmi;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    iput-object v0, p0, Lpa/h;->a:Lcom/hsae/autosdk/hmi/IHmi;

    .line 284
    .line 285
    if-nez v0, :cond_5

    .line 286
    .line 287
    return-void

    .line 288
    :cond_5
    iget-object v1, p0, Lpa/h;->f:Lpa/g;

    .line 289
    .line 290
    invoke-interface {v0, v1}, Lcom/hsae/autosdk/hmi/IHmi;->registerHmiCallback(Lcom/hsae/autosdk/hmi/IHmiCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 291
    .line 292
    .line 293
    goto :goto_3

    .line 294
    :catch_1
    move-exception v0

    .line 295
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 299
    .line 300
    .line 301
    :cond_6
    :goto_3
    return-void
.end method

.method public final b(Landroid/view/KeyEvent;)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lpa/h;->e:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lpa/h;->c()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v1, v0, Lpa/h;->b:Lcom/yunpan/appmanage/service/AccService;

    .line 15
    .line 16
    iget-boolean v2, v1, Lcom/yunpan/appmanage/service/AccService;->F:Z

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    iget-object v3, v0, Lpa/h;->m:Ljava/util/HashSet;

    .line 26
    .line 27
    const/4 v4, 0x1

    .line 28
    if-ne v2, v4, :cond_2

    .line 29
    .line 30
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_3

    .line 43
    .line 44
    return-void

    .line 45
    :cond_2
    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 46
    .line 47
    .line 48
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-nez v2, :cond_4

    .line 53
    .line 54
    iget v2, v0, Lpa/h;->i:I

    .line 55
    .line 56
    if-ltz v2, :cond_4

    .line 57
    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 59
    .line 60
    .line 61
    move-result-wide v5

    .line 62
    iget-wide v7, v0, Lpa/h;->j:J

    .line 63
    .line 64
    sub-long/2addr v5, v7

    .line 65
    const-wide/16 v7, 0xbb8

    .line 66
    .line 67
    cmp-long v2, v5, v7

    .line 68
    .line 69
    if-gez v2, :cond_4

    .line 70
    .line 71
    return-void

    .line 72
    :cond_4
    :try_start_0
    iget v2, v0, Lpa/h;->g:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    iget-object v5, v0, Lpa/h;->n:Lcom/yunpan/appmanage/carsdk/u;

    .line 75
    .line 76
    const/4 v6, 0x0

    .line 77
    const-wide/16 v7, 0x0

    .line 78
    .line 79
    const/4 v9, -0x1

    .line 80
    if-eq v2, v9, :cond_7

    .line 81
    .line 82
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-nez v2, :cond_7

    .line 87
    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 89
    .line 90
    .line 91
    move-result-wide v10

    .line 92
    iget-wide v12, v0, Lpa/h;->h:J

    .line 93
    .line 94
    sub-long/2addr v10, v12

    .line 95
    iget v2, v0, Lpa/h;->c:I

    .line 96
    .line 97
    int-to-long v12, v2

    .line 98
    cmp-long v2, v10, v12

    .line 99
    .line 100
    if-gez v2, :cond_6

    .line 101
    .line 102
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    iget-object v10, v0, Lpa/h;->e:Ljava/util/ArrayList;

    .line 107
    .line 108
    iget v11, v0, Lpa/h;->g:I

    .line 109
    .line 110
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v10

    .line 114
    check-cast v10, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;

    .line 115
    .line 116
    iget v10, v10, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->zhKeyCode:I

    .line 117
    .line 118
    if-eq v2, v10, :cond_5

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v5, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 136
    .line 137
    .line 138
    iget-object v2, v0, Lpa/h;->d:Lz7/o;

    .line 139
    .line 140
    iget v3, v0, Lpa/h;->g:I

    .line 141
    .line 142
    invoke-virtual {v2, v3}, Lz7/o;->l(I)Lz7/p;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-virtual {v2}, Lz7/p;->g()Lz7/s;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    const-string v3, "zhClick"

    .line 151
    .line 152
    invoke-virtual {v2, v3}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    invoke-virtual {v1, v2}, Lcom/yunpan/appmanage/service/AccService;->b(Lz7/o;)V

    .line 157
    .line 158
    .line 159
    iput v9, v0, Lpa/h;->g:I

    .line 160
    .line 161
    iput-wide v7, v0, Lpa/h;->h:J

    .line 162
    .line 163
    iput v9, v0, Lpa/h;->i:I

    .line 164
    .line 165
    iput-wide v7, v0, Lpa/h;->j:J

    .line 166
    .line 167
    iput v9, v0, Lpa/h;->k:I

    .line 168
    .line 169
    iput-wide v7, v0, Lpa/h;->l:J

    .line 170
    .line 171
    new-instance v1, Ljava/lang/Exception;

    .line 172
    .line 173
    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    .line 174
    .line 175
    .line 176
    throw v1

    .line 177
    :cond_6
    :goto_0
    iput v9, v0, Lpa/h;->g:I

    .line 178
    .line 179
    iput-wide v7, v0, Lpa/h;->h:J

    .line 180
    .line 181
    :cond_7
    iget-object v2, v0, Lpa/h;->e:Ljava/util/ArrayList;

    .line 182
    .line 183
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    :cond_8
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 188
    .line 189
    .line 190
    move-result v10

    .line 191
    if-eqz v10, :cond_14

    .line 192
    .line 193
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v10

    .line 197
    check-cast v10, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;

    .line 198
    .line 199
    iget v11, v10, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->keyCode:I

    .line 200
    .line 201
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 202
    .line 203
    .line 204
    move-result v12

    .line 205
    if-eq v11, v12, :cond_9

    .line 206
    .line 207
    goto :goto_1

    .line 208
    :cond_9
    invoke-virtual {v5, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 209
    .line 210
    .line 211
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    .line 212
    .line 213
    .line 214
    move-result v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 215
    const-string v12, "click"

    .line 216
    .line 217
    if-nez v11, :cond_d

    .line 218
    .line 219
    :try_start_2
    iget-boolean v11, v10, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->isHaveDoubleClick:Z

    .line 220
    .line 221
    if-nez v11, :cond_b

    .line 222
    .line 223
    iget-boolean v11, v10, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->isHaveLongClick:Z

    .line 224
    .line 225
    if-nez v11, :cond_b

    .line 226
    .line 227
    iget v11, v10, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->zhKeyCode:I

    .line 228
    .line 229
    if-ne v11, v9, :cond_b

    .line 230
    .line 231
    iget-boolean v11, v10, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->isHaveClick:Z

    .line 232
    .line 233
    if-nez v11, :cond_a

    .line 234
    .line 235
    goto :goto_2

    .line 236
    :cond_a
    iget-object v2, v0, Lpa/h;->d:Lz7/o;

    .line 237
    .line 238
    iget v4, v10, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->pos:I

    .line 239
    .line 240
    invoke-virtual {v2, v4}, Lz7/o;->l(I)Lz7/p;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    invoke-virtual {v2}, Lz7/p;->g()Lz7/s;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    invoke-virtual {v2, v12}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    invoke-virtual {v1, v2}, Lcom/yunpan/appmanage/service/AccService;->b(Lz7/o;)V

    .line 253
    .line 254
    .line 255
    iput v9, v0, Lpa/h;->g:I

    .line 256
    .line 257
    iput-wide v7, v0, Lpa/h;->h:J

    .line 258
    .line 259
    iput v9, v0, Lpa/h;->i:I

    .line 260
    .line 261
    iput-wide v7, v0, Lpa/h;->j:J

    .line 262
    .line 263
    iput v9, v0, Lpa/h;->k:I

    .line 264
    .line 265
    iput-wide v7, v0, Lpa/h;->l:J

    .line 266
    .line 267
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 268
    .line 269
    .line 270
    move-result v1

    .line 271
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    new-instance v1, Ljava/lang/Exception;

    .line 279
    .line 280
    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    .line 281
    .line 282
    .line 283
    throw v1

    .line 284
    :cond_b
    :goto_2
    iget-boolean v11, v10, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->isHaveLongClick:Z

    .line 285
    .line 286
    if-eqz v11, :cond_c

    .line 287
    .line 288
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 289
    .line 290
    .line 291
    move-result-object v11

    .line 292
    iput v4, v11, Landroid/os/Message;->what:I

    .line 293
    .line 294
    iget v12, v10, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->pos:I

    .line 295
    .line 296
    iput v12, v11, Landroid/os/Message;->arg1:I

    .line 297
    .line 298
    iget v12, v0, Lpa/h;->c:I

    .line 299
    .line 300
    int-to-long v12, v12

    .line 301
    invoke-virtual {v5, v11, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 302
    .line 303
    .line 304
    :cond_c
    iget v10, v10, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->pos:I

    .line 305
    .line 306
    iput v10, v0, Lpa/h;->i:I

    .line 307
    .line 308
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 309
    .line 310
    .line 311
    move-result-wide v10

    .line 312
    iput-wide v10, v0, Lpa/h;->j:J

    .line 313
    .line 314
    goto :goto_1

    .line 315
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    .line 316
    .line 317
    .line 318
    move-result v11

    .line 319
    if-ne v11, v4, :cond_8

    .line 320
    .line 321
    invoke-virtual {v5, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 322
    .line 323
    .line 324
    iget v11, v0, Lpa/h;->k:I

    .line 325
    .line 326
    iget v13, v10, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->pos:I

    .line 327
    .line 328
    if-ne v11, v13, :cond_f

    .line 329
    .line 330
    iget-boolean v11, v10, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->isHaveDoubleClick:Z

    .line 331
    .line 332
    if-eqz v11, :cond_f

    .line 333
    .line 334
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 335
    .line 336
    .line 337
    move-result-wide v13

    .line 338
    iget-wide v7, v0, Lpa/h;->l:J

    .line 339
    .line 340
    sub-long/2addr v13, v7

    .line 341
    iget v7, v0, Lpa/h;->c:I

    .line 342
    .line 343
    int-to-long v7, v7

    .line 344
    cmp-long v11, v13, v7

    .line 345
    .line 346
    if-ltz v11, :cond_e

    .line 347
    .line 348
    goto :goto_3

    .line 349
    :cond_e
    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 350
    .line 351
    .line 352
    iget-object v2, v0, Lpa/h;->d:Lz7/o;

    .line 353
    .line 354
    iget v3, v10, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->pos:I

    .line 355
    .line 356
    invoke-virtual {v2, v3}, Lz7/o;->l(I)Lz7/p;

    .line 357
    .line 358
    .line 359
    move-result-object v2

    .line 360
    invoke-virtual {v2}, Lz7/p;->g()Lz7/s;

    .line 361
    .line 362
    .line 363
    move-result-object v2

    .line 364
    const-string v3, "doubleClick"

    .line 365
    .line 366
    invoke-virtual {v2, v3}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 367
    .line 368
    .line 369
    move-result-object v2

    .line 370
    invoke-virtual {v1, v2}, Lcom/yunpan/appmanage/service/AccService;->b(Lz7/o;)V

    .line 371
    .line 372
    .line 373
    iput v9, v0, Lpa/h;->g:I

    .line 374
    .line 375
    const-wide/16 v1, 0x0

    .line 376
    .line 377
    iput-wide v1, v0, Lpa/h;->h:J

    .line 378
    .line 379
    iput v9, v0, Lpa/h;->i:I

    .line 380
    .line 381
    iput-wide v1, v0, Lpa/h;->j:J

    .line 382
    .line 383
    iput v9, v0, Lpa/h;->k:I

    .line 384
    .line 385
    iput-wide v1, v0, Lpa/h;->l:J

    .line 386
    .line 387
    new-instance v1, Ljava/lang/Exception;

    .line 388
    .line 389
    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    .line 390
    .line 391
    .line 392
    throw v1

    .line 393
    :cond_f
    :goto_3
    iget-boolean v7, v10, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->isHaveClick:Z

    .line 394
    .line 395
    if-eqz v7, :cond_12

    .line 396
    .line 397
    iget-boolean v7, v10, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->isHaveDoubleClick:Z

    .line 398
    .line 399
    if-nez v7, :cond_11

    .line 400
    .line 401
    iget v7, v10, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->zhKeyCode:I

    .line 402
    .line 403
    if-eq v7, v9, :cond_10

    .line 404
    .line 405
    goto :goto_4

    .line 406
    :cond_10
    iget-object v2, v0, Lpa/h;->d:Lz7/o;

    .line 407
    .line 408
    iget v3, v10, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->pos:I

    .line 409
    .line 410
    invoke-virtual {v2, v3}, Lz7/o;->l(I)Lz7/p;

    .line 411
    .line 412
    .line 413
    move-result-object v2

    .line 414
    invoke-virtual {v2}, Lz7/p;->g()Lz7/s;

    .line 415
    .line 416
    .line 417
    move-result-object v2

    .line 418
    invoke-virtual {v2, v12}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 419
    .line 420
    .line 421
    move-result-object v2

    .line 422
    invoke-virtual {v1, v2}, Lcom/yunpan/appmanage/service/AccService;->b(Lz7/o;)V

    .line 423
    .line 424
    .line 425
    iput v9, v0, Lpa/h;->g:I

    .line 426
    .line 427
    const-wide/16 v1, 0x0

    .line 428
    .line 429
    iput-wide v1, v0, Lpa/h;->h:J

    .line 430
    .line 431
    iput v9, v0, Lpa/h;->i:I

    .line 432
    .line 433
    iput-wide v1, v0, Lpa/h;->j:J

    .line 434
    .line 435
    iput v9, v0, Lpa/h;->k:I

    .line 436
    .line 437
    iput-wide v1, v0, Lpa/h;->l:J

    .line 438
    .line 439
    new-instance v1, Ljava/lang/Exception;

    .line 440
    .line 441
    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    .line 442
    .line 443
    .line 444
    throw v1

    .line 445
    :cond_11
    :goto_4
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 446
    .line 447
    .line 448
    move-result-object v7

    .line 449
    iput v6, v7, Landroid/os/Message;->what:I

    .line 450
    .line 451
    iget v8, v10, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->pos:I

    .line 452
    .line 453
    iput v8, v7, Landroid/os/Message;->arg1:I

    .line 454
    .line 455
    iget v8, v0, Lpa/h;->c:I

    .line 456
    .line 457
    int-to-long v11, v8

    .line 458
    invoke-virtual {v5, v7, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 459
    .line 460
    .line 461
    :cond_12
    iget v7, v10, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->zhKeyCode:I

    .line 462
    .line 463
    if-eq v7, v9, :cond_13

    .line 464
    .line 465
    iget v7, v10, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->pos:I

    .line 466
    .line 467
    iput v7, v0, Lpa/h;->g:I

    .line 468
    .line 469
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 470
    .line 471
    .line 472
    move-result-wide v7

    .line 473
    iput-wide v7, v0, Lpa/h;->h:J

    .line 474
    .line 475
    const-wide/16 v7, 0x0

    .line 476
    .line 477
    goto :goto_5

    .line 478
    :cond_13
    iput v9, v0, Lpa/h;->g:I

    .line 479
    .line 480
    const-wide/16 v7, 0x0

    .line 481
    .line 482
    iput-wide v7, v0, Lpa/h;->h:J

    .line 483
    .line 484
    :goto_5
    iput v9, v0, Lpa/h;->i:I

    .line 485
    .line 486
    iput-wide v7, v0, Lpa/h;->j:J

    .line 487
    .line 488
    iget v10, v10, Lcom/yunpan/appmanage/bean/KeyMapAccFindBean;->pos:I

    .line 489
    .line 490
    iput v10, v0, Lpa/h;->k:I

    .line 491
    .line 492
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 493
    .line 494
    .line 495
    move-result-wide v10

    .line 496
    iput-wide v10, v0, Lpa/h;->l:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 497
    .line 498
    goto/16 :goto_1

    .line 499
    .line 500
    :catch_0
    :cond_14
    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lpa/h;->n:Lcom/yunpan/appmanage/carsdk/u;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lpa/h;->a:Lcom/hsae/autosdk/hmi/IHmi;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    :try_start_0
    iget-object v2, p0, Lpa/h;->f:Lpa/g;

    .line 12
    .line 13
    invoke-interface {v0, v2}, Lcom/hsae/autosdk/hmi/IHmi;->unregisterHmiCallback(Lcom/hsae/autosdk/hmi/IHmiCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    :catch_0
    iput-object v1, p0, Lpa/h;->a:Lcom/hsae/autosdk/hmi/IHmi;

    .line 17
    .line 18
    :cond_0
    return-void
.end method
