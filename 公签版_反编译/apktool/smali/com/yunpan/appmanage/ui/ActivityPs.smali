.class public Lcom/yunpan/appmanage/ui/ActivityPs;
.super Lda/g;
.source "SourceFile"


# static fields
.field public static final synthetic L:I


# instance fields
.field public C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public D:Lx9/g4;

.field public E:Ljava/util/ArrayList;

.field public final F:Ljava/util/ArrayList;

.field public G:Z

.field public H:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public I:Landroid/widget/LinearLayout;

.field public final K:Ljava/lang/String;


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
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityPs;->E:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityPs;->F:Ljava/util/ArrayList;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/yunpan/appmanage/ui/ActivityPs;->G:Z

    .line 20
    .line 21
    const-string v0, "^([^\\s]+)\\s+(\\d+)\\s+(\\d+)\\s+(\\d+)\\s+(\\d+)\\s+([^\\s]+)\\s+([^\\s]+)\\s+([^\\s]+)\\s+(.*)$"

    .line 22
    .line 23
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityPs;->K:Ljava/lang/String;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityPs;->D:Lx9/g4;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lc6/g;->E(Ljava/util/List;)V

    .line 5
    .line 6
    .line 7
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityPs;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 8
    .line 9
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityPs;->D:Lx9/g4;

    .line 10
    .line 11
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityPs;->E:Ljava/util/ArrayList;

    .line 12
    .line 13
    iget-object v0, p0, Lda/g;->A:Lda/g;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/b;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/bumptech/glide/b;->a()V

    .line 20
    .line 21
    .line 22
    invoke-super {p0}, Lda/g;->onDestroy()V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final t()I
    .locals 1

    .line 1
    const v0, 0x7f0e0022

    return v0
.end method

.method public final u()V
    .locals 5

    .line 1
    const v0, 0x7f0b0517

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityPs;->H:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 11
    .line 12
    const/16 v1, 0x8

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0b054a

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/widget/LinearLayout;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityPs;->I:Landroid/widget/LinearLayout;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    const v0, 0x7f0b03ad

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    new-instance v1, Lua/u5;

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    invoke-direct {v1, p0, v2}, Lua/u5;-><init>(Lcom/yunpan/appmanage/ui/ActivityPs;I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    .line 46
    .line 47
    const v0, 0x7f0b037d

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    new-instance v1, Lua/u5;

    .line 55
    .line 56
    const/4 v2, 0x1

    .line 57
    invoke-direct {v1, p0, v2}, Lua/u5;-><init>(Lcom/yunpan/appmanage/ui/ActivityPs;I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    .line 62
    .line 63
    const v0, 0x7f0b0401

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Landroid/widget/ImageView;

    .line 71
    .line 72
    iget-boolean v1, p0, Lcom/yunpan/appmanage/ui/ActivityPs;->G:Z

    .line 73
    .line 74
    if-eqz v1, :cond_0

    .line 75
    .line 76
    const v1, 0x7f080234

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    const v1, 0x7f080237

    .line 81
    .line 82
    .line 83
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    .line 85
    .line 86
    const v1, 0x7f0b0400

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    new-instance v2, Lua/i5;

    .line 94
    .line 95
    const/4 v3, 0x1

    .line 96
    invoke-direct {v2, p0, v0, v3}, Lua/i5;-><init>(Lda/g;Ljava/lang/Object;I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    .line 101
    .line 102
    const v0, 0x7f0b03ed

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    check-cast v0, Landroid/widget/LinearLayout;

    .line 110
    .line 111
    new-instance v1, Lua/u5;

    .line 112
    .line 113
    const/4 v2, 0x2

    .line 114
    invoke-direct {v1, p0, v2}, Lua/u5;-><init>(Lcom/yunpan/appmanage/ui/ActivityPs;I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    .line 119
    .line 120
    const v0, 0x7f0b03b0

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    check-cast v0, Landroid/widget/LinearLayout;

    .line 128
    .line 129
    new-instance v1, Lua/u5;

    .line 130
    .line 131
    const/4 v2, 0x3

    .line 132
    invoke-direct {v1, p0, v2}, Lua/u5;-><init>(Lcom/yunpan/appmanage/ui/ActivityPs;I)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    .line 137
    .line 138
    const v0, 0x7f0b04f4

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 146
    .line 147
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityPs;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 148
    .line 149
    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 150
    .line 151
    iget-object v2, p0, Lda/g;->A:Lda/g;

    .line 152
    .line 153
    const/4 v3, 0x1

    .line 154
    const/4 v4, 0x0

    .line 155
    invoke-direct {v1, v2, v3, v4}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 159
    .line 160
    .line 161
    new-instance v0, Lx9/g4;

    .line 162
    .line 163
    iget-object v1, p0, Lda/g;->A:Lda/g;

    .line 164
    .line 165
    invoke-direct {v0, v1}, Lx9/g4;-><init>(Lda/g;)V

    .line 166
    .line 167
    .line 168
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityPs;->D:Lx9/g4;

    .line 169
    .line 170
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityPs;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 171
    .line 172
    invoke-virtual {v1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 173
    .line 174
    .line 175
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityPs;->D:Lx9/g4;

    .line 176
    .line 177
    new-instance v1, Lua/v5;

    .line 178
    .line 179
    invoke-direct {v1, p0}, Lua/v5;-><init>(Lcom/yunpan/appmanage/ui/ActivityPs;)V

    .line 180
    .line 181
    .line 182
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 183
    .line 184
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityPs;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 185
    .line 186
    new-instance v1, Lua/v0;

    .line 187
    .line 188
    const/16 v2, 0x19

    .line 189
    .line 190
    invoke-direct {v1, v2}, Lua/v0;-><init>(I)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnInBorderKeyEventListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;)V

    .line 194
    .line 195
    .line 196
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityPs;->E:Ljava/util/ArrayList;

    .line 197
    .line 198
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 199
    .line 200
    .line 201
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityPs;->F:Ljava/util/ArrayList;

    .line 202
    .line 203
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 204
    .line 205
    .line 206
    new-instance v0, Lua/v5;

    .line 207
    .line 208
    invoke-direct {v0, p0}, Lua/v5;-><init>(Lcom/yunpan/appmanage/ui/ActivityPs;)V

    .line 209
    .line 210
    .line 211
    new-instance v1, Lmc/c;

    .line 212
    .line 213
    const/4 v2, 0x0

    .line 214
    invoke-direct {v1, v2, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 218
    .line 219
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    new-instance v1, Lka/c;

    .line 232
    .line 233
    const/16 v2, 0x17

    .line 234
    .line 235
    invoke-direct {v1, v2, p0}, Lka/c;-><init>(ILjava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 239
    .line 240
    .line 241
    return-void
.end method
