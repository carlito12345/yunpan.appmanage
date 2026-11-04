.class public Lcom/yunpan/appmanage/ui/ActivityTextDesaysvVds;
.super Lda/g;
.source "SourceFile"


# static fields
.field public static final synthetic K:I


# instance fields
.field public C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public final D:Lx9/t0;

.field public E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public F:Lx9/h2;

.field public final G:Lcom/yunpan/appmanage/carsdk/u;

.field public final H:Lua/x4;

.field public I:Z


# direct methods
.method public constructor <init>()V
    .locals 3

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
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextDesaysvVds;->D:Lx9/t0;

    .line 11
    .line 12
    new-instance v0, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance v0, Lcom/yunpan/appmanage/carsdk/u;

    .line 18
    .line 19
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/16 v2, 0x15

    .line 24
    .line 25
    invoke-direct {v0, p0, v1, v2}, Lcom/yunpan/appmanage/carsdk/u;-><init>(Ljava/lang/Object;Landroid/os/Looper;I)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextDesaysvVds;->G:Lcom/yunpan/appmanage/carsdk/u;

    .line 29
    .line 30
    new-instance v0, Lua/x4;

    .line 31
    .line 32
    invoke-direct {v0, p0}, Lua/x4;-><init>(Lcom/yunpan/appmanage/ui/ActivityTextDesaysvVds;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextDesaysvVds;->H:Lua/x4;

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextDesaysvVds;->I:Z

    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public final onDestroy()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Li6/a;->a()Li6/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityTextDesaysvVds;->H:Lua/x4;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Li6/a;->f(Lua/x4;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    :catch_0
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextDesaysvVds;->G:Lcom/yunpan/appmanage/carsdk/u;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-super {p0}, Lda/g;->onDestroy()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final t()I
    .locals 1

    .line 1
    const v0, 0x7f0e003f

    return v0
.end method

.method public final u()V
    .locals 5

    .line 1
    const v0, 0x7f0b0500

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextDesaysvVds;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 11
    .line 12
    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 13
    .line 14
    iget-object v2, p0, Lda/g;->A:Lda/g;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-direct {v1, v2, v3, v3}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;

    .line 24
    .line 25
    const v1, 0x7f0801d1

    .line 26
    .line 27
    .line 28
    const-string v2, "\u8fd4\u56de"

    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    invoke-direct {v0, v1, v2, v3}, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;-><init>(ILjava/lang/String;I)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityTextDesaysvVds;->D:Lx9/t0;

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextDesaysvVds;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 42
    .line 43
    .line 44
    new-instance v0, Lua/g5;

    .line 45
    .line 46
    const/16 v2, 0x8

    .line 47
    .line 48
    invoke-direct {v0, v2, p0}, Lua/g5;-><init>(ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iput-object v0, v1, Lc6/g;->e:Lc6/e;

    .line 52
    .line 53
    const v0, 0x7f0b04f1

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 61
    .line 62
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextDesaysvVds;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 63
    .line 64
    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 65
    .line 66
    iget-object v2, p0, Lda/g;->A:Lda/g;

    .line 67
    .line 68
    const/4 v4, 0x3

    .line 69
    invoke-direct {v1, v2, v4}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 73
    .line 74
    .line 75
    new-instance v0, Lx9/h2;

    .line 76
    .line 77
    invoke-direct {v0}, Lx9/h2;-><init>()V

    .line 78
    .line 79
    .line 80
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextDesaysvVds;->F:Lx9/h2;

    .line 81
    .line 82
    new-instance v1, Lcom/yunpan/appmanage/bean/NameValueBean;

    .line 83
    .line 84
    const-string v2, "\u4e3b\u9a7e\u95e8"

    .line 85
    .line 86
    const-string v4, ""

    .line 87
    .line 88
    invoke-direct {v1, v2, v4}, Lcom/yunpan/appmanage/bean/NameValueBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextDesaysvVds;->F:Lx9/h2;

    .line 95
    .line 96
    new-instance v1, Lcom/yunpan/appmanage/bean/NameValueBean;

    .line 97
    .line 98
    const-string v2, "\u526f\u9a7e\u95e8"

    .line 99
    .line 100
    invoke-direct {v1, v2, v4}, Lcom/yunpan/appmanage/bean/NameValueBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextDesaysvVds;->F:Lx9/h2;

    .line 107
    .line 108
    new-instance v1, Lcom/yunpan/appmanage/bean/NameValueBean;

    .line 109
    .line 110
    const-string v2, "\u5de6\u540e\u95e8"

    .line 111
    .line 112
    invoke-direct {v1, v2, v4}, Lcom/yunpan/appmanage/bean/NameValueBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextDesaysvVds;->F:Lx9/h2;

    .line 119
    .line 120
    new-instance v1, Lcom/yunpan/appmanage/bean/NameValueBean;

    .line 121
    .line 122
    const-string v2, "\u53f3\u540e\u95e8"

    .line 123
    .line 124
    invoke-direct {v1, v2, v4}, Lcom/yunpan/appmanage/bean/NameValueBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextDesaysvVds;->F:Lx9/h2;

    .line 131
    .line 132
    new-instance v1, Lcom/yunpan/appmanage/bean/NameValueBean;

    .line 133
    .line 134
    const-string v2, "\u540e\u5907\u7bb1"

    .line 135
    .line 136
    invoke-direct {v1, v2, v4}, Lcom/yunpan/appmanage/bean/NameValueBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextDesaysvVds;->F:Lx9/h2;

    .line 143
    .line 144
    new-instance v1, Lcom/yunpan/appmanage/bean/NameValueBean;

    .line 145
    .line 146
    const-string v2, "\u5f15\u64ce\u76d6"

    .line 147
    .line 148
    invoke-direct {v1, v2, v4}, Lcom/yunpan/appmanage/bean/NameValueBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextDesaysvVds;->F:Lx9/h2;

    .line 155
    .line 156
    new-instance v1, Lcom/yunpan/appmanage/bean/NameValueBean;

    .line 157
    .line 158
    const-string v2, "\u6863\u4f4d"

    .line 159
    .line 160
    invoke-direct {v1, v2, v4}, Lcom/yunpan/appmanage/bean/NameValueBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextDesaysvVds;->F:Lx9/h2;

    .line 167
    .line 168
    new-instance v1, Lcom/yunpan/appmanage/bean/NameValueBean;

    .line 169
    .line 170
    const-string v2, "\u901f\u5ea6"

    .line 171
    .line 172
    invoke-direct {v1, v2, v4}, Lcom/yunpan/appmanage/bean/NameValueBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextDesaysvVds;->F:Lx9/h2;

    .line 179
    .line 180
    new-instance v1, Lcom/yunpan/appmanage/bean/NameValueBean;

    .line 181
    .line 182
    const-string v2, "\u8fdc\u5149\u706f"

    .line 183
    .line 184
    invoke-direct {v1, v2, v4}, Lcom/yunpan/appmanage/bean/NameValueBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextDesaysvVds;->F:Lx9/h2;

    .line 191
    .line 192
    new-instance v1, Lcom/yunpan/appmanage/bean/NameValueBean;

    .line 193
    .line 194
    const-string v2, "\u8fd1\u5149\u706f"

    .line 195
    .line 196
    invoke-direct {v1, v2, v4}, Lcom/yunpan/appmanage/bean/NameValueBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextDesaysvVds;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 203
    .line 204
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityTextDesaysvVds;->F:Lx9/h2;

    .line 205
    .line 206
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 207
    .line 208
    .line 209
    iget-boolean v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextDesaysvVds;->I:Z

    .line 210
    .line 211
    if-eqz v0, :cond_0

    .line 212
    .line 213
    goto :goto_0

    .line 214
    :cond_0
    iput-boolean v3, p0, Lcom/yunpan/appmanage/ui/ActivityTextDesaysvVds;->I:Z

    .line 215
    .line 216
    :try_start_0
    invoke-static {}, Lk6/a;->a()Lk6/a;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-virtual {v0, p0}, Lk6/a;->b(Lcom/yunpan/appmanage/ui/ActivityTextDesaysvVds;)V

    .line 221
    .line 222
    .line 223
    invoke-static {}, Li6/a;->a()Li6/a;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    invoke-virtual {v0, p0}, Li6/a;->b(Lcom/yunpan/appmanage/ui/ActivityTextDesaysvVds;)V

    .line 228
    .line 229
    .line 230
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextDesaysvVds;->H:Lua/x4;

    .line 231
    .line 232
    const/16 v1, 0xa

    .line 233
    .line 234
    new-array v1, v1, [I

    .line 235
    .line 236
    fill-array-data v1, :array_0

    .line 237
    .line 238
    .line 239
    invoke-static {v0, v1}, Li6/a;->e(Lua/x4;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    .line 241
    .line 242
    goto :goto_0

    .line 243
    :catchall_0
    const-string v0, "\u8be5\u7cfb\u7edf\u4e0d\u652f\u6301\u6b64\u529f\u80fd"

    .line 244
    .line 245
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 249
    .line 250
    .line 251
    :goto_0
    return-void

    .line 252
    nop

    .line 253
    :array_0
    .array-data 4
        0xf
        0x10
        0x11
        0x12
        0x13
        0x2f
        0x1a
        0x0
        0x17
        0x27
    .end array-data
.end method
