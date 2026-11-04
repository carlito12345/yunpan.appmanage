.class public final Lu/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:Ljava/lang/CharSequence;

.field public B:Ljava/lang/CharSequence;

.field public C:Landroid/content/res/ColorStateList;

.field public D:Landroid/graphics/PorterDuff$Mode;

.field public final synthetic E:Lu/i;

.field public final a:Landroid/view/Menu;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:I

.field public j:I

.field public k:Ljava/lang/CharSequence;

.field public l:Ljava/lang/CharSequence;

.field public m:I

.field public n:C

.field public o:I

.field public p:C

.field public q:I

.field public r:I

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:I

.field public w:I

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Lv/n;


# direct methods
.method public constructor <init>(Lu/i;Landroid/view/Menu;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu/h;->E:Lu/i;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lu/h;->C:Landroid/content/res/ColorStateList;

    .line 8
    .line 9
    iput-object p1, p0, Lu/h;->D:Landroid/graphics/PorterDuff$Mode;

    .line 10
    .line 11
    iput-object p2, p0, Lu/h;->a:Landroid/view/Menu;

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lu/h;->b:I

    .line 15
    .line 16
    iput p1, p0, Lu/h;->c:I

    .line 17
    .line 18
    iput p1, p0, Lu/h;->d:I

    .line 19
    .line 20
    iput p1, p0, Lu/h;->e:I

    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lu/h;->f:Z

    .line 24
    .line 25
    iput-boolean p1, p0, Lu/h;->g:Z

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lu/h;->E:Lu/i;

    .line 2
    .line 3
    iget-object v0, v0, Lu/i;->c:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {p1, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/4 p2, 0x1

    .line 19
    invoke-virtual {p1, p2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    return-object p1

    .line 27
    :catch_0
    const/4 p1, 0x0

    .line 28
    return-object p1
.end method

.method public final b(Landroid/view/MenuItem;)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lu/h;->s:Z

    .line 2
    .line 3
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-boolean v1, p0, Lu/h;->t:Z

    .line 8
    .line 9
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-boolean v1, p0, Lu/h;->u:Z

    .line 14
    .line 15
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget v1, p0, Lu/h;->r:I

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x1

    .line 23
    if-lt v1, v3, :cond_0

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v1, 0x0

    .line 28
    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Lu/h;->l:Ljava/lang/CharSequence;

    .line 33
    .line 34
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget v1, p0, Lu/h;->m:I

    .line 39
    .line 40
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 41
    .line 42
    .line 43
    iget v0, p0, Lu/h;->v:I

    .line 44
    .line 45
    if-ltz v0, :cond_1

    .line 46
    .line 47
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 48
    .line 49
    .line 50
    :cond_1
    iget-object v0, p0, Lu/h;->y:Ljava/lang/String;

    .line 51
    .line 52
    iget-object v1, p0, Lu/h;->E:Lu/i;

    .line 53
    .line 54
    if-eqz v0, :cond_4

    .line 55
    .line 56
    iget-object v0, v1, Lu/i;->c:Landroid/content/Context;

    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/content/Context;->isRestricted()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-nez v0, :cond_3

    .line 63
    .line 64
    new-instance v0, Lu/g;

    .line 65
    .line 66
    iget-object v4, v1, Lu/i;->d:Ljava/lang/Object;

    .line 67
    .line 68
    if-nez v4, :cond_2

    .line 69
    .line 70
    iget-object v4, v1, Lu/i;->c:Landroid/content/Context;

    .line 71
    .line 72
    invoke-static {v4}, Lu/i;->a(Landroid/content/Context;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    iput-object v4, v1, Lu/i;->d:Ljava/lang/Object;

    .line 77
    .line 78
    :cond_2
    iget-object v4, v1, Lu/i;->d:Ljava/lang/Object;

    .line 79
    .line 80
    iget-object v5, p0, Lu/h;->y:Ljava/lang/String;

    .line 81
    .line 82
    invoke-direct {v0, v4, v5}, Lu/g;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 90
    .line 91
    const-string v0, "The android:onClick attribute cannot be used within a restricted context"

    .line 92
    .line 93
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw p1

    .line 97
    :cond_4
    :goto_1
    iget v0, p0, Lu/h;->r:I

    .line 98
    .line 99
    const/4 v4, 0x2

    .line 100
    if-lt v0, v4, :cond_7

    .line 101
    .line 102
    instance-of v0, p1, Lv/m;

    .line 103
    .line 104
    if-eqz v0, :cond_5

    .line 105
    .line 106
    move-object v0, p1

    .line 107
    check-cast v0, Lv/m;

    .line 108
    .line 109
    iget v4, v0, Lv/m;->z:I

    .line 110
    .line 111
    and-int/lit8 v4, v4, -0x5

    .line 112
    .line 113
    or-int/lit8 v4, v4, 0x4

    .line 114
    .line 115
    iput v4, v0, Lv/m;->z:I

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_5
    instance-of v0, p1, Lv/r;

    .line 119
    .line 120
    if-eqz v0, :cond_7

    .line 121
    .line 122
    move-object v0, p1

    .line 123
    check-cast v0, Lv/r;

    .line 124
    .line 125
    :try_start_0
    iget-object v4, v0, Lv/r;->d:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .line 127
    iget-object v5, v0, Lv/r;->c:Lr0/a;

    .line 128
    .line 129
    if-nez v4, :cond_6

    .line 130
    .line 131
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    const-string v6, "setExclusiveCheckable"

    .line 136
    .line 137
    new-array v7, v3, [Ljava/lang/Class;

    .line 138
    .line 139
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 140
    .line 141
    aput-object v8, v7, v2

    .line 142
    .line 143
    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    iput-object v4, v0, Lv/r;->d:Ljava/lang/reflect/Method;

    .line 148
    .line 149
    goto :goto_2

    .line 150
    :catch_0
    nop

    .line 151
    goto :goto_3

    .line 152
    :cond_6
    :goto_2
    iget-object v0, v0, Lv/r;->d:Ljava/lang/reflect/Method;

    .line 153
    .line 154
    new-array v4, v3, [Ljava/lang/Object;

    .line 155
    .line 156
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 157
    .line 158
    aput-object v6, v4, v2

    .line 159
    .line 160
    invoke-virtual {v0, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 161
    .line 162
    .line 163
    :cond_7
    :goto_3
    iget-object v0, p0, Lu/h;->x:Ljava/lang/String;

    .line 164
    .line 165
    if-eqz v0, :cond_8

    .line 166
    .line 167
    sget-object v2, Lu/i;->e:[Ljava/lang/Class;

    .line 168
    .line 169
    iget-object v1, v1, Lu/i;->a:[Ljava/lang/Object;

    .line 170
    .line 171
    invoke-virtual {p0, v0, v2, v1}, Lu/h;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    check-cast v0, Landroid/view/View;

    .line 176
    .line 177
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 178
    .line 179
    .line 180
    const/4 v2, 0x1

    .line 181
    :cond_8
    iget v0, p0, Lu/h;->w:I

    .line 182
    .line 183
    if-lez v0, :cond_9

    .line 184
    .line 185
    if-nez v2, :cond_9

    .line 186
    .line 187
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 188
    .line 189
    .line 190
    :cond_9
    iget-object v0, p0, Lu/h;->z:Lv/n;

    .line 191
    .line 192
    if-eqz v0, :cond_a

    .line 193
    .line 194
    instance-of v1, p1, Lr0/a;

    .line 195
    .line 196
    if-eqz v1, :cond_a

    .line 197
    .line 198
    move-object v1, p1

    .line 199
    check-cast v1, Lr0/a;

    .line 200
    .line 201
    invoke-interface {v1, v0}, Lr0/a;->b(Lv/n;)Lr0/a;

    .line 202
    .line 203
    .line 204
    :cond_a
    iget-object v0, p0, Lu/h;->A:Ljava/lang/CharSequence;

    .line 205
    .line 206
    instance-of v1, p1, Lr0/a;

    .line 207
    .line 208
    const/16 v2, 0x1a

    .line 209
    .line 210
    if-eqz v1, :cond_b

    .line 211
    .line 212
    move-object v3, p1

    .line 213
    check-cast v3, Lr0/a;

    .line 214
    .line 215
    invoke-interface {v3, v0}, Lr0/a;->setContentDescription(Ljava/lang/CharSequence;)Lr0/a;

    .line 216
    .line 217
    .line 218
    goto :goto_4

    .line 219
    :cond_b
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 220
    .line 221
    if-lt v3, v2, :cond_c

    .line 222
    .line 223
    invoke-static {p1, v0}, Lx0/r;->h(Landroid/view/MenuItem;Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 224
    .line 225
    .line 226
    :cond_c
    :goto_4
    iget-object v0, p0, Lu/h;->B:Ljava/lang/CharSequence;

    .line 227
    .line 228
    if-eqz v1, :cond_d

    .line 229
    .line 230
    move-object v3, p1

    .line 231
    check-cast v3, Lr0/a;

    .line 232
    .line 233
    invoke-interface {v3, v0}, Lr0/a;->setTooltipText(Ljava/lang/CharSequence;)Lr0/a;

    .line 234
    .line 235
    .line 236
    goto :goto_5

    .line 237
    :cond_d
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 238
    .line 239
    if-lt v3, v2, :cond_e

    .line 240
    .line 241
    invoke-static {p1, v0}, Lx0/r;->m(Landroid/view/MenuItem;Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 242
    .line 243
    .line 244
    :cond_e
    :goto_5
    iget-char v0, p0, Lu/h;->n:C

    .line 245
    .line 246
    iget v3, p0, Lu/h;->o:I

    .line 247
    .line 248
    if-eqz v1, :cond_f

    .line 249
    .line 250
    move-object v4, p1

    .line 251
    check-cast v4, Lr0/a;

    .line 252
    .line 253
    invoke-interface {v4, v0, v3}, Lr0/a;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    .line 254
    .line 255
    .line 256
    goto :goto_6

    .line 257
    :cond_f
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 258
    .line 259
    if-lt v4, v2, :cond_10

    .line 260
    .line 261
    invoke-static {p1, v0, v3}, Lx0/r;->g(Landroid/view/MenuItem;CI)Landroid/view/MenuItem;

    .line 262
    .line 263
    .line 264
    :cond_10
    :goto_6
    iget-char v0, p0, Lu/h;->p:C

    .line 265
    .line 266
    iget v3, p0, Lu/h;->q:I

    .line 267
    .line 268
    if-eqz v1, :cond_11

    .line 269
    .line 270
    move-object v4, p1

    .line 271
    check-cast v4, Lr0/a;

    .line 272
    .line 273
    invoke-interface {v4, v0, v3}, Lr0/a;->setNumericShortcut(CI)Landroid/view/MenuItem;

    .line 274
    .line 275
    .line 276
    goto :goto_7

    .line 277
    :cond_11
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 278
    .line 279
    if-lt v4, v2, :cond_12

    .line 280
    .line 281
    invoke-static {p1, v0, v3}, Lx0/r;->k(Landroid/view/MenuItem;CI)Landroid/view/MenuItem;

    .line 282
    .line 283
    .line 284
    :cond_12
    :goto_7
    iget-object v0, p0, Lu/h;->D:Landroid/graphics/PorterDuff$Mode;

    .line 285
    .line 286
    if-eqz v0, :cond_14

    .line 287
    .line 288
    if-eqz v1, :cond_13

    .line 289
    .line 290
    move-object v3, p1

    .line 291
    check-cast v3, Lr0/a;

    .line 292
    .line 293
    invoke-interface {v3, v0}, Lr0/a;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    .line 294
    .line 295
    .line 296
    goto :goto_8

    .line 297
    :cond_13
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 298
    .line 299
    if-lt v3, v2, :cond_14

    .line 300
    .line 301
    invoke-static {p1, v0}, Lx0/r;->j(Landroid/view/MenuItem;Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    .line 302
    .line 303
    .line 304
    :cond_14
    :goto_8
    iget-object v0, p0, Lu/h;->C:Landroid/content/res/ColorStateList;

    .line 305
    .line 306
    if-eqz v0, :cond_16

    .line 307
    .line 308
    if-eqz v1, :cond_15

    .line 309
    .line 310
    check-cast p1, Lr0/a;

    .line 311
    .line 312
    invoke-interface {p1, v0}, Lr0/a;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    .line 313
    .line 314
    .line 315
    goto :goto_9

    .line 316
    :cond_15
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 317
    .line 318
    if-lt v1, v2, :cond_16

    .line 319
    .line 320
    invoke-static {p1, v0}, Lx0/r;->i(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    .line 321
    .line 322
    .line 323
    :cond_16
    :goto_9
    return-void
.end method
