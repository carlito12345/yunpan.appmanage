.class public Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;
.super Lda/g;
.source "SourceFile"


# static fields
.field public static final synthetic T:I


# instance fields
.field public C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public D:Lx9/r3;

.field public E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public F:Lx9/r3;

.field public final G:Ljava/util/ArrayList;

.field public final H:Ljava/util/ArrayList;

.field public I:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public K:Landroid/widget/TextView;

.field public L:Lz7/o;

.field public M:Lz7/o;

.field public N:I

.field public O:Ljava/io/File;

.field public P:Ljava/io/File;

.field public final R:Ljava/util/ArrayList;

.field public final S:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lda/g;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->G:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->H:Ljava/util/ArrayList;

    .line 17
    .line 18
    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->N:I

    .line 20
    .line 21
    new-instance v0, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->R:Ljava/util/ArrayList;

    .line 27
    .line 28
    new-instance v0, Ljava/util/HashMap;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->S:Ljava/util/HashMap;

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->D:Lx9/r3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lc6/g;->E(Ljava/util/List;)V

    .line 5
    .line 6
    .line 7
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 8
    .line 9
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->D:Lx9/r3;

    .line 10
    .line 11
    iget-object v0, p0, Lda/g;->A:Lda/g;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/b;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/bumptech/glide/b;->a()V

    .line 18
    .line 19
    .line 20
    invoke-super {p0}, Lda/g;->onDestroy()V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final t()I
    .locals 1

    .line 1
    const v0, 0x7f0e0047

    return v0
.end method

