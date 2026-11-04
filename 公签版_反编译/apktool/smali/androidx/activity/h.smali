.class public final Landroidx/activity/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/activity/h;->a:I

    iput-object p2, p0, Landroidx/activity/h;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lke/i;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/activity/h;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/room/k;

    .line 4
    .line 5
    new-instance v1, Lke/i;

    .line 6
    .line 7
    invoke-direct {v1}, Lke/i;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v0, v0, Landroidx/room/k;->a:Lcom/yunpan/appmanage/db/MyDb_Impl;

    .line 11
    .line 12
    new-instance v2, La2/g1;

    .line 13
    .line 14
    const-string v3, "SELECT * FROM room_table_modification_log WHERE invalidated = 1;"

    .line 15
    .line 16
    invoke-direct {v2, v3}, La2/g1;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    const/4 v4, 0x2

    .line 21
    invoke-static {v0, v2, v3, v4, v3}, Landroidx/room/p;->query$default(Landroidx/room/p;Lc4/d;Landroid/os/CancellationSignal;ILjava/lang/Object;)Landroid/database/Cursor;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v1, v2}, Lke/i;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception v1

    .line 45
    goto :goto_2

    .line 46
    :cond_0
    invoke-static {v0, v3}, Lqf/c;->g(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    invoke-static {v1}, La9/o;->c(Lke/i;)Lke/i;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v1, v0, Lke/i;->a:Lke/f;

    .line 54
    .line 55
    invoke-virtual {v1}, Lke/f;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-nez v1, :cond_3

    .line 60
    .line 61
    iget-object v1, p0, Landroidx/activity/h;->b:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v1, Landroidx/room/k;

    .line 64
    .line 65
    iget-object v1, v1, Landroidx/room/k;->g:Lc4/e;

    .line 66
    .line 67
    const-string v2, "Required value was null."

    .line 68
    .line 69
    if-eqz v1, :cond_2

    .line 70
    .line 71
    iget-object v1, p0, Landroidx/activity/h;->b:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v1, Landroidx/room/k;

    .line 74
    .line 75
    iget-object v1, v1, Landroidx/room/k;->g:Lc4/e;

    .line 76
    .line 77
    if-eqz v1, :cond_1

    .line 78
    .line 79
    invoke-interface {v1}, Lc4/e;->f()I

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 84
    .line 85
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw v0

    .line 89
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 90
    .line 91
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw v0

    .line 95
    :cond_3
    :goto_1
    return-object v0

    .line 96
    :goto_2
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 97
    :catchall_1
    move-exception v2

    .line 98
    invoke-static {v0, v1}, Lqf/c;->g(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 99
    .line 100
    .line 101
    goto :goto_4

    .line 102
    :goto_3
    throw v2

    .line 103
    :goto_4
    goto :goto_3
.end method

.method public final run()V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v5, 0x1

    .line 8
    iget v6, v1, Landroidx/activity/h;->a:I

    .line 9
    .line 10
    packed-switch v6, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    iget-object v0, v1, Landroidx/activity/h;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lya/h;

    .line 16
    .line 17
    iget-object v2, v0, Lya/h;->y:Lz7/o;

    .line 18
    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    :try_start_0
    iput-boolean v5, v0, Lya/h;->j:Z

    .line 23
    .line 24
    iget-object v0, v0, Lya/h;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Lcom/yunpan/appmanage/service/AccService;->b(Lz7/o;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    :catch_0
    :goto_0
    return-void

    .line 30
    :pswitch_0
    iget-object v0, v1, Landroidx/activity/h;->b:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, Lwa/s;

    .line 33
    .line 34
    iget-object v2, v0, Lwa/s;->M:Landroid/speech/tts/TextToSpeech;

    .line 35
    .line 36
    if-nez v2, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_2

    .line 44
    .line 45
    iget-object v2, v0, Lwa/s;->e:Lcom/yunpan/appmanage/service/AccService;

    .line 46
    .line 47
    iget-object v2, v2, Lcom/yunpan/appmanage/service/AccService;->j:Landroid/os/Handler;

    .line 48
    .line 49
    iget-object v0, v0, Lwa/s;->N:Landroidx/activity/h;

    .line 50
    .line 51
    const-wide/16 v3, 0x3e8

    .line 52
    .line 53
    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    invoke-virtual {v0}, Lwa/s;->q()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 58
    .line 59
    .line 60
    :catch_1
    :goto_1
    return-void

    .line 61
    :pswitch_1
    iget-object v0, v1, Landroidx/activity/h;->b:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v0, Lkf/f;

    .line 64
    .line 65
    iput-boolean v4, v0, Lkf/f;->c:Z

    .line 66
    .line 67
    iget-object v3, v0, Lkf/f;->e:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 70
    .line 71
    iget-object v4, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->M:Lf1/d;

    .line 72
    .line 73
    if-eqz v4, :cond_3

    .line 74
    .line 75
    invoke-virtual {v4}, Lf1/d;->f()Z

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    if-eqz v4, :cond_3

    .line 80
    .line 81
    iget v2, v0, Lkf/f;->b:I

    .line 82
    .line 83
    invoke-virtual {v0, v2}, Lkf/f;->d(I)V

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_3
    iget v4, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->L:I

    .line 88
    .line 89
    if-ne v4, v2, :cond_4

    .line 90
    .line 91
    iget v0, v0, Lkf/f;->b:I

    .line 92
    .line 93
    invoke-virtual {v3, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->C(I)V

    .line 94
    .line 95
    .line 96
    :cond_4
    :goto_2
    return-void

    .line 97
    :pswitch_2
    iget-object v0, v1, Landroidx/activity/h;->b:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 100
    .line 101
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    .line 102
    .line 103
    if-eqz v0, :cond_5

    .line 104
    .line 105
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->v:Lw/j;

    .line 106
    .line 107
    if-eqz v0, :cond_5

    .line 108
    .line 109
    invoke-virtual {v0}, Lw/j;->l()Z

    .line 110
    .line 111
    .line 112
    :cond_5
    return-void

    .line 113
    :pswitch_3
    iget-object v0, v1, Landroidx/activity/h;->b:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast v0, Lw/t1;

    .line 116
    .line 117
    iput-object v3, v0, Lw/t1;->l:Landroidx/activity/h;

    .line 118
    .line 119
    invoke-virtual {v0}, Lw/t1;->drawableStateChanged()V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :pswitch_4
    iget-object v0, v1, Landroidx/activity/h;->b:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast v0, Ls/e;

    .line 126
    .line 127
    invoke-virtual {v0, v5}, Ls/f;->a(Z)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :pswitch_5
    iget-object v0, v1, Landroidx/activity/h;->b:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 137
    .line 138
    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->c:Lq7/p;

    .line 139
    .line 140
    iget-object v0, v0, Lq7/p;->g:Lcom/google/android/material/internal/CheckableImageButton;

    .line 141
    .line 142
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :pswitch_6
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    iget-object v2, v1, Landroidx/activity/h;->b:Ljava/lang/Object;

    .line 154
    .line 155
    check-cast v2, Lpa/e;

    .line 156
    .line 157
    iget-object v2, v2, Lpa/e;->h:Ljava/lang/String;

    .line 158
    .line 159
    const/16 v3, 0x2712

    .line 160
    .line 161
    invoke-virtual {v0, v3, v2}, Lwa/s;->j(ILjava/lang/String;)V

    .line 162
    .line 163
    .line 164
    return-void

    .line 165
    :pswitch_7
    iget-object v6, v1, Landroidx/activity/h;->b:Ljava/lang/Object;

    .line 166
    .line 167
    check-cast v6, Landroidx/leanback/widget/picker/DatePicker;

    .line 168
    .line 169
    iget v7, v6, Landroidx/leanback/widget/picker/DatePicker;->w:I

    .line 170
    .line 171
    iget v8, v6, Landroidx/leanback/widget/picker/DatePicker;->v:I

    .line 172
    .line 173
    iget v9, v6, Landroidx/leanback/widget/picker/DatePicker;->x:I

    .line 174
    .line 175
    filled-new-array {v7, v8, v9}, [I

    .line 176
    .line 177
    .line 178
    move-result-object v7

    .line 179
    const/4 v8, 0x1

    .line 180
    const/4 v9, 0x1

    .line 181
    :goto_3
    if-ltz v2, :cond_10

    .line 182
    .line 183
    aget v10, v7, v2

    .line 184
    .line 185
    if-gez v10, :cond_6

    .line 186
    .line 187
    goto/16 :goto_c

    .line 188
    .line 189
    :cond_6
    sget-object v11, Landroidx/leanback/widget/picker/DatePicker;->E:[I

    .line 190
    .line 191
    aget v11, v11, v2

    .line 192
    .line 193
    iget-object v12, v6, Lo1/d;->c:Ljava/util/ArrayList;

    .line 194
    .line 195
    if-nez v12, :cond_7

    .line 196
    .line 197
    move-object v10, v3

    .line 198
    goto :goto_4

    .line 199
    :cond_7
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v10

    .line 203
    check-cast v10, Lo1/e;

    .line 204
    .line 205
    :goto_4
    if-eqz v8, :cond_9

    .line 206
    .line 207
    iget-object v12, v6, Landroidx/leanback/widget/picker/DatePicker;->A:Ljava/util/Calendar;

    .line 208
    .line 209
    invoke-virtual {v12, v11}, Ljava/util/Calendar;->get(I)I

    .line 210
    .line 211
    .line 212
    move-result v12

    .line 213
    iget v13, v10, Lo1/e;->b:I

    .line 214
    .line 215
    if-eq v12, v13, :cond_8

    .line 216
    .line 217
    iput v12, v10, Lo1/e;->b:I

    .line 218
    .line 219
    :goto_5
    const/4 v12, 0x1

    .line 220
    goto :goto_6

    .line 221
    :cond_8
    const/4 v12, 0x0

    .line 222
    goto :goto_6

    .line 223
    :cond_9
    iget-object v12, v6, Landroidx/leanback/widget/picker/DatePicker;->C:Ljava/util/Calendar;

    .line 224
    .line 225
    invoke-virtual {v12, v11}, Ljava/util/Calendar;->getActualMinimum(I)I

    .line 226
    .line 227
    .line 228
    move-result v12

    .line 229
    iget v13, v10, Lo1/e;->b:I

    .line 230
    .line 231
    if-eq v12, v13, :cond_8

    .line 232
    .line 233
    iput v12, v10, Lo1/e;->b:I

    .line 234
    .line 235
    goto :goto_5

    .line 236
    :goto_6
    if-eqz v9, :cond_b

    .line 237
    .line 238
    iget-object v13, v6, Landroidx/leanback/widget/picker/DatePicker;->B:Ljava/util/Calendar;

    .line 239
    .line 240
    invoke-virtual {v13, v11}, Ljava/util/Calendar;->get(I)I

    .line 241
    .line 242
    .line 243
    move-result v13

    .line 244
    iget v14, v10, Lo1/e;->c:I

    .line 245
    .line 246
    if-eq v13, v14, :cond_a

    .line 247
    .line 248
    iput v13, v10, Lo1/e;->c:I

    .line 249
    .line 250
    :goto_7
    const/4 v13, 0x1

    .line 251
    goto :goto_8

    .line 252
    :cond_a
    const/4 v13, 0x0

    .line 253
    :goto_8
    or-int/2addr v12, v13

    .line 254
    goto :goto_9

    .line 255
    :cond_b
    iget-object v13, v6, Landroidx/leanback/widget/picker/DatePicker;->C:Ljava/util/Calendar;

    .line 256
    .line 257
    invoke-virtual {v13, v11}, Ljava/util/Calendar;->getActualMaximum(I)I

    .line 258
    .line 259
    .line 260
    move-result v13

    .line 261
    iget v14, v10, Lo1/e;->c:I

    .line 262
    .line 263
    if-eq v13, v14, :cond_a

    .line 264
    .line 265
    iput v13, v10, Lo1/e;->c:I

    .line 266
    .line 267
    goto :goto_7

    .line 268
    :goto_9
    iget-object v13, v6, Landroidx/leanback/widget/picker/DatePicker;->C:Ljava/util/Calendar;

    .line 269
    .line 270
    invoke-virtual {v13, v11}, Ljava/util/Calendar;->get(I)I

    .line 271
    .line 272
    .line 273
    move-result v13

    .line 274
    iget-object v14, v6, Landroidx/leanback/widget/picker/DatePicker;->A:Ljava/util/Calendar;

    .line 275
    .line 276
    invoke-virtual {v14, v11}, Ljava/util/Calendar;->get(I)I

    .line 277
    .line 278
    .line 279
    move-result v14

    .line 280
    if-ne v13, v14, :cond_c

    .line 281
    .line 282
    const/4 v13, 0x1

    .line 283
    goto :goto_a

    .line 284
    :cond_c
    const/4 v13, 0x0

    .line 285
    :goto_a
    and-int/2addr v8, v13

    .line 286
    iget-object v13, v6, Landroidx/leanback/widget/picker/DatePicker;->C:Ljava/util/Calendar;

    .line 287
    .line 288
    invoke-virtual {v13, v11}, Ljava/util/Calendar;->get(I)I

    .line 289
    .line 290
    .line 291
    move-result v13

    .line 292
    iget-object v14, v6, Landroidx/leanback/widget/picker/DatePicker;->B:Ljava/util/Calendar;

    .line 293
    .line 294
    invoke-virtual {v14, v11}, Ljava/util/Calendar;->get(I)I

    .line 295
    .line 296
    .line 297
    move-result v14

    .line 298
    if-ne v13, v14, :cond_d

    .line 299
    .line 300
    const/4 v13, 0x1

    .line 301
    goto :goto_b

    .line 302
    :cond_d
    const/4 v13, 0x0

    .line 303
    :goto_b
    and-int/2addr v9, v13

    .line 304
    if-eqz v12, :cond_e

    .line 305
    .line 306
    aget v12, v7, v2

    .line 307
    .line 308
    invoke-virtual {v6, v12, v10}, Lo1/d;->a(ILo1/e;)V

    .line 309
    .line 310
    .line 311
    :cond_e
    aget v10, v7, v2

    .line 312
    .line 313
    iget-object v12, v6, Landroidx/leanback/widget/picker/DatePicker;->C:Ljava/util/Calendar;

    .line 314
    .line 315
    invoke-virtual {v12, v11}, Ljava/util/Calendar;->get(I)I

    .line 316
    .line 317
    .line 318
    move-result v11

    .line 319
    iget-object v12, v6, Lo1/d;->c:Ljava/util/ArrayList;

    .line 320
    .line 321
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v12

    .line 325
    check-cast v12, Lo1/e;

    .line 326
    .line 327
    iget v13, v12, Lo1/e;->a:I

    .line 328
    .line 329
    if-eq v13, v11, :cond_f

    .line 330
    .line 331
    iput v11, v12, Lo1/e;->a:I

    .line 332
    .line 333
    iget-object v12, v6, Lo1/d;->b:Ljava/util/ArrayList;

    .line 334
    .line 335
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v12

    .line 339
    check-cast v12, Landroidx/leanback/widget/VerticalGridView;

    .line 340
    .line 341
    if-eqz v12, :cond_f

    .line 342
    .line 343
    iget-object v13, v6, Lo1/d;->c:Ljava/util/ArrayList;

    .line 344
    .line 345
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object v10

    .line 349
    check-cast v10, Lo1/e;

    .line 350
    .line 351
    iget v10, v10, Lo1/e;->b:I

    .line 352
    .line 353
    sub-int/2addr v11, v10

    .line 354
    invoke-virtual {v12, v11}, Landroidx/leanback/widget/f;->setSelectedPosition(I)V

    .line 355
    .line 356
    .line 357
    :cond_f
    :goto_c
    add-int/2addr v2, v0

    .line 358
    goto/16 :goto_3

    .line 359
    .line 360
    :cond_10
    return-void

    .line 361
    :pswitch_8
    iget-object v0, v1, Landroidx/activity/h;->b:Ljava/lang/Object;

    .line 362
    .line 363
    check-cast v0, Lk4/g;

    .line 364
    .line 365
    invoke-virtual {v0, v4}, Lk4/g;->setScrollState(I)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v0}, Lk4/g;->i()V

    .line 369
    .line 370
    .line 371
    return-void

    .line 372
    :pswitch_9
    iget-object v0, v1, Landroidx/activity/h;->b:Ljava/lang/Object;

    .line 373
    .line 374
    check-cast v0, Lf2/u0;

    .line 375
    .line 376
    iget-object v2, v0, Lf2/u0;->w:[Lf2/b1;

    .line 377
    .line 378
    array-length v6, v2

    .line 379
    :goto_d
    if-ge v4, v6, :cond_12

    .line 380
    .line 381
    aget-object v7, v2, v4

    .line 382
    .line 383
    invoke-virtual {v7, v5}, Lf2/b1;->r(Z)V

    .line 384
    .line 385
    .line 386
    iget-object v8, v7, Lf2/b1;->h:La1/i;

    .line 387
    .line 388
    if-eqz v8, :cond_11

    .line 389
    .line 390
    iget-object v9, v7, Lf2/b1;->e:Lb2/d;

    .line 391
    .line 392
    invoke-virtual {v8, v9}, La1/i;->C(Lb2/d;)V

    .line 393
    .line 394
    .line 395
    iput-object v3, v7, Lf2/b1;->h:La1/i;

    .line 396
    .line 397
    iput-object v3, v7, Lf2/b1;->g:Lr1/p;

    .line 398
    .line 399
    :cond_11
    add-int/2addr v4, v5

    .line 400
    goto :goto_d

    .line 401
    :cond_12
    iget-object v0, v0, Lf2/u0;->m:Lv3/f;

    .line 402
    .line 403
    iget-object v2, v0, Lv3/f;->c:Ljava/lang/Object;

    .line 404
    .line 405
    check-cast v2, Ll2/o;

    .line 406
    .line 407
    if-eqz v2, :cond_13

    .line 408
    .line 409
    invoke-interface {v2}, Ll2/o;->a()V

    .line 410
    .line 411
    .line 412
    iput-object v3, v0, Lv3/f;->c:Ljava/lang/Object;

    .line 413
    .line 414
    :cond_13
    iput-object v3, v0, Lv3/f;->d:Ljava/lang/Object;

    .line 415
    .line 416
    return-void

    .line 417
    :pswitch_a
    iget-object v0, v1, Landroidx/activity/h;->b:Ljava/lang/Object;

    .line 418
    .line 419
    check-cast v0, Lv3/f;

    .line 420
    .line 421
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 422
    .line 423
    .line 424
    :goto_e
    :try_start_2
    iget-object v2, v0, Lv3/f;->c:Ljava/lang/Object;

    .line 425
    .line 426
    check-cast v2, Ljava/lang/ref/ReferenceQueue;

    .line 427
    .line 428
    invoke-virtual {v2}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    .line 429
    .line 430
    .line 431
    move-result-object v2

    .line 432
    check-cast v2, Lh5/b;

    .line 433
    .line 434
    invoke-virtual {v0, v2}, Lv3/f;->t(Lh5/b;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 435
    .line 436
    .line 437
    goto :goto_e

    .line 438
    :catch_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 439
    .line 440
    .line 441
    move-result-object v2

    .line 442
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 443
    .line 444
    .line 445
    goto :goto_e

    .line 446
    :pswitch_b
    const/16 v0, 0xa

    .line 447
    .line 448
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 449
    .line 450
    .line 451
    iget-object v0, v1, Landroidx/activity/h;->b:Ljava/lang/Object;

    .line 452
    .line 453
    check-cast v0, Ljava/lang/Runnable;

    .line 454
    .line 455
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 456
    .line 457
    .line 458
    return-void

    .line 459
    :pswitch_c
    iget-object v0, v1, Landroidx/activity/h;->b:Ljava/lang/Object;

    .line 460
    .line 461
    check-cast v0, Lf1/d;

    .line 462
    .line 463
    invoke-virtual {v0, v4}, Lf1/d;->m(I)V

    .line 464
    .line 465
    .line 466
    return-void

    .line 467
    :pswitch_d
    iget-object v0, v1, Landroidx/activity/h;->b:Ljava/lang/Object;

    .line 468
    .line 469
    check-cast v0, Landroid/view/View;

    .line 470
    .line 471
    invoke-virtual {v0, v5}, Landroid/view/View;->setClickable(Z)V

    .line 472
    .line 473
    .line 474
    return-void

    .line 475
    :pswitch_e
    iget-object v0, v1, Landroidx/activity/h;->b:Ljava/lang/Object;

    .line 476
    .line 477
    check-cast v0, Lcom/bumptech/glide/p;

    .line 478
    .line 479
    iget-object v2, v0, Lcom/bumptech/glide/p;->c:Lcom/bumptech/glide/manager/g;

    .line 480
    .line 481
    invoke-interface {v2, v0}, Lcom/bumptech/glide/manager/g;->h(Lcom/bumptech/glide/manager/h;)V

    .line 482
    .line 483
    .line 484
    return-void

    .line 485
    :pswitch_f
    iget-object v2, v1, Landroidx/activity/h;->b:Ljava/lang/Object;

    .line 486
    .line 487
    check-cast v2, Lb1/g;

    .line 488
    .line 489
    iget-boolean v3, v2, Lb1/g;->p:Z

    .line 490
    .line 491
    if-nez v3, :cond_14

    .line 492
    .line 493
    goto/16 :goto_11

    .line 494
    .line 495
    :cond_14
    iget-boolean v3, v2, Lb1/g;->m:Z

    .line 496
    .line 497
    iget-object v5, v2, Lb1/g;->a:Lb1/a;

    .line 498
    .line 499
    if-eqz v3, :cond_15

    .line 500
    .line 501
    iput-boolean v4, v2, Lb1/g;->m:Z

    .line 502
    .line 503
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 504
    .line 505
    .line 506
    move-result-wide v6

    .line 507
    iput-wide v6, v5, Lb1/a;->e:J

    .line 508
    .line 509
    const-wide/16 v8, -0x1

    .line 510
    .line 511
    iput-wide v8, v5, Lb1/a;->g:J

    .line 512
    .line 513
    iput-wide v6, v5, Lb1/a;->f:J

    .line 514
    .line 515
    const/high16 v3, 0x3f000000    # 0.5f

    .line 516
    .line 517
    iput v3, v5, Lb1/a;->h:F

    .line 518
    .line 519
    :cond_15
    iget-wide v6, v5, Lb1/a;->g:J

    .line 520
    .line 521
    const-wide/16 v8, 0x0

    .line 522
    .line 523
    cmp-long v3, v6, v8

    .line 524
    .line 525
    if-lez v3, :cond_16

    .line 526
    .line 527
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 528
    .line 529
    .line 530
    move-result-wide v6

    .line 531
    iget-wide v10, v5, Lb1/a;->g:J

    .line 532
    .line 533
    iget v3, v5, Lb1/a;->i:I

    .line 534
    .line 535
    int-to-long v12, v3

    .line 536
    add-long/2addr v10, v12

    .line 537
    cmp-long v3, v6, v10

    .line 538
    .line 539
    if-lez v3, :cond_16

    .line 540
    .line 541
    goto :goto_f

    .line 542
    :cond_16
    invoke-virtual {v2}, Lb1/g;->e()Z

    .line 543
    .line 544
    .line 545
    move-result v3

    .line 546
    if-nez v3, :cond_17

    .line 547
    .line 548
    :goto_f
    iput-boolean v4, v2, Lb1/g;->p:Z

    .line 549
    .line 550
    goto :goto_11

    .line 551
    :cond_17
    iget-boolean v3, v2, Lb1/g;->n:Z

    .line 552
    .line 553
    iget-object v6, v2, Lb1/g;->c:Landroid/widget/ListView;

    .line 554
    .line 555
    if-eqz v3, :cond_18

    .line 556
    .line 557
    iput-boolean v4, v2, Lb1/g;->n:Z

    .line 558
    .line 559
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 560
    .line 561
    .line 562
    move-result-wide v12

    .line 563
    const/16 v16, 0x0

    .line 564
    .line 565
    const/16 v17, 0x0

    .line 566
    .line 567
    const/4 v14, 0x3

    .line 568
    const/4 v15, 0x0

    .line 569
    move-wide v10, v12

    .line 570
    invoke-static/range {v10 .. v17}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 571
    .line 572
    .line 573
    move-result-object v3

    .line 574
    invoke-virtual {v6, v3}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 575
    .line 576
    .line 577
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 578
    .line 579
    .line 580
    :cond_18
    iget-wide v10, v5, Lb1/a;->f:J

    .line 581
    .line 582
    cmp-long v3, v10, v8

    .line 583
    .line 584
    if-eqz v3, :cond_1c

    .line 585
    .line 586
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 587
    .line 588
    .line 589
    move-result-wide v7

    .line 590
    invoke-virtual {v5, v7, v8}, Lb1/a;->a(J)F

    .line 591
    .line 592
    .line 593
    move-result v3

    .line 594
    const/high16 v9, -0x3f800000    # -4.0f

    .line 595
    .line 596
    mul-float v9, v9, v3

    .line 597
    .line 598
    mul-float v9, v9, v3

    .line 599
    .line 600
    const/high16 v10, 0x40800000    # 4.0f

    .line 601
    .line 602
    mul-float v3, v3, v10

    .line 603
    .line 604
    add-float/2addr v3, v9

    .line 605
    iget-wide v9, v5, Lb1/a;->f:J

    .line 606
    .line 607
    sub-long v9, v7, v9

    .line 608
    .line 609
    iput-wide v7, v5, Lb1/a;->f:J

    .line 610
    .line 611
    long-to-float v7, v9

    .line 612
    mul-float v7, v7, v3

    .line 613
    .line 614
    iget v3, v5, Lb1/a;->d:F

    .line 615
    .line 616
    mul-float v7, v7, v3

    .line 617
    .line 618
    float-to-int v3, v7

    .line 619
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 620
    .line 621
    const/16 v7, 0x13

    .line 622
    .line 623
    iget-object v2, v2, Lb1/g;->r:Lw/t1;

    .line 624
    .line 625
    if-lt v5, v7, :cond_19

    .line 626
    .line 627
    invoke-static {v2, v3}, Lb1/h;->b(Landroid/widget/ListView;I)V

    .line 628
    .line 629
    .line 630
    goto :goto_10

    .line 631
    :cond_19
    invoke-virtual {v2}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 632
    .line 633
    .line 634
    move-result v5

    .line 635
    if-ne v5, v0, :cond_1a

    .line 636
    .line 637
    goto :goto_10

    .line 638
    :cond_1a
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 639
    .line 640
    .line 641
    move-result-object v0

    .line 642
    if-nez v0, :cond_1b

    .line 643
    .line 644
    goto :goto_10

    .line 645
    :cond_1b
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 646
    .line 647
    .line 648
    move-result v0

    .line 649
    sub-int/2addr v0, v3

    .line 650
    invoke-virtual {v2, v5, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 651
    .line 652
    .line 653
    :goto_10
    sget-object v0, Lx0/b1;->a:Ljava/util/WeakHashMap;

    .line 654
    .line 655
    invoke-static {v6, v1}, Lx0/j0;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 656
    .line 657
    .line 658
    :goto_11
    return-void

    .line 659
    :cond_1c
    new-instance v0, Ljava/lang/RuntimeException;

    .line 660
    .line 661
    const-string v2, "Cannot compute scroll delta before calling start()"

    .line 662
    .line 663
    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 664
    .line 665
    .line 666
    throw v0

    .line 667
    :pswitch_10
    iget-object v0, v1, Landroidx/activity/h;->b:Ljava/lang/Object;

    .line 668
    .line 669
    check-cast v0, Landroidx/viewpager2/adapter/f;

    .line 670
    .line 671
    iput-boolean v4, v0, Landroidx/viewpager2/adapter/f;->k:Z

    .line 672
    .line 673
    invoke-virtual {v0}, Landroidx/viewpager2/adapter/f;->r()V

    .line 674
    .line 675
    .line 676
    return-void

    .line 677
    :pswitch_11
    iget-object v0, v1, Landroidx/activity/h;->b:Ljava/lang/Object;

    .line 678
    .line 679
    check-cast v0, Landroidx/room/k;

    .line 680
    .line 681
    iget-object v0, v0, Landroidx/room/k;->a:Lcom/yunpan/appmanage/db/MyDb_Impl;

    .line 682
    .line 683
    invoke-virtual {v0}, Landroidx/room/p;->getCloseLock$room_runtime_release()Ljava/util/concurrent/locks/Lock;

    .line 684
    .line 685
    .line 686
    move-result-object v2

    .line 687
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 688
    .line 689
    .line 690
    :try_start_3
    iget-object v0, v1, Landroidx/activity/h;->b:Ljava/lang/Object;

    .line 691
    .line 692
    check-cast v0, Landroidx/room/k;

    .line 693
    .line 694
    invoke-virtual {v0}, Landroidx/room/k;->a()Z

    .line 695
    .line 696
    .line 697
    move-result v0
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 698
    if-nez v0, :cond_1d

    .line 699
    .line 700
    :goto_12
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 701
    .line 702
    .line 703
    iget-object v0, v1, Landroidx/activity/h;->b:Ljava/lang/Object;

    .line 704
    .line 705
    check-cast v0, Landroidx/room/k;

    .line 706
    .line 707
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 708
    .line 709
    .line 710
    goto/16 :goto_17

    .line 711
    .line 712
    :cond_1d
    :try_start_4
    iget-object v0, v1, Landroidx/activity/h;->b:Ljava/lang/Object;

    .line 713
    .line 714
    check-cast v0, Landroidx/room/k;

    .line 715
    .line 716
    iget-object v0, v0, Landroidx/room/k;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 717
    .line 718
    invoke-virtual {v0, v5, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 719
    .line 720
    .line 721
    move-result v0

    .line 722
    if-nez v0, :cond_1e

    .line 723
    .line 724
    goto :goto_12

    .line 725
    :cond_1e
    iget-object v0, v1, Landroidx/activity/h;->b:Ljava/lang/Object;

    .line 726
    .line 727
    check-cast v0, Landroidx/room/k;

    .line 728
    .line 729
    iget-object v0, v0, Landroidx/room/k;->a:Lcom/yunpan/appmanage/db/MyDb_Impl;

    .line 730
    .line 731
    invoke-virtual {v0}, Landroidx/room/p;->inTransaction()Z

    .line 732
    .line 733
    .line 734
    move-result v0

    .line 735
    if-eqz v0, :cond_1f

    .line 736
    .line 737
    goto :goto_12

    .line 738
    :cond_1f
    iget-object v0, v1, Landroidx/activity/h;->b:Ljava/lang/Object;

    .line 739
    .line 740
    check-cast v0, Landroidx/room/k;

    .line 741
    .line 742
    iget-object v0, v0, Landroidx/room/k;->a:Lcom/yunpan/appmanage/db/MyDb_Impl;

    .line 743
    .line 744
    invoke-virtual {v0}, Landroidx/room/p;->getOpenHelper()Lc4/b;

    .line 745
    .line 746
    .line 747
    move-result-object v0

    .line 748
    check-cast v0, Ld4/g;

    .line 749
    .line 750
    invoke-virtual {v0}, Ld4/g;->r()Lc4/a;

    .line 751
    .line 752
    .line 753
    move-result-object v3

    .line 754
    invoke-interface {v3}, Lc4/a;->o()V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 755
    .line 756
    .line 757
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Landroidx/activity/h;->a()Lke/i;

    .line 758
    .line 759
    .line 760
    move-result-object v0

    .line 761
    invoke-interface {v3}, Lc4/a;->n()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 762
    .line 763
    .line 764
    :try_start_6
    invoke-interface {v3}, Lc4/a;->u()V
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 765
    .line 766
    .line 767
    :goto_13
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 768
    .line 769
    .line 770
    iget-object v2, v1, Landroidx/activity/h;->b:Ljava/lang/Object;

    .line 771
    .line 772
    check-cast v2, Landroidx/room/k;

    .line 773
    .line 774
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 775
    .line 776
    .line 777
    goto :goto_14

    .line 778
    :catchall_0
    move-exception v0

    .line 779
    goto :goto_18

    .line 780
    :catchall_1
    move-exception v0

    .line 781
    :try_start_7
    invoke-interface {v3}, Lc4/a;->u()V

    .line 782
    .line 783
    .line 784
    throw v0
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 785
    :catch_3
    :try_start_8
    sget-object v0, Lje/t;->a:Lje/t;

    .line 786
    .line 787
    goto :goto_13

    .line 788
    :catch_4
    sget-object v0, Lje/t;->a:Lje/t;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 789
    .line 790
    goto :goto_13

    .line 791
    :goto_14
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 792
    .line 793
    .line 794
    move-result v2

    .line 795
    if-nez v2, :cond_21

    .line 796
    .line 797
    iget-object v2, v1, Landroidx/activity/h;->b:Ljava/lang/Object;

    .line 798
    .line 799
    check-cast v2, Landroidx/room/k;

    .line 800
    .line 801
    iget-object v3, v2, Landroidx/room/k;->i:Ly/f;

    .line 802
    .line 803
    monitor-enter v3

    .line 804
    :try_start_9
    iget-object v2, v2, Landroidx/room/k;->i:Ly/f;

    .line 805
    .line 806
    invoke-virtual {v2}, Ly/f;->iterator()Ljava/util/Iterator;

    .line 807
    .line 808
    .line 809
    move-result-object v2

    .line 810
    :goto_15
    move-object v4, v2

    .line 811
    check-cast v4, Ly/b;

    .line 812
    .line 813
    invoke-virtual {v4}, Ly/b;->hasNext()Z

    .line 814
    .line 815
    .line 816
    move-result v5

    .line 817
    if-eqz v5, :cond_20

    .line 818
    .line 819
    invoke-virtual {v4}, Ly/b;->next()Ljava/lang/Object;

    .line 820
    .line 821
    .line 822
    move-result-object v4

    .line 823
    check-cast v4, Ljava/util/Map$Entry;

    .line 824
    .line 825
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 826
    .line 827
    .line 828
    move-result-object v4

    .line 829
    check-cast v4, Landroidx/room/j;

    .line 830
    .line 831
    invoke-virtual {v4, v0}, Landroidx/room/j;->a(Ljava/util/Set;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 832
    .line 833
    .line 834
    goto :goto_15

    .line 835
    :catchall_2
    move-exception v0

    .line 836
    goto :goto_16

    .line 837
    :cond_20
    monitor-exit v3

    .line 838
    goto :goto_17

    .line 839
    :goto_16
    monitor-exit v3

    .line 840
    throw v0

    .line 841
    :cond_21
    :goto_17
    return-void

    .line 842
    :goto_18
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 843
    .line 844
    .line 845
    iget-object v2, v1, Landroidx/activity/h;->b:Ljava/lang/Object;

    .line 846
    .line 847
    check-cast v2, Landroidx/room/k;

    .line 848
    .line 849
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 850
    .line 851
    .line 852
    throw v0

    .line 853
    :pswitch_12
    iget-object v0, v1, Landroidx/activity/h;->b:Ljava/lang/Object;

    .line 854
    .line 855
    check-cast v0, Landroidx/leanback/widget/g0;

    .line 856
    .line 857
    iget-object v0, v0, Landroidx/leanback/widget/g0;->b:Landroid/view/ViewGroup;

    .line 858
    .line 859
    check-cast v0, Landroidx/leanback/widget/SearchBar;

    .line 860
    .line 861
    iput-boolean v5, v0, Landroidx/leanback/widget/SearchBar;->j:Z

    .line 862
    .line 863
    iget-object v0, v0, Landroidx/leanback/widget/SearchBar;->b:Landroidx/leanback/widget/SpeechOrbView;

    .line 864
    .line 865
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 866
    .line 867
    .line 868
    return-void

    .line 869
    :pswitch_13
    iget-object v0, v1, Landroidx/activity/h;->b:Ljava/lang/Object;

    .line 870
    .line 871
    check-cast v0, Landroidx/leanback/widget/q;

    .line 872
    .line 873
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 874
    .line 875
    .line 876
    return-void

    .line 877
    :pswitch_14
    :try_start_a
    iget-object v0, v1, Landroidx/activity/h;->b:Ljava/lang/Object;

    .line 878
    .line 879
    check-cast v0, Landroidx/activity/m;

    .line 880
    .line 881
    invoke-static {v0}, Landroidx/activity/m;->n(Landroidx/activity/m;)V
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_5

    .line 882
    .line 883
    .line 884
    goto :goto_1b

    .line 885
    :catch_5
    move-exception v0

    .line 886
    goto :goto_19

    .line 887
    :catch_6
    move-exception v0

    .line 888
    goto :goto_1a

    .line 889
    :goto_19
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 890
    .line 891
    .line 892
    move-result-object v2

    .line 893
    const-string v3, "Attempt to invoke virtual method \'android.os.Handler android.app.FragmentHostCallback.getHandler()\' on a null object reference"

    .line 894
    .line 895
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 896
    .line 897
    .line 898
    move-result v2

    .line 899
    if-eqz v2, :cond_22

    .line 900
    .line 901
    goto :goto_1b

    .line 902
    :cond_22
    throw v0

    .line 903
    :goto_1a
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 904
    .line 905
    .line 906
    move-result-object v2

    .line 907
    const-string v3, "Can not perform this action after onSaveInstanceState"

    .line 908
    .line 909
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 910
    .line 911
    .line 912
    move-result v2

    .line 913
    if-eqz v2, :cond_23

    .line 914
    .line 915
    :goto_1b
    return-void

    .line 916
    :cond_23
    goto :goto_1d

    .line 917
    :goto_1c
    throw v0

    .line 918
    :goto_1d
    goto :goto_1c

    .line 919
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
