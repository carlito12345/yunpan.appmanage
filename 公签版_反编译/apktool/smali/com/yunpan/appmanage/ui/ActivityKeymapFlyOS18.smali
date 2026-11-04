.class public Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;
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
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;->D:Lx9/m0;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;->H:Lz7/s;

    .line 13
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;->I:Ljava/util/ArrayList;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lda/g;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;->H:Lz7/s;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    :try_start_0
    iget-object v0, p0, Lda/g;->A:Lda/g;

    .line 9
    .line 10
    invoke-static {v0}, Lq4/a;->r(Landroid/content/Context;)Lz7/s;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;->H:Lz7/s;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 19
    .line 20
    .line 21
    :cond_0
    :goto_0
    return-void
.end method

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
    const-string v1, "\u661f\u613f Fly 1.7-1.9"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lda/g;->A:Lda/g;

    .line 16
    .line 17
    invoke-static {v0}, Lq4/a;->r(Landroid/content/Context;)Lz7/s;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;->H:Lz7/s;

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
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;->H:Lz7/s;

    .line 35
    .line 36
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 37
    .line 38
    invoke-virtual {v0, v2, v3}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;->H:Lz7/s;

    .line 42
    .line 43
    new-instance v3, Lz7/o;

    .line 44
    .line 45
    invoke-direct {v3}, Lz7/o;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1, v3}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lda/g;->A:Lda/g;

    .line 52
    .line 53
    iget-object v3, p0, Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;->H:Lz7/s;

    .line 54
    .line 55
    invoke-static {v0, v3}, Lq4/a;->T(Landroid/content/Context;Lz7/s;)V

    .line 56
    .line 57
    .line 58
    :cond_0
    const v0, 0x7f0b0568

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    new-instance v3, Lua/g1;

    .line 66
    .line 67
    const/16 v4, 0x10

    .line 68
    .line 69
    invoke-direct {v3, p0, v4}, Lua/g1;-><init>(Lda/g;I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    .line 74
    .line 75
    const v0, 0x7f0b0569

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    check-cast v0, Landroid/widget/ImageView;

    .line 83
    .line 84
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;->G:Landroid/widget/ImageView;

    .line 85
    .line 86
    iget-object v3, p0, Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;->H:Lz7/s;

    .line 87
    .line 88
    invoke-virtual {v3, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v2}, Lz7/p;->b()Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-eqz v2, :cond_1

    .line 97
    .line 98
    const v2, 0x7f080234

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_1
    const v2, 0x7f080237

    .line 103
    .line 104
    .line 105
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 106
    .line 107
    .line 108
    const v0, 0x7f0b0500

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 116
    .line 117
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 118
    .line 119
    new-instance v2, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 120
    .line 121
    iget-object v3, p0, Lda/g;->A:Lda/g;

    .line 122
    .line 123
    const/4 v4, 0x0

    .line 124
    invoke-direct {v2, v3, v4, v4}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;->D:Lx9/m0;

    .line 131
    .line 132
    const-string v2, "\u8fd4\u56de"

    .line 133
    .line 134
    invoke-virtual {v0, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    const-string v2, "\u6dfb\u52a0\u6620\u5c04"

    .line 138
    .line 139
    invoke-virtual {v0, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    const-string v2, "\u6e05\u7a7a"

    .line 143
    .line 144
    invoke-virtual {v0, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    const-string v2, "\u8bbe\u7f6e"

    .line 148
    .line 149
    invoke-virtual {v0, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    const-string v2, "\u8bf4\u660e"

    .line 153
    .line 154
    invoke-virtual {v0, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 158
    .line 159
    invoke-virtual {v2, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 160
    .line 161
    .line 162
    new-instance v2, Lua/p3;

    .line 163
    .line 164
    const/4 v3, 0x0

    .line 165
    invoke-direct {v2, p0, v3}, Lua/p3;-><init>(Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;I)V

    .line 166
    .line 167
    .line 168
    iput-object v2, v0, Lc6/g;->e:Lc6/e;

    .line 169
    .line 170
    const v0, 0x7f0b04f1

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 178
    .line 179
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 180
    .line 181
    new-instance v2, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 182
    .line 183
    const/4 v3, 0x3

    .line 184
    invoke-direct {v2, p0, v3}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 188
    .line 189
    .line 190
    new-instance v0, Lx9/s2;

    .line 191
    .line 192
    invoke-direct {v0}, Lx9/s2;-><init>()V

    .line 193
    .line 194
    .line 195
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;->F:Lx9/s2;

    .line 196
    .line 197
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;->H:Lz7/s;

    .line 198
    .line 199
    invoke-virtual {v0, v1}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    :goto_1
    iget-object v1, v0, Lz7/o;->a:Ljava/util/ArrayList;

    .line 204
    .line 205
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    if-ge v4, v1, :cond_2

    .line 210
    .line 211
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;->F:Lx9/s2;

    .line 212
    .line 213
    invoke-virtual {v0, v4}, Lz7/o;->l(I)Lz7/p;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    invoke-virtual {v2}, Lz7/p;->g()Lz7/s;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    invoke-virtual {v1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    add-int/lit8 v4, v4, 0x1

    .line 225
    .line 226
    goto :goto_1

    .line 227
    :cond_2
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 228
    .line 229
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;->F:Lx9/s2;

    .line 230
    .line 231
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 232
    .line 233
    .line 234
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;->F:Lx9/s2;

    .line 235
    .line 236
    new-instance v1, Lua/p3;

    .line 237
    .line 238
    const/4 v2, 0x1

    .line 239
    invoke-direct {v1, p0, v2}, Lua/p3;-><init>(Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;I)V

    .line 240
    .line 241
    .line 242
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 243
    .line 244
    return-void
.end method
