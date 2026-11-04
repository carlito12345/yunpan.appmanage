.class public Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperX;
.super Lda/g;
.source "SourceFile"


# static fields
.field public static final synthetic N:I


# instance fields
.field public C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public D:Lx9/r3;

.field public final E:Ljava/util/ArrayList;

.field public F:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public G:Landroid/widget/TextView;

.field public H:Lz7/s;

.field public I:Lz7/o;

.field public K:I

.field public L:Ljava/io/File;

.field public M:Ljava/io/File;


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
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperX;->E:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperX;->K:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperX;->D:Lx9/r3;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lc6/g;->E(Ljava/util/List;)V

    .line 5
    .line 6
    .line 7
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperX;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 8
    .line 9
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperX;->D:Lx9/r3;

    .line 10
    .line 11
    iget-object v0, p0, Lda/g;->A:Lda/g;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/b;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/bumptech/glide/b;->a()V

    .line 18
    .line 19
    .line 20
    invoke-super {p0}, Lda/g;->onDestroy()V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final t()I
    .locals 1

    .line 1
    const v0, 0x7f0e0048

    return v0
.end method

.method public final u()V
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    const-string v1, "/data/user_de/0/com.android.systemui/shared_prefs/AppInfo.xml"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperX;->L:Ljava/io/File;

    .line 9
    .line 10
    new-instance v0, Ljava/io/File;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    sget-object v2, Lfa/g0;->a:Lfa/h0;

    .line 18
    .line 19
    invoke-virtual {v2}, Lfa/h0;->d()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, "/."

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lda/g;->A:Lda/g;

    .line 32
    .line 33
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v2, "/AppInfo.xml"

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperX;->M:Ljava/io/File;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 59
    .line 60
    .line 61
    const v0, 0x7f0b05ba

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Landroid/widget/TextView;

    .line 69
    .line 70
    const v0, 0x7f0b0517

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 78
    .line 79
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperX;->F:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 80
    .line 81
    const v0, 0x7f0b0519

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Landroid/widget/TextView;

    .line 89
    .line 90
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperX;->G:Landroid/widget/TextView;

    .line 91
    .line 92
    const v0, 0x7f0b03ad

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    new-instance v1, Lua/p4;

    .line 100
    .line 101
    const/4 v2, 0x0

    .line 102
    invoke-direct {v1, p0, v2}, Lua/p4;-><init>(Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperX;I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    .line 107
    .line 108
    const v0, 0x7f0b03b1

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    new-instance v1, Lua/p4;

    .line 116
    .line 117
    const/4 v2, 0x1

    .line 118
    invoke-direct {v1, p0, v2}, Lua/p4;-><init>(Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperX;I)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    .line 123
    .line 124
    const v0, 0x7f0b037d

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    new-instance v1, Lua/p4;

    .line 132
    .line 133
    const/4 v2, 0x2

    .line 134
    invoke-direct {v1, p0, v2}, Lua/p4;-><init>(Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperX;I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    .line 139
    .line 140
    const v0, 0x7f0b04f4

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 148
    .line 149
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperX;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 150
    .line 151
    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 152
    .line 153
    iget-object v2, p0, Lda/g;->A:Lda/g;

    .line 154
    .line 155
    const/4 v3, 0x7

    .line 156
    invoke-direct {v1, v2, v3}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 160
    .line 161
    .line 162
    new-instance v0, Lx9/r3;

    .line 163
    .line 164
    invoke-direct {v0, p0}, Lx9/r3;-><init>(Lda/g;)V

    .line 165
    .line 166
    .line 167
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperX;->D:Lx9/r3;

    .line 168
    .line 169
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperX;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 170
    .line 171
    invoke-virtual {v1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 172
    .line 173
    .line 174
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperX;->D:Lx9/r3;

    .line 175
    .line 176
    new-instance v1, Lua/q4;

    .line 177
    .line 178
    const/4 v2, 0x2

    .line 179
    invoke-direct {v1, p0, v2}, Lua/q4;-><init>(Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperX;I)V

    .line 180
    .line 181
    .line 182
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 183
    .line 184
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperX;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 185
    .line 186
    new-instance v1, Lua/s4;

    .line 187
    .line 188
    invoke-direct {v1}, Lua/s4;-><init>()V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnItemListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnItemListener;)V

    .line 192
    .line 193
    .line 194
    new-instance v0, Ld6/a;

    .line 195
    .line 196
    invoke-direct {v0}, Ld6/a;-><init>()V

    .line 197
    .line 198
    .line 199
    const/16 v1, 0xf

    .line 200
    .line 201
    iput v1, v0, Ld6/a;->h:I

    .line 202
    .line 203
    const/4 v1, 0x0

    .line 204
    iput-boolean v1, v0, Ld6/a;->g:Z

    .line 205
    .line 206
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperX;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 207
    .line 208
    invoke-virtual {v0, v1}, Ld6/a;->d(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 209
    .line 210
    .line 211
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperX;->D:Lx9/r3;

    .line 212
    .line 213
    invoke-virtual {v0, v1}, Ld6/a;->g(Le6/a;)V

    .line 214
    .line 215
    .line 216
    new-instance v1, Lua/t4;

    .line 217
    .line 218
    invoke-direct {v1, p0}, Lua/t4;-><init>(Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperX;)V

    .line 219
    .line 220
    .line 221
    iput-object v1, v0, Ld6/a;->i:Le6/b;

    .line 222
    .line 223
    new-instance v0, Lua/q4;

    .line 224
    .line 225
    const/4 v1, 0x0

    .line 226
    invoke-direct {v0, p0, v1}, Lua/q4;-><init>(Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperX;I)V

    .line 227
    .line 228
    .line 229
    new-instance v1, Lmc/c;

    .line 230
    .line 231
    const/4 v2, 0x0

    .line 232
    invoke-direct {v1, v2, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 236
    .line 237
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    new-instance v1, Lua/r4;

    .line 250
    .line 251
    const/4 v2, 0x1

    .line 252
    invoke-direct {v1, p0, v2}, Lua/r4;-><init>(Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperX;I)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 256
    .line 257
    .line 258
    return-void
.end method
