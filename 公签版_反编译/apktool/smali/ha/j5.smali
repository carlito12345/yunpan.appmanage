.class public final Lha/j5;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public final g:I

.field public final h:Landroid/media/projection/MediaProjection;

.field public final i:Landroid/view/Display;

.field public j:Landroid/hardware/display/VirtualDisplay;

.field public k:Landroid/app/Presentation;

.field public final l:Landroid/os/Handler;

.field public m:Landroid/content/Context;

.field public n:Landroid/view/WindowManager;

.field public p:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/yunpan/appmanage/ui/ActivityDisplayManager;Lcom/yunpan/appmanage/ui/ActivityDisplayManager;ILandroid/view/Display;Landroid/media/projection/MediaProjection;)V
    .locals 1

    .line 1
    const v0, 0x7f0e009f

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    const/4 p1, -0x1

    .line 8
    iput p1, p0, Lha/j5;->g:I

    .line 9
    .line 10
    new-instance p1, Landroid/os/Handler;

    .line 11
    .line 12
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lha/j5;->l:Landroid/os/Handler;

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lha/j5;->p:Landroid/view/View;

    .line 23
    .line 24
    iput p3, p0, Lha/j5;->g:I

    .line 25
    .line 26
    iput-object p4, p0, Lha/j5;->i:Landroid/view/Display;

    .line 27
    .line 28
    iput-object p5, p0, Lha/j5;->h:Landroid/media/projection/MediaProjection;

    .line 29
    .line 30
    return-void
.end method

