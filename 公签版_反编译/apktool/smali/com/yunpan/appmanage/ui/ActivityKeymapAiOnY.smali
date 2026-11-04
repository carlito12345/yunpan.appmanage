.class public Lcom/yunpan/appmanage/ui/ActivityKeymapAiOnY;
.super Lda/g;
.source "SourceFile"


# static fields
.field public static final synthetic K:I


# instance fields
.field public C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public final D:Lx9/m0;

.field public E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public F:Lx9/s2;

.field public G:Landroid/widget/ImageView;

.field public H:Lz7/s;

.field public final I:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lda/g;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lx9/m0;

    .line 5
    .line 6
    invoke-direct {v0}, Lx9/m0;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeymapAiOnY;->D:Lx9/m0;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeymapAiOnY;->I:Ljava/util/ArrayList;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final t()I
    .locals 1

    .line 1
    const v0, 0x7f0e0044

    return v0
.end method

.method public final u()V
    .locals 5

    .line 1
    const v0, 0x7f0b05ba

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    .line 10
    const-string v1, "\u5e7f\u6c7d\u8f66\u673a\u4e13\u7528\u6620\u5c04"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lda/g;->A:Lda/g;

    .line 16
    .line 17
    invoke-static {v0}, Lq4/a;->q(Landroid/content/Context;)Lz7/s;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeymapAiOnY;->H:Lz7/s;

    .line 22
    .line 23
    const-string v1, "maps"

    .line 24
    .line 25
    const-string v2, "isOn"

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    new-instance v0, Lz7/s;

    .line 30
    .line 31
    invoke-direct {v0}, Lz7/s;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeymapAiOnY;->H:Lz7/s;

    .line 35
    .line 36
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 37
    .line 38
    invoke-virtual {v0, v2, v3}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeymapAiOnY;->H:Lz7/s;

    .line 42
    .line 43
    const-string v4, "auto_parking"

    .line 44
    .line 45
    invoke-virtual {v0, v4, v3}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeymapAiOnY;->H:Lz7/s;

    .line 49
    .line 50
    new-instance v3, Lz7/o;

    .line 51
    .line 52
    invoke-direct {v3}, Lz7/o;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1, v3}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lda/g;->A:Lda/g;

    .line 59
    .line 60
    iget-object v3, p0, Lcom/yunpan/appmanage/ui/ActivityKeymapAiOnY;->H:Lz7/s;

    .line 61
    .line 62
    invoke-static {v0, v3}, Lq4/a;->R(Landroid/content/Context;Lz7/s;)V

    .line 63
    .line 64
    .line 65
    :cond_0
    const v0, 0x7f0b0568

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    new-instance v3, Lua/g1;

    .line 73
    .line 74
    const/16 v4, 0xf

    .line 75
    .line 76
    invoke-direct {v3, p0, v4}, Lua/g1;-><init>(Lda/g;I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    .line 81
    .line 82
    const v0, 0x7f0b0569

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Landroid/widget/ImageView;

    .line 90
    .line 91
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeymapAiOnY;->G:Landroid/widget/ImageView;

    .line 92
    .line 93
    iget-object v3, p0, Lcom/yunpan/appmanage/ui/ActivityKeymapAiOnY;->H:Lz7/s;

    .line 94
    .line 95
    invoke-virtual {v3, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v2}, Lz7/p;->b()Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-eqz v2, :cond_1

    .line 104
    .line 105
    const v2, 0x7f080234

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_1
    const v2, 0x7f080237

    .line 110
    .line 111
    .line 112
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 113
    .line 114
    .line 115
    const v0, 0x7f0b0500

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 123
    .line 124
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeymapAiOnY;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 125
    .line 126
    new-instance v2, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 127
    .line 128
    iget-object v3, p0, Lda/g;->A:Lda/g;

    .line 129
    .line 130
    const/4 v4, 0x0

    .line 131
    invoke-direct {v2, v3, v4, v4}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 135
    .line 136
    .line 137
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeymapAiOnY;->D:Lx9/m0;

    .line 138
    .line 139
    const-string v2, "\u8fd4\u56de"

    .line 140
    .line 141
    invoke-virtual {v0, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    const-string v2, "\u6dfb\u52a0\u6620\u5c04"

    .line 145
    .line 146
    invoke-virtual {v0, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    const-string v2, "\u6e05\u7a7a"

    .line 150
    .line 151
    invoke-virtual {v0, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    const-string v2, "\u8bf4\u660e"

    .line 155
    .line 156
    invoke-virtual {v0, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityKeymapAiOnY;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 160
    .line 161
    invoke-virtual {v2, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 162
    .line 163
    .line 164
    new-instance v2, Lua/o3;

    .line 165
    .line 166
    const/4 v3, 0x0

    .line 167
    invoke-direct {v2, p0, v3}, Lua/o3;-><init>(Lcom/yunpan/appmanage/ui/ActivityKeymapAiOnY;I)V

    .line 168
    .line 169
    .line 170
    iput-object v2, v0, Lc6/g;->e:Lc6/e;

    .line 171
    .line 172
    new-instance v2, Lua/o3;

    .line 173
    .line 174
    const/4 v3, 0x1

    .line 175
    invoke-direct {v2, p0, v3}, Lua/o3;-><init>(Lcom/yunpan/appmanage/ui/ActivityKeymapAiOnY;I)V

    .line 176
    .line 177
    .line 178
    iput-object v2, v0, Lc6/g;->f:Lc6/f;

    .line 179
    .line 180
    const v0, 0x7f0b04f1

    .line 181
    .line 182
    .line 183
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 188
    .line 189
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeymapAiOnY;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 190
    .line 191
    new-instance v2, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 192
    .line 193
    const/4 v3, 0x3

    .line 194
    invoke-direct {v2, p0, v3}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 198
    .line 199
    .line 200
    new-instance v0, Lx9/s2;

    .line 201
    .line 202
    invoke-direct {v0}, Lx9/s2;-><init>()V

    .line 203
    .line 204
    .line 205
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeymapAiOnY;->F:Lx9/s2;

    .line 206
    .line 207
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeymapAiOnY;->H:Lz7/s;

    .line 208
    .line 209
    invoke-virtual {v0, v1}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    :goto_1
    iget-object v1, v0, Lz7/o;->a:Ljava/util/ArrayList;

    .line 214
    .line 215
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 216
    .line 217
    .line 218
    move-result v1

    .line 219
    if-ge v4, v1, :cond_2

    .line 220
    .line 221
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityKeymapAiOnY;->F:Lx9/s2;

    .line 222
    .line 223
    invoke-virtual {v0, v4}, Lz7/o;->l(I)Lz7/p;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    invoke-virtual {v2}, Lz7/p;->g()Lz7/s;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    invoke-virtual {v1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    add-int/lit8 v4, v4, 0x1

    .line 235
    .line 236
    goto :goto_1

    .line 237
    :cond_2
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeymapAiOnY;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 238
    .line 239
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityKeymapAiOnY;->F:Lx9/s2;

    .line 240
    .line 241
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 242
    .line 243
    .line 244
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeymapAiOnY;->F:Lx9/s2;

    .line 245
    .line 246
    new-instance v1, Lua/o3;

    .line 247
    .line 248
    const/4 v2, 0x2

    .line 249
    invoke-direct {v1, p0, v2}, Lua/o3;-><init>(Lcom/yunpan/appmanage/ui/ActivityKeymapAiOnY;I)V

    .line 250
    .line 251
    .line 252
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 253
    .line 254
    return-void
.end method
