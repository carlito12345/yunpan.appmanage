.class public Lcom/yunpan/appmanage/ui/ActivityAppBatch;
.super Lda/g;
.source "SourceFile"


# static fields
.field public static final synthetic G:I


# instance fields
.field public C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public D:Lx9/t1;

.field public E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public F:Lx9/u;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lda/g;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final t()I
    .locals 1

    .line 1
    const v0, 0x7f0e0021

    return v0
.end method

.method public final u()V
    .locals 5

    .line 1
    new-instance v0, Lx9/u;

    .line 2
    .line 3
    iget-object v1, p0, Lda/g;->A:Lda/g;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lx9/u;-><init>(Lda/g;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppBatch;->F:Lx9/u;

    .line 9
    .line 10
    const v0, 0x7f0b04f4

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppBatch;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 20
    .line 21
    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 22
    .line 23
    iget-object v2, p0, Lda/g;->A:Lda/g;

    .line 24
    .line 25
    const/4 v3, 0x6

    .line 26
    invoke-direct {v1, v2, v3}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppBatch;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityAppBatch;->F:Lx9/u;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppBatch;->F:Lx9/u;

    .line 40
    .line 41
    new-instance v1, Lua/h;

    .line 42
    .line 43
    const/4 v2, 0x1

    .line 44
    invoke-direct {v1, p0, v2}, Lua/h;-><init>(Lcom/yunpan/appmanage/ui/ActivityAppBatch;I)V

    .line 45
    .line 46
    .line 47
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 48
    .line 49
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppBatch;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 50
    .line 51
    new-instance v1, Lua/j;

    .line 52
    .line 53
    invoke-direct {v1}, Lua/j;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnItemListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnItemListener;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppBatch;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 60
    .line 61
    new-instance v1, Ltb/v;

    .line 62
    .line 63
    const/16 v2, 0x13

    .line 64
    .line 65
    invoke-direct {v1, v2}, Ltb/v;-><init>(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnInBorderKeyEventListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;)V

    .line 69
    .line 70
    .line 71
    new-instance v0, Lx9/t1;

    .line 72
    .line 73
    invoke-direct {v0}, Lx9/t1;-><init>()V

    .line 74
    .line 75
    .line 76
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppBatch;->D:Lx9/t1;

    .line 77
    .line 78
    const v0, 0x7f0b0500

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 86
    .line 87
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppBatch;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 88
    .line 89
    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 90
    .line 91
    iget-object v2, p0, Lda/g;->A:Lda/g;

    .line 92
    .line 93
    const/4 v3, 0x1

    .line 94
    const/4 v4, 0x0

    .line 95
    invoke-direct {v1, v2, v3, v4}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppBatch;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 102
    .line 103
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityAppBatch;->D:Lx9/t1;

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppBatch;->D:Lx9/t1;

    .line 109
    .line 110
    new-instance v1, Lx9/l3;

    .line 111
    .line 112
    const v2, 0x7f0800bd

    .line 113
    .line 114
    .line 115
    const-string v3, "\u5168\u9009"

    .line 116
    .line 117
    invoke-direct {v1, v2, v3}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppBatch;->D:Lx9/t1;

    .line 124
    .line 125
    new-instance v1, Lx9/l3;

    .line 126
    .line 127
    const v2, 0x7f0800bc

    .line 128
    .line 129
    .line 130
    const-string v3, "\u4e0d\u9009"

    .line 131
    .line 132
    invoke-direct {v1, v2, v3}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppBatch;->D:Lx9/t1;

    .line 139
    .line 140
    new-instance v1, Lx9/l3;

    .line 141
    .line 142
    const v2, 0x7f080249

    .line 143
    .line 144
    .line 145
    const-string v3, "\u5378\u8f7d"

    .line 146
    .line 147
    invoke-direct {v1, v2, v3}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppBatch;->D:Lx9/t1;

    .line 154
    .line 155
    new-instance v1, Lx9/l3;

    .line 156
    .line 157
    const v2, 0x7f08021e

    .line 158
    .line 159
    .line 160
    const-string v3, "\u63d0\u53d6"

    .line 161
    .line 162
    invoke-direct {v1, v2, v3}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppBatch;->D:Lx9/t1;

    .line 169
    .line 170
    new-instance v1, Lx9/l3;

    .line 171
    .line 172
    const v2, 0x7f08022e

    .line 173
    .line 174
    .line 175
    const-string v3, "\u7f13\u5b58"

    .line 176
    .line 177
    invoke-direct {v1, v2, v3}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppBatch;->D:Lx9/t1;

    .line 184
    .line 185
    new-instance v1, Lx9/l3;

    .line 186
    .line 187
    const v2, 0x7f080230

    .line 188
    .line 189
    .line 190
    const-string v3, "\u91cd\u7f6e"

    .line 191
    .line 192
    invoke-direct {v1, v2, v3}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppBatch;->D:Lx9/t1;

    .line 199
    .line 200
    new-instance v1, Lx9/l3;

    .line 201
    .line 202
    const v2, 0x7f08025b

    .line 203
    .line 204
    .line 205
    const-string v3, "\u8fd4\u56de"

    .line 206
    .line 207
    invoke-direct {v1, v2, v3}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppBatch;->D:Lx9/t1;

    .line 214
    .line 215
    new-instance v1, Lua/h;

    .line 216
    .line 217
    const/4 v2, 0x0

    .line 218
    invoke-direct {v1, p0, v2}, Lua/h;-><init>(Lcom/yunpan/appmanage/ui/ActivityAppBatch;I)V

    .line 219
    .line 220
    .line 221
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 222
    .line 223
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppBatch;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 224
    .line 225
    new-instance v1, Lua/i;

    .line 226
    .line 227
    invoke-direct {v1}, Lua/i;-><init>()V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnItemListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnItemListener;)V

    .line 231
    .line 232
    .line 233
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppBatch;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 234
    .line 235
    new-instance v1, Ltb/v;

    .line 236
    .line 237
    const/16 v2, 0x11

    .line 238
    .line 239
    invoke-direct {v1, v2}, Ltb/v;-><init>(I)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnInBorderKeyEventListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;)V

    .line 243
    .line 244
    .line 245
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppBatch;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 246
    .line 247
    invoke-virtual {v0, v4}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setSelection(I)V

    .line 248
    .line 249
    .line 250
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppBatch;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 251
    .line 252
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 253
    .line 254
    .line 255
    new-instance v0, Ltb/v;

    .line 256
    .line 257
    const/16 v1, 0x12

    .line 258
    .line 259
    invoke-direct {v0, v1}, Ltb/v;-><init>(I)V

    .line 260
    .line 261
    .line 262
    new-instance v1, Lmc/c;

    .line 263
    .line 264
    const/4 v2, 0x0

    .line 265
    invoke-direct {v1, v2, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 269
    .line 270
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    new-instance v1, Lka/c;

    .line 283
    .line 284
    const/4 v2, 0x6

    .line 285
    invoke-direct {v1, v2, p0}, Lka/c;-><init>(ILjava/lang/Object;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 289
    .line 290
    .line 291
    return-void
.end method
