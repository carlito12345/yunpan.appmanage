.class public final Lha/ba;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public g:Landroid/widget/TextView;

.field public h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public i:Lx9/t0;

.field public j:Lg0/e;

.field public k:Landroid/widget/TextView;

.field public l:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public m:Landroid/widget/EditText;

.field public final n:Ljava/util/ArrayList;

.field public final p:Ljava/util/HashMap;

.field public final q:Lcom/yunpan/appmanage/carsdk/u;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;)V
    .locals 1

    .line 1
    const v0, 0x7f0e00d1

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    new-instance p1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lha/ba;->n:Ljava/util/ArrayList;

    .line 13
    .line 14
    new-instance p1, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lha/ba;->p:Ljava/util/HashMap;

    .line 20
    .line 21
    new-instance p1, Lcom/yunpan/appmanage/carsdk/u;

    .line 22
    .line 23
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    const/16 v0, 0x8

    .line 28
    .line 29
    invoke-direct {p1, p0, p2, v0}, Lcom/yunpan/appmanage/carsdk/u;-><init>(Ljava/lang/Object;Landroid/os/Looper;I)V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lha/ba;->q:Lcom/yunpan/appmanage/carsdk/u;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lha/ba;->j:Lg0/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lg0/e;->k()V

    .line 4
    .line 5
    .line 6
    const-string v0, "LogcatDialog"

    .line 7
    .line 8
    invoke-static {v0}, Lv8/b;->c(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lha/ba;->g:Landroid/widget/TextView;

    .line 12
    .line 13
    const-string v1, "\u5f00\u59cb\u76d1\u542c"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lha/x9;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lha/x9;-><init>(Lha/ba;)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lmc/c;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {v0, v1, p1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    sget-object p1, Lrc/f;->b:Lec/j;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p1, v0}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    new-instance v0, Lha/l2;

    .line 30
    .line 31
    const/16 v1, 0x1c

    .line 32
    .line 33
    invoke-direct {v0, v1}, Lha/l2;-><init>(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lec/b;->b(Lec/e;)V

    .line 37
    .line 38
    .line 39
    new-instance p1, Lg0/e;

    .line 40
    .line 41
    invoke-direct {p1}, Lg0/e;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Lha/ba;->j:Lg0/e;

    .line 45
    .line 46
    const p1, 0x7f0b040f

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Landroid/widget/TextView;

    .line 54
    .line 55
    iput-object p1, p0, Lha/ba;->k:Landroid/widget/TextView;

    .line 56
    .line 57
    const p1, 0x7f0b04e2

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 65
    .line 66
    iput-object p1, p0, Lha/ba;->l:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 67
    .line 68
    const/16 v0, 0x8

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 71
    .line 72
    .line 73
    const p1, 0x7f0b03b1

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    new-instance v0, Lha/w9;

    .line 81
    .line 82
    const/4 v1, 0x0

    .line 83
    invoke-direct {v0, p0, v1}, Lha/w9;-><init>(Lha/ba;I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    .line 88
    .line 89
    const p1, 0x7f0b0374

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    new-instance v0, Lha/w9;

    .line 97
    .line 98
    const/4 v1, 0x1

    .line 99
    invoke-direct {v0, p0, v1}, Lha/w9;-><init>(Lha/ba;I)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    .line 104
    .line 105
    const p1, 0x7f0b036b

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    new-instance v0, Lha/w9;

    .line 113
    .line 114
    const/4 v1, 0x2

    .line 115
    invoke-direct {v0, p0, v1}, Lha/w9;-><init>(Lha/ba;I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    .line 120
    .line 121
    const p1, 0x7f0b03b3

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    check-cast p1, Landroid/widget/TextView;

    .line 129
    .line 130
    new-instance v0, Lha/w9;

    .line 131
    .line 132
    const/4 v1, 0x3

    .line 133
    invoke-direct {v0, p0, v1}, Lha/w9;-><init>(Lha/ba;I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    .line 138
    .line 139
    const v0, 0x7f0b0449

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    check-cast v0, Landroid/widget/EditText;

    .line 147
    .line 148
    iput-object v0, p0, Lha/ba;->m:Landroid/widget/EditText;

    .line 149
    .line 150
    const v0, 0x7f0b03bc

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    check-cast v0, Landroid/widget/TextView;

    .line 158
    .line 159
    iget-object v1, p0, Lha/ba;->m:Landroid/widget/EditText;

    .line 160
    .line 161
    new-instance v2, Lha/z9;

    .line 162
    .line 163
    invoke-direct {v2, p0, p1, v0}, Lha/z9;-><init>(Lha/ba;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 167
    .line 168
    .line 169
    iget-object p1, p0, Lha/ba;->m:Landroid/widget/EditText;

    .line 170
    .line 171
    new-instance v1, Lha/aa;

    .line 172
    .line 173
    const/4 v2, 0x0

    .line 174
    invoke-direct {v1, p0, v2}, Lha/aa;-><init>(Landroid/view/KeyEvent$Callback;I)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 178
    .line 179
    .line 180
    new-instance p1, Lha/w9;

    .line 181
    .line 182
    const/4 v1, 0x4

    .line 183
    invoke-direct {p1, p0, v1}, Lha/w9;-><init>(Lha/ba;I)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    .line 188
    .line 189
    const p1, 0x7f0b03d2

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    check-cast p1, Landroid/widget/TextView;

    .line 197
    .line 198
    iput-object p1, p0, Lha/ba;->g:Landroid/widget/TextView;

    .line 199
    .line 200
    const p1, 0x7f0b03f1

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    check-cast p1, Landroid/widget/TextView;

    .line 208
    .line 209
    new-instance v0, Lc6/c;

    .line 210
    .line 211
    const/16 v1, 0x12

    .line 212
    .line 213
    invoke-direct {v0, p0, v1, p1}, Lc6/c;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    .line 218
    .line 219
    iget-object p1, p0, Lha/ba;->g:Landroid/widget/TextView;

    .line 220
    .line 221
    new-instance v0, Lha/w9;

    .line 222
    .line 223
    const/4 v1, 0x5

    .line 224
    invoke-direct {v0, p0, v1}, Lha/w9;-><init>(Lha/ba;I)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    .line 229
    .line 230
    const p1, 0x7f0b04f1

    .line 231
    .line 232
    .line 233
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    check-cast p1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 238
    .line 239
    iput-object p1, p0, Lha/ba;->h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 240
    .line 241
    new-instance v0, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 242
    .line 243
    iget-object v1, p0, Lha/a4;->b:Landroid/content/Context;

    .line 244
    .line 245
    const/4 v2, 0x1

    .line 246
    const/4 v3, 0x0

    .line 247
    invoke-direct {v0, v1, v2, v3}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 251
    .line 252
    .line 253
    new-instance p1, Lx9/t0;

    .line 254
    .line 255
    const/4 v0, 0x4

    .line 256
    invoke-direct {p1, v0}, Lx9/t0;-><init>(I)V

    .line 257
    .line 258
    .line 259
    iput-object p1, p0, Lha/ba;->i:Lx9/t0;

    .line 260
    .line 261
    iget-object v0, p0, Lha/ba;->h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 262
    .line 263
    invoke-virtual {v0, p1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 264
    .line 265
    .line 266
    new-instance p1, Ljava/util/ArrayList;

    .line 267
    .line 268
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 269
    .line 270
    .line 271
    const-string v0, "\u590d\u5236\u6574\u6761"

    .line 272
    .line 273
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    const-string v0, "\u590d\u5236\u6807\u7b7e"

    .line 277
    .line 278
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    const-string v0, "\u590d\u5236\u5185\u5bb9"

    .line 282
    .line 283
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    const-string v0, "clipboard"

    .line 287
    .line 288
    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    check-cast v0, Landroid/content/ClipboardManager;

    .line 293
    .line 294
    iget-object v1, p0, Lha/ba;->i:Lx9/t0;

    .line 295
    .line 296
    new-instance v2, Lcom/hjq/permissions/b;

    .line 297
    .line 298
    const/4 v3, 0x5

    .line 299
    invoke-direct {v2, p0, p1, v0, v3}, Lcom/hjq/permissions/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 300
    .line 301
    .line 302
    iput-object v2, v1, Lc6/g;->f:Lc6/f;

    .line 303
    .line 304
    return-void
.end method