.method public static a(Lha/j5;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lha/j5;->k:Landroid/app/Presentation;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p0, p0, Lha/j5;->k:Landroid/app/Presentation;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :try_start_0
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 24
    .line 25
    .line 26
    const v0, 0x106000d

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const/4 v1, 0x0

    .line 37
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 40
    .line 41
    .line 42
    const/4 v0, 0x2

    .line 43
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    .line 44
    .line 45
    .line 46
    const/16 v0, 0x200

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public static b(Lha/j5;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lha/j5;->k:Landroid/app/Presentation;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p0, p0, Lha/j5;->k:Landroid/app/Presentation;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 25
    .line 26
    .line 27
    const/16 v0, 0x228

    .line 28
    .line 29
    invoke-virtual {p0, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const/4 v1, 0x0

    .line 37
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 38
    .line 39
    const/high16 v1, 0x3f800000    # 1.0f

    .line 40
    .line 41
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 42
    .line 43
    const/4 v1, -0x1

    .line 44
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 45
    .line 46
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 49
    .line 50
    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 52
    .line 53
    const/16 v1, 0x1a

    .line 54
    .line 55
    if-lt v0, v1, :cond_1

    .line 56
    .line 57
    const/16 v0, 0x7f6

    .line 58
    .line 59
    invoke-virtual {p0, v0}, Landroid/view/Window;->setType(I)V

    .line 60
    .line 61
    .line 62
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 3

    .line 1
    iget-object v0, p0, Lha/j5;->l:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lha/j5;->j:Landroid/hardware/display/VirtualDisplay;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    .line 13
    const/16 v2, 0x13

    .line 14
    .line 15
    if-lt v1, v2, :cond_0

    .line 16
    .line 17
    invoke-static {v0}, Lcom/hierynomus/security/jce/a;->p(Landroid/hardware/display/VirtualDisplay;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lha/j5;->n:Landroid/view/WindowManager;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v1, p0, Lha/j5;->p:Landroid/view/View;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Lha/j5;->k:Landroid/app/Presentation;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 36
    .line 37
    .line 38
    :cond_2
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 18

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0b036b

    .line 7
    .line 8
    .line 9
    invoke-virtual {v7, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Lcom/google/android/material/datepicker/l;

    .line 14
    .line 15
    const/16 v2, 0xc

    .line 16
    .line 17
    invoke-direct {v1, v7, v2}, Lcom/google/android/material/datepicker/l;-><init>(Landroid/view/View$OnCreateContextMenuListener;I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    .line 22
    .line 23
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 24
    .line 25
    const/16 v1, 0x15

    .line 26
    .line 27
    if-ge v0, v1, :cond_0

    .line 28
    .line 29
    invoke-virtual/range {p0 .. p0}, Lha/j5;->dismiss()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    iget-object v1, v7, Lha/j5;->i:Landroid/view/Display;

    .line 34
    .line 35
    iget-object v2, v7, Lha/a4;->b:Landroid/content/Context;

    .line 36
    .line 37
    iget v3, v7, Lha/j5;->g:I

    .line 38
    .line 39
    if-nez v3, :cond_1

    .line 40
    .line 41
    new-instance v0, Landroid/app/Presentation;

    .line 42
    .line 43
    invoke-direct {v0, v2, v1}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    .line 44
    .line 45
    .line 46
    iput-object v0, v7, Lha/j5;->k:Landroid/app/Presentation;

    .line 47
    .line 48
    new-instance v0, Landroid/view/SurfaceView;

    .line 49
    .line 50
    invoke-direct {v0, v2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 51
    .line 52
    .line 53
    iget-object v2, v7, Lha/j5;->k:Landroid/app/Presentation;

    .line 54
    .line 55
    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 56
    .line 57
    .line 58
    new-instance v2, Landroid/util/DisplayMetrics;

    .line 59
    .line 60
    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 64
    .line 65
    .line 66
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 67
    .line 68
    iget v4, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 69
    .line 70
    iget v5, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    new-instance v8, Lha/f5;

    .line 77
    .line 78
    const/4 v6, 0x0

    .line 79
    move-object v1, v8

    .line 80
    move-object/from16 v2, p0

    .line 81
    .line 82
    invoke-direct/range {v1 .. v6}, Lha/f5;-><init>(Lha/j5;IIII)V

    .line 83
    .line 84
    .line 85
    invoke-interface {v0, v8}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 86
    .line 87
    .line 88
    iget-object v0, v7, Lha/j5;->k:Landroid/app/Presentation;

    .line 89
    .line 90
    invoke-virtual {v0}, Landroid/app/Presentation;->show()V

    .line 91
    .line 92
    .line 93
    goto/16 :goto_3

    .line 94
    .line 95
    :cond_1
    const/4 v4, 0x1

    .line 96
    if-ne v3, v4, :cond_2

    .line 97
    .line 98
    new-instance v0, Landroid/util/DisplayMetrics;

    .line 99
    .line 100
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 104
    .line 105
    .line 106
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 107
    .line 108
    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 109
    .line 110
    iget v5, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 111
    .line 112
    new-instance v0, Lha/g5;

    .line 113
    .line 114
    const/4 v6, 0x0

    .line 115
    invoke-direct {v0, v7, v2, v1, v6}, Lha/g5;-><init>(Lha/a4;Landroid/content/Context;Landroid/view/Display;I)V

    .line 116
    .line 117
    .line 118
    iput-object v0, v7, Lha/j5;->k:Landroid/app/Presentation;

    .line 119
    .line 120
    new-instance v0, Landroid/view/SurfaceView;

    .line 121
    .line 122
    invoke-direct {v0, v2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 123
    .line 124
    .line 125
    iget-object v1, v7, Lha/j5;->k:Landroid/app/Presentation;

    .line 126
    .line 127
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    new-instance v8, Lha/f5;

    .line 135
    .line 136
    const/4 v6, 0x1

    .line 137
    move-object v1, v8

    .line 138
    move-object/from16 v2, p0

    .line 139
    .line 140
    invoke-direct/range {v1 .. v6}, Lha/f5;-><init>(Lha/j5;IIII)V

    .line 141
    .line 142
    .line 143
    invoke-interface {v0, v8}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 144
    .line 145
    .line 146
    iget-object v0, v7, Lha/j5;->k:Landroid/app/Presentation;

    .line 147
    .line 148
    invoke-virtual {v0}, Landroid/app/Presentation;->show()V

    .line 149
    .line 150
    .line 151
    goto/16 :goto_3

    .line 152
    .line 153
    :cond_2
    const v4, 0x7f0e005b

    .line 154
    .line 155
    .line 156
    const/4 v5, 0x2

    .line 157
    if-ne v3, v5, :cond_3

    .line 158
    .line 159
    new-instance v0, Landroid/app/Presentation;

    .line 160
    .line 161
    invoke-direct {v0, v2, v1}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    .line 162
    .line 163
    .line 164
    iput-object v0, v7, Lha/j5;->k:Landroid/app/Presentation;

    .line 165
    .line 166
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 167
    .line 168
    .line 169
    iget-object v0, v7, Lha/j5;->k:Landroid/app/Presentation;

    .line 170
    .line 171
    invoke-virtual {v0}, Landroid/app/Presentation;->show()V

    .line 172
    .line 173
    .line 174
    goto/16 :goto_3

    .line 175
    .line 176
    :cond_3
    const/4 v6, 0x3

    .line 177
    if-ne v3, v6, :cond_4

    .line 178
    .line 179
    new-instance v0, Lha/g5;

    .line 180
    .line 181
    const/4 v3, 0x3

    .line 182
    invoke-direct {v0, v7, v2, v1, v3}, Lha/g5;-><init>(Lha/a4;Landroid/content/Context;Landroid/view/Display;I)V

    .line 183
    .line 184
    .line 185
    iput-object v0, v7, Lha/j5;->k:Landroid/app/Presentation;

    .line 186
    .line 187
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 188
    .line 189
    .line 190
    iget-object v0, v7, Lha/j5;->k:Landroid/app/Presentation;

    .line 191
    .line 192
    new-instance v1, Lha/h5;

    .line 193
    .line 194
    invoke-direct {v1}, Lha/h5;-><init>()V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 198
    .line 199
    .line 200
    iget-object v0, v7, Lha/j5;->k:Landroid/app/Presentation;

    .line 201
    .line 202
    new-instance v1, Lha/i5;

    .line 203
    .line 204
    invoke-direct {v1}, Lha/i5;-><init>()V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 208
    .line 209
    .line 210
    :try_start_0
    iget-object v0, v7, Lha/j5;->k:Landroid/app/Presentation;

    .line 211
    .line 212
    invoke-virtual {v0}, Landroid/app/Presentation;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    .line 214
    .line 215
    goto/16 :goto_3

    .line 216
    .line 217
    :catch_0
    move-exception v0

    .line 218
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 219
    .line 220
    .line 221
    goto/16 :goto_3

    .line 222
    .line 223
    :cond_4
    const/4 v4, 0x4

    .line 224
    if-ne v3, v4, :cond_5

    .line 225
    .line 226
    new-instance v0, Lha/g5;

    .line 227
    .line 228
    const/4 v3, 0x1

    .line 229
    invoke-direct {v0, v7, v2, v1, v3}, Lha/g5;-><init>(Lha/a4;Landroid/content/Context;Landroid/view/Display;I)V

    .line 230
    .line 231
    .line 232
    iput-object v0, v7, Lha/j5;->k:Landroid/app/Presentation;

    .line 233
    .line 234
    const v1, 0x7f0e005a

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 238
    .line 239
    .line 240
    iget-object v0, v7, Lha/j5;->k:Landroid/app/Presentation;

    .line 241
    .line 242
    invoke-virtual {v0}, Landroid/app/Presentation;->show()V

    .line 243
    .line 244
    .line 245
    goto/16 :goto_3

    .line 246
    .line 247
    :cond_5
    const/4 v4, 0x5

    .line 248
    if-ne v3, v4, :cond_6

    .line 249
    .line 250
    new-instance v0, Lha/g5;

    .line 251
    .line 252
    const/4 v3, 0x2

    .line 253
    invoke-direct {v0, v7, v2, v1, v3}, Lha/g5;-><init>(Lha/a4;Landroid/content/Context;Landroid/view/Display;I)V

    .line 254
    .line 255
    .line 256
    iput-object v0, v7, Lha/j5;->k:Landroid/app/Presentation;

    .line 257
    .line 258
    const v1, 0x7f0e005d

    .line 259
    .line 260
    .line 261
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 262
    .line 263
    .line 264
    iget-object v0, v7, Lha/j5;->k:Landroid/app/Presentation;

    .line 265
    .line 266
    invoke-virtual {v0}, Landroid/app/Presentation;->show()V

    .line 267
    .line 268
    .line 269
    goto/16 :goto_3

    .line 270
    .line 271
    :cond_6
    const/4 v4, 0x6

    .line 272
    const v6, 0x7f0e0058

    .line 273
    .line 274
    .line 275
    const/4 v8, 0x0

    .line 276
    const/16 v9, 0x7d2

    .line 277
    .line 278
    const/16 v10, 0x7f6

    .line 279
    .line 280
    const/16 v11, 0x1a

    .line 281
    .line 282
    const-string v12, "window"

    .line 283
    .line 284
    if-ne v3, v4, :cond_8

    .line 285
    .line 286
    invoke-virtual {v2, v1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    iput-object v1, v7, Lha/j5;->m:Landroid/content/Context;

    .line 291
    .line 292
    invoke-virtual {v1, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    check-cast v1, Landroid/view/WindowManager;

    .line 297
    .line 298
    iput-object v1, v7, Lha/j5;->n:Landroid/view/WindowManager;

    .line 299
    .line 300
    if-lt v0, v11, :cond_7

    .line 301
    .line 302
    const/16 v15, 0x7f6

    .line 303
    .line 304
    goto :goto_0

    .line 305
    :cond_7
    const/16 v15, 0x7d2

    .line 306
    .line 307
    :goto_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 308
    .line 309
    const/16 v16, 0x328

    .line 310
    .line 311
    const/16 v17, -0x3

    .line 312
    .line 313
    const/4 v13, -0x1

    .line 314
    const/4 v14, -0x1

    .line 315
    move-object v12, v0

    .line 316
    invoke-direct/range {v12 .. v17}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 317
    .line 318
    .line 319
    iget-object v1, v7, Lha/j5;->m:Landroid/content/Context;

    .line 320
    .line 321
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    invoke-virtual {v1, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    iput-object v1, v7, Lha/j5;->p:Landroid/view/View;

    .line 330
    .line 331
    iget-object v2, v7, Lha/j5;->n:Landroid/view/WindowManager;

    .line 332
    .line 333
    invoke-interface {v2, v1, v0}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 334
    .line 335
    .line 336
    goto/16 :goto_3

    .line 337
    .line 338
    :cond_8
    const/4 v4, 0x7

    .line 339
    if-ne v3, v4, :cond_a

    .line 340
    .line 341
    invoke-virtual {v2, v1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    .line 342
    .line 343
    .line 344
    move-result-object v2

    .line 345
    iput-object v2, v7, Lha/j5;->m:Landroid/content/Context;

    .line 346
    .line 347
    invoke-virtual {v2, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v2

    .line 351
    check-cast v2, Landroid/view/WindowManager;

    .line 352
    .line 353
    iput-object v2, v7, Lha/j5;->n:Landroid/view/WindowManager;

    .line 354
    .line 355
    new-instance v2, Landroid/util/DisplayMetrics;

    .line 356
    .line 357
    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 361
    .line 362
    .line 363
    if-lt v0, v11, :cond_9

    .line 364
    .line 365
    const/16 v15, 0x7f6

    .line 366
    .line 367
    goto :goto_1

    .line 368
    :cond_9
    const/16 v15, 0x7d2

    .line 369
    .line 370
    :goto_1
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 371
    .line 372
    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 373
    .line 374
    div-int/lit8 v13, v1, 0x2

    .line 375
    .line 376
    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 377
    .line 378
    div-int/lit8 v14, v1, 0x2

    .line 379
    .line 380
    const/16 v16, 0x328

    .line 381
    .line 382
    const/16 v17, -0x3

    .line 383
    .line 384
    move-object v12, v0

    .line 385
    invoke-direct/range {v12 .. v17}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 386
    .line 387
    .line 388
    const/16 v1, 0x11

    .line 389
    .line 390
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 391
    .line 392
    iget-object v1, v7, Lha/j5;->m:Landroid/content/Context;

    .line 393
    .line 394
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 395
    .line 396
    .line 397
    move-result-object v1

    .line 398
    invoke-virtual {v1, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 399
    .line 400
    .line 401
    move-result-object v1

    .line 402
    iput-object v1, v7, Lha/j5;->p:Landroid/view/View;

    .line 403
    .line 404
    iget-object v2, v7, Lha/j5;->n:Landroid/view/WindowManager;

    .line 405
    .line 406
    invoke-interface {v2, v1, v0}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 407
    .line 408
    .line 409
    goto :goto_3

    .line 410
    :cond_a
    const/16 v4, 0xa

    .line 411
    .line 412
    if-ne v3, v4, :cond_c

    .line 413
    .line 414
    invoke-virtual {v2, v1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    .line 415
    .line 416
    .line 417
    move-result-object v2

    .line 418
    iput-object v2, v7, Lha/j5;->m:Landroid/content/Context;

    .line 419
    .line 420
    invoke-virtual {v2, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 421
    .line 422
    .line 423
    move-result-object v2

    .line 424
    check-cast v2, Landroid/view/WindowManager;

    .line 425
    .line 426
    iput-object v2, v7, Lha/j5;->n:Landroid/view/WindowManager;

    .line 427
    .line 428
    if-lt v0, v11, :cond_b

    .line 429
    .line 430
    const/16 v15, 0x7f6

    .line 431
    .line 432
    goto :goto_2

    .line 433
    :cond_b
    const/16 v15, 0x7d2

    .line 434
    .line 435
    :goto_2
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 436
    .line 437
    const/16 v16, 0x328

    .line 438
    .line 439
    const/16 v17, -0x3

    .line 440
    .line 441
    const/4 v13, -0x1

    .line 442
    const/4 v14, -0x1

    .line 443
    move-object v12, v0

    .line 444
    invoke-direct/range {v12 .. v17}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 445
    .line 446
    .line 447
    iget-object v2, v7, Lha/j5;->m:Landroid/content/Context;

    .line 448
    .line 449
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 450
    .line 451
    .line 452
    move-result-object v2

    .line 453
    const v3, 0x7f0e005c

    .line 454
    .line 455
    .line 456
    invoke-virtual {v2, v3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 457
    .line 458
    .line 459
    move-result-object v2

    .line 460
    iput-object v2, v7, Lha/j5;->p:Landroid/view/View;

    .line 461
    .line 462
    const v3, 0x7f0b0584

    .line 463
    .line 464
    .line 465
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 466
    .line 467
    .line 468
    move-result-object v2

    .line 469
    check-cast v2, Landroid/view/SurfaceView;

    .line 470
    .line 471
    new-instance v3, Landroid/util/DisplayMetrics;

    .line 472
    .line 473
    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 474
    .line 475
    .line 476
    invoke-virtual {v1, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 477
    .line 478
    .line 479
    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 480
    .line 481
    iget v5, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 482
    .line 483
    iget v6, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 484
    .line 485
    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 486
    .line 487
    .line 488
    move-result-object v8

    .line 489
    new-instance v9, Lha/f5;

    .line 490
    .line 491
    const/4 v10, 0x2

    .line 492
    move-object v1, v9

    .line 493
    move-object/from16 v2, p0

    .line 494
    .line 495
    move v3, v4

    .line 496
    move v4, v5

    .line 497
    move v5, v6

    .line 498
    move v6, v10

    .line 499
    invoke-direct/range {v1 .. v6}, Lha/f5;-><init>(Lha/j5;IIII)V

    .line 500
    .line 501
    .line 502
    invoke-interface {v8, v9}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 503
    .line 504
    .line 505
    iget-object v1, v7, Lha/j5;->n:Landroid/view/WindowManager;

    .line 506
    .line 507
    iget-object v2, v7, Lha/j5;->p:Landroid/view/View;

    .line 508
    .line 509
    invoke-interface {v1, v2, v0}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 510
    .line 511
    .line 512
    :cond_c
    :goto_3
    return-void
.end method
