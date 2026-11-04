.class public final Lha/v8;
.super Lha/a4;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public g:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public h:Landroid/widget/ImageView;

.field public i:Landroid/widget/TextView;

.field public j:Landroid/widget/TextView;

.field public k:Landroid/widget/TextView;

.field public l:Landroid/widget/TextView;

.field public m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public n:Lx9/t2;

.field public final p:Lz7/s;

.field public final q:I

.field public final r:Lz7/s;

.field public final s:Lua/j3;

.field public t:Landroid/widget/EditText;

.field public v:Landroidx/recyclerview/widget/RecyclerView;

.field public w:Lx9/l0;


# direct methods
.method public constructor <init>(Lcom/yunpan/appmanage/ui/ActivityKeyMapEvent;Lda/g;Lz7/s;ILua/j3;)V
    .locals 2

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const v1, 0x7f0e00c7

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, p2, v1}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    iput-object p3, p0, Lha/v8;->p:Lz7/s;

    .line 10
    .line 11
    iput p4, p0, Lha/v8;->q:I

    .line 12
    .line 13
    iput-object p5, p0, Lha/v8;->s:Lua/j3;

    .line 14
    .line 15
    const/4 p1, -0x1

    .line 16
    if-ne p4, p1, :cond_0

    .line 17
    .line 18
    new-instance p1, Lz7/s;

    .line 19
    .line 20
    invoke-direct {p1}, Lz7/s;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lha/v8;->r:Lz7/s;

    .line 24
    .line 25
    :try_start_0
    const-string p2, "name"

    .line 26
    .line 27
    invoke-virtual {p1, p2, v0}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string p2, "isOpen"

    .line 31
    .line 32
    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 33
    .line 34
    invoke-virtual {p1, p2, p3}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 35
    .line 36
    .line 37
    new-instance p2, Lz7/s;

    .line 38
    .line 39
    invoke-direct {p2}, Lz7/s;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string p3, "type"

    .line 43
    .line 44
    const/16 p4, 0x191

    .line 45
    .line 46
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object p4

    .line 50
    invoke-virtual {p2, p3, p4}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 51
    .line 52
    .line 53
    const-string p3, "action"

    .line 54
    .line 55
    invoke-virtual {p2, p3, v0}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const-string p3, "extras"

    .line 59
    .line 60
    new-instance p4, Lz7/o;

    .line 61
    .line 62
    invoke-direct {p4}, Lz7/o;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, p3, p4}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 66
    .line 67
    .line 68
    const-string p3, "event"

    .line 69
    .line 70
    invoke-virtual {p1, p3, p2}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 71
    .line 72
    .line 73
    const-string p2, "click"

    .line 74
    .line 75
    new-instance p3, Lz7/o;

    .line 76
    .line 77
    invoke-direct {p3}, Lz7/o;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, p2, p3}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_0
    const-string p1, "keys"

    .line 85
    .line 86
    invoke-virtual {p3, p1}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p1, p4}, Lz7/o;->l(I)Lz7/p;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p1}, Lz7/p;->g()Lz7/s;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    iput-object p1, p0, Lha/v8;->r:Lz7/s;

    .line 99
    .line 100
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 101
    .line 102
    invoke-virtual {p1}, Lz7/p;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    :catch_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lha/v8;->n:Lx9/t2;

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lc6/g;->E(Ljava/util/List;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    iget-object v0, p0, Lha/v8;->r:Lz7/s;

    .line 12
    .line 13
    const-string v1, "click"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, v0, Lz7/o;->a:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    :goto_0
    iget-object v2, v0, Lz7/o;->a:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-ge v1, v2, :cond_0

    .line 35
    .line 36
    iget-object v2, p0, Lha/v8;->n:Lx9/t2;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lz7/o;->l(I)Lz7/p;

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
    invoke-virtual {v2, v3}, Lc6/g;->q(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    add-int/lit8 v1, v1, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    :cond_0
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const v2, 0x7f0b034d

    .line 11
    .line 12
    .line 13
    const-string v3, "value"

    .line 14
    .line 15
    const-string v4, "name"

    .line 16
    .line 17
    const/4 v5, 0x1

    .line 18
    const-string v6, ""

    .line 19
    .line 20
    if-ne v1, v2, :cond_1

    .line 21
    .line 22
    new-instance v1, Lz7/s;

    .line 23
    .line 24
    invoke-direct {v1}, Lz7/s;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const-string v5, "extraType"

    .line 32
    .line 33
    invoke-virtual {v1, v5, v2}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 34
    .line 35
    .line 36
    const-string v2, "extraName"

    .line 37
    .line 38
    const-string v5, "getStringExtra"

    .line 39
    .line 40
    invoke-virtual {v1, v2, v5}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v4, v6}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v3, v6}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v2, v0, Lha/v8;->w:Lx9/l0;

    .line 50
    .line 51
    invoke-virtual {v2, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    goto/16 :goto_4

    .line 55
    .line 56
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    iget-object v2, v0, Lha/a4;->b:Landroid/content/Context;

    .line 61
    .line 62
    const v7, 0x7f0b034a

    .line 63
    .line 64
    .line 65
    if-ne v1, v7, :cond_2

    .line 66
    .line 67
    new-instance v1, Lha/u8;

    .line 68
    .line 69
    invoke-direct {v1, v0}, Lha/u8;-><init>(Lha/v8;)V

    .line 70
    .line 71
    .line 72
    iget-object v3, v0, Lha/a4;->a:Landroid/app/Activity;

    .line 73
    .line 74
    const/4 v4, 0x0

    .line 75
    invoke-static {v3, v2, v4, v4, v1}, Lha/t8;->a(Landroid/app/Activity;Landroid/content/Context;IZLea/e;)V

    .line 76
    .line 77
    .line 78
    goto/16 :goto_4

    .line 79
    .line 80
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    iget-object v7, v0, Lha/v8;->s:Lua/j3;

    .line 85
    .line 86
    iget-object v8, v0, Lha/v8;->p:Lz7/s;

    .line 87
    .line 88
    iget v9, v0, Lha/v8;->q:I

    .line 89
    .line 90
    const-string v10, "UP_KEYMAP_EVENT"

    .line 91
    .line 92
    const v11, 0x7f0b03b1

    .line 93
    .line 94
    .line 95
    const-class v12, Lcom/yunpan/appmanage/service/AccService;

    .line 96
    .line 97
    const-string v13, "keys"

    .line 98
    .line 99
    if-ne v1, v11, :cond_9

    .line 100
    .line 101
    iget-object v1, v0, Lha/v8;->t:Landroid/widget/EditText;

    .line 102
    .line 103
    invoke-static {v1}, Lg/b;->f(Landroid/widget/EditText;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    if-eqz v5, :cond_3

    .line 112
    .line 113
    const-string v1, "\u8bf7\u8f93\u5165\u5e7f\u64ad action"

    .line 114
    .line 115
    invoke-static {v1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 116
    .line 117
    .line 118
    goto/16 :goto_4

    .line 119
    .line 120
    :cond_3
    iget-object v5, v0, Lha/v8;->n:Lx9/t2;

    .line 121
    .line 122
    invoke-virtual {v5}, Lc6/g;->b()I

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    if-nez v5, :cond_4

    .line 127
    .line 128
    const-string v1, "\u8bf7\u6dfb\u52a0\u81f3\u5c11\u4e00\u4e2a\u64cd\u4f5c"

    .line 129
    .line 130
    invoke-static {v1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 131
    .line 132
    .line 133
    goto/16 :goto_4

    .line 134
    .line 135
    :cond_4
    new-instance v5, Lz7/s;

    .line 136
    .line 137
    invoke-direct {v5}, Lz7/s;-><init>()V

    .line 138
    .line 139
    .line 140
    const/16 v11, 0x191

    .line 141
    .line 142
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 143
    .line 144
    .line 145
    move-result-object v11

    .line 146
    const-string v15, "type"

    .line 147
    .line 148
    invoke-virtual {v5, v15, v11}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 149
    .line 150
    .line 151
    const-string v11, "action"

    .line 152
    .line 153
    invoke-virtual {v5, v11, v1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    const-string v11, "\u63a5\u6536\u5e7f\u64ad "

    .line 157
    .line 158
    invoke-virtual {v11, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    new-instance v11, Lz7/o;

    .line 163
    .line 164
    invoke-direct {v11}, Lz7/o;-><init>()V

    .line 165
    .line 166
    .line 167
    iget-object v15, v0, Lha/v8;->w:Lx9/l0;

    .line 168
    .line 169
    invoke-virtual {v15}, Lc6/g;->v()Ljava/util/List;

    .line 170
    .line 171
    .line 172
    move-result-object v15

    .line 173
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 174
    .line 175
    .line 176
    move-result-object v15

    .line 177
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 178
    .line 179
    .line 180
    move-result v16

    .line 181
    if-eqz v16, :cond_5

    .line 182
    .line 183
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v16

    .line 187
    move-object/from16 v14, v16

    .line 188
    .line 189
    check-cast v14, Lz7/s;

    .line 190
    .line 191
    invoke-virtual {v11, v14}, Lz7/o;->k(Lz7/p;)V

    .line 192
    .line 193
    .line 194
    move-object/from16 p1, v15

    .line 195
    .line 196
    new-instance v15, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    const-string v1, ","

    .line 205
    .line 206
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v14, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    invoke-virtual {v1}, Lz7/p;->i()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    const-string v1, "="

    .line 221
    .line 222
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v14, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    invoke-virtual {v1}, Lz7/p;->i()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    move-object/from16 v15, p1

    .line 241
    .line 242
    goto :goto_0

    .line 243
    :cond_5
    const-string v3, "extras"

    .line 244
    .line 245
    invoke-virtual {v5, v3, v11}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 246
    .line 247
    .line 248
    iget-object v3, v0, Lha/v8;->r:Lz7/s;

    .line 249
    .line 250
    const-string v11, "event"

    .line 251
    .line 252
    invoke-virtual {v3, v11, v5}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v3, v4, v1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    new-instance v1, Lz7/o;

    .line 259
    .line 260
    invoke-direct {v1}, Lz7/o;-><init>()V

    .line 261
    .line 262
    .line 263
    const-string v4, "click"

    .line 264
    .line 265
    invoke-virtual {v3, v4, v1}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 266
    .line 267
    .line 268
    iget-object v1, v0, Lha/v8;->n:Lx9/t2;

    .line 269
    .line 270
    invoke-virtual {v1}, Lc6/g;->v()Ljava/util/List;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 279
    .line 280
    .line 281
    move-result v5

    .line 282
    if-eqz v5, :cond_6

    .line 283
    .line 284
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v5

    .line 288
    check-cast v5, Lz7/s;

    .line 289
    .line 290
    invoke-virtual {v3, v4}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 291
    .line 292
    .line 293
    move-result-object v11

    .line 294
    invoke-virtual {v11, v5}, Lz7/o;->k(Lz7/p;)V

    .line 295
    .line 296
    .line 297
    goto :goto_1

    .line 298
    :cond_6
    const/4 v5, -0x1

    .line 299
    if-ne v9, v5, :cond_7

    .line 300
    .line 301
    invoke-virtual {v8, v13}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    invoke-virtual {v1, v3}, Lz7/o;->k(Lz7/p;)V

    .line 306
    .line 307
    .line 308
    goto :goto_2

    .line 309
    :cond_7
    invoke-virtual {v8, v13}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    invoke-virtual {v1, v9, v3}, Lz7/o;->o(ILz7/p;)V

    .line 314
    .line 315
    .line 316
    :goto_2
    invoke-static {v2, v8}, Lq4/a;->S(Landroid/content/Context;Lz7/s;)V

    .line 317
    .line 318
    .line 319
    invoke-static {v2, v10}, Lta/m;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 323
    .line 324
    .line 325
    sget v1, Lcom/yunpan/appmanage/ui/ActivityKeyMapEvent;->F:I

    .line 326
    .line 327
    iget-object v1, v7, Lua/j3;->b:Lcom/yunpan/appmanage/ui/ActivityKeyMapEvent;

    .line 328
    .line 329
    invoke-virtual {v1}, Lcom/yunpan/appmanage/ui/ActivityKeyMapEvent;->z()V

    .line 330
    .line 331
    .line 332
    sget-object v2, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 333
    .line 334
    invoke-static {v2, v12}, Lif/a;->h0(Landroid/content/Context;Ljava/lang/Class;)Z

    .line 335
    .line 336
    .line 337
    move-result v2

    .line 338
    if-eqz v2, :cond_8

    .line 339
    .line 340
    new-instance v2, Lha/z6;

    .line 341
    .line 342
    const-string v3, "\u63d0\u793a\uff1a\u6dfb\u52a0\u6216\u4fee\u6539 \u81ea\u5b9a\u4e49\u5e7f\u64ad\u540e\uff0c\u9700\u5173\u95ed\u81ea\u52a8\u5316\u91cd\u65b0\u5f00\u542f\u65b9\u53ef\u751f\u6548"

    .line 343
    .line 344
    invoke-direct {v2, v1, v1, v3, v6}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v2}, Lha/a4;->show()V

    .line 348
    .line 349
    .line 350
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->dismiss()V

    .line 351
    .line 352
    .line 353
    goto :goto_4

    .line 354
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    .line 355
    .line 356
    .line 357
    move-result v1

    .line 358
    const v3, 0x7f0b0374

    .line 359
    .line 360
    .line 361
    if-ne v1, v3, :cond_e

    .line 362
    .line 363
    const/4 v1, -0x1

    .line 364
    if-eq v9, v1, :cond_a

    .line 365
    .line 366
    invoke-virtual {v8, v13}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 367
    .line 368
    .line 369
    move-result-object v3

    .line 370
    invoke-virtual {v3, v9}, Lz7/o;->n(I)V

    .line 371
    .line 372
    .line 373
    invoke-static {v2, v8}, Lq4/a;->S(Landroid/content/Context;Lz7/s;)V

    .line 374
    .line 375
    .line 376
    :cond_a
    invoke-static {v2, v10}, Lta/m;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    iget v2, v7, Lua/j3;->a:I

    .line 380
    .line 381
    if-ne v2, v1, :cond_b

    .line 382
    .line 383
    goto :goto_3

    .line 384
    :cond_b
    iget-object v1, v7, Lua/j3;->b:Lcom/yunpan/appmanage/ui/ActivityKeyMapEvent;

    .line 385
    .line 386
    iget-object v3, v1, Lcom/yunpan/appmanage/ui/ActivityKeyMapEvent;->D:Lx9/s2;

    .line 387
    .line 388
    invoke-virtual {v3}, Lc6/g;->b()I

    .line 389
    .line 390
    .line 391
    move-result v3

    .line 392
    if-ne v3, v5, :cond_c

    .line 393
    .line 394
    const v3, 0x7f0b03ad

    .line 395
    .line 396
    .line 397
    invoke-virtual {v1, v3}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 398
    .line 399
    .line 400
    move-result-object v3

    .line 401
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 402
    .line 403
    .line 404
    :cond_c
    iget-object v3, v1, Lcom/yunpan/appmanage/ui/ActivityKeyMapEvent;->D:Lx9/s2;

    .line 405
    .line 406
    invoke-virtual {v3, v2}, Lc6/g;->C(I)V

    .line 407
    .line 408
    .line 409
    sget-object v2, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 410
    .line 411
    invoke-static {v2, v12}, Lif/a;->h0(Landroid/content/Context;Ljava/lang/Class;)Z

    .line 412
    .line 413
    .line 414
    move-result v2

    .line 415
    if-eqz v2, :cond_d

    .line 416
    .line 417
    new-instance v2, Lha/z6;

    .line 418
    .line 419
    const-string v3, "\u63d0\u793a\uff1a\u5220\u9664 \u81ea\u5b9a\u4e49\u5e7f\u64ad\u540e\uff0c\u9700\u5173\u95ed\u81ea\u52a8\u5316\u91cd\u65b0\u5f00\u542f\u65b9\u53ef\u751f\u6548"

    .line 420
    .line 421
    invoke-direct {v2, v1, v1, v3, v6}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v2}, Lha/a4;->show()V

    .line 425
    .line 426
    .line 427
    :cond_d
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->dismiss()V

    .line 428
    .line 429
    .line 430
    :cond_e
    :goto_4
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const-string p1, "isOpen"

    .line 5
    .line 6
    const v0, 0x7f0b0429

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/EditText;

    .line 14
    .line 15
    iput-object v0, p0, Lha/v8;->t:Landroid/widget/EditText;

    .line 16
    .line 17
    iget-object v1, p0, Lha/v8;->r:Lz7/s;

    .line 18
    .line 19
    const-string v2, "event"

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Lz7/s;->q(Ljava/lang/String;)Lz7/s;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const-string v4, "action"

    .line 26
    .line 27
    invoke-virtual {v3, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v3}, Lz7/p;->i()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    const v0, 0x7f0b04fb

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 46
    .line 47
    iput-object v0, p0, Lha/v8;->v:Landroidx/recyclerview/widget/RecyclerView;

    .line 48
    .line 49
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 50
    .line 51
    iget-object v4, p0, Lha/a4;->b:Landroid/content/Context;

    .line 52
    .line 53
    const/4 v5, 0x1

    .line 54
    const/4 v6, 0x0

    .line 55
    invoke-direct {v3, v5, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(IZ)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 59
    .line 60
    .line 61
    new-instance v0, Lx9/l0;

    .line 62
    .line 63
    iget-object v3, p0, Lha/a4;->a:Landroid/app/Activity;

    .line 64
    .line 65
    invoke-direct {v0, v3, v4}, Lx9/l0;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 66
    .line 67
    .line 68
    iput-object v0, p0, Lha/v8;->w:Lx9/l0;

    .line 69
    .line 70
    invoke-virtual {v1, v2}, Lz7/s;->q(Ljava/lang/String;)Lz7/s;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    const-string v2, "extras"

    .line 75
    .line 76
    invoke-virtual {v0, v2}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    const/4 v2, 0x0

    .line 81
    :goto_0
    iget-object v3, v0, Lz7/o;->a:Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-ge v2, v3, :cond_0

    .line 88
    .line 89
    iget-object v3, p0, Lha/v8;->w:Lx9/l0;

    .line 90
    .line 91
    invoke-virtual {v0, v2}, Lz7/o;->l(I)Lz7/p;

    .line 92
    .line 93
    .line 94
    move-result-object v7

    .line 95
    invoke-virtual {v7}, Lz7/p;->g()Lz7/s;

    .line 96
    .line 97
    .line 98
    move-result-object v7

    .line 99
    invoke-virtual {v3, v7}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    add-int/lit8 v2, v2, 0x1

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_0
    iget-object v0, p0, Lha/v8;->v:Landroidx/recyclerview/widget/RecyclerView;

    .line 106
    .line 107
    iget-object v2, p0, Lha/v8;->w:Lx9/l0;

    .line 108
    .line 109
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 110
    .line 111
    .line 112
    const v0, 0x7f0b0568

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 120
    .line 121
    iput-object v0, p0, Lha/v8;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 122
    .line 123
    const v0, 0x7f0b0569

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    check-cast v0, Landroid/widget/ImageView;

    .line 131
    .line 132
    iput-object v0, p0, Lha/v8;->h:Landroid/widget/ImageView;

    .line 133
    .line 134
    iget-object v0, p0, Lha/v8;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 135
    .line 136
    new-instance v2, Lcom/google/android/material/datepicker/l;

    .line 137
    .line 138
    const/16 v3, 0x1c

    .line 139
    .line 140
    invoke-direct {v2, p0, v3}, Lcom/google/android/material/datepicker/l;-><init>(Landroid/view/View$OnCreateContextMenuListener;I)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    .line 145
    .line 146
    const v0, 0x7f0b034d

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    check-cast v0, Landroid/widget/TextView;

    .line 154
    .line 155
    iput-object v0, p0, Lha/v8;->i:Landroid/widget/TextView;

    .line 156
    .line 157
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 158
    .line 159
    .line 160
    const v0, 0x7f0b034a

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    check-cast v0, Landroid/widget/TextView;

    .line 168
    .line 169
    iput-object v0, p0, Lha/v8;->j:Landroid/widget/TextView;

    .line 170
    .line 171
    const v0, 0x7f0b03b1

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    check-cast v0, Landroid/widget/TextView;

    .line 179
    .line 180
    iput-object v0, p0, Lha/v8;->k:Landroid/widget/TextView;

    .line 181
    .line 182
    const v0, 0x7f0b0374

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    check-cast v0, Landroid/widget/TextView;

    .line 190
    .line 191
    iput-object v0, p0, Lha/v8;->l:Landroid/widget/TextView;

    .line 192
    .line 193
    iget-object v0, p0, Lha/v8;->i:Landroid/widget/TextView;

    .line 194
    .line 195
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    .line 197
    .line 198
    iget-object v0, p0, Lha/v8;->j:Landroid/widget/TextView;

    .line 199
    .line 200
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    .line 202
    .line 203
    iget-object v0, p0, Lha/v8;->k:Landroid/widget/TextView;

    .line 204
    .line 205
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    .line 207
    .line 208
    iget-object v0, p0, Lha/v8;->l:Landroid/widget/TextView;

    .line 209
    .line 210
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    .line 212
    .line 213
    const v0, 0x7f0b04f1

    .line 214
    .line 215
    .line 216
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 221
    .line 222
    iput-object v0, p0, Lha/v8;->m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 223
    .line 224
    new-instance v2, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 225
    .line 226
    invoke-direct {v2, v4, v5, v6}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 230
    .line 231
    .line 232
    new-instance v0, Lx9/t2;

    .line 233
    .line 234
    invoke-direct {v0}, Lx9/t2;-><init>()V

    .line 235
    .line 236
    .line 237
    iput-object v0, p0, Lha/v8;->n:Lx9/t2;

    .line 238
    .line 239
    const-string v2, "\u6620\u5c04\u64cd\u4f5c\uff1a"

    .line 240
    .line 241
    iput-object v2, v0, Lx9/t2;->h:Ljava/lang/String;

    .line 242
    .line 243
    iget-object v2, p0, Lha/v8;->m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 244
    .line 245
    invoke-virtual {v2, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 246
    .line 247
    .line 248
    new-instance v0, Ld6/a;

    .line 249
    .line 250
    invoke-direct {v0}, Ld6/a;-><init>()V

    .line 251
    .line 252
    .line 253
    const/4 v2, 0x3

    .line 254
    iput v2, v0, Ld6/a;->h:I

    .line 255
    .line 256
    iput-boolean v6, v0, Ld6/a;->g:Z

    .line 257
    .line 258
    iget-object v2, p0, Lha/v8;->m:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 259
    .line 260
    invoke-virtual {v0, v2}, Ld6/a;->d(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 261
    .line 262
    .line 263
    iget-object v2, p0, Lha/v8;->n:Lx9/t2;

    .line 264
    .line 265
    invoke-virtual {v0, v2}, Ld6/a;->g(Le6/a;)V

    .line 266
    .line 267
    .line 268
    iget-object v0, p0, Lha/v8;->n:Lx9/t2;

    .line 269
    .line 270
    new-instance v2, Lha/u8;

    .line 271
    .line 272
    invoke-direct {v2, p0}, Lha/u8;-><init>(Lha/v8;)V

    .line 273
    .line 274
    .line 275
    iput-object v2, v0, Lc6/g;->e:Lc6/e;

    .line 276
    .line 277
    :try_start_0
    iget-object v0, v1, Lz7/s;->a:Lb8/n;

    .line 278
    .line 279
    invoke-virtual {v0, p1}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    move-result v0

    .line 283
    if-eqz v0, :cond_1

    .line 284
    .line 285
    invoke-virtual {v1, p1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    invoke-virtual {p1}, Lz7/p;->b()Z

    .line 290
    .line 291
    .line 292
    move-result v5

    .line 293
    goto :goto_1

    .line 294
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 295
    .line 296
    invoke-virtual {v1, p1, v0}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 297
    .line 298
    .line 299
    :goto_1
    iget-object p1, p0, Lha/v8;->h:Landroid/widget/ImageView;

    .line 300
    .line 301
    if-eqz v5, :cond_2

    .line 302
    .line 303
    const v0, 0x7f080234

    .line 304
    .line 305
    .line 306
    goto :goto_2

    .line 307
    :cond_2
    const v0, 0x7f080237

    .line 308
    .line 309
    .line 310
    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {p0}, Lha/v8;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    .line 315
    .line 316
    :catch_0
    return-void
.end method
