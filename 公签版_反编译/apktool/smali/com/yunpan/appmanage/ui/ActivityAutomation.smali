.class public Lcom/yunpan/appmanage/ui/ActivityAutomation;
.super Lda/g;
.source "SourceFile"


# static fields
.field public static final synthetic L:I


# instance fields
.field public C:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public D:Landroid/widget/ImageView;

.field public E:Landroid/widget/TextView;

.field public F:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public G:Lx9/k3;

.field public H:Landroidx/activity/result/d;

.field public final I:Lcom/yunpan/appmanage/carsdk/u;

.field public final K:La2/k;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lda/g;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/yunpan/appmanage/carsdk/u;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/16 v2, 0x10

    .line 11
    .line 12
    invoke-direct {v0, p0, v1, v2}, Lcom/yunpan/appmanage/carsdk/u;-><init>(Ljava/lang/Object;Landroid/os/Looper;I)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAutomation;->I:Lcom/yunpan/appmanage/carsdk/u;

    .line 16
    .line 17
    new-instance v0, La2/k;

    .line 18
    .line 19
    const/16 v1, 0x8

    .line 20
    .line 21
    invoke-direct {v0, v1, p0}, La2/k;-><init>(ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAutomation;->K:La2/k;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final onDestroy()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAutomation;->K:La2/k;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    :catch_0
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAutomation;->I:Lcom/yunpan/appmanage/carsdk/u;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-super {p0}, Lda/g;->onDestroy()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final t()I
    .locals 1

    .line 1
    const v0, 0x7f0e002a

    return v0
.end method

.method public final u()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x2

    .line 4
    const-class v3, Lcom/yunpan/appmanage/service/AccService;

    .line 5
    .line 6
    new-instance v4, Landroid/content/IntentFilter;

    .line 7
    .line 8
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    new-instance v6, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v5, ".BROADCAST_TO_ACTIVITY"

    .line 24
    .line 25
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v5, p0, Lcom/yunpan/appmanage/ui/ActivityAutomation;->K:La2/k;

    .line 36
    .line 37
    invoke-virtual {p0, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    new-instance v4, Landroidx/fragment/app/y0;

    .line 41
    .line 42
    invoke-direct {v4, v2}, Landroidx/fragment/app/y0;-><init>(I)V

    .line 43
    .line 44
    .line 45
    new-instance v5, Lua/p0;

    .line 46
    .line 47
    invoke-direct {v5, p0, v1}, Lua/p0;-><init>(Lcom/yunpan/appmanage/ui/ActivityAutomation;I)V

    .line 48
    .line 49
    .line 50
    new-instance v6, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v7, "activity_rq#"

    .line 53
    .line 54
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object v7, p0, Landroidx/activity/m;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 58
    .line 59
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    iget-object v7, p0, Landroidx/activity/m;->k:Landroidx/activity/g;

    .line 71
    .line 72
    invoke-virtual {v7, v6, p0, v4, v5}, Landroidx/activity/result/g;->c(Ljava/lang/String;Landroidx/lifecycle/t;Ln/a;Landroidx/activity/result/b;)Landroidx/activity/result/d;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    iput-object v4, p0, Lcom/yunpan/appmanage/ui/ActivityAutomation;->H:Landroidx/activity/result/d;

    .line 77
    .line 78
    const v4, 0x7f0b03ad

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v4}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 86
    .line 87
    new-instance v5, Lua/q0;

    .line 88
    .line 89
    invoke-direct {v5, p0, v0}, Lua/q0;-><init>(Lcom/yunpan/appmanage/ui/ActivityAutomation;I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    .line 94
    .line 95
    const v4, 0x7f0b03c3

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v4}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    new-instance v5, Lua/q0;

    .line 103
    .line 104
    invoke-direct {v5, p0, v1}, Lua/q0;-><init>(Lcom/yunpan/appmanage/ui/ActivityAutomation;I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    .line 109
    .line 110
    const v4, 0x7f0b03d2

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, v4}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 118
    .line 119
    iput-object v4, p0, Lcom/yunpan/appmanage/ui/ActivityAutomation;->C:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 120
    .line 121
    const v4, 0x7f0b03d3

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, v4}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    check-cast v4, Landroid/widget/ImageView;

    .line 129
    .line 130
    iput-object v4, p0, Lcom/yunpan/appmanage/ui/ActivityAutomation;->D:Landroid/widget/ImageView;

    .line 131
    .line 132
    const v4, 0x7f0b03d4

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0, v4}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    check-cast v4, Landroid/widget/TextView;

    .line 140
    .line 141
    iput-object v4, p0, Lcom/yunpan/appmanage/ui/ActivityAutomation;->E:Landroid/widget/TextView;

    .line 142
    .line 143
    iget-object v4, p0, Lcom/yunpan/appmanage/ui/ActivityAutomation;->D:Landroid/widget/ImageView;

    .line 144
    .line 145
    const v5, 0x7f080237

    .line 146
    .line 147
    .line 148
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 149
    .line 150
    .line 151
    iget-object v4, p0, Lcom/yunpan/appmanage/ui/ActivityAutomation;->E:Landroid/widget/TextView;

    .line 152
    .line 153
    const-string v5, "\u5f00\u542f\u670d\u52a1(\u603b\u5f00\u5173)"

    .line 154
    .line 155
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    .line 157
    .line 158
    :try_start_0
    sget-object v4, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 159
    .line 160
    sget-object v4, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 161
    .line 162
    iget-object v4, v4, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 163
    .line 164
    new-instance v5, Landroid/content/ComponentName;

    .line 165
    .line 166
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v7

    .line 174
    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    .line 178
    .line 179
    .line 180
    move-result v4

    .line 181
    if-eq v4, v2, :cond_1

    .line 182
    .line 183
    iget-object v4, p0, Lda/g;->A:Lda/g;

    .line 184
    .line 185
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    const-string v5, "enabled_accessibility_services"

    .line 190
    .line 191
    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    if-nez v4, :cond_0

    .line 196
    .line 197
    const-string v4, ""

    .line 198
    .line 199
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v6

    .line 208
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    const-string v6, "/"

    .line 212
    .line 213
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v5

    .line 220
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 221
    .line 222
    .line 223
    move-result v4

    .line 224
    if-eqz v4, :cond_2

    .line 225
    .line 226
    iget-object v4, p0, Lda/g;->A:Lda/g;

    .line 227
    .line 228
    const-string v5, "ACC_IS_RUNNING"

    .line 229
    .line 230
    invoke-static {v4, v5}, Lta/m;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    goto :goto_0

    .line 234
    :catch_0
    nop

    .line 235
    goto :goto_0

    .line 236
    :cond_1
    new-instance v4, Ljava/lang/Exception;

    .line 237
    .line 238
    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    .line 239
    .line 240
    .line 241
    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :cond_2
    :goto_0
    iget-object v4, p0, Lda/g;->A:Lda/g;

    .line 243
    .line 244
    invoke-static {v4, v3}, Lif/a;->h0(Landroid/content/Context;Ljava/lang/Class;)Z

    .line 245
    .line 246
    .line 247
    move-result v3

    .line 248
    if-eqz v3, :cond_3

    .line 249
    .line 250
    iget-object v3, p0, Lcom/yunpan/appmanage/ui/ActivityAutomation;->D:Landroid/widget/ImageView;

    .line 251
    .line 252
    const v4, 0x7f08021c

    .line 253
    .line 254
    .line 255
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 256
    .line 257
    .line 258
    iget-object v3, p0, Lcom/yunpan/appmanage/ui/ActivityAutomation;->E:Landroid/widget/TextView;

    .line 259
    .line 260
    const-string v4, "\u670d\u52a1\u8fd0\u884c\u4e2d"

    .line 261
    .line 262
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    .line 264
    .line 265
    :cond_3
    iget-object v3, p0, Lcom/yunpan/appmanage/ui/ActivityAutomation;->C:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 266
    .line 267
    new-instance v4, Lua/q0;

    .line 268
    .line 269
    invoke-direct {v4, p0, v2}, Lua/q0;-><init>(Lcom/yunpan/appmanage/ui/ActivityAutomation;I)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    .line 274
    .line 275
    const v3, 0x7f0b04f1

    .line 276
    .line 277
    .line 278
    invoke-virtual {p0, v3}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    check-cast v3, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 283
    .line 284
    iput-object v3, p0, Lcom/yunpan/appmanage/ui/ActivityAutomation;->F:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 285
    .line 286
    new-instance v4, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 287
    .line 288
    invoke-direct {v4, p0, v1, v0}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 292
    .line 293
    .line 294
    new-instance v1, Lx9/k3;

    .line 295
    .line 296
    invoke-direct {v1}, Lx9/k3;-><init>()V

    .line 297
    .line 298
    .line 299
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityAutomation;->G:Lx9/k3;

    .line 300
    .line 301
    iget-object v1, p0, Lda/g;->A:Lda/g;

    .line 302
    .line 303
    invoke-static {v1}, Lcom/yunpan/appmanage/carsdk/h0;->c(Landroid/content/Context;)Z

    .line 304
    .line 305
    .line 306
    move-result v1

    .line 307
    const v3, 0x7f080232

    .line 308
    .line 309
    .line 310
    if-eqz v1, :cond_4

    .line 311
    .line 312
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityAutomation;->G:Lx9/k3;

    .line 313
    .line 314
    const-string v4, "\u6377\u9014\u8f66\u673a\uff1a\u4e13\u7528\u6620\u5c04\uff0c\u6309\u952e\u3001\u8f66\u95e8\u3001\u6863\u4f4d\u3001\u5927\u706f\uff01(\u57fa\u4e8e\u5c71\u6d77T2)"

    .line 315
    .line 316
    invoke-static {v3, v4, v1}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 317
    .line 318
    .line 319
    :cond_4
    iget-object v1, p0, Lda/g;->A:Lda/g;

    .line 320
    .line 321
    invoke-static {v1}, Lcom/yunpan/appmanage/carsdk/x;->h(Landroid/content/Context;)Z

    .line 322
    .line 323
    .line 324
    move-result v1

    .line 325
    if-eqz v1, :cond_5

    .line 326
    .line 327
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityAutomation;->G:Lx9/k3;

    .line 328
    .line 329
    const-string v4, "\u5409\u5229\u661f\u613f\uff1a\u4e13\u7528\u6620\u5c04\uff0c\u6309\u952e\u3001\u6863\u4f4d\uff01(\u6ca1\u4ec0\u4e48\u529f\u80fd)"

    .line 330
    .line 331
    invoke-static {v3, v4, v1}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 332
    .line 333
    .line 334
    :cond_5
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityAutomation;->G:Lx9/k3;

    .line 335
    .line 336
    const v3, 0x7f0802fd

    .line 337
    .line 338
    .line 339
    const-string v4, "\u6309\u952e\u6620\u5c04\uff1a\u5c06\u7269\u7406\u6309\u952e\u6620\u5c04\u6307\u5b9a\u7684\u64cd\u4f5c\uff08\u539f\u751f\u7cfb\u7edf\u9a71\u52a8\uff09"

    .line 340
    .line 341
    invoke-static {v3, v4, v1}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 342
    .line 343
    .line 344
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityAutomation;->G:Lx9/k3;

    .line 345
    .line 346
    const v3, 0x7f0802ff

    .line 347
    .line 348
    .line 349
    const-string v4, "\u65e5\u5fd7\u6620\u5c04\uff1a\u5c06\u7cfb\u7edf\u65e5\u5fd7\u6620\u5c04\u6307\u5b9a\u7684\u64cd\u4f5c\uff08\u5382\u5546\u5e94\u7528\u9a71\u52a8\uff09"

    .line 350
    .line 351
    invoke-static {v3, v4, v1}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 352
    .line 353
    .line 354
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityAutomation;->G:Lx9/k3;

    .line 355
    .line 356
    const v3, 0x7f0802fe

    .line 357
    .line 358
    .line 359
    const-string v4, "\u4e8b\u4ef6\u6620\u5c04\uff1a\u5c06\u67d0\u4e9b\u4e8b\u4ef6\u6620\u5c04\u6307\u5b9a\u7684\u64cd\u4f5c\uff08\u7cfb\u7edf\u4e8b\u4ef6\u9a71\u52a8\uff09"

    .line 360
    .line 361
    invoke-static {v3, v4, v1}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 362
    .line 363
    .line 364
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityAutomation;->G:Lx9/k3;

    .line 365
    .line 366
    const v3, 0x7f080128

    .line 367
    .line 368
    .line 369
    const-string v4, "\u60ac\u6d6e\u6309\u94ae\uff1a\u60ac\u6d6e\u4e00\u4e2a\u6309\u94ae\uff0c\u81ea\u5b9a\u4e49\u5404\u79cd\u6620\u5c04"

    .line 370
    .line 371
    invoke-static {v3, v4, v1}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 372
    .line 373
    .line 374
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityAutomation;->G:Lx9/k3;

    .line 375
    .line 376
    const v3, 0x7f0802fc

    .line 377
    .line 378
    .line 379
    const-string v4, "\u4fa7\u8fb9\u624b\u52bf\uff1a\u5de6\u4fa7\u3001\u53f3\u4fa7\u3001\u5e95\u90e8 \u7684\u5404\u79cd\u6ed1\u52a8\u6620\u5c04"

    .line 380
    .line 381
    invoke-static {v3, v4, v1}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 382
    .line 383
    .line 384
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityAutomation;->G:Lx9/k3;

    .line 385
    .line 386
    const v3, 0x7f08023f

    .line 387
    .line 388
    .line 389
    const-string v4, "\u81ea\u52a8\u70b9\u51fb\uff1a\u5982\u684c\u9762\u9009\u62e9\u65f6\u3001USB\u6388\u6743\u65f6\uff0c\u81ea\u52a8\u5e2e\u4f60\u70b9\u786e\u5b9a"

    .line 390
    .line 391
    invoke-static {v3, v4, v1}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 392
    .line 393
    .line 394
    iget-object v1, p0, Lda/g;->A:Lda/g;

    .line 395
    .line 396
    invoke-static {v1}, Lpa/e;->b(Landroid/content/Context;)Z

    .line 397
    .line 398
    .line 399
    move-result v1

    .line 400
    if-eqz v1, :cond_7

    .line 401
    .line 402
    new-instance v1, Lx9/l3;

    .line 403
    .line 404
    const v3, 0x7f08029d

    .line 405
    .line 406
    .line 407
    const-string v4, "\u65e5\u4ea7\u8f66\u673a\uff1a\u6620\u5c04\u65b9\u5411\u76d8\u6309\u952e\uff08\u4e0e\u7cfb\u7edfSDK\u5bf9\u63a5\uff09"

    .line 408
    .line 409
    invoke-direct {v1, v3, v4}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 410
    .line 411
    .line 412
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 413
    .line 414
    const/16 v4, 0x1c

    .line 415
    .line 416
    if-ge v3, v4, :cond_6

    .line 417
    .line 418
    iget-object v3, p0, Lcom/yunpan/appmanage/ui/ActivityAutomation;->G:Lx9/k3;

    .line 419
    .line 420
    invoke-virtual {v3, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 421
    .line 422
    .line 423
    goto :goto_1

    .line 424
    :cond_6
    iget-object v3, p0, Lcom/yunpan/appmanage/ui/ActivityAutomation;->G:Lx9/k3;

    .line 425
    .line 426
    invoke-virtual {v3, v0, v1}, Lc6/g;->p(ILjava/lang/Object;)V

    .line 427
    .line 428
    .line 429
    :cond_7
    :goto_1
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityAutomation;->G:Lx9/k3;

    .line 430
    .line 431
    const v3, 0x7f0802c0

    .line 432
    .line 433
    .line 434
    const-string v4, "\u5f3a\u5236\u65cb\u8f6c\uff1a\u5f3a\u5236\u7528\u6a2a\u5c4f\u6216\u7ad6\u5c4f\u663e\u793a\u5e94\u7528\uff08\u5f3a\u5236\u6a2a\u5c4f\u663e\u793a\uff09"

    .line 435
    .line 436
    invoke-static {v3, v4, v1}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 437
    .line 438
    .line 439
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityAutomation;->G:Lx9/k3;

    .line 440
    .line 441
    const v3, 0x7f08024d

    .line 442
    .line 443
    .line 444
    const-string v4, "(\u5f85\u5f00\u53d1)\u4e2a\u6027\u60ac\u6d6e\uff1a\u6839\u636e\u4e0d\u540c\u573a\u666f\u81ea\u5b9a\u4e49\u5404\u79cd\u5404\u6837\u7684\u60ac\u6d6e\u7a97\u53e3"

    .line 445
    .line 446
    invoke-static {v3, v4, v1}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 447
    .line 448
    .line 449
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityAutomation;->G:Lx9/k3;

    .line 450
    .line 451
    const v3, 0x7f080217

    .line 452
    .line 453
    .line 454
    const-string v4, "(\u5f85\u5f00\u53d1)\u4e2a\u6027\u9762\u677f\uff1a\u81ea\u5b9a\u4e49\u6620\u5c04\u9762\u677f\uff0c\u65b9\u4fbf\u5728\u6620\u5c04\u91cc\u9762\u4f7f\u7528"

    .line 455
    .line 456
    invoke-static {v3, v4, v1}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 457
    .line 458
    .line 459
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityAutomation;->G:Lx9/k3;

    .line 460
    .line 461
    const-string v4, "(\u5f85\u5f00\u53d1)Frida\uff1aHook\u73a9\u6cd5\uff08\u9700root\u6743\u9650\u6216 adb root\uff09"

    .line 462
    .line 463
    invoke-static {v3, v4, v1}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 464
    .line 465
    .line 466
    :try_start_1
    iget-object v1, p0, Lda/g;->A:Lda/g;

    .line 467
    .line 468
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 469
    .line 470
    .line 471
    move-result-object v1

    .line 472
    const-string v4, "com.iflytek.cutefly.speechclient.hmi"

    .line 473
    .line 474
    invoke-virtual {v1, v4, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 475
    .line 476
    .line 477
    iget-object v0, p0, Lda/g;->A:Lda/g;

    .line 478
    .line 479
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 480
    .line 481
    .line 482
    move-result-object v0

    .line 483
    const-string v1, "com.iflytek.autofly.EventBus"

    .line 484
    .line 485
    iget-object v4, p0, Lda/g;->A:Lda/g;

    .line 486
    .line 487
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v4

    .line 491
    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    .line 493
    .line 494
    move-result v0

    .line 495
    if-nez v0, :cond_8

    .line 496
    .line 497
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAutomation;->G:Lx9/k3;

    .line 498
    .line 499
    new-instance v1, Lx9/l3;

    .line 500
    .line 501
    const-string v4, "(\u5f85\u5f00\u53d1)\u52a0\u5f3a\u539f\u8f66\u8baf\u98de\u8bed\u97f3\u8bc6\u522b\uff08\u5bf9\u63a5\uff09"

    .line 502
    .line 503
    invoke-direct {v1, v3, v4}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 504
    .line 505
    .line 506
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 507
    .line 508
    .line 509
    :catch_1
    :cond_8
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAutomation;->F:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 510
    .line 511
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityAutomation;->G:Lx9/k3;

    .line 512
    .line 513
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 514
    .line 515
    .line 516
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAutomation;->G:Lx9/k3;

    .line 517
    .line 518
    new-instance v1, Lua/p0;

    .line 519
    .line 520
    invoke-direct {v1, p0, v2}, Lua/p0;-><init>(Lcom/yunpan/appmanage/ui/ActivityAutomation;I)V

    .line 521
    .line 522
    .line 523
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 524
    .line 525
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 526
    .line 527
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 528
    .line 529
    iget-object v1, p0, Lda/g;->A:Lda/g;

    .line 530
    .line 531
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 532
    .line 533
    .line 534
    const-string v0, "\u6388\u6743\u5931\u8d25\uff0c\u5c06\u65e0\u6cd5\u5b9e\u73b0\u5f00\u673a\u81ea\u52a8\u6267\u884c\u4efb\u52a1"

    .line 535
    .line 536
    invoke-static {v1, v0}, Lcom/yunpan/appmanage/util/k;->m(Landroid/content/Context;Ljava/lang/String;)V

    .line 537
    .line 538
    .line 539
    return-void
.end method

.method public final x(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAutomation;->E:Landroid/widget/TextView;

    .line 2
    .line 3
    const-string v1, "\u6b63\u5728\u542f\u52a8\u4e2d"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lua/p0;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, p0, v1}, Lua/p0;-><init>(Lcom/yunpan/appmanage/ui/ActivityAutomation;I)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lmc/c;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-direct {v1, v2, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    new-instance v1, Lua/g;

    .line 35
    .line 36
    const/4 v2, 0x1

    .line 37
    invoke-direct {v1, p0, p1, v2}, Lua/g;-><init>(Ljava/lang/Object;ZI)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method
