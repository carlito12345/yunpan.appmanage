.class public final Lha/e5;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public final g:Lha/h8;

.field public h:Landroid/widget/ImageView;

.field public i:Landroidx/appcompat/widget/AppCompatSeekBar;

.field public j:Landroidx/recyclerview/widget/RecyclerView;

.field public k:Landroidx/recyclerview/widget/RecyclerView;

.field public l:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lha/h8;)V
    .locals 2

    .line 1
    const v0, 0x7f0e009e

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-direct {p0, p1, p2, v0, v1}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;IZ)V

    .line 6
    .line 7
    .line 8
    iput v1, p0, Lha/e5;->l:I

    .line 9
    .line 10
    iput-object p3, p0, Lha/e5;->g:Lha/h8;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0b04b5

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroid/widget/ImageView;

    .line 12
    .line 13
    iput-object p1, p0, Lha/e5;->h:Landroid/widget/ImageView;

    .line 14
    .line 15
    const p1, 0x7f0b0560

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 23
    .line 24
    iput-object p1, p0, Lha/e5;->i:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 25
    .line 26
    const/16 v0, 0x14

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lha/a4;->b:Landroid/content/Context;

    .line 32
    .line 33
    invoke-static {p1}, Lif/a;->R(Landroid/content/Context;)Landroid/graphics/Point;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 38
    .line 39
    div-int/lit8 v0, p1, 0x10

    .line 40
    .line 41
    div-int/lit8 v4, p1, 0x20

    .line 42
    .line 43
    sub-int/2addr v0, v4

    .line 44
    const/16 p1, 0xa

    .line 45
    .line 46
    div-int/lit8 v3, v0, 0xa

    .line 47
    .line 48
    iget-object v0, p0, Lha/e5;->i:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 49
    .line 50
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lha/e5;->h:Landroid/widget/ImageView;

    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iget-object v0, p0, Lha/e5;->i:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    mul-int v0, v0, v3

    .line 66
    .line 67
    add-int/2addr v0, v4

    .line 68
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 69
    .line 70
    iget-object v0, p0, Lha/e5;->i:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    mul-int v0, v0, v3

    .line 77
    .line 78
    add-int/2addr v0, v4

    .line 79
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 80
    .line 81
    iget-object v0, p0, Lha/e5;->h:Landroid/widget/ImageView;

    .line 82
    .line 83
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lha/e5;->h:Landroid/widget/ImageView;

    .line 87
    .line 88
    const v1, 0x7f0800a2

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lha/e5;->h:Landroid/widget/ImageView;

    .line 95
    .line 96
    const/4 v1, 0x0

    .line 97
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lha/e5;->i:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 101
    .line 102
    new-instance v1, Lha/d5;

    .line 103
    .line 104
    invoke-direct {v1, p0, p1, v3, v4}, Lha/d5;-><init>(Lha/e5;Landroid/view/ViewGroup$LayoutParams;II)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 108
    .line 109
    .line 110
    const p1, 0x7f0b05e4

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    move-object v6, p1

    .line 118
    check-cast v6, Landroid/widget/TextView;

    .line 119
    .line 120
    const p1, 0x7f0b03b4

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    new-instance v0, Lc6/c;

    .line 128
    .line 129
    const/4 v1, 0x7

    .line 130
    invoke-direct {v0, p0, v1, v6}, Lc6/c;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    .line 135
    .line 136
    const p1, 0x7f0b0502

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 144
    .line 145
    iput-object p1, p0, Lha/e5;->j:Landroidx/recyclerview/widget/RecyclerView;

    .line 146
    .line 147
    new-instance p1, Lx9/t4;

    .line 148
    .line 149
    invoke-direct {p1}, Lx9/t4;-><init>()V

    .line 150
    .line 151
    .line 152
    new-instance v0, Lx9/u4;

    .line 153
    .line 154
    const-string v1, "\u6837\u5f0f1"

    .line 155
    .line 156
    const/4 v2, 0x1

    .line 157
    invoke-direct {v0, v1, v2}, Lx9/u4;-><init>(Ljava/lang/String;Z)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    const/4 v0, 0x0

    .line 164
    const/4 v1, 0x0

    .line 165
    :goto_0
    const/16 v5, 0x11

    .line 166
    .line 167
    if-ge v1, v5, :cond_0

    .line 168
    .line 169
    new-instance v5, Lx9/u4;

    .line 170
    .line 171
    new-instance v7, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    const-string v8, "\u6837\u5f0f"

    .line 174
    .line 175
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    add-int/lit8 v8, v1, 0x2

    .line 179
    .line 180
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v7

    .line 187
    invoke-direct {v5, v7, v0}, Lx9/u4;-><init>(Ljava/lang/String;Z)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1, v5}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    add-int/lit8 v1, v1, 0x1

    .line 194
    .line 195
    goto :goto_0

    .line 196
    :cond_0
    invoke-virtual {p1, v0}, Lx9/t4;->F(I)V

    .line 197
    .line 198
    .line 199
    iget-object v1, p0, Lha/e5;->j:Landroidx/recyclerview/widget/RecyclerView;

    .line 200
    .line 201
    new-instance v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 202
    .line 203
    invoke-direct {v5, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(IZ)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 207
    .line 208
    .line 209
    iget-object v0, p0, Lha/e5;->j:Landroidx/recyclerview/widget/RecyclerView;

    .line 210
    .line 211
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 212
    .line 213
    .line 214
    new-instance v0, Ld2/w;

    .line 215
    .line 216
    const/16 v1, 0xd

    .line 217
    .line 218
    invoke-direct {v0, p0, v1, p1}, Ld2/w;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    iput-object v0, p1, Lc6/g;->e:Lc6/e;

    .line 222
    .line 223
    const p1, 0x7f0b0500

    .line 224
    .line 225
    .line 226
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 231
    .line 232
    iput-object p1, p0, Lha/e5;->k:Landroidx/recyclerview/widget/RecyclerView;

    .line 233
    .line 234
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 235
    .line 236
    const/4 v1, 0x2

    .line 237
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(I)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 241
    .line 242
    .line 243
    new-instance v5, Lx9/y0;

    .line 244
    .line 245
    invoke-direct {v5, v2}, Lx9/y0;-><init>(Z)V

    .line 246
    .line 247
    .line 248
    new-instance p1, Lx9/x0;

    .line 249
    .line 250
    const-string v0, "10\u79d2\u6ca1\u6709\u64cd\u4f5c\u65f6-\u9690\u85cf\u5149\u6807"

    .line 251
    .line 252
    invoke-direct {p1, v0, v2}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v5, p1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    sget-object p1, Lfa/b0;->a:La2/w0;

    .line 259
    .line 260
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 261
    .line 262
    .line 263
    invoke-static {}, La2/w0;->O()Z

    .line 264
    .line 265
    .line 266
    move-result p1

    .line 267
    if-eqz p1, :cond_1

    .line 268
    .line 269
    new-instance p1, Lx9/x0;

    .line 270
    .line 271
    const-string v0, "\u9891\u9053\u5207\u6362\u952e\u6539\u4e3a\u4e0a\u4e0b\u952e"

    .line 272
    .line 273
    invoke-direct {p1, v0, v2}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v5, p1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 277
    .line 278
    .line 279
    :cond_1
    iget-object p1, p0, Lha/e5;->k:Landroidx/recyclerview/widget/RecyclerView;

    .line 280
    .line 281
    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 282
    .line 283
    .line 284
    new-instance p1, La1/d;

    .line 285
    .line 286
    const/16 v0, 0x12

    .line 287
    .line 288
    invoke-direct {p1, v0, v5}, La1/d;-><init>(ILjava/lang/Object;)V

    .line 289
    .line 290
    .line 291
    iput-object p1, v5, Lc6/g;->e:Lc6/e;

    .line 292
    .line 293
    const p1, 0x7f0b03f3

    .line 294
    .line 295
    .line 296
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    new-instance v0, Lha/c5;

    .line 301
    .line 302
    move-object v1, v0

    .line 303
    move-object v2, p0

    .line 304
    invoke-direct/range {v1 .. v6}, Lha/c5;-><init>(Lha/e5;IILx9/y0;Landroid/widget/TextView;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    .line 309
    .line 310
    return-void
.end method
