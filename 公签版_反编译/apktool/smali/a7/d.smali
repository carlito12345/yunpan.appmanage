.class public final La7/d;
.super Lw/p;
.source "SourceFile"


# static fields
.field public static final A:[I

.field public static final B:[I

.field public static final C:[[I

.field public static final D:I


# instance fields
.field public final e:Ljava/util/LinkedHashSet;

.field public final f:Ljava/util/LinkedHashSet;

.field public g:Landroid/content/res/ColorStateList;

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Ljava/lang/CharSequence;

.field public l:Landroid/graphics/drawable/Drawable;

.field public m:Landroid/graphics/drawable/Drawable;

.field public n:Z

.field public p:Landroid/content/res/ColorStateList;

.field public q:Landroid/content/res/ColorStateList;

.field public r:Landroid/graphics/PorterDuff$Mode;

.field public s:I

.field public t:[I

.field public v:Z

.field public w:Ljava/lang/CharSequence;

.field public x:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field public final y:Li4/f;

.field public final z:La7/a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const v0, 0x7f040525

    .line 2
    .line 3
    .line 4
    filled-new-array {v0}, [I

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, La7/d;->A:[I

    .line 9
    .line 10
    const v0, 0x7f040524

    .line 11
    .line 12
    .line 13
    filled-new-array {v0}, [I

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    sput-object v1, La7/d;->B:[I

    .line 18
    .line 19
    const/4 v1, 0x5

    .line 20
    new-array v1, v1, [[I

    .line 21
    .line 22
    const v2, 0x101009e

    .line 23
    .line 24
    .line 25
    filled-new-array {v2, v0}, [I

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/4 v3, 0x0

    .line 30
    aput-object v0, v1, v3

    .line 31
    .line 32
    const v0, 0x10100a0

    .line 33
    .line 34
    .line 35
    filled-new-array {v2, v0}, [I

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    const/4 v4, 0x1

    .line 40
    aput-object v3, v1, v4

    .line 41
    .line 42
    const v3, -0x10100a0

    .line 43
    .line 44
    .line 45
    filled-new-array {v2, v3}, [I

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    const/4 v4, 0x2

    .line 50
    aput-object v2, v1, v4

    .line 51
    .line 52
    const v2, -0x101009e

    .line 53
    .line 54
    .line 55
    filled-new-array {v2, v0}, [I

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const/4 v4, 0x3

    .line 60
    aput-object v0, v1, v4

    .line 61
    .line 62
    filled-new-array {v2, v3}, [I

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const/4 v2, 0x4

    .line 67
    aput-object v0, v1, v2

    .line 68
    .line 69
    sput-object v1, La7/d;->C:[[I

    .line 70
    .line 71
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    const-string v1, "drawable"

    .line 76
    .line 77
    const-string v2, "android"

    .line 78
    .line 79
    const-string v3, "btn_check_material_anim"

    .line 80
    .line 81
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    sput v0, La7/d;->D:I

    .line 86
    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p2

    .line 4
    .line 5
    const/4 v8, 0x3

    .line 6
    const/4 v9, 0x0

    .line 7
    const v10, 0x7f0400d4

    .line 8
    .line 9
    .line 10
    const v1, 0x7f1404ae

    .line 11
    .line 12
    .line 13
    move-object/from16 v2, p1

    .line 14
    .line 15
    invoke-static {v2, v7, v10, v1}, Ls7/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-direct {v0, v1, v7, v10}, Lw/p;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v1, v0, La7/d;->e:Ljava/util/LinkedHashSet;

    .line 28
    .line 29
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v1, v0, La7/d;->f:Ljava/util/LinkedHashSet;

    .line 35
    .line 36
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 41
    .line 42
    const/16 v3, 0x18

    .line 43
    .line 44
    const/4 v11, 0x2

    .line 45
    const/4 v12, 0x0

    .line 46
    const/4 v13, 0x1

    .line 47
    const v4, 0x7f08019e

    .line 48
    .line 49
    .line 50
    if-lt v2, v3, :cond_0

    .line 51
    .line 52
    new-instance v2, Li4/f;

    .line 53
    .line 54
    invoke-direct {v2, v1}, Li4/f;-><init>(Landroid/content/Context;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-static {v3, v4, v1}, Lo0/o;->b(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    iput-object v1, v2, Li4/j;->a:Landroid/graphics/drawable/Drawable;

    .line 70
    .line 71
    iget-object v3, v2, Li4/f;->g:Li4/c;

    .line 72
    .line 73
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 74
    .line 75
    .line 76
    new-instance v1, Li4/e;

    .line 77
    .line 78
    iget-object v3, v2, Li4/j;->a:Landroid/graphics/drawable/Drawable;

    .line 79
    .line 80
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-direct {v1, v9, v3}, Li4/e;-><init>(ILjava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_0
    sget v2, Li4/f;->h:I

    .line 89
    .line 90
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    :try_start_0
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    :goto_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    if-eq v4, v11, :cond_1

    .line 107
    .line 108
    if-eq v4, v13, :cond_1

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_1
    if-ne v4, v11, :cond_2

    .line 112
    .line 113
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    new-instance v6, Li4/f;

    .line 122
    .line 123
    invoke-direct {v6, v1}, Li4/f;-><init>(Landroid/content/Context;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v6, v4, v2, v3, v5}, Li4/f;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 127
    .line 128
    .line 129
    move-object v2, v6

    .line 130
    goto :goto_1

    .line 131
    :cond_2
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    .line 132
    .line 133
    const-string v2, "No start tag found"

    .line 134
    .line 135
    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    throw v1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :catch_0
    move-object v2, v12

    .line 140
    :goto_1
    iput-object v2, v0, La7/d;->y:Li4/f;

    .line 141
    .line 142
    new-instance v1, La7/a;

    .line 143
    .line 144
    invoke-direct {v1, v0}, La7/a;-><init>(La7/d;)V

    .line 145
    .line 146
    .line 147
    iput-object v1, v0, La7/d;->z:La7/a;

    .line 148
    .line 149
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 150
    .line 151
    .line 152
    move-result-object v14

    .line 153
    invoke-static/range {p0 .. p0}, Landroid/support/v4/media/session/b;->i(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    iput-object v1, v0, La7/d;->l:Landroid/graphics/drawable/Drawable;

    .line 158
    .line 159
    invoke-direct/range {p0 .. p0}, La7/d;->getSuperButtonTintList()Landroid/content/res/ColorStateList;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    iput-object v1, v0, La7/d;->p:Landroid/content/res/ColorStateList;

    .line 164
    .line 165
    invoke-interface {v0, v12}, Lb1/w;->setSupportButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 166
    .line 167
    .line 168
    sget-object v15, Lq6/a;->o:[I

    .line 169
    .line 170
    new-array v6, v9, [I

    .line 171
    .line 172
    const v5, 0x7f1404ae

    .line 173
    .line 174
    .line 175
    invoke-static {v14, v7, v10, v5}, Lg7/l;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 176
    .line 177
    .line 178
    move-object v1, v14

    .line 179
    move-object/from16 v2, p2

    .line 180
    .line 181
    move-object v3, v15

    .line 182
    move v4, v10

    .line 183
    const p1, 0x7f1404ae

    .line 184
    .line 185
    .line 186
    move/from16 v5, p1

    .line 187
    .line 188
    invoke-static/range {v1 .. v6}, Lg7/l;->b(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    .line 189
    .line 190
    .line 191
    new-instance v1, Ls4/a;

    .line 192
    .line 193
    const v2, 0x7f1404ae

    .line 194
    .line 195
    .line 196
    invoke-virtual {v14, v7, v15, v10, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    invoke-direct {v1, v14, v2}, Ls4/a;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1, v11}, Ls4/a;->e(I)Landroid/graphics/drawable/Drawable;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    iput-object v3, v0, La7/d;->m:Landroid/graphics/drawable/Drawable;

    .line 208
    .line 209
    iget-object v3, v0, La7/d;->l:Landroid/graphics/drawable/Drawable;

    .line 210
    .line 211
    const/16 v4, 0x15

    .line 212
    .line 213
    if-eqz v3, :cond_4

    .line 214
    .line 215
    const v3, 0x7f0402e6

    .line 216
    .line 217
    .line 218
    invoke-static {v14, v3, v9}, Landroid/support/v4/media/session/b;->E(Landroid/content/Context;IZ)Z

    .line 219
    .line 220
    .line 221
    move-result v3

    .line 222
    if-eqz v3, :cond_4

    .line 223
    .line 224
    invoke-virtual {v2, v9, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 225
    .line 226
    .line 227
    move-result v3

    .line 228
    invoke-virtual {v2, v13, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 229
    .line 230
    .line 231
    move-result v5

    .line 232
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 233
    .line 234
    if-ge v6, v4, :cond_3

    .line 235
    .line 236
    const v6, 0x7f080040

    .line 237
    .line 238
    .line 239
    if-ne v3, v6, :cond_4

    .line 240
    .line 241
    const v3, 0x7f080041

    .line 242
    .line 243
    .line 244
    if-ne v5, v3, :cond_4

    .line 245
    .line 246
    goto :goto_2

    .line 247
    :cond_3
    sget v6, La7/d;->D:I

    .line 248
    .line 249
    if-ne v3, v6, :cond_4

    .line 250
    .line 251
    if-nez v5, :cond_4

    .line 252
    .line 253
    :goto_2
    invoke-super {v0, v12}, Lw/p;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 254
    .line 255
    .line 256
    const v3, 0x7f08019d

    .line 257
    .line 258
    .line 259
    invoke-static {v14, v3}, Lcom/bumptech/glide/d;->x(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 260
    .line 261
    .line 262
    move-result-object v3

    .line 263
    iput-object v3, v0, La7/d;->l:Landroid/graphics/drawable/Drawable;

    .line 264
    .line 265
    iput-boolean v13, v0, La7/d;->n:Z

    .line 266
    .line 267
    iget-object v3, v0, La7/d;->m:Landroid/graphics/drawable/Drawable;

    .line 268
    .line 269
    if-nez v3, :cond_4

    .line 270
    .line 271
    const v3, 0x7f08019f

    .line 272
    .line 273
    .line 274
    invoke-static {v14, v3}, Lcom/bumptech/glide/d;->x(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    iput-object v3, v0, La7/d;->m:Landroid/graphics/drawable/Drawable;

    .line 279
    .line 280
    :cond_4
    invoke-static {v14, v1, v8}, Lcom/bumptech/glide/c;->x(Landroid/content/Context;Ls4/a;I)Landroid/content/res/ColorStateList;

    .line 281
    .line 282
    .line 283
    move-result-object v3

    .line 284
    iput-object v3, v0, La7/d;->q:Landroid/content/res/ColorStateList;

    .line 285
    .line 286
    const/4 v3, 0x4

    .line 287
    const/4 v5, -0x1

    .line 288
    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 289
    .line 290
    .line 291
    move-result v3

    .line 292
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 293
    .line 294
    invoke-static {v3, v5}, Lg7/l;->h(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 295
    .line 296
    .line 297
    move-result-object v3

    .line 298
    iput-object v3, v0, La7/d;->r:Landroid/graphics/PorterDuff$Mode;

    .line 299
    .line 300
    const/16 v3, 0xa

    .line 301
    .line 302
    invoke-virtual {v2, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 303
    .line 304
    .line 305
    move-result v3

    .line 306
    iput-boolean v3, v0, La7/d;->h:Z

    .line 307
    .line 308
    const/4 v3, 0x6

    .line 309
    invoke-virtual {v2, v3, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 310
    .line 311
    .line 312
    move-result v3

    .line 313
    iput-boolean v3, v0, La7/d;->i:Z

    .line 314
    .line 315
    const/16 v3, 0x9

    .line 316
    .line 317
    invoke-virtual {v2, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 318
    .line 319
    .line 320
    move-result v3

    .line 321
    iput-boolean v3, v0, La7/d;->j:Z

    .line 322
    .line 323
    const/16 v3, 0x8

    .line 324
    .line 325
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 326
    .line 327
    .line 328
    move-result-object v3

    .line 329
    iput-object v3, v0, La7/d;->k:Ljava/lang/CharSequence;

    .line 330
    .line 331
    const/4 v3, 0x7

    .line 332
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 333
    .line 334
    .line 335
    move-result v5

    .line 336
    if-eqz v5, :cond_5

    .line 337
    .line 338
    invoke-virtual {v2, v3, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 339
    .line 340
    .line 341
    move-result v2

    .line 342
    invoke-virtual {v0, v2}, La7/d;->setCheckedState(I)V

    .line 343
    .line 344
    .line 345
    :cond_5
    invoke-virtual {v1}, Ls4/a;->r()V

    .line 346
    .line 347
    .line 348
    invoke-virtual/range {p0 .. p0}, La7/d;->a()V

    .line 349
    .line 350
    .line 351
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 352
    .line 353
    if-ge v1, v4, :cond_6

    .line 354
    .line 355
    iget-object v1, v0, La7/d;->m:Landroid/graphics/drawable/Drawable;

    .line 356
    .line 357
    if-eqz v1, :cond_6

    .line 358
    .line 359
    new-instance v1, La2/h;

    .line 360
    .line 361
    invoke-direct {v1, v8, v0}, La2/h;-><init>(ILjava/lang/Object;)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 365
    .line 366
    .line 367
    :cond_6
    return-void
.end method

.method private getButtonStateDescription()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, La7/d;->s:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const v1, 0x7f130118

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    :cond_0
    if-nez v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const v1, 0x7f13011a

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    return-object v0

    .line 32
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const v1, 0x7f130119

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    return-object v0
.end method

.method private getMaterialThemeColorsTintList()Landroid/content/res/ColorStateList;
    .locals 7

    .line 1
    iget-object v0, p0, La7/d;->g:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const v0, 0x7f04011c

    .line 6
    .line 7
    .line 8
    invoke-static {v0, p0}, Lcom/bumptech/glide/d;->s(ILandroid/view/View;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const v1, 0x7f04011f

    .line 13
    .line 14
    .line 15
    invoke-static {v1, p0}, Lcom/bumptech/glide/d;->s(ILandroid/view/View;)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const v2, 0x7f040145

    .line 20
    .line 21
    .line 22
    invoke-static {v2, p0}, Lcom/bumptech/glide/d;->s(ILandroid/view/View;)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const v3, 0x7f04012f

    .line 27
    .line 28
    .line 29
    invoke-static {v3, p0}, Lcom/bumptech/glide/d;->s(ILandroid/view/View;)I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    const/high16 v4, 0x3f800000    # 1.0f

    .line 34
    .line 35
    invoke-static {v2, v4, v1}, Lcom/bumptech/glide/d;->K(IFI)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-static {v2, v4, v0}, Lcom/bumptech/glide/d;->K(IFI)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    const v4, 0x3f0a3d71    # 0.54f

    .line 44
    .line 45
    .line 46
    invoke-static {v2, v4, v3}, Lcom/bumptech/glide/d;->K(IFI)I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    const v5, 0x3ec28f5c    # 0.38f

    .line 51
    .line 52
    .line 53
    invoke-static {v2, v5, v3}, Lcom/bumptech/glide/d;->K(IFI)I

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    invoke-static {v2, v5, v3}, Lcom/bumptech/glide/d;->K(IFI)I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    filled-new-array {v1, v0, v4, v6, v2}, [I

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    new-instance v1, Landroid/content/res/ColorStateList;

    .line 66
    .line 67
    sget-object v2, La7/d;->C:[[I

    .line 68
    .line 69
    invoke-direct {v1, v2, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 70
    .line 71
    .line 72
    iput-object v1, p0, La7/d;->g:Landroid/content/res/ColorStateList;

    .line 73
    .line 74
    :cond_0
    iget-object v0, p0, La7/d;->g:Landroid/content/res/ColorStateList;

    .line 75
    .line 76
    return-object v0
.end method

.method private getSuperButtonTintList()Landroid/content/res/ColorStateList;
    .locals 2

    .line 1
    iget-object v0, p0, La7/d;->p:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v1, 0x15

    .line 9
    .line 10
    if-lt v0, v1, :cond_1

    .line 11
    .line 12
    invoke-super {p0}, Landroid/widget/CheckBox;->getButtonTintList()Landroid/content/res/ColorStateList;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-super {p0}, Landroid/widget/CheckBox;->getButtonTintList()Landroid/content/res/ColorStateList;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0

    .line 23
    :cond_1
    invoke-interface {p0}, Lb1/w;->getSupportButtonTintList()Landroid/content/res/ColorStateList;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 15

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x1

    .line 4
    iget-object v3, p0, La7/d;->l:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    iget-object v4, p0, La7/d;->p:Landroid/content/res/ColorStateList;

    .line 7
    .line 8
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    .line 10
    const/16 v6, 0x15

    .line 11
    .line 12
    if-lt v5, v6, :cond_0

    .line 13
    .line 14
    invoke-static {p0}, Lb1/b;->b(Landroid/widget/CompoundButton;)Landroid/graphics/PorterDuff$Mode;

    .line 15
    .line 16
    .line 17
    move-result-object v6

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-interface {p0}, Lb1/w;->getSupportButtonTintMode()Landroid/graphics/PorterDuff$Mode;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    :goto_0
    invoke-static {v3, v4, v6}, Ld/b;->n(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Drawable;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    iput-object v3, p0, La7/d;->l:Landroid/graphics/drawable/Drawable;

    .line 28
    .line 29
    iget-object v3, p0, La7/d;->m:Landroid/graphics/drawable/Drawable;

    .line 30
    .line 31
    iget-object v4, p0, La7/d;->q:Landroid/content/res/ColorStateList;

    .line 32
    .line 33
    iget-object v6, p0, La7/d;->r:Landroid/graphics/PorterDuff$Mode;

    .line 34
    .line 35
    invoke-static {v3, v4, v6}, Ld/b;->n(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Drawable;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    iput-object v3, p0, La7/d;->m:Landroid/graphics/drawable/Drawable;

    .line 40
    .line 41
    iget-boolean v3, p0, La7/d;->n:Z

    .line 42
    .line 43
    if-nez v3, :cond_1

    .line 44
    .line 45
    goto/16 :goto_3

    .line 46
    .line 47
    :cond_1
    iget-object v3, p0, La7/d;->y:Li4/f;

    .line 48
    .line 49
    if-eqz v3, :cond_c

    .line 50
    .line 51
    iget-object v4, v3, Li4/j;->a:Landroid/graphics/drawable/Drawable;

    .line 52
    .line 53
    iget-object v6, p0, La7/d;->z:La7/a;

    .line 54
    .line 55
    if-eqz v4, :cond_3

    .line 56
    .line 57
    invoke-static {v4}, Lg7/d;->i(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    iget-object v7, v6, La7/a;->a:Li4/b;

    .line 62
    .line 63
    if-nez v7, :cond_2

    .line 64
    .line 65
    new-instance v7, Li4/b;

    .line 66
    .line 67
    invoke-direct {v7, v6}, Li4/b;-><init>(La7/a;)V

    .line 68
    .line 69
    .line 70
    iput-object v7, v6, La7/a;->a:Li4/b;

    .line 71
    .line 72
    :cond_2
    iget-object v7, v6, La7/a;->a:Li4/b;

    .line 73
    .line 74
    invoke-static {v4, v7}, Ld2/c;->B(Landroid/graphics/drawable/AnimatedVectorDrawable;Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z

    .line 75
    .line 76
    .line 77
    :cond_3
    iget-object v4, v3, Li4/f;->f:Ljava/util/ArrayList;

    .line 78
    .line 79
    iget-object v7, v3, Li4/f;->b:Li4/d;

    .line 80
    .line 81
    if-eqz v4, :cond_5

    .line 82
    .line 83
    if-nez v6, :cond_4

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_4
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    iget-object v4, v3, Li4/f;->f:Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    if-nez v4, :cond_5

    .line 96
    .line 97
    iget-object v4, v3, Li4/f;->e:Lh4/q;

    .line 98
    .line 99
    if-eqz v4, :cond_5

    .line 100
    .line 101
    iget-object v8, v7, Li4/d;->b:Landroid/animation/AnimatorSet;

    .line 102
    .line 103
    invoke-virtual {v8, v4}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 104
    .line 105
    .line 106
    const/4 v4, 0x0

    .line 107
    iput-object v4, v3, Li4/f;->e:Lh4/q;

    .line 108
    .line 109
    :cond_5
    :goto_1
    iget-object v4, v3, Li4/j;->a:Landroid/graphics/drawable/Drawable;

    .line 110
    .line 111
    if-eqz v4, :cond_7

    .line 112
    .line 113
    invoke-static {v4}, Lg7/d;->i(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    iget-object v7, v6, La7/a;->a:Li4/b;

    .line 118
    .line 119
    if-nez v7, :cond_6

    .line 120
    .line 121
    new-instance v7, Li4/b;

    .line 122
    .line 123
    invoke-direct {v7, v6}, Li4/b;-><init>(La7/a;)V

    .line 124
    .line 125
    .line 126
    iput-object v7, v6, La7/a;->a:Li4/b;

    .line 127
    .line 128
    :cond_6
    iget-object v6, v6, La7/a;->a:Li4/b;

    .line 129
    .line 130
    invoke-static {v4, v6}, Ld2/c;->m(Landroid/graphics/drawable/AnimatedVectorDrawable;Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    .line 131
    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_7
    if-nez v6, :cond_8

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_8
    iget-object v4, v3, Li4/f;->f:Ljava/util/ArrayList;

    .line 138
    .line 139
    if-nez v4, :cond_9

    .line 140
    .line 141
    new-instance v4, Ljava/util/ArrayList;

    .line 142
    .line 143
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .line 145
    .line 146
    iput-object v4, v3, Li4/f;->f:Ljava/util/ArrayList;

    .line 147
    .line 148
    :cond_9
    iget-object v4, v3, Li4/f;->f:Ljava/util/ArrayList;

    .line 149
    .line 150
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v4

    .line 154
    if-eqz v4, :cond_a

    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_a
    iget-object v4, v3, Li4/f;->f:Ljava/util/ArrayList;

    .line 158
    .line 159
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    iget-object v4, v3, Li4/f;->e:Lh4/q;

    .line 163
    .line 164
    if-nez v4, :cond_b

    .line 165
    .line 166
    new-instance v4, Lh4/q;

    .line 167
    .line 168
    invoke-direct {v4, v2, v3}, Lh4/q;-><init>(ILjava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    iput-object v4, v3, Li4/f;->e:Lh4/q;

    .line 172
    .line 173
    :cond_b
    iget-object v4, v7, Li4/d;->b:Landroid/animation/AnimatorSet;

    .line 174
    .line 175
    iget-object v6, v3, Li4/f;->e:Lh4/q;

    .line 176
    .line 177
    invoke-virtual {v4, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 178
    .line 179
    .line 180
    :cond_c
    :goto_2
    const/16 v4, 0x18

    .line 181
    .line 182
    if-lt v5, v4, :cond_d

    .line 183
    .line 184
    iget-object v4, p0, La7/d;->l:Landroid/graphics/drawable/Drawable;

    .line 185
    .line 186
    invoke-static {v4}, La2/t0;->w(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v4

    .line 190
    if-eqz v4, :cond_d

    .line 191
    .line 192
    if-eqz v3, :cond_d

    .line 193
    .line 194
    iget-object v4, p0, La7/d;->l:Landroid/graphics/drawable/Drawable;

    .line 195
    .line 196
    invoke-static {v4}, La2/t0;->d(Ljava/lang/Object;)Landroid/graphics/drawable/AnimatedStateListDrawable;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    invoke-static {v4, v3}, La2/t0;->n(Landroid/graphics/drawable/AnimatedStateListDrawable;Landroid/graphics/drawable/Drawable;)V

    .line 201
    .line 202
    .line 203
    iget-object v4, p0, La7/d;->l:Landroid/graphics/drawable/Drawable;

    .line 204
    .line 205
    invoke-static {v4}, La2/t0;->d(Ljava/lang/Object;)Landroid/graphics/drawable/AnimatedStateListDrawable;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    invoke-static {v4, v3}, La2/t0;->z(Landroid/graphics/drawable/AnimatedStateListDrawable;Landroid/graphics/drawable/Drawable;)V

    .line 210
    .line 211
    .line 212
    :cond_d
    :goto_3
    iget-object v3, p0, La7/d;->l:Landroid/graphics/drawable/Drawable;

    .line 213
    .line 214
    if-eqz v3, :cond_e

    .line 215
    .line 216
    iget-object v4, p0, La7/d;->p:Landroid/content/res/ColorStateList;

    .line 217
    .line 218
    if-eqz v4, :cond_e

    .line 219
    .line 220
    invoke-static {v3, v4}, Lcom/bumptech/glide/c;->f0(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 221
    .line 222
    .line 223
    :cond_e
    iget-object v3, p0, La7/d;->m:Landroid/graphics/drawable/Drawable;

    .line 224
    .line 225
    if-eqz v3, :cond_f

    .line 226
    .line 227
    iget-object v4, p0, La7/d;->q:Landroid/content/res/ColorStateList;

    .line 228
    .line 229
    if-eqz v4, :cond_f

    .line 230
    .line 231
    invoke-static {v3, v4}, Lcom/bumptech/glide/c;->f0(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 232
    .line 233
    .line 234
    :cond_f
    iget-object v3, p0, La7/d;->l:Landroid/graphics/drawable/Drawable;

    .line 235
    .line 236
    iget-object v4, p0, La7/d;->m:Landroid/graphics/drawable/Drawable;

    .line 237
    .line 238
    if-nez v3, :cond_10

    .line 239
    .line 240
    move-object v3, v4

    .line 241
    goto/16 :goto_8

    .line 242
    .line 243
    :cond_10
    if-nez v4, :cond_11

    .line 244
    .line 245
    goto/16 :goto_8

    .line 246
    .line 247
    :cond_11
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 248
    .line 249
    .line 250
    move-result v6

    .line 251
    const/4 v7, -0x1

    .line 252
    if-eq v6, v7, :cond_12

    .line 253
    .line 254
    goto :goto_4

    .line 255
    :cond_12
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 256
    .line 257
    .line 258
    move-result v6

    .line 259
    :goto_4
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 260
    .line 261
    .line 262
    move-result v8

    .line 263
    if-eq v8, v7, :cond_13

    .line 264
    .line 265
    goto :goto_5

    .line 266
    :cond_13
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 267
    .line 268
    .line 269
    move-result v8

    .line 270
    :goto_5
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 271
    .line 272
    .line 273
    move-result v7

    .line 274
    if-gt v6, v7, :cond_14

    .line 275
    .line 276
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 277
    .line 278
    .line 279
    move-result v7

    .line 280
    if-gt v8, v7, :cond_14

    .line 281
    .line 282
    goto :goto_6

    .line 283
    :cond_14
    int-to-float v6, v6

    .line 284
    int-to-float v7, v8

    .line 285
    div-float/2addr v6, v7

    .line 286
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 287
    .line 288
    .line 289
    move-result v7

    .line 290
    int-to-float v7, v7

    .line 291
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 292
    .line 293
    .line 294
    move-result v8

    .line 295
    int-to-float v8, v8

    .line 296
    div-float/2addr v7, v8

    .line 297
    cmpl-float v7, v6, v7

    .line 298
    .line 299
    if-ltz v7, :cond_15

    .line 300
    .line 301
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 302
    .line 303
    .line 304
    move-result v7

    .line 305
    int-to-float v8, v7

    .line 306
    div-float/2addr v8, v6

    .line 307
    float-to-int v8, v8

    .line 308
    move v6, v7

    .line 309
    goto :goto_6

    .line 310
    :cond_15
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 311
    .line 312
    .line 313
    move-result v8

    .line 314
    int-to-float v7, v8

    .line 315
    mul-float v6, v6, v7

    .line 316
    .line 317
    float-to-int v6, v6

    .line 318
    :goto_6
    const/16 v7, 0x17

    .line 319
    .line 320
    if-lt v5, v7, :cond_16

    .line 321
    .line 322
    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    .line 323
    .line 324
    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    .line 325
    .line 326
    aput-object v3, v1, v0

    .line 327
    .line 328
    aput-object v4, v1, v2

    .line 329
    .line 330
    invoke-direct {v5, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 331
    .line 332
    .line 333
    invoke-static {v5, v6, v8}, Ld2/c;->o(Landroid/graphics/drawable/LayerDrawable;II)V

    .line 334
    .line 335
    .line 336
    invoke-static {v5}, Ld2/c;->n(Landroid/graphics/drawable/LayerDrawable;)V

    .line 337
    .line 338
    .line 339
    :goto_7
    move-object v3, v5

    .line 340
    goto :goto_8

    .line 341
    :cond_16
    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    .line 342
    .line 343
    new-array v7, v1, [Landroid/graphics/drawable/Drawable;

    .line 344
    .line 345
    aput-object v3, v7, v0

    .line 346
    .line 347
    aput-object v4, v7, v2

    .line 348
    .line 349
    invoke-direct {v5, v7}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 353
    .line 354
    .line 355
    move-result v2

    .line 356
    sub-int/2addr v2, v6

    .line 357
    div-int/2addr v2, v1

    .line 358
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 359
    .line 360
    .line 361
    move-result v13

    .line 362
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 363
    .line 364
    .line 365
    move-result v2

    .line 366
    sub-int/2addr v2, v8

    .line 367
    div-int/2addr v2, v1

    .line 368
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 369
    .line 370
    .line 371
    move-result v14

    .line 372
    const/4 v10, 0x1

    .line 373
    move-object v9, v5

    .line 374
    move v11, v13

    .line 375
    move v12, v14

    .line 376
    invoke-virtual/range {v9 .. v14}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 377
    .line 378
    .line 379
    goto :goto_7

    .line 380
    :goto_8
    invoke-super {p0, v3}, Lw/p;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 384
    .line 385
    .line 386
    return-void
.end method

.method public getButtonDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, La7/d;->l:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object v0
.end method

.method public getButtonIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, La7/d;->m:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object v0
.end method

.method public getButtonIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, La7/d;->q:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getButtonIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 1
    iget-object v0, p0, La7/d;->r:Landroid/graphics/PorterDuff$Mode;

    .line 2
    .line 3
    return-object v0
.end method

.method public getButtonTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, La7/d;->p:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCheckedState()I
    .locals 1

    .line 1
    iget v0, p0, La7/d;->s:I

    .line 2
    .line 3
    return v0
.end method

.method public getErrorAccessibilityLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, La7/d;->k:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object v0
.end method

.method public final isChecked()Z
    .locals 2

    .line 1
    iget v0, p0, La7/d;->s:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    return v1
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/CheckBox;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, La7/d;->h:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, La7/d;->p:Landroid/content/res/ColorStateList;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, La7/d;->q:Landroid/content/res/ColorStateList;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-virtual {p0, v0}, La7/d;->setUseMaterialThemeColors(Z)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final onCreateDrawableState(I)[I
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    add-int/2addr p1, v0

    .line 3
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onCreateDrawableState(I)[I

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0}, La7/d;->getCheckedState()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ne v1, v0, :cond_0

    .line 12
    .line 13
    sget-object v0, La7/d;->A:[I

    .line 14
    .line 15
    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-boolean v0, p0, La7/d;->j:Z

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    sget-object v0, La7/d;->B:[I

    .line 23
    .line 24
    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 25
    .line 26
    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
    :goto_0
    array-length v1, p1

    .line 29
    const v2, 0x10100a0

    .line 30
    .line 31
    .line 32
    if-ge v0, v1, :cond_4

    .line 33
    .line 34
    aget v1, p1, v0

    .line 35
    .line 36
    if-ne v1, v2, :cond_2

    .line 37
    .line 38
    move-object v1, p1

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    if-nez v1, :cond_3

    .line 41
    .line 42
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, [I

    .line 47
    .line 48
    aput v2, v1, v0

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_4
    array-length v0, p1

    .line 55
    add-int/lit8 v0, v0, 0x1

    .line 56
    .line 57
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    array-length v0, p1

    .line 62
    aput v2, v1, v0

    .line 63
    .line 64
    :goto_1
    iput-object v1, p0, La7/d;->t:[I

    .line 65
    .line 66
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 67
    .line 68
    const/16 v1, 0x15

    .line 69
    .line 70
    if-ge v0, v1, :cond_5

    .line 71
    .line 72
    iget-object v0, p0, La7/d;->m:Landroid/graphics/drawable/Drawable;

    .line 73
    .line 74
    if-eqz v0, :cond_5

    .line 75
    .line 76
    iget-object v1, p0, La7/d;->q:Landroid/content/res/ColorStateList;

    .line 77
    .line 78
    if-eqz v1, :cond_5

    .line 79
    .line 80
    iget-object v2, p0, La7/d;->r:Landroid/graphics/PorterDuff$Mode;

    .line 81
    .line 82
    invoke-static {v0, v1, v2}, Ld/b;->x0(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 87
    .line 88
    .line 89
    :cond_5
    return-object p1
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, La7/d;->i:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-static {p0}, Landroid/support/v4/media/session/b;->i(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-static {p0}, Lg7/l;->f(Landroid/view/View;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    const/4 v1, -0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v1, 0x1

    .line 30
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    sub-int/2addr v2, v3

    .line 39
    div-int/lit8 v2, v2, 0x2

    .line 40
    .line 41
    mul-int v2, v2, v1

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    int-to-float v3, v2

    .line 48
    const/4 v4, 0x0

    .line 49
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 50
    .line 51
    .line 52
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onDraw(Landroid/graphics/Canvas;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    if-eqz p1, :cond_1

    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 73
    .line 74
    add-int/2addr v1, v2

    .line 75
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 76
    .line 77
    iget v4, p1, Landroid/graphics/Rect;->right:I

    .line 78
    .line 79
    add-int/2addr v4, v2

    .line 80
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 81
    .line 82
    invoke-static {v0, v1, v3, v4, p1}, Lcom/bumptech/glide/c;->c0(Landroid/graphics/drawable/Drawable;IIII)V

    .line 83
    .line 84
    .line 85
    :cond_1
    return-void

    .line 86
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onDraw(Landroid/graphics/Canvas;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget-boolean v0, p0, La7/d;->j:Z

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, La7/d;->k:Ljava/lang/CharSequence;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, La7/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    check-cast p1, La7/c;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-super {p0, v0}, Landroid/widget/CheckBox;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 16
    .line 17
    .line 18
    iget p1, p1, La7/c;->a:I

    .line 19
    .line 20
    invoke-virtual {p0, p1}, La7/d;->setCheckedState(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/CheckBox;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, La7/c;

    .line 6
    .line 7
    invoke-direct {v1, v0}, La7/c;-><init>(Landroid/os/Parcelable;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, La7/d;->getCheckedState()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput v0, v1, La7/c;->a:I

    .line 15
    .line 16
    return-object v1
.end method

.method public setButtonDrawable(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/bumptech/glide/d;->x(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, La7/d;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 2
    iput-object p1, p0, La7/d;->l:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, La7/d;->n:Z

    .line 4
    invoke-virtual {p0}, La7/d;->a()V

    return-void
.end method

.method public setButtonIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, La7/d;->m:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    invoke-virtual {p0}, La7/d;->a()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setButtonIconDrawableResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Lcom/bumptech/glide/d;->x(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, La7/d;->setButtonIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setButtonIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, La7/d;->q:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-object p1, p0, La7/d;->q:Landroid/content/res/ColorStateList;

    .line 7
    .line 8
    invoke-virtual {p0}, La7/d;->a()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setButtonIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    iget-object v0, p0, La7/d;->r:Landroid/graphics/PorterDuff$Mode;

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-object p1, p0, La7/d;->r:Landroid/graphics/PorterDuff$Mode;

    .line 7
    .line 8
    invoke-virtual {p0}, La7/d;->a()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setButtonTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, La7/d;->p:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-object p1, p0, La7/d;->p:Landroid/content/res/ColorStateList;

    .line 7
    .line 8
    invoke-virtual {p0}, La7/d;->a()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lb1/w;->setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, La7/d;->a()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setCenterIfNoTextEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, La7/d;->i:Z

    .line 2
    .line 3
    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, La7/d;->setCheckedState(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setCheckedState(I)V
    .locals 3

    .line 1
    iget v0, p0, La7/d;->s:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_7

    .line 4
    .line 5
    iput p1, p0, La7/d;->s:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    const/4 v1, 0x1

    .line 9
    if-ne p1, v1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 18
    .line 19
    .line 20
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 21
    .line 22
    const/16 v2, 0x1e

    .line 23
    .line 24
    if-lt p1, v2, :cond_1

    .line 25
    .line 26
    iget-object v2, p0, La7/d;->w:Ljava/lang/CharSequence;

    .line 27
    .line 28
    if-nez v2, :cond_1

    .line 29
    .line 30
    invoke-direct {p0}, La7/d;->getButtonStateDescription()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-super {p0, v2}, Landroid/widget/CheckBox;->setStateDescription(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    iget-boolean v2, p0, La7/d;->v:Z

    .line 38
    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    iput-boolean v1, p0, La7/d;->v:Z

    .line 43
    .line 44
    iget-object v1, p0, La7/d;->f:Ljava/util/LinkedHashSet;

    .line 45
    .line 46
    if-eqz v1, :cond_4

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-nez v2, :cond_3

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    invoke-static {v1}, Ll2/z;->d(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    throw p1

    .line 64
    :cond_4
    :goto_1
    iget v1, p0, La7/d;->s:I

    .line 65
    .line 66
    const/4 v2, 0x2

    .line 67
    if-eq v1, v2, :cond_5

    .line 68
    .line 69
    iget-object v1, p0, La7/d;->x:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 70
    .line 71
    if-eqz v1, :cond_5

    .line 72
    .line 73
    invoke-virtual {p0}, La7/d;->isChecked()Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    invoke-interface {v1, p0, v2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 78
    .line 79
    .line 80
    :cond_5
    const/16 v1, 0x1a

    .line 81
    .line 82
    if-lt p1, v1, :cond_6

    .line 83
    .line 84
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    const-class v2, Landroid/view/autofill/AutofillManager;

    .line 89
    .line 90
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    check-cast v1, Landroid/view/autofill/AutofillManager;

    .line 95
    .line 96
    if-eqz v1, :cond_6

    .line 97
    .line 98
    invoke-virtual {v1, p0}, Landroid/view/autofill/AutofillManager;->notifyValueChanged(Landroid/view/View;)V

    .line 99
    .line 100
    .line 101
    :cond_6
    iput-boolean v0, p0, La7/d;->v:Z

    .line 102
    .line 103
    const/16 v0, 0x15

    .line 104
    .line 105
    if-ge p1, v0, :cond_7

    .line 106
    .line 107
    iget-object p1, p0, La7/d;->m:Landroid/graphics/drawable/Drawable;

    .line 108
    .line 109
    if-eqz p1, :cond_7

    .line 110
    .line 111
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 112
    .line 113
    .line 114
    :cond_7
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 2
    .line 3
    .line 4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v0, 0x15

    .line 7
    .line 8
    if-ge p1, v0, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, La7/d;->m:Landroid/graphics/drawable/Drawable;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, La7/d;->q:Landroid/content/res/ColorStateList;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, La7/d;->r:Landroid/graphics/PorterDuff$Mode;

    .line 19
    .line 20
    invoke-static {p1, v0, v1}, Ld/b;->x0(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public setErrorAccessibilityLabel(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, La7/d;->k:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-void
.end method

.method public setErrorAccessibilityLabelResource(I)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    invoke-virtual {p0, p1}, La7/d;->setErrorAccessibilityLabel(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setErrorShown(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, La7/d;->j:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, La7/d;->j:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 9
    .line 10
    .line 11
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    .line 13
    const/16 v0, 0x15

    .line 14
    .line 15
    if-ge p1, v0, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, La7/d;->m:Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 22
    .line 23
    .line 24
    :cond_1
    iget-object p1, p0, La7/d;->e:Ljava/util/LinkedHashSet;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    return-void

    .line 37
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {p1}, Lg/b;->t(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    const/4 p1, 0x0

    .line 45
    throw p1
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, La7/d;->x:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 2
    .line 3
    return-void
.end method

.method public setStateDescription(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    iput-object p1, p0, La7/d;->w:Ljava/lang/CharSequence;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v1, 0x1e

    .line 8
    .line 9
    if-lt v0, v1, :cond_1

    .line 10
    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    invoke-direct {p0}, La7/d;->getButtonStateDescription()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setStateDescription(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setStateDescription(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    :goto_0
    return-void
.end method

.method public setUseMaterialThemeColors(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, La7/d;->h:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, La7/d;->getMaterialThemeColorsTintList()Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p0, p1}, Landroid/support/v4/media/session/b;->G(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    invoke-static {p0, p1}, Landroid/support/v4/media/session/b;->G(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method public final toggle()V
    .locals 1

    .line 1
    invoke-virtual {p0}, La7/d;->isChecked()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    invoke-virtual {p0, v0}, La7/d;->setChecked(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
