.class public Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;
.super Lda/g;
.source "SourceFile"


# static fields
.field public static final synthetic P:I


# instance fields
.field public C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public final D:Lx9/m0;

.field public E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public F:Lx9/s2;

.field public G:Landroid/widget/ImageView;

.field public H:Lz7/s;

.field public final I:Ljava/util/ArrayList;

.field public final K:Ljava/util/ArrayList;

.field public final L:Ljava/util/ArrayList;

.field public final M:Ljava/util/ArrayList;

.field public final N:Ljava/util/ArrayList;

.field public final O:Ljava/util/ArrayList;


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
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->D:Lx9/m0;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->I:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->K:Ljava/util/ArrayList;

    .line 24
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->L:Ljava/util/ArrayList;

    .line 31
    .line 32
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->M:Ljava/util/ArrayList;

    .line 38
    .line 39
    new-instance v0, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->N:Ljava/util/ArrayList;

    .line 45
    .line 46
    new-instance v0, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->O:Ljava/util/ArrayList;

    .line 52
    .line 53
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
    const-string v1, "\u6377\u9014\u8f66\u673a\u4e13\u7528\u6620\u5c04"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lda/g;->A:Lda/g;

    .line 16
    .line 17
    invoke-static {v0}, Lq4/a;->s(Landroid/content/ContextWrapper;)Lz7/s;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->H:Lz7/s;

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
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->H:Lz7/s;

    .line 35
    .line 36
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 37
    .line 38
    invoke-virtual {v0, v2, v3}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->H:Lz7/s;

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
    :cond_0
    const v0, 0x7f0b0568

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    new-instance v3, Lua/g1;

    .line 59
    .line 60
    const/16 v4, 0x11

    .line 61
    .line 62
    invoke-direct {v3, p0, v4}, Lua/g1;-><init>(Lda/g;I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    .line 67
    .line 68
    const v0, 0x7f0b0569

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Landroid/widget/ImageView;

    .line 76
    .line 77
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->G:Landroid/widget/ImageView;

    .line 78
    .line 79
    iget-object v3, p0, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->H:Lz7/s;

    .line 80
    .line 81
    invoke-virtual {v3, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v2}, Lz7/p;->b()Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-eqz v2, :cond_1

    .line 90
    .line 91
    const v2, 0x7f080234

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_1
    const v2, 0x7f080237

    .line 96
    .line 97
    .line 98
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 99
    .line 100
    .line 101
    const v0, 0x7f0b0500

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 109
    .line 110
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 111
    .line 112
    new-instance v2, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 113
    .line 114
    iget-object v3, p0, Lda/g;->A:Lda/g;

    .line 115
    .line 116
    const/4 v4, 0x0

    .line 117
    invoke-direct {v2, v3, v4, v4}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->D:Lx9/m0;

    .line 124
    .line 125
    const-string v2, "\u8fd4\u56de"

    .line 126
    .line 127
    invoke-virtual {v0, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    const-string v2, "\u6dfb\u52a0\u6620\u5c04"

    .line 131
    .line 132
    invoke-virtual {v0, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    const-string v2, "\u6e05\u7a7a"

    .line 136
    .line 137
    invoke-virtual {v0, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    const-string v2, "\u8bf4\u660e"

    .line 141
    .line 142
    invoke-virtual {v0, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 146
    .line 147
    invoke-virtual {v2, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 148
    .line 149
    .line 150
    new-instance v2, Lua/s3;

    .line 151
    .line 152
    const/4 v3, 0x0

    .line 153
    invoke-direct {v2, p0, v3}, Lua/s3;-><init>(Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;I)V

    .line 154
    .line 155
    .line 156
    iput-object v2, v0, Lc6/g;->e:Lc6/e;

    .line 157
    .line 158
    const v0, 0x7f0b04f1

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 166
    .line 167
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 168
    .line 169
    new-instance v2, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 170
    .line 171
    const/4 v3, 0x3

    .line 172
    invoke-direct {v2, p0, v3}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 176
    .line 177
    .line 178
    new-instance v0, Lx9/s2;

    .line 179
    .line 180
    invoke-direct {v0}, Lx9/s2;-><init>()V

    .line 181
    .line 182
    .line 183
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->F:Lx9/s2;

    .line 184
    .line 185
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->H:Lz7/s;

    .line 186
    .line 187
    invoke-virtual {v0, v1}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    :goto_1
    iget-object v1, v0, Lz7/o;->a:Ljava/util/ArrayList;

    .line 192
    .line 193
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    if-ge v4, v1, :cond_2

    .line 198
    .line 199
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->F:Lx9/s2;

    .line 200
    .line 201
    invoke-virtual {v0, v4}, Lz7/o;->l(I)Lz7/p;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    invoke-virtual {v2}, Lz7/p;->g()Lz7/s;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    invoke-virtual {v1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    add-int/lit8 v4, v4, 0x1

    .line 213
    .line 214
    goto :goto_1

    .line 215
    :cond_2
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 216
    .line 217
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->F:Lx9/s2;

    .line 218
    .line 219
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 220
    .line 221
    .line 222
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->F:Lx9/s2;

    .line 223
    .line 224
    new-instance v1, Lua/s3;

    .line 225
    .line 226
    const/4 v2, 0x1

    .line 227
    invoke-direct {v1, p0, v2}, Lua/s3;-><init>(Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;I)V

    .line 228
    .line 229
    .line 230
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 231
    .line 232
    return-void
.end method

.method public final x(I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->H:Lz7/s;

    .line 2
    .line 3
    const-string v1, "maps"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    iget-object v3, v0, Lz7/o;->a:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-ge v2, v3, :cond_1

    .line 18
    .line 19
    const-string v3, "type"

    .line 20
    .line 21
    invoke-static {v0, v2, v3}, Landroid/support/v4/media/session/a;->j(Lz7/o;ILjava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    sget-object v4, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->MAP_TYPE_KEY:Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;

    .line 26
    .line 27
    invoke-virtual {v4}, Lcom/autolink/app/vehiclemanager/data/JieTKeymapType;->getValue()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-ne v3, v4, :cond_0

    .line 32
    .line 33
    const-string v3, "key1"

    .line 34
    .line 35
    invoke-static {v0, v2, v3}, Landroid/support/v4/media/session/a;->j(Lz7/o;ILjava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-ne v3, p1, :cond_0

    .line 40
    .line 41
    const-string p1, "\u5df2\u5b58\u5728\u6b64\u6309\u952e\u6620\u5c04"

    .line 42
    .line 43
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    const/4 p1, 0x1

    .line 47
    return p1

    .line 48
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    return v1
.end method

.method public final y(Lz7/s;I)V
    .locals 3

    .line 1
    new-instance v0, Lha/x7;

    .line 2
    .line 3
    new-instance v1, Lua/u3;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, p0, p2, v2}, Lua/u3;-><init>(Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;II)V

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p0, p0, p1, v1}, Lha/x7;-><init>(Lda/g;Lda/g;Lz7/s;Lha/w7;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 13
    .line 14
    .line 15
    return-void
.end method
