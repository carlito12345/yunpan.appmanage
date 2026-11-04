.class public Lcom/yunpan/appmanage/ui/ActivitySidebar;
.super Lda/g;
.source "SourceFile"


# static fields
.field public static final synthetic P:I


# instance fields
.field public C:Lz7/s;

.field public D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public final E:Lx9/t0;

.field public F:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public final G:Lx9/u0;

.field public H:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public final I:Lx9/u0;

.field public K:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public final L:Lx9/t2;

.field public M:I

.field public N:Lcom/yunpan/appmanage/bean/StrIntBoolBean;

.field public O:Lcom/yunpan/appmanage/bean/StrIntBoolBean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lda/g;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lx9/t0;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Lx9/t0;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->E:Lx9/t0;

    .line 11
    .line 12
    new-instance v0, Lx9/u0;

    .line 13
    .line 14
    invoke-direct {v0}, Lx9/u0;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->G:Lx9/u0;

    .line 18
    .line 19
    new-instance v0, Lx9/u0;

    .line 20
    .line 21
    invoke-direct {v0}, Lx9/u0;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->I:Lx9/u0;

    .line 25
    .line 26
    new-instance v0, Lx9/t2;

    .line 27
    .line 28
    invoke-direct {v0}, Lx9/t2;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->L:Lx9/t2;

    .line 32
    .line 33
    const/4 v0, -0x1

    .line 34
    iput v0, p0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->M:I

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final A(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->L:Lx9/t2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lc6/g;->b()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {v0, p1}, Lc6/g;->C(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->C:Lz7/s;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->N:Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;->strValue:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lz7/p;->g()Lz7/s;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->O:Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 33
    .line 34
    iget-object v1, v1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;->value_str2:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0, p1}, Lz7/o;->n(I)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lda/g;->A:Lda/g;

    .line 44
    .line 45
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->C:Lz7/s;

    .line 46
    .line 47
    invoke-static {p1, v0}, Lq4/a;->X(Landroid/content/Context;Lz7/s;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lda/g;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->C:Lz7/s;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lda/g;->A:Lda/g;

    .line 10
    .line 11
    invoke-static {v0}, Lq4/a;->x(Landroid/content/ContextWrapper;)Lz7/s;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->C:Lz7/s;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/yunpan/appmanage/ui/ActivitySidebar;->x()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final t()I
    .locals 1

    .line 1
    const v0, 0x7f0e0052

    return v0
.end method

.method public final u()V
    .locals 13

    .line 1
    iget-object v0, p0, Lda/g;->A:Lda/g;

    .line 2
    .line 3
    invoke-static {v0}, Lq4/a;->x(Landroid/content/ContextWrapper;)Lz7/s;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->C:Lz7/s;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const-string v3, "isOn"

    .line 15
    .line 16
    if-nez v0, :cond_4

    .line 17
    .line 18
    new-instance v0, Lz7/s;

    .line 19
    .line 20
    invoke-direct {v0}, Lz7/s;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->C:Lz7/s;

    .line 24
    .line 25
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 26
    .line 27
    invoke-virtual {v0, v3, v4}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->C:Lz7/s;

    .line 31
    .line 32
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 33
    .line 34
    const-string v6, "leftOn"

    .line 35
    .line 36
    invoke-virtual {v0, v6, v5}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->C:Lz7/s;

    .line 40
    .line 41
    const-string v6, "rightOn"

    .line 42
    .line 43
    invoke-virtual {v0, v6, v4}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->C:Lz7/s;

    .line 47
    .line 48
    const-string v6, "bottomOn"

    .line 49
    .line 50
    invoke-virtual {v0, v6, v4}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->C:Lz7/s;

    .line 54
    .line 55
    const-string v6, "topOn"

    .line 56
    .line 57
    invoke-virtual {v0, v6, v4}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lda/g;->A:Lda/g;

    .line 61
    .line 62
    invoke-static {v0}, Lif/a;->R(Landroid/content/Context;)Landroid/graphics/Point;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget v6, v0, Landroid/graphics/Point;->x:I

    .line 67
    .line 68
    div-int/lit8 v6, v6, 0x28

    .line 69
    .line 70
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 71
    .line 72
    div-int/lit8 v0, v0, 0x18

    .line 73
    .line 74
    iget-object v7, p0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->C:Lz7/s;

    .line 75
    .line 76
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    const-string v9, "leftSize"

    .line 81
    .line 82
    invoke-virtual {v7, v9, v8}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 83
    .line 84
    .line 85
    iget-object v7, p0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->C:Lz7/s;

    .line 86
    .line 87
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    const-string v8, "rightSize"

    .line 92
    .line 93
    invoke-virtual {v7, v8, v6}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 94
    .line 95
    .line 96
    iget-object v6, p0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->C:Lz7/s;

    .line 97
    .line 98
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    const-string v8, "bottomSize"

    .line 103
    .line 104
    invoke-virtual {v6, v8, v7}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 105
    .line 106
    .line 107
    iget-object v6, p0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->C:Lz7/s;

    .line 108
    .line 109
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    const-string v7, "topSize"

    .line 114
    .line 115
    invoke-virtual {v6, v7, v0}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->C:Lz7/s;

    .line 119
    .line 120
    const-string v6, "leftSplit"

    .line 121
    .line 122
    invoke-virtual {v0, v6, v2}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->C:Lz7/s;

    .line 126
    .line 127
    const-string v6, "rightSplit"

    .line 128
    .line 129
    invoke-virtual {v0, v6, v2}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 130
    .line 131
    .line 132
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->C:Lz7/s;

    .line 133
    .line 134
    const-string v6, "bottomSplit"

    .line 135
    .line 136
    invoke-virtual {v0, v6, v2}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 137
    .line 138
    .line 139
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->C:Lz7/s;

    .line 140
    .line 141
    const-string v6, "topSplit"

    .line 142
    .line 143
    invoke-virtual {v0, v6, v2}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 144
    .line 145
    .line 146
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->C:Lz7/s;

    .line 147
    .line 148
    const-string v6, "animation"

    .line 149
    .line 150
    invoke-virtual {v0, v6, v2}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 151
    .line 152
    .line 153
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->C:Lz7/s;

    .line 154
    .line 155
    const-string v6, "showView"

    .line 156
    .line 157
    invoke-virtual {v0, v6, v4}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 158
    .line 159
    .line 160
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->C:Lz7/s;

    .line 161
    .line 162
    const-string v4, "avoidInputMethod"

    .line 163
    .line 164
    invoke-virtual {v0, v4, v5}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 165
    .line 166
    .line 167
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->C:Lz7/s;

    .line 168
    .line 169
    const-string v4, "autoCloseWhenScreenOff"

    .line 170
    .line 171
    invoke-virtual {v0, v4, v5}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 172
    .line 173
    .line 174
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->C:Lz7/s;

    .line 175
    .line 176
    const-string v4, "effect"

    .line 177
    .line 178
    invoke-virtual {v0, v4, v2}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 179
    .line 180
    .line 181
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->C:Lz7/s;

    .line 182
    .line 183
    const-string v2, "effectName"

    .line 184
    .line 185
    const-string v4, "\u8fb9\u7f18\u591a\u5f69\u5149\u6548"

    .line 186
    .line 187
    invoke-virtual {v0, v2, v4}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    new-instance v0, Lz7/s;

    .line 191
    .line 192
    invoke-direct {v0}, Lz7/s;-><init>()V

    .line 193
    .line 194
    .line 195
    const/4 v2, 0x1

    .line 196
    :goto_0
    const-string v4, "\u4e0b\u6ed1"

    .line 197
    .line 198
    const-string v5, "\u4e0a\u6ed1"

    .line 199
    .line 200
    const-string v6, "\u53f3\u6ed1"

    .line 201
    .line 202
    const-string v7, "\u957f\u6309"

    .line 203
    .line 204
    const-string v8, "\u5355\u51fb"

    .line 205
    .line 206
    const/4 v9, 0x4

    .line 207
    if-ge v2, v9, :cond_0

    .line 208
    .line 209
    invoke-static {v2, v6}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v6

    .line 213
    new-instance v9, Lz7/o;

    .line 214
    .line 215
    invoke-direct {v9}, Lz7/o;-><init>()V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0, v6, v9}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 219
    .line 220
    .line 221
    new-instance v6, Ljava/lang/StringBuilder;

    .line 222
    .line 223
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v5

    .line 233
    new-instance v6, Lz7/o;

    .line 234
    .line 235
    invoke-direct {v6}, Lz7/o;-><init>()V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0, v5, v6}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 239
    .line 240
    .line 241
    new-instance v5, Ljava/lang/StringBuilder;

    .line 242
    .line 243
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v4

    .line 253
    new-instance v5, Lz7/o;

    .line 254
    .line 255
    invoke-direct {v5}, Lz7/o;-><init>()V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0, v4, v5}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 259
    .line 260
    .line 261
    new-instance v4, Ljava/lang/StringBuilder;

    .line 262
    .line 263
    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v4

    .line 273
    new-instance v5, Lz7/o;

    .line 274
    .line 275
    invoke-direct {v5}, Lz7/o;-><init>()V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v0, v4, v5}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 279
    .line 280
    .line 281
    new-instance v4, Ljava/lang/StringBuilder;

    .line 282
    .line 283
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v4

    .line 293
    new-instance v5, Lz7/o;

    .line 294
    .line 295
    invoke-direct {v5}, Lz7/o;-><init>()V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v0, v4, v5}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 299
    .line 300
    .line 301
    add-int/lit8 v2, v2, 0x1

    .line 302
    .line 303
    goto :goto_0

    .line 304
    :cond_0
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->C:Lz7/s;

    .line 305
    .line 306
    const-string v10, "\u5de6\u4fa7"

    .line 307
    .line 308
    invoke-virtual {v2, v10, v0}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 309
    .line 310
    .line 311
    new-instance v0, Lz7/s;

    .line 312
    .line 313
    invoke-direct {v0}, Lz7/s;-><init>()V

    .line 314
    .line 315
    .line 316
    const/4 v2, 0x1

    .line 317
    :goto_1
    const-string v10, "\u5de6\u6ed1"

    .line 318
    .line 319
    if-ge v2, v9, :cond_1

    .line 320
    .line 321
    invoke-static {v2, v10}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v10

    .line 325
    new-instance v11, Lz7/o;

    .line 326
    .line 327
    invoke-direct {v11}, Lz7/o;-><init>()V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v0, v10, v11}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 331
    .line 332
    .line 333
    new-instance v10, Ljava/lang/StringBuilder;

    .line 334
    .line 335
    invoke-direct {v10, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v10

    .line 345
    new-instance v11, Lz7/o;

    .line 346
    .line 347
    invoke-direct {v11}, Lz7/o;-><init>()V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v0, v10, v11}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 351
    .line 352
    .line 353
    new-instance v10, Ljava/lang/StringBuilder;

    .line 354
    .line 355
    invoke-direct {v10, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v10

    .line 365
    new-instance v11, Lz7/o;

    .line 366
    .line 367
    invoke-direct {v11}, Lz7/o;-><init>()V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v0, v10, v11}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 371
    .line 372
    .line 373
    new-instance v10, Ljava/lang/StringBuilder;

    .line 374
    .line 375
    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v10

    .line 385
    new-instance v11, Lz7/o;

    .line 386
    .line 387
    invoke-direct {v11}, Lz7/o;-><init>()V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v0, v10, v11}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 391
    .line 392
    .line 393
    new-instance v10, Ljava/lang/StringBuilder;

    .line 394
    .line 395
    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v10

    .line 405
    new-instance v11, Lz7/o;

    .line 406
    .line 407
    invoke-direct {v11}, Lz7/o;-><init>()V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v0, v10, v11}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 411
    .line 412
    .line 413
    add-int/lit8 v2, v2, 0x1

    .line 414
    .line 415
    goto :goto_1

    .line 416
    :cond_1
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->C:Lz7/s;

    .line 417
    .line 418
    const-string v11, "\u53f3\u4fa7"

    .line 419
    .line 420
    invoke-virtual {v2, v11, v0}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 421
    .line 422
    .line 423
    new-instance v0, Lz7/s;

    .line 424
    .line 425
    invoke-direct {v0}, Lz7/s;-><init>()V

    .line 426
    .line 427
    .line 428
    const/4 v2, 0x1

    .line 429
    :goto_2
    if-ge v2, v9, :cond_2

    .line 430
    .line 431
    invoke-static {v2, v5}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v11

    .line 435
    new-instance v12, Lz7/o;

    .line 436
    .line 437
    invoke-direct {v12}, Lz7/o;-><init>()V

    .line 438
    .line 439
    .line 440
    invoke-virtual {v0, v11, v12}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 441
    .line 442
    .line 443
    new-instance v11, Ljava/lang/StringBuilder;

    .line 444
    .line 445
    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 449
    .line 450
    .line 451
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v11

    .line 455
    new-instance v12, Lz7/o;

    .line 456
    .line 457
    invoke-direct {v12}, Lz7/o;-><init>()V

    .line 458
    .line 459
    .line 460
    invoke-virtual {v0, v11, v12}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 461
    .line 462
    .line 463
    new-instance v11, Ljava/lang/StringBuilder;

    .line 464
    .line 465
    invoke-direct {v11, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object v11

    .line 475
    new-instance v12, Lz7/o;

    .line 476
    .line 477
    invoke-direct {v12}, Lz7/o;-><init>()V

    .line 478
    .line 479
    .line 480
    invoke-virtual {v0, v11, v12}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 481
    .line 482
    .line 483
    new-instance v11, Ljava/lang/StringBuilder;

    .line 484
    .line 485
    invoke-direct {v11, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 486
    .line 487
    .line 488
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v11

    .line 495
    new-instance v12, Lz7/o;

    .line 496
    .line 497
    invoke-direct {v12}, Lz7/o;-><init>()V

    .line 498
    .line 499
    .line 500
    invoke-virtual {v0, v11, v12}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 501
    .line 502
    .line 503
    new-instance v11, Ljava/lang/StringBuilder;

    .line 504
    .line 505
    invoke-direct {v11, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 506
    .line 507
    .line 508
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 509
    .line 510
    .line 511
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object v11

    .line 515
    new-instance v12, Lz7/o;

    .line 516
    .line 517
    invoke-direct {v12}, Lz7/o;-><init>()V

    .line 518
    .line 519
    .line 520
    invoke-virtual {v0, v11, v12}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 521
    .line 522
    .line 523
    add-int/lit8 v2, v2, 0x1

    .line 524
    .line 525
    goto :goto_2

    .line 526
    :cond_2
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->C:Lz7/s;

    .line 527
    .line 528
    const-string v5, "\u5e95\u90e8"

    .line 529
    .line 530
    invoke-virtual {v2, v5, v0}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 531
    .line 532
    .line 533
    new-instance v0, Lz7/s;

    .line 534
    .line 535
    invoke-direct {v0}, Lz7/s;-><init>()V

    .line 536
    .line 537
    .line 538
    const/4 v2, 0x1

    .line 539
    :goto_3
    if-ge v2, v9, :cond_3

    .line 540
    .line 541
    invoke-static {v2, v4}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object v5

    .line 545
    new-instance v11, Lz7/o;

    .line 546
    .line 547
    invoke-direct {v11}, Lz7/o;-><init>()V

    .line 548
    .line 549
    .line 550
    invoke-virtual {v0, v5, v11}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 551
    .line 552
    .line 553
    new-instance v5, Ljava/lang/StringBuilder;

    .line 554
    .line 555
    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 556
    .line 557
    .line 558
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 559
    .line 560
    .line 561
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 562
    .line 563
    .line 564
    move-result-object v5

    .line 565
    new-instance v11, Lz7/o;

    .line 566
    .line 567
    invoke-direct {v11}, Lz7/o;-><init>()V

    .line 568
    .line 569
    .line 570
    invoke-virtual {v0, v5, v11}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 571
    .line 572
    .line 573
    new-instance v5, Ljava/lang/StringBuilder;

    .line 574
    .line 575
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 576
    .line 577
    .line 578
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 579
    .line 580
    .line 581
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 582
    .line 583
    .line 584
    move-result-object v5

    .line 585
    new-instance v11, Lz7/o;

    .line 586
    .line 587
    invoke-direct {v11}, Lz7/o;-><init>()V

    .line 588
    .line 589
    .line 590
    invoke-virtual {v0, v5, v11}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 591
    .line 592
    .line 593
    new-instance v5, Ljava/lang/StringBuilder;

    .line 594
    .line 595
    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 596
    .line 597
    .line 598
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 599
    .line 600
    .line 601
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 602
    .line 603
    .line 604
    move-result-object v5

    .line 605
    new-instance v11, Lz7/o;

    .line 606
    .line 607
    invoke-direct {v11}, Lz7/o;-><init>()V

    .line 608
    .line 609
    .line 610
    invoke-virtual {v0, v5, v11}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 611
    .line 612
    .line 613
    new-instance v5, Ljava/lang/StringBuilder;

    .line 614
    .line 615
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 616
    .line 617
    .line 618
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 619
    .line 620
    .line 621
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 622
    .line 623
    .line 624
    move-result-object v5

    .line 625
    new-instance v11, Lz7/o;

    .line 626
    .line 627
    invoke-direct {v11}, Lz7/o;-><init>()V

    .line 628
    .line 629
    .line 630
    invoke-virtual {v0, v5, v11}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 631
    .line 632
    .line 633
    add-int/lit8 v2, v2, 0x1

    .line 634
    .line 635
    goto :goto_3

    .line 636
    :cond_3
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->C:Lz7/s;

    .line 637
    .line 638
    const-string v4, "\u9876\u90e8"

    .line 639
    .line 640
    invoke-virtual {v2, v4, v0}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 641
    .line 642
    .line 643
    iget-object v0, p0, Lda/g;->A:Lda/g;

    .line 644
    .line 645
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->C:Lz7/s;

    .line 646
    .line 647
    invoke-static {v0, v2}, Lq4/a;->X(Landroid/content/Context;Lz7/s;)V

    .line 648
    .line 649
    .line 650
    :cond_4
    const v0, 0x7f0b050d

    .line 651
    .line 652
    .line 653
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 654
    .line 655
    .line 656
    move-result-object v0

    .line 657
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 658
    .line 659
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 660
    .line 661
    new-instance v2, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 662
    .line 663
    iget-object v4, p0, Lda/g;->A:Lda/g;

    .line 664
    .line 665
    const/4 v5, 0x0

    .line 666
    invoke-direct {v2, v4, v5, v5}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 667
    .line 668
    .line 669
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 670
    .line 671
    .line 672
    new-instance v0, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;

    .line 673
    .line 674
    const v2, 0x7f0801d1

    .line 675
    .line 676
    .line 677
    const-string v4, "\u8fd4\u56de"

    .line 678
    .line 679
    invoke-direct {v0, v2, v4, v1}, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;-><init>(ILjava/lang/String;I)V

    .line 680
    .line 681
    .line 682
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->E:Lx9/t0;

    .line 683
    .line 684
    invoke-virtual {v2, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 685
    .line 686
    .line 687
    new-instance v0, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;

    .line 688
    .line 689
    const v4, 0x7f0801f8

    .line 690
    .line 691
    .line 692
    const-string v6, "\u8bbe\u7f6e"

    .line 693
    .line 694
    invoke-direct {v0, v4, v6, v1}, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;-><init>(ILjava/lang/String;I)V

    .line 695
    .line 696
    .line 697
    invoke-virtual {v2, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 698
    .line 699
    .line 700
    new-instance v0, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;

    .line 701
    .line 702
    iget-object v4, p0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->C:Lz7/s;

    .line 703
    .line 704
    invoke-virtual {v4, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 705
    .line 706
    .line 707
    move-result-object v3

    .line 708
    invoke-virtual {v3}, Lz7/p;->b()Z

    .line 709
    .line 710
    .line 711
    move-result v3

    .line 712
    if-eqz v3, :cond_5

    .line 713
    .line 714
    const v3, 0x7f080234

    .line 715
    .line 716
    .line 717
    goto :goto_4

    .line 718
    :cond_5
    const v3, 0x7f080237

    .line 719
    .line 720
    .line 721
    :goto_4
    const-string v4, "\u5f00\u542f\u4fa7\u8fb9\u624b\u52bf"

    .line 722
    .line 723
    const/4 v6, 0x2

    .line 724
    invoke-direct {v0, v3, v4, v6}, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;-><init>(ILjava/lang/String;I)V

    .line 725
    .line 726
    .line 727
    invoke-virtual {v2, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 728
    .line 729
    .line 730
    new-instance v0, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;

    .line 731
    .line 732
    const v3, 0x7f08008c

    .line 733
    .line 734
    .line 735
    const-string v4, "\u6dfb\u52a0\u6620\u5c04"

    .line 736
    .line 737
    invoke-direct {v0, v3, v4, v1}, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;-><init>(ILjava/lang/String;I)V

    .line 738
    .line 739
    .line 740
    invoke-virtual {v2, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 741
    .line 742
    .line 743
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 744
    .line 745
    invoke-virtual {v0, v2}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 746
    .line 747
    .line 748
    new-instance v0, Lua/n6;

    .line 749
    .line 750
    const/4 v3, 0x0

    .line 751
    invoke-direct {v0, p0, v3}, Lua/n6;-><init>(Lcom/yunpan/appmanage/ui/ActivitySidebar;I)V

    .line 752
    .line 753
    .line 754
    iput-object v0, v2, Lc6/g;->e:Lc6/e;

    .line 755
    .line 756
    const v0, 0x7f0b04f7

    .line 757
    .line 758
    .line 759
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 760
    .line 761
    .line 762
    move-result-object v0

    .line 763
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 764
    .line 765
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->F:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 766
    .line 767
    new-instance v2, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 768
    .line 769
    iget-object v3, p0, Lda/g;->A:Lda/g;

    .line 770
    .line 771
    invoke-direct {v2, v3, v1, v5}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 772
    .line 773
    .line 774
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 775
    .line 776
    .line 777
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->F:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 778
    .line 779
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->G:Lx9/u0;

    .line 780
    .line 781
    invoke-virtual {v0, v2}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 782
    .line 783
    .line 784
    new-instance v0, Lua/n6;

    .line 785
    .line 786
    const/4 v3, 0x1

    .line 787
    invoke-direct {v0, p0, v3}, Lua/n6;-><init>(Lcom/yunpan/appmanage/ui/ActivitySidebar;I)V

    .line 788
    .line 789
    .line 790
    iput-object v0, v2, Lc6/g;->e:Lc6/e;

    .line 791
    .line 792
    const v0, 0x7f0b0505

    .line 793
    .line 794
    .line 795
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 796
    .line 797
    .line 798
    move-result-object v0

    .line 799
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 800
    .line 801
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->H:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 802
    .line 803
    new-instance v2, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 804
    .line 805
    iget-object v3, p0, Lda/g;->A:Lda/g;

    .line 806
    .line 807
    invoke-direct {v2, v3, v1, v5}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 808
    .line 809
    .line 810
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 811
    .line 812
    .line 813
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->H:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 814
    .line 815
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->I:Lx9/u0;

    .line 816
    .line 817
    invoke-virtual {v0, v2}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 818
    .line 819
    .line 820
    new-instance v0, Lua/n6;

    .line 821
    .line 822
    const/4 v3, 0x2

    .line 823
    invoke-direct {v0, p0, v3}, Lua/n6;-><init>(Lcom/yunpan/appmanage/ui/ActivitySidebar;I)V

    .line 824
    .line 825
    .line 826
    iput-object v0, v2, Lc6/g;->e:Lc6/e;

    .line 827
    .line 828
    const v0, 0x7f0b0506

    .line 829
    .line 830
    .line 831
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 832
    .line 833
    .line 834
    move-result-object v0

    .line 835
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 836
    .line 837
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->K:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 838
    .line 839
    new-instance v2, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 840
    .line 841
    iget-object v3, p0, Lda/g;->A:Lda/g;

    .line 842
    .line 843
    invoke-direct {v2, v3, v1, v5}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 844
    .line 845
    .line 846
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 847
    .line 848
    .line 849
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->K:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 850
    .line 851
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->L:Lx9/t2;

    .line 852
    .line 853
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 854
    .line 855
    .line 856
    new-instance v0, Ld6/a;

    .line 857
    .line 858
    invoke-direct {v0}, Ld6/a;-><init>()V

    .line 859
    .line 860
    .line 861
    const/4 v2, 0x3

    .line 862
    iput v2, v0, Ld6/a;->h:I

    .line 863
    .line 864
    iput-boolean v5, v0, Ld6/a;->g:Z

    .line 865
    .line 866
    new-instance v2, Lua/p6;

    .line 867
    .line 868
    invoke-direct {v2, p0}, Lua/p6;-><init>(Lcom/yunpan/appmanage/ui/ActivitySidebar;)V

    .line 869
    .line 870
    .line 871
    iput-object v2, v0, Ld6/a;->i:Le6/b;

    .line 872
    .line 873
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->K:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 874
    .line 875
    invoke-virtual {v0, v2}, Ld6/a;->d(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 876
    .line 877
    .line 878
    invoke-virtual {v0, v1}, Ld6/a;->g(Le6/a;)V

    .line 879
    .line 880
    .line 881
    new-instance v0, Lua/n6;

    .line 882
    .line 883
    const/4 v2, 0x3

    .line 884
    invoke-direct {v0, p0, v2}, Lua/n6;-><init>(Lcom/yunpan/appmanage/ui/ActivitySidebar;I)V

    .line 885
    .line 886
    .line 887
    iput-object v0, v1, Lc6/g;->e:Lc6/e;

    .line 888
    .line 889
    invoke-virtual {p0}, Lcom/yunpan/appmanage/ui/ActivitySidebar;->x()V

    .line 890
    .line 891
    .line 892
    return-void
.end method

.method public final x()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->G:Lx9/u0;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Lc6/g;->E(Ljava/util/List;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->C:Lz7/s;

    .line 12
    .line 13
    const-string v2, "leftOn"

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lz7/p;->b()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    new-instance v0, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 26
    .line 27
    const-string v2, "\u5de6\u4fa7"

    .line 28
    .line 29
    invoke-direct {v0, v2}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->C:Lz7/s;

    .line 36
    .line 37
    const-string v2, "rightOn"

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lz7/p;->b()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    new-instance v0, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 50
    .line 51
    const-string v2, "\u53f3\u4fa7"

    .line 52
    .line 53
    invoke-direct {v0, v2}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->C:Lz7/s;

    .line 60
    .line 61
    const-string v2, "bottomOn"

    .line 62
    .line 63
    invoke-virtual {v0, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lz7/p;->b()Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    new-instance v0, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 74
    .line 75
    const-string v2, "\u5e95\u90e8"

    .line 76
    .line 77
    invoke-direct {v0, v2}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    :cond_2
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->C:Lz7/s;

    .line 84
    .line 85
    const-string v2, "topOn"

    .line 86
    .line 87
    invoke-virtual {v0, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lz7/p;->b()Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_3

    .line 96
    .line 97
    new-instance v0, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 98
    .line 99
    const-string v2, "\u9876\u90e8"

    .line 100
    .line 101
    invoke-direct {v0, v2}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    :cond_3
    invoke-virtual {v1}, Lc6/g;->b()I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-nez v0, :cond_4

    .line 112
    .line 113
    new-instance v0, Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .line 117
    .line 118
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->I:Lx9/u0;

    .line 119
    .line 120
    invoke-virtual {v1, v0}, Lc6/g;->E(Ljava/util/List;)V

    .line 121
    .line 122
    .line 123
    new-instance v0, Ljava/util/ArrayList;

    .line 124
    .line 125
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .line 127
    .line 128
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->L:Lx9/t2;

    .line 129
    .line 130
    invoke-virtual {v1, v0}, Lc6/g;->E(Ljava/util/List;)V

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :cond_4
    const/4 v0, 0x0

    .line 135
    invoke-virtual {v1, v0}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    check-cast v2, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 140
    .line 141
    iput-object v2, p0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->N:Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 142
    .line 143
    const/4 v3, 0x1

    .line 144
    iput-boolean v3, v2, Lcom/yunpan/appmanage/bean/StrIntBoolBean;->boolValue:Z

    .line 145
    .line 146
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0}, Lcom/yunpan/appmanage/ui/ActivitySidebar;->y()V

    .line 150
    .line 151
    .line 152
    return-void
.end method

.method public final y()V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->I:Lx9/u0;

    .line 9
    .line 10
    invoke-virtual {v2, v1}, Lc6/g;->E(Ljava/util/List;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->N:Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;->strValue:Ljava/lang/String;

    .line 16
    .line 17
    const-string v3, "\u5de6"

    .line 18
    .line 19
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const-string v3, "\u4e0a\u6ed12"

    .line 24
    .line 25
    const-string v4, "\u53f3\u6ed12"

    .line 26
    .line 27
    const-string v5, "\u4e0b\u6ed1"

    .line 28
    .line 29
    const-string v6, "\u4e0a\u6ed1"

    .line 30
    .line 31
    const-string v7, "\u53f3\u6ed1"

    .line 32
    .line 33
    const-string v8, "\u957f\u63093"

    .line 34
    .line 35
    const-string v9, "\u957f\u6309(\u4e2d)"

    .line 36
    .line 37
    const-string v10, "\u5355\u51fb3"

    .line 38
    .line 39
    const-string v11, "\u5355\u51fb(\u4e2d)"

    .line 40
    .line 41
    const-string v13, "\u957f\u63092"

    .line 42
    .line 43
    const-string v14, "\u5355\u51fb2"

    .line 44
    .line 45
    const-string v15, "\u957f\u6309"

    .line 46
    .line 47
    const-string v12, "\u5355\u51fb"

    .line 48
    .line 49
    move-object/from16 v16, v8

    .line 50
    .line 51
    const-string v8, "\u4e0b\u6ed11"

    .line 52
    .line 53
    move-object/from16 v17, v9

    .line 54
    .line 55
    const-string v9, "\u4e0a\u6ed11"

    .line 56
    .line 57
    move-object/from16 v18, v10

    .line 58
    .line 59
    const-string v10, "\u53f3\u6ed11"

    .line 60
    .line 61
    move-object/from16 v19, v11

    .line 62
    .line 63
    const-string v11, "\u957f\u63091"

    .line 64
    .line 65
    move-object/from16 v20, v13

    .line 66
    .line 67
    const-string v13, "\u5355\u51fb1"

    .line 68
    .line 69
    if-eqz v1, :cond_1

    .line 70
    .line 71
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->C:Lz7/s;

    .line 72
    .line 73
    const-string v0, "leftSplit"

    .line 74
    .line 75
    invoke-virtual {v1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lz7/p;->e()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    const/4 v1, 0x1

    .line 84
    if-ne v0, v1, :cond_0

    .line 85
    .line 86
    new-instance v0, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 87
    .line 88
    invoke-direct {v0, v7, v10}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    new-instance v0, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 95
    .line 96
    invoke-direct {v0, v6, v9}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    new-instance v0, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 103
    .line 104
    invoke-direct {v0, v5, v8}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    new-instance v0, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 111
    .line 112
    invoke-direct {v0, v12, v13}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    new-instance v0, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 119
    .line 120
    invoke-direct {v0, v15, v11}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    move-object/from16 v0, p0

    .line 127
    .line 128
    goto/16 :goto_0

    .line 129
    .line 130
    :cond_0
    new-instance v0, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 131
    .line 132
    const-string v1, "\u53f3\u6ed1(\u4e0a)"

    .line 133
    .line 134
    invoke-direct {v0, v1, v10}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    new-instance v0, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 141
    .line 142
    const-string v1, "\u4e0a\u6ed1(\u4e0a)"

    .line 143
    .line 144
    invoke-direct {v0, v1, v9}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    new-instance v0, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 151
    .line 152
    const-string v1, "\u4e0b\u6ed1(\u4e0a)"

    .line 153
    .line 154
    invoke-direct {v0, v1, v8}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    new-instance v0, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 161
    .line 162
    const-string v1, "\u5355\u51fb(\u4e0a)"

    .line 163
    .line 164
    invoke-direct {v0, v1, v13}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    new-instance v0, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 171
    .line 172
    const-string v1, "\u957f\u6309(\u4e0a)"

    .line 173
    .line 174
    invoke-direct {v0, v1, v11}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v2, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    new-instance v0, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 181
    .line 182
    const-string v1, "\u53f3\u6ed1(\u4e0b)"

    .line 183
    .line 184
    invoke-direct {v0, v1, v4}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v2, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    new-instance v0, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 191
    .line 192
    const-string v1, "\u4e0a\u6ed1(\u4e0b)"

    .line 193
    .line 194
    invoke-direct {v0, v1, v3}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v2, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    new-instance v0, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 201
    .line 202
    const-string v1, "\u4e0b\u6ed1(\u4e0b)"

    .line 203
    .line 204
    const-string v3, "\u4e0b\u6ed12"

    .line 205
    .line 206
    invoke-direct {v0, v1, v3}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v2, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    new-instance v0, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 213
    .line 214
    const-string v1, "\u5355\u51fb(\u4e0b)"

    .line 215
    .line 216
    invoke-direct {v0, v1, v14}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v2, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    new-instance v0, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 223
    .line 224
    const-string v1, "\u957f\u6309(\u4e0b)"

    .line 225
    .line 226
    move-object/from16 v3, v20

    .line 227
    .line 228
    invoke-direct {v0, v1, v3}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v2, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    move-object/from16 v0, p0

    .line 235
    .line 236
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->C:Lz7/s;

    .line 237
    .line 238
    const-string v3, "leftSplit"

    .line 239
    .line 240
    invoke-virtual {v1, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    invoke-virtual {v1}, Lz7/p;->e()I

    .line 245
    .line 246
    .line 247
    move-result v1

    .line 248
    const/4 v3, 0x3

    .line 249
    if-ne v1, v3, :cond_7

    .line 250
    .line 251
    new-instance v1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 252
    .line 253
    const-string v3, "\u53f3\u6ed1(\u4e2d)"

    .line 254
    .line 255
    const-string v4, "\u53f3\u6ed13"

    .line 256
    .line 257
    invoke-direct {v1, v3, v4}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v2, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    new-instance v1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 264
    .line 265
    const-string v3, "\u4e0a\u6ed1(\u4e2d)"

    .line 266
    .line 267
    const-string v4, "\u4e0a\u6ed13"

    .line 268
    .line 269
    invoke-direct {v1, v3, v4}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v2, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 273
    .line 274
    .line 275
    new-instance v1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 276
    .line 277
    const-string v3, "\u4e0b\u6ed1(\u4e2d)"

    .line 278
    .line 279
    const-string v4, "\u4e0b\u6ed13"

    .line 280
    .line 281
    invoke-direct {v1, v3, v4}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v2, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    new-instance v1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 288
    .line 289
    move-object/from16 v3, v18

    .line 290
    .line 291
    move-object/from16 v4, v19

    .line 292
    .line 293
    invoke-direct {v1, v4, v3}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v2, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 297
    .line 298
    .line 299
    new-instance v1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 300
    .line 301
    move-object/from16 v3, v16

    .line 302
    .line 303
    move-object/from16 v4, v17

    .line 304
    .line 305
    invoke-direct {v1, v4, v3}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v2, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 309
    .line 310
    .line 311
    goto/16 :goto_0

    .line 312
    .line 313
    :cond_1
    move-object/from16 v1, v20

    .line 314
    .line 315
    move-object/from16 v20, v17

    .line 316
    .line 317
    move-object/from16 v17, v7

    .line 318
    .line 319
    move-object/from16 v7, v18

    .line 320
    .line 321
    move-object/from16 v18, v10

    .line 322
    .line 323
    move-object/from16 v10, v19

    .line 324
    .line 325
    move-object/from16 v19, v16

    .line 326
    .line 327
    move-object/from16 v16, v4

    .line 328
    .line 329
    iget-object v4, v0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->N:Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 330
    .line 331
    iget-object v4, v4, Lcom/yunpan/appmanage/bean/StrIntBoolBean;->strValue:Ljava/lang/String;

    .line 332
    .line 333
    move-object/from16 v21, v7

    .line 334
    .line 335
    const-string v7, "\u53f3"

    .line 336
    .line 337
    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 338
    .line 339
    .line 340
    move-result v4

    .line 341
    const-string v7, "\u5de6\u6ed11"

    .line 342
    .line 343
    if-eqz v4, :cond_3

    .line 344
    .line 345
    iget-object v4, v0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->C:Lz7/s;

    .line 346
    .line 347
    move-object/from16 v22, v10

    .line 348
    .line 349
    const-string v10, "rightSplit"

    .line 350
    .line 351
    invoke-virtual {v4, v10}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 352
    .line 353
    .line 354
    move-result-object v4

    .line 355
    invoke-virtual {v4}, Lz7/p;->e()I

    .line 356
    .line 357
    .line 358
    move-result v4

    .line 359
    const/4 v10, 0x1

    .line 360
    if-ne v4, v10, :cond_2

    .line 361
    .line 362
    new-instance v1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 363
    .line 364
    const-string v3, "\u5de6\u6ed1"

    .line 365
    .line 366
    invoke-direct {v1, v3, v7}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v2, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 370
    .line 371
    .line 372
    new-instance v1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 373
    .line 374
    invoke-direct {v1, v6, v9}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v2, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 378
    .line 379
    .line 380
    new-instance v1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 381
    .line 382
    invoke-direct {v1, v5, v8}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v2, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 386
    .line 387
    .line 388
    new-instance v1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 389
    .line 390
    invoke-direct {v1, v12, v13}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v2, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 394
    .line 395
    .line 396
    new-instance v1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 397
    .line 398
    invoke-direct {v1, v15, v11}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v2, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 402
    .line 403
    .line 404
    goto/16 :goto_0

    .line 405
    .line 406
    :cond_2
    new-instance v4, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 407
    .line 408
    const-string v5, "\u5de6\u6ed1(\u4e0a)"

    .line 409
    .line 410
    invoke-direct {v4, v5, v7}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v2, v4}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 414
    .line 415
    .line 416
    new-instance v4, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 417
    .line 418
    const-string v5, "\u4e0a\u6ed1(\u4e0a)"

    .line 419
    .line 420
    invoke-direct {v4, v5, v9}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v2, v4}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 424
    .line 425
    .line 426
    new-instance v4, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 427
    .line 428
    const-string v5, "\u4e0b\u6ed1(\u4e0a)"

    .line 429
    .line 430
    invoke-direct {v4, v5, v8}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v2, v4}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 434
    .line 435
    .line 436
    new-instance v4, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 437
    .line 438
    const-string v5, "\u5355\u51fb(\u4e0a)"

    .line 439
    .line 440
    invoke-direct {v4, v5, v13}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    .line 442
    .line 443
    invoke-virtual {v2, v4}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 444
    .line 445
    .line 446
    new-instance v4, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 447
    .line 448
    const-string v5, "\u957f\u6309(\u4e0a)"

    .line 449
    .line 450
    invoke-direct {v4, v5, v11}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    invoke-virtual {v2, v4}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 454
    .line 455
    .line 456
    new-instance v4, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 457
    .line 458
    const-string v5, "\u5de6\u6ed1(\u4e0b)"

    .line 459
    .line 460
    const-string v6, "\u5de6\u6ed12"

    .line 461
    .line 462
    invoke-direct {v4, v5, v6}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {v2, v4}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 466
    .line 467
    .line 468
    new-instance v4, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 469
    .line 470
    const-string v5, "\u4e0a\u6ed1(\u4e0b)"

    .line 471
    .line 472
    invoke-direct {v4, v5, v3}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    invoke-virtual {v2, v4}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 476
    .line 477
    .line 478
    new-instance v3, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 479
    .line 480
    const-string v4, "\u4e0b\u6ed1(\u4e0b)"

    .line 481
    .line 482
    const-string v5, "\u4e0b\u6ed12"

    .line 483
    .line 484
    invoke-direct {v3, v4, v5}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    .line 486
    .line 487
    invoke-virtual {v2, v3}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 488
    .line 489
    .line 490
    new-instance v3, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 491
    .line 492
    const-string v4, "\u5355\u51fb(\u4e0b)"

    .line 493
    .line 494
    invoke-direct {v3, v4, v14}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    .line 496
    .line 497
    invoke-virtual {v2, v3}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 498
    .line 499
    .line 500
    new-instance v3, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 501
    .line 502
    const-string v4, "\u957f\u6309(\u4e0b)"

    .line 503
    .line 504
    invoke-direct {v3, v4, v1}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    .line 506
    .line 507
    invoke-virtual {v2, v3}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 508
    .line 509
    .line 510
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->C:Lz7/s;

    .line 511
    .line 512
    const-string v3, "rightSplit"

    .line 513
    .line 514
    invoke-virtual {v1, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 515
    .line 516
    .line 517
    move-result-object v1

    .line 518
    invoke-virtual {v1}, Lz7/p;->e()I

    .line 519
    .line 520
    .line 521
    move-result v1

    .line 522
    const/4 v3, 0x3

    .line 523
    if-ne v1, v3, :cond_7

    .line 524
    .line 525
    new-instance v1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 526
    .line 527
    const-string v3, "\u5de6\u6ed1(\u4e2d)"

    .line 528
    .line 529
    const-string v4, "\u5de6\u6ed13"

    .line 530
    .line 531
    invoke-direct {v1, v3, v4}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    .line 533
    .line 534
    invoke-virtual {v2, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 535
    .line 536
    .line 537
    new-instance v1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 538
    .line 539
    const-string v3, "\u4e0a\u6ed1(\u4e2d)"

    .line 540
    .line 541
    const-string v4, "\u4e0a\u6ed13"

    .line 542
    .line 543
    invoke-direct {v1, v3, v4}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    .line 545
    .line 546
    invoke-virtual {v2, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 547
    .line 548
    .line 549
    new-instance v1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 550
    .line 551
    const-string v3, "\u4e0b\u6ed1(\u4e2d)"

    .line 552
    .line 553
    const-string v4, "\u4e0b\u6ed13"

    .line 554
    .line 555
    invoke-direct {v1, v3, v4}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    .line 557
    .line 558
    invoke-virtual {v2, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 559
    .line 560
    .line 561
    new-instance v1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 562
    .line 563
    move-object/from16 v4, v21

    .line 564
    .line 565
    move-object/from16 v10, v22

    .line 566
    .line 567
    invoke-direct {v1, v10, v4}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    .line 569
    .line 570
    invoke-virtual {v2, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 571
    .line 572
    .line 573
    new-instance v1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 574
    .line 575
    move-object/from16 v3, v19

    .line 576
    .line 577
    move-object/from16 v4, v20

    .line 578
    .line 579
    invoke-direct {v1, v4, v3}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    .line 581
    .line 582
    invoke-virtual {v2, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 583
    .line 584
    .line 585
    goto/16 :goto_0

    .line 586
    .line 587
    :cond_3
    move-object/from16 v4, v21

    .line 588
    .line 589
    move-object/from16 v21, v19

    .line 590
    .line 591
    move-object/from16 v19, v5

    .line 592
    .line 593
    move-object/from16 v23, v20

    .line 594
    .line 595
    move-object/from16 v20, v8

    .line 596
    .line 597
    move-object/from16 v8, v23

    .line 598
    .line 599
    iget-object v5, v0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->N:Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 600
    .line 601
    iget-object v5, v5, Lcom/yunpan/appmanage/bean/StrIntBoolBean;->strValue:Ljava/lang/String;

    .line 602
    .line 603
    move-object/from16 v22, v8

    .line 604
    .line 605
    const-string v8, "\u5e95"

    .line 606
    .line 607
    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 608
    .line 609
    .line 610
    move-result v5

    .line 611
    if-eqz v5, :cond_5

    .line 612
    .line 613
    iget-object v5, v0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->C:Lz7/s;

    .line 614
    .line 615
    const-string v8, "bottomSplit"

    .line 616
    .line 617
    invoke-virtual {v5, v8}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 618
    .line 619
    .line 620
    move-result-object v5

    .line 621
    invoke-virtual {v5}, Lz7/p;->e()I

    .line 622
    .line 623
    .line 624
    move-result v5

    .line 625
    const/4 v8, 0x1

    .line 626
    if-ne v5, v8, :cond_4

    .line 627
    .line 628
    new-instance v1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 629
    .line 630
    invoke-direct {v1, v6, v9}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    .line 632
    .line 633
    invoke-virtual {v2, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 634
    .line 635
    .line 636
    new-instance v1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 637
    .line 638
    const-string v3, "\u5de6\u6ed1"

    .line 639
    .line 640
    invoke-direct {v1, v3, v7}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    .line 642
    .line 643
    invoke-virtual {v2, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 644
    .line 645
    .line 646
    new-instance v1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 647
    .line 648
    move-object/from16 v3, v17

    .line 649
    .line 650
    move-object/from16 v5, v18

    .line 651
    .line 652
    invoke-direct {v1, v3, v5}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    .line 654
    .line 655
    invoke-virtual {v2, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 656
    .line 657
    .line 658
    new-instance v1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 659
    .line 660
    invoke-direct {v1, v12, v13}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    .line 662
    .line 663
    invoke-virtual {v2, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 664
    .line 665
    .line 666
    new-instance v1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 667
    .line 668
    invoke-direct {v1, v15, v11}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    .line 670
    .line 671
    invoke-virtual {v2, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 672
    .line 673
    .line 674
    goto/16 :goto_0

    .line 675
    .line 676
    :cond_4
    move-object/from16 v5, v18

    .line 677
    .line 678
    new-instance v6, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 679
    .line 680
    const-string v8, "\u4e0a\u6ed1(\u5de6)"

    .line 681
    .line 682
    invoke-direct {v6, v8, v9}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    .line 684
    .line 685
    invoke-virtual {v2, v6}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 686
    .line 687
    .line 688
    new-instance v6, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 689
    .line 690
    const-string v8, "\u5de6\u6ed1(\u5de6)"

    .line 691
    .line 692
    invoke-direct {v6, v8, v7}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    .line 694
    .line 695
    invoke-virtual {v2, v6}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 696
    .line 697
    .line 698
    new-instance v6, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 699
    .line 700
    const-string v7, "\u53f3\u6ed1(\u5de6)"

    .line 701
    .line 702
    invoke-direct {v6, v7, v5}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    .line 704
    .line 705
    invoke-virtual {v2, v6}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 706
    .line 707
    .line 708
    new-instance v5, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 709
    .line 710
    const-string v6, "\u5355\u51fb(\u5de6)"

    .line 711
    .line 712
    invoke-direct {v5, v6, v13}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    .line 714
    .line 715
    invoke-virtual {v2, v5}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 716
    .line 717
    .line 718
    new-instance v5, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 719
    .line 720
    const-string v6, "\u957f\u6309(\u5de6)"

    .line 721
    .line 722
    invoke-direct {v5, v6, v11}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    .line 724
    .line 725
    invoke-virtual {v2, v5}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 726
    .line 727
    .line 728
    new-instance v5, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 729
    .line 730
    const-string v6, "\u4e0a\u6ed1(\u53f3)"

    .line 731
    .line 732
    invoke-direct {v5, v6, v3}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    .line 734
    .line 735
    invoke-virtual {v2, v5}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 736
    .line 737
    .line 738
    new-instance v3, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 739
    .line 740
    const-string v5, "\u5de6\u6ed1(\u53f3)"

    .line 741
    .line 742
    const-string v6, "\u5de6\u6ed12"

    .line 743
    .line 744
    invoke-direct {v3, v5, v6}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    .line 746
    .line 747
    invoke-virtual {v2, v3}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 748
    .line 749
    .line 750
    new-instance v3, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 751
    .line 752
    const-string v5, "\u53f3\u6ed1(\u53f3)"

    .line 753
    .line 754
    move-object/from16 v6, v16

    .line 755
    .line 756
    invoke-direct {v3, v5, v6}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    .line 758
    .line 759
    invoke-virtual {v2, v3}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 760
    .line 761
    .line 762
    new-instance v3, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 763
    .line 764
    const-string v5, "\u5355\u51fb(\u53f3)"

    .line 765
    .line 766
    invoke-direct {v3, v5, v14}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    .line 768
    .line 769
    invoke-virtual {v2, v3}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 770
    .line 771
    .line 772
    new-instance v3, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 773
    .line 774
    const-string v5, "\u957f\u6309(\u53f3)"

    .line 775
    .line 776
    invoke-direct {v3, v5, v1}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    .line 778
    .line 779
    invoke-virtual {v2, v3}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 780
    .line 781
    .line 782
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->C:Lz7/s;

    .line 783
    .line 784
    const-string v3, "bottomSplit"

    .line 785
    .line 786
    invoke-virtual {v1, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 787
    .line 788
    .line 789
    move-result-object v1

    .line 790
    invoke-virtual {v1}, Lz7/p;->e()I

    .line 791
    .line 792
    .line 793
    move-result v1

    .line 794
    const/4 v3, 0x3

    .line 795
    if-ne v1, v3, :cond_7

    .line 796
    .line 797
    new-instance v1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 798
    .line 799
    const-string v3, "\u4e0a\u6ed1(\u4e2d)"

    .line 800
    .line 801
    const-string v5, "\u4e0a\u6ed13"

    .line 802
    .line 803
    invoke-direct {v1, v3, v5}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    .line 805
    .line 806
    invoke-virtual {v2, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 807
    .line 808
    .line 809
    new-instance v1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 810
    .line 811
    const-string v3, "\u5de6\u6ed1(\u4e2d)"

    .line 812
    .line 813
    const-string v5, "\u5de6\u6ed13"

    .line 814
    .line 815
    invoke-direct {v1, v3, v5}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    .line 817
    .line 818
    invoke-virtual {v2, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 819
    .line 820
    .line 821
    new-instance v1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 822
    .line 823
    const-string v3, "\u53f3\u6ed1(\u4e2d)"

    .line 824
    .line 825
    const-string v5, "\u53f3\u6ed13"

    .line 826
    .line 827
    invoke-direct {v1, v3, v5}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    .line 829
    .line 830
    invoke-virtual {v2, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 831
    .line 832
    .line 833
    new-instance v1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 834
    .line 835
    invoke-direct {v1, v10, v4}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    .line 837
    .line 838
    invoke-virtual {v2, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 839
    .line 840
    .line 841
    new-instance v1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 842
    .line 843
    move-object/from16 v8, v21

    .line 844
    .line 845
    move-object/from16 v9, v22

    .line 846
    .line 847
    invoke-direct {v1, v9, v8}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    .line 849
    .line 850
    invoke-virtual {v2, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 851
    .line 852
    .line 853
    goto/16 :goto_0

    .line 854
    .line 855
    :cond_5
    move-object/from16 v6, v16

    .line 856
    .line 857
    move-object/from16 v3, v17

    .line 858
    .line 859
    move-object/from16 v5, v18

    .line 860
    .line 861
    move-object/from16 v16, v21

    .line 862
    .line 863
    move-object/from16 v9, v22

    .line 864
    .line 865
    iget-object v8, v0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->N:Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 866
    .line 867
    iget-object v8, v8, Lcom/yunpan/appmanage/bean/StrIntBoolBean;->strValue:Ljava/lang/String;

    .line 868
    .line 869
    move-object/from16 v17, v9

    .line 870
    .line 871
    const-string v9, "\u9876"

    .line 872
    .line 873
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 874
    .line 875
    .line 876
    move-result v8

    .line 877
    if-eqz v8, :cond_7

    .line 878
    .line 879
    iget-object v8, v0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->C:Lz7/s;

    .line 880
    .line 881
    const-string v9, "topSplit"

    .line 882
    .line 883
    invoke-virtual {v8, v9}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 884
    .line 885
    .line 886
    move-result-object v8

    .line 887
    invoke-virtual {v8}, Lz7/p;->e()I

    .line 888
    .line 889
    .line 890
    move-result v8

    .line 891
    const/4 v9, 0x1

    .line 892
    if-ne v8, v9, :cond_6

    .line 893
    .line 894
    new-instance v1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 895
    .line 896
    move-object/from16 v4, v19

    .line 897
    .line 898
    move-object/from16 v8, v20

    .line 899
    .line 900
    invoke-direct {v1, v4, v8}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    .line 902
    .line 903
    invoke-virtual {v2, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 904
    .line 905
    .line 906
    new-instance v1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 907
    .line 908
    const-string v4, "\u5de6\u6ed1"

    .line 909
    .line 910
    invoke-direct {v1, v4, v7}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    .line 912
    .line 913
    invoke-virtual {v2, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 914
    .line 915
    .line 916
    new-instance v1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 917
    .line 918
    invoke-direct {v1, v3, v5}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    .line 920
    .line 921
    invoke-virtual {v2, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 922
    .line 923
    .line 924
    new-instance v1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 925
    .line 926
    invoke-direct {v1, v12, v13}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    .line 928
    .line 929
    invoke-virtual {v2, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 930
    .line 931
    .line 932
    new-instance v1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 933
    .line 934
    invoke-direct {v1, v15, v11}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    .line 936
    .line 937
    invoke-virtual {v2, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 938
    .line 939
    .line 940
    goto/16 :goto_0

    .line 941
    .line 942
    :cond_6
    move-object/from16 v8, v20

    .line 943
    .line 944
    new-instance v3, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 945
    .line 946
    const-string v9, "\u4e0b\u6ed1(\u5de6)"

    .line 947
    .line 948
    invoke-direct {v3, v9, v8}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    .line 950
    .line 951
    invoke-virtual {v2, v3}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 952
    .line 953
    .line 954
    new-instance v3, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 955
    .line 956
    const-string v8, "\u5de6\u6ed1(\u5de6)"

    .line 957
    .line 958
    invoke-direct {v3, v8, v7}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    .line 960
    .line 961
    invoke-virtual {v2, v3}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 962
    .line 963
    .line 964
    new-instance v3, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 965
    .line 966
    const-string v7, "\u53f3\u6ed1(\u5de6)"

    .line 967
    .line 968
    invoke-direct {v3, v7, v5}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    .line 970
    .line 971
    invoke-virtual {v2, v3}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 972
    .line 973
    .line 974
    new-instance v3, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 975
    .line 976
    const-string v5, "\u5355\u51fb(\u5de6)"

    .line 977
    .line 978
    invoke-direct {v3, v5, v13}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    .line 980
    .line 981
    invoke-virtual {v2, v3}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 982
    .line 983
    .line 984
    new-instance v3, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 985
    .line 986
    const-string v5, "\u957f\u6309(\u5de6)"

    .line 987
    .line 988
    invoke-direct {v3, v5, v11}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    .line 990
    .line 991
    invoke-virtual {v2, v3}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 992
    .line 993
    .line 994
    new-instance v3, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 995
    .line 996
    const-string v5, "\u4e0b\u6ed1(\u53f3)"

    .line 997
    .line 998
    const-string v7, "\u4e0b\u6ed12"

    .line 999
    .line 1000
    invoke-direct {v3, v5, v7}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    .line 1002
    .line 1003
    invoke-virtual {v2, v3}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 1004
    .line 1005
    .line 1006
    new-instance v3, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 1007
    .line 1008
    const-string v5, "\u5de6\u6ed1(\u53f3)"

    .line 1009
    .line 1010
    const-string v7, "\u5de6\u6ed12"

    .line 1011
    .line 1012
    invoke-direct {v3, v5, v7}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    .line 1014
    .line 1015
    invoke-virtual {v2, v3}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 1016
    .line 1017
    .line 1018
    new-instance v3, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 1019
    .line 1020
    const-string v5, "\u53f3\u6ed1(\u53f3)"

    .line 1021
    .line 1022
    invoke-direct {v3, v5, v6}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    .line 1024
    .line 1025
    invoke-virtual {v2, v3}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 1026
    .line 1027
    .line 1028
    new-instance v3, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 1029
    .line 1030
    const-string v5, "\u5355\u51fb(\u53f3)"

    .line 1031
    .line 1032
    invoke-direct {v3, v5, v14}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    .line 1034
    .line 1035
    invoke-virtual {v2, v3}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 1036
    .line 1037
    .line 1038
    new-instance v3, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 1039
    .line 1040
    const-string v5, "\u957f\u6309(\u53f3)"

    .line 1041
    .line 1042
    invoke-direct {v3, v5, v1}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    .line 1044
    .line 1045
    invoke-virtual {v2, v3}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 1046
    .line 1047
    .line 1048
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->C:Lz7/s;

    .line 1049
    .line 1050
    const-string v3, "topSplit"

    .line 1051
    .line 1052
    invoke-virtual {v1, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 1053
    .line 1054
    .line 1055
    move-result-object v1

    .line 1056
    invoke-virtual {v1}, Lz7/p;->e()I

    .line 1057
    .line 1058
    .line 1059
    move-result v1

    .line 1060
    const/4 v3, 0x3

    .line 1061
    if-ne v1, v3, :cond_7

    .line 1062
    .line 1063
    new-instance v1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 1064
    .line 1065
    const-string v3, "\u4e0b\u6ed1(\u4e2d)"

    .line 1066
    .line 1067
    const-string v5, "\u4e0b\u6ed13"

    .line 1068
    .line 1069
    invoke-direct {v1, v3, v5}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    .line 1071
    .line 1072
    invoke-virtual {v2, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 1073
    .line 1074
    .line 1075
    new-instance v1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 1076
    .line 1077
    const-string v3, "\u5de6\u6ed1(\u4e2d)"

    .line 1078
    .line 1079
    const-string v5, "\u5de6\u6ed13"

    .line 1080
    .line 1081
    invoke-direct {v1, v3, v5}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    .line 1083
    .line 1084
    invoke-virtual {v2, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 1085
    .line 1086
    .line 1087
    new-instance v1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 1088
    .line 1089
    const-string v3, "\u53f3\u6ed1(\u4e2d)"

    .line 1090
    .line 1091
    const-string v5, "\u53f3\u6ed13"

    .line 1092
    .line 1093
    invoke-direct {v1, v3, v5}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    .line 1095
    .line 1096
    invoke-virtual {v2, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 1097
    .line 1098
    .line 1099
    new-instance v1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 1100
    .line 1101
    invoke-direct {v1, v10, v4}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    .line 1103
    .line 1104
    invoke-virtual {v2, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 1105
    .line 1106
    .line 1107
    new-instance v1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 1108
    .line 1109
    move-object/from16 v3, v16

    .line 1110
    .line 1111
    move-object/from16 v4, v17

    .line 1112
    .line 1113
    invoke-direct {v1, v4, v3}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    .line 1115
    .line 1116
    invoke-virtual {v2, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 1117
    .line 1118
    .line 1119
    :cond_7
    :goto_0
    const/4 v1, 0x0

    .line 1120
    invoke-virtual {v2, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 1121
    .line 1122
    .line 1123
    move-result-object v1

    .line 1124
    check-cast v1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 1125
    .line 1126
    iput-object v1, v0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->O:Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 1127
    .line 1128
    const/4 v3, 0x1

    .line 1129
    iput-boolean v3, v1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;->boolValue:Z

    .line 1130
    .line 1131
    const/4 v1, 0x0

    .line 1132
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 1133
    .line 1134
    .line 1135
    invoke-virtual/range {p0 .. p0}, Lcom/yunpan/appmanage/ui/ActivitySidebar;->z()V

    .line 1136
    .line 1137
    .line 1138
    return-void
.end method

.method public final z()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->L:Lx9/t2;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Lc6/g;->E(Ljava/util/List;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->C:Lz7/s;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->N:Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 14
    .line 15
    iget-object v2, v2, Lcom/yunpan/appmanage/bean/StrIntBoolBean;->strValue:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Lz7/s;->q(Ljava/lang/String;)Lz7/s;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivitySidebar;->O:Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 22
    .line 23
    iget-object v2, v2, Lcom/yunpan/appmanage/bean/StrIntBoolBean;->value_str2:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/4 v2, 0x0

    .line 30
    :goto_0
    iget-object v3, v0, Lz7/o;->a:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-ge v2, v3, :cond_0

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Lz7/o;->l(I)Lz7/p;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v3}, Lz7/p;->g()Lz7/s;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v1, v3}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    add-int/lit8 v2, v2, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    return-void
.end method