.method public final u()V
    .locals 13

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    const-string v1, "/data/user_de/0/com.hozonauto.netahome/shared_prefs/ep32_data_1.2.xml"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->O:Ljava/io/File;

    .line 9
    .line 10
    new-instance v0, Ljava/io/File;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    sget-object v2, Lfa/g0;->a:Lfa/h0;

    .line 18
    .line 19
    invoke-virtual {v2}, Lfa/h0;->d()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, "/."

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lda/g;->A:Lda/g;

    .line 32
    .line 33
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v2, "/ep32_data_1.2.xml"

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->P:Ljava/io/File;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 59
    .line 60
    .line 61
    const v0, 0x7f0b05ba

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Landroid/widget/TextView;

    .line 69
    .line 70
    const v0, 0x7f0b0517

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 78
    .line 79
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->I:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 80
    .line 81
    const v0, 0x7f0b0519

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Landroid/widget/TextView;

    .line 89
    .line 90
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->K:Landroid/widget/TextView;

    .line 91
    .line 92
    const v0, 0x7f0b03ad

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    new-instance v1, Lua/i4;

    .line 100
    .line 101
    const/4 v2, 0x0

    .line 102
    invoke-direct {v1, p0, v2}, Lua/i4;-><init>(Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    .line 107
    .line 108
    const v0, 0x7f0b03b1

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    new-instance v1, Lua/i4;

    .line 116
    .line 117
    const/4 v2, 0x1

    .line 118
    invoke-direct {v1, p0, v2}, Lua/i4;-><init>(Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;I)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    .line 123
    .line 124
    const v0, 0x7f0b037d

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    new-instance v1, Lua/i4;

    .line 132
    .line 133
    const/4 v2, 0x2

    .line 134
    invoke-direct {v1, p0, v2}, Lua/i4;-><init>(Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    .line 139
    .line 140
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->R:Ljava/util/ArrayList;

    .line 141
    .line 142
    new-instance v1, Lcom/yunpan/appmanage/db/AppBean;

    .line 143
    .line 144
    const-string v2, "\u7a7a\u8c03\u5f00\u5173"

    .line 145
    .line 146
    const-string v3, "shortcut_hvac"

    .line 147
    .line 148
    invoke-direct {v1, v2, v3}, Lcom/yunpan/appmanage/db/AppBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    new-instance v1, Lcom/yunpan/appmanage/db/AppBean;

    .line 155
    .line 156
    const-string v2, "\u4e3b\u9a7e\u901a\u98ce"

    .line 157
    .line 158
    const-string v4, "shortcut_driver_ventilate"

    .line 159
    .line 160
    invoke-direct {v1, v2, v4}, Lcom/yunpan/appmanage/db/AppBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    new-instance v1, Lcom/yunpan/appmanage/db/AppBean;

    .line 167
    .line 168
    const-string v2, "\u5ea7\u6905"

    .line 169
    .line 170
    const-string v5, "shortcut_seat"

    .line 171
    .line 172
    invoke-direct {v1, v2, v5}, Lcom/yunpan/appmanage/db/AppBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    new-instance v1, Lcom/yunpan/appmanage/db/AppBean;

    .line 179
    .line 180
    const-string v2, "\u540e\u9664\u971c"

    .line 181
    .line 182
    const-string v6, "shortcut_rear_defrost"

    .line 183
    .line 184
    invoke-direct {v1, v2, v6}, Lcom/yunpan/appmanage/db/AppBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    new-instance v1, Lcom/yunpan/appmanage/db/AppBean;

    .line 191
    .line 192
    const-string v2, "\u524d\u9664\u971c"

    .line 193
    .line 194
    const-string v7, "shortcut_front_defrost"

    .line 195
    .line 196
    invoke-direct {v1, v2, v7}, Lcom/yunpan/appmanage/db/AppBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    new-instance v1, Lcom/yunpan/appmanage/db/AppBean;

    .line 203
    .line 204
    const-string v2, "\u5faa\u73af\u6a21\u5f0f"

    .line 205
    .line 206
    const-string v8, "shortcut_inner_loop"

    .line 207
    .line 208
    invoke-direct {v1, v2, v8}, Lcom/yunpan/appmanage/db/AppBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    new-instance v1, Lcom/yunpan/appmanage/db/AppBean;

    .line 215
    .line 216
    const-string v2, "\u526f\u9a7e\u901a\u98ce"

    .line 217
    .line 218
    const-string v9, "shortcut_secondary_ventilate"

    .line 219
    .line 220
    invoke-direct {v1, v2, v9}, Lcom/yunpan/appmanage/db/AppBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    new-instance v1, Lcom/yunpan/appmanage/db/AppBean;

    .line 227
    .line 228
    const-string v2, "\u51b0\u7bb1\u5f00\u5173"

    .line 229
    .line 230
    const-string v10, "shortcut_fridge"

    .line 231
    .line 232
    invoke-direct {v1, v2, v10}, Lcom/yunpan/appmanage/db/AppBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    new-instance v1, Lcom/yunpan/appmanage/db/AppBean;

    .line 239
    .line 240
    const-string v2, "\u4e3b\u9a7e\u52a0\u70ed"

    .line 241
    .line 242
    const-string v11, "shortcut_driver_heat"

    .line 243
    .line 244
    invoke-direct {v1, v2, v11}, Lcom/yunpan/appmanage/db/AppBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    new-instance v1, Lcom/yunpan/appmanage/db/AppBean;

    .line 251
    .line 252
    const-string v2, "\u526f\u9a7e\u52a0\u70ed"

    .line 253
    .line 254
    const-string v12, "shortcut_secondary_heat"

    .line 255
    .line 256
    invoke-direct {v1, v2, v12}, Lcom/yunpan/appmanage/db/AppBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->S:Ljava/util/HashMap;

    .line 263
    .line 264
    const-string v1, "allapps_icon_shortcut_hvac_idle_comfort_night"

    .line 265
    .line 266
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    const-string v1, "allapps_icon_shortcut_driver_ventilate_idle_comfort_night"

    .line 270
    .line 271
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    const-string v1, "allapps_icon_shortcut_seat_idle_comfort_night"

    .line 275
    .line 276
    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    const-string v1, "allapps_icon_shortcut_rear_defrost_idle"

    .line 280
    .line 281
    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    const-string v1, "allapps_icon_shortcut_front_defrost_idle"

    .line 285
    .line 286
    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    const-string v1, "allapps_icon_shortcut_auto_loop_idle"

    .line 290
    .line 291
    invoke-virtual {v0, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    const-string v1, "allapps_icon_shortcut_secondary_ventilate_idle"

    .line 295
    .line 296
    invoke-virtual {v0, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    const-string v1, "allapps_icon_shortcut_fridge"

    .line 300
    .line 301
    invoke-virtual {v0, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    const-string v1, "allapps_icon_shortcut_driver_heat_idle"

    .line 305
    .line 306
    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    const-string v1, "allapps_icon_shortcut_secondary_heat_idle"

    .line 310
    .line 311
    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    const v0, 0x7f0b04f4

    .line 315
    .line 316
    .line 317
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 322
    .line 323
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 324
    .line 325
    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 326
    .line 327
    iget-object v2, p0, Lda/g;->A:Lda/g;

    .line 328
    .line 329
    const/16 v3, 0x9

    .line 330
    .line 331
    invoke-direct {v1, v2, v3}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 335
    .line 336
    .line 337
    new-instance v0, Lx9/r3;

    .line 338
    .line 339
    invoke-direct {v0, p0}, Lx9/r3;-><init>(Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;)V

    .line 340
    .line 341
    .line 342
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->D:Lx9/r3;

    .line 343
    .line 344
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 345
    .line 346
    invoke-virtual {v1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 347
    .line 348
    .line 349
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->D:Lx9/r3;

    .line 350
    .line 351
    new-instance v1, Lua/k4;

    .line 352
    .line 353
    const/4 v2, 0x1

    .line 354
    invoke-direct {v1, p0, v2}, Lua/k4;-><init>(Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;I)V

    .line 355
    .line 356
    .line 357
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 358
    .line 359
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 360
    .line 361
    new-instance v1, Lua/m4;

    .line 362
    .line 363
    invoke-direct {v1}, Lua/m4;-><init>()V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnItemListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnItemListener;)V

    .line 367
    .line 368
    .line 369
    const v0, 0x7f0b04fc

    .line 370
    .line 371
    .line 372
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 377
    .line 378
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 379
    .line 380
    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 381
    .line 382
    iget-object v2, p0, Lda/g;->A:Lda/g;

    .line 383
    .line 384
    const/4 v3, 0x7

    .line 385
    invoke-direct {v1, v2, v3}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 389
    .line 390
    .line 391
    new-instance v0, Lx9/r3;

    .line 392
    .line 393
    invoke-direct {v0, p0}, Lx9/r3;-><init>(Lda/g;)V

    .line 394
    .line 395
    .line 396
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->F:Lx9/r3;

    .line 397
    .line 398
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 399
    .line 400
    invoke-virtual {v1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 401
    .line 402
    .line 403
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->F:Lx9/r3;

    .line 404
    .line 405
    new-instance v1, Lua/k4;

    .line 406
    .line 407
    const/4 v2, 0x2

    .line 408
    invoke-direct {v1, p0, v2}, Lua/k4;-><init>(Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;I)V

    .line 409
    .line 410
    .line 411
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 412
    .line 413
    new-instance v0, Ld6/a;

    .line 414
    .line 415
    invoke-direct {v0}, Ld6/a;-><init>()V

    .line 416
    .line 417
    .line 418
    const/16 v1, 0xc

    .line 419
    .line 420
    iput v1, v0, Ld6/a;->h:I

    .line 421
    .line 422
    const/4 v1, 0x0

    .line 423
    iput-boolean v1, v0, Ld6/a;->g:Z

    .line 424
    .line 425
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 426
    .line 427
    invoke-virtual {v0, v2}, Ld6/a;->d(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 428
    .line 429
    .line 430
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->F:Lx9/r3;

    .line 431
    .line 432
    invoke-virtual {v0, v2}, Ld6/a;->g(Le6/a;)V

    .line 433
    .line 434
    .line 435
    new-instance v2, Lua/n4;

    .line 436
    .line 437
    invoke-direct {v2, p0}, Lua/n4;-><init>(Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;)V

    .line 438
    .line 439
    .line 440
    iput-object v2, v0, Ld6/a;->i:Le6/b;

    .line 441
    .line 442
    new-instance v0, Ld6/a;

    .line 443
    .line 444
    invoke-direct {v0}, Ld6/a;-><init>()V

    .line 445
    .line 446
    .line 447
    const/16 v2, 0xf

    .line 448
    .line 449
    iput v2, v0, Ld6/a;->h:I

    .line 450
    .line 451
    iput-boolean v1, v0, Ld6/a;->g:Z

    .line 452
    .line 453
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 454
    .line 455
    invoke-virtual {v0, v1}, Ld6/a;->d(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 456
    .line 457
    .line 458
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->D:Lx9/r3;

    .line 459
    .line 460
    invoke-virtual {v0, v1}, Ld6/a;->g(Le6/a;)V

    .line 461
    .line 462
    .line 463
    new-instance v1, Lua/o4;

    .line 464
    .line 465
    invoke-direct {v1, p0}, Lua/o4;-><init>(Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;)V

    .line 466
    .line 467
    .line 468
    iput-object v1, v0, Ld6/a;->i:Le6/b;

    .line 469
    .line 470
    new-instance v0, Lua/k4;

    .line 471
    .line 472
    const/4 v1, 0x0

    .line 473
    invoke-direct {v0, p0, v1}, Lua/k4;-><init>(Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;I)V

    .line 474
    .line 475
    .line 476
    new-instance v1, Lmc/c;

    .line 477
    .line 478
    const/4 v2, 0x0

    .line 479
    invoke-direct {v1, v2, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 480
    .line 481
    .line 482
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 483
    .line 484
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 485
    .line 486
    .line 487
    move-result-object v0

    .line 488
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 489
    .line 490
    .line 491
    move-result-object v1

    .line 492
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 493
    .line 494
    .line 495
    move-result-object v0

    .line 496
    new-instance v1, Lua/l4;

    .line 497
    .line 498
    const/4 v2, 0x1

    .line 499
    invoke-direct {v1, p0, v2}, Lua/l4;-><init>(Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;I)V

    .line 500
    .line 501
    .line 502
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 503
    .line 504
    .line 505
    return-void
.end method
