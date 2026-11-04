.class public final Ly1/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/ContextWrapper;

.field public final b:Lc2/b;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ly1/i;->a:Landroid/content/ContextWrapper;

    .line 5
    .line 6
    new-instance v0, Lc2/b;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-direct {v0, p1, v1}, Lc2/b;-><init>(Landroid/content/ContextWrapper;I)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Ly1/i;->b:Lc2/b;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Handler;Ly1/t;Ly1/t;Ly1/t;Ly1/t;)[Ly1/a;
    .locals 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroidx/media3/exoplayer/video/j;

    .line 7
    .line 8
    iget-object v8, p0, Ly1/i;->a:Landroid/content/ContextWrapper;

    .line 9
    .line 10
    invoke-direct {v1, v8}, Landroidx/media3/exoplayer/video/j;-><init>(Landroid/content/ContextWrapper;)V

    .line 11
    .line 12
    .line 13
    iget-object v4, p0, Ly1/i;->b:Lc2/b;

    .line 14
    .line 15
    iput-object v4, v1, Landroidx/media3/exoplayer/video/j;->c:Ld2/m;

    .line 16
    .line 17
    const-wide/16 v2, 0x1388

    .line 18
    .line 19
    iput-wide v2, v1, Landroidx/media3/exoplayer/video/j;->d:J

    .line 20
    .line 21
    iput-object p1, v1, Landroidx/media3/exoplayer/video/j;->e:Landroid/os/Handler;

    .line 22
    .line 23
    iput-object p2, v1, Landroidx/media3/exoplayer/video/j;->f:Ly1/t;

    .line 24
    .line 25
    const/16 p2, 0x32

    .line 26
    .line 27
    iput p2, v1, Landroidx/media3/exoplayer/video/j;->g:I

    .line 28
    .line 29
    iget-boolean p2, v1, Landroidx/media3/exoplayer/video/j;->b:Z

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    xor-int/2addr p2, v2

    .line 33
    invoke-static {p2}, La9/o;->t(Z)V

    .line 34
    .line 35
    .line 36
    iget-object p2, v1, Landroidx/media3/exoplayer/video/j;->e:Landroid/os/Handler;

    .line 37
    .line 38
    const/4 v9, 0x0

    .line 39
    if-nez p2, :cond_0

    .line 40
    .line 41
    iget-object v3, v1, Landroidx/media3/exoplayer/video/j;->f:Ly1/t;

    .line 42
    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    :cond_0
    if-eqz p2, :cond_2

    .line 46
    .line 47
    iget-object p2, v1, Landroidx/media3/exoplayer/video/j;->f:Ly1/t;

    .line 48
    .line 49
    if-eqz p2, :cond_2

    .line 50
    .line 51
    :cond_1
    const/4 p2, 0x1

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    const/4 p2, 0x0

    .line 54
    :goto_0
    invoke-static {p2}, La9/o;->t(Z)V

    .line 55
    .line 56
    .line 57
    iput-boolean v2, v1, Landroidx/media3/exoplayer/video/j;->b:Z

    .line 58
    .line 59
    new-instance p2, Landroidx/media3/exoplayer/video/m;

    .line 60
    .line 61
    invoke-direct {p2, v1}, Landroidx/media3/exoplayer/video/m;-><init>(Landroidx/media3/exoplayer/video/j;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    new-instance p2, La2/j1;

    .line 68
    .line 69
    invoke-direct {p2, v8}, La2/j1;-><init>(Landroid/content/ContextWrapper;)V

    .line 70
    .line 71
    .line 72
    iget-boolean v1, p2, La2/j1;->d:Z

    .line 73
    .line 74
    xor-int/2addr v1, v2

    .line 75
    invoke-static {v1}, La9/o;->t(Z)V

    .line 76
    .line 77
    .line 78
    iput-boolean v2, p2, La2/j1;->d:Z

    .line 79
    .line 80
    iget-object v1, p2, La2/j1;->c:Lv3/f;

    .line 81
    .line 82
    if-nez v1, :cond_3

    .line 83
    .line 84
    new-instance v1, Lv3/f;

    .line 85
    .line 86
    new-array v3, v9, [Ls1/l;

    .line 87
    .line 88
    invoke-direct {v1, v3}, Lv3/f;-><init>([Ls1/l;)V

    .line 89
    .line 90
    .line 91
    iput-object v1, p2, La2/j1;->c:Lv3/f;

    .line 92
    .line 93
    :cond_3
    iget-object v1, p2, La2/j1;->f:La2/d1;

    .line 94
    .line 95
    if-nez v1, :cond_9

    .line 96
    .line 97
    iget-object v1, p2, La2/j1;->g:La2/g1;

    .line 98
    .line 99
    if-nez v1, :cond_4

    .line 100
    .line 101
    new-instance v1, La2/g1;

    .line 102
    .line 103
    invoke-direct {v1, v8}, La2/g1;-><init>(Landroid/content/Context;)V

    .line 104
    .line 105
    .line 106
    iput-object v1, p2, La2/j1;->g:La2/g1;

    .line 107
    .line 108
    :cond_4
    iget-object v1, p2, La2/j1;->e:La2/o1;

    .line 109
    .line 110
    if-nez v1, :cond_5

    .line 111
    .line 112
    sget-object v1, La2/o1;->a:La2/o1;

    .line 113
    .line 114
    iput-object v1, p2, La2/j1;->e:La2/o1;

    .line 115
    .line 116
    :cond_5
    new-instance v1, La2/c1;

    .line 117
    .line 118
    invoke-direct {v1, v8}, La2/c1;-><init>(Landroid/content/ContextWrapper;)V

    .line 119
    .line 120
    .line 121
    if-eqz v8, :cond_6

    .line 122
    .line 123
    const/4 v2, 0x0

    .line 124
    goto :goto_1

    .line 125
    :cond_6
    iget-object v2, p2, La2/j1;->b:La2/g;

    .line 126
    .line 127
    :goto_1
    iget-object v3, v1, La2/c1;->a:Landroid/content/Context;

    .line 128
    .line 129
    if-nez v3, :cond_7

    .line 130
    .line 131
    iput-object v2, v1, La2/c1;->d:La2/g;

    .line 132
    .line 133
    :cond_7
    iget-object v2, p2, La2/j1;->g:La2/g1;

    .line 134
    .line 135
    iput-object v2, v1, La2/c1;->b:La2/g1;

    .line 136
    .line 137
    iget-object v5, p2, La2/j1;->e:La2/o1;

    .line 138
    .line 139
    iput-object v5, v1, La2/c1;->c:La2/o1;

    .line 140
    .line 141
    if-nez v2, :cond_8

    .line 142
    .line 143
    new-instance v2, La2/g1;

    .line 144
    .line 145
    invoke-direct {v2, v3}, La2/g1;-><init>(Landroid/content/Context;)V

    .line 146
    .line 147
    .line 148
    iput-object v2, v1, La2/c1;->b:La2/g1;

    .line 149
    .line 150
    :cond_8
    new-instance v2, La2/d1;

    .line 151
    .line 152
    invoke-direct {v2, v1}, La2/d1;-><init>(La2/c1;)V

    .line 153
    .line 154
    .line 155
    iput-object v2, p2, La2/j1;->f:La2/d1;

    .line 156
    .line 157
    goto :goto_4

    .line 158
    :cond_9
    iget-object v1, p2, La2/j1;->g:La2/g1;

    .line 159
    .line 160
    if-nez v1, :cond_a

    .line 161
    .line 162
    const/4 v1, 0x1

    .line 163
    goto :goto_2

    .line 164
    :cond_a
    const/4 v1, 0x0

    .line 165
    :goto_2
    invoke-static {v1}, La9/o;->t(Z)V

    .line 166
    .line 167
    .line 168
    iget-object v1, p2, La2/j1;->e:La2/o1;

    .line 169
    .line 170
    if-nez v1, :cond_b

    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_b
    const/4 v2, 0x0

    .line 174
    :goto_3
    invoke-static {v2}, La9/o;->t(Z)V

    .line 175
    .line 176
    .line 177
    :goto_4
    new-instance v7, La2/n1;

    .line 178
    .line 179
    invoke-direct {v7, p2}, La2/n1;-><init>(La2/j1;)V

    .line 180
    .line 181
    .line 182
    new-instance p2, La2/q1;

    .line 183
    .line 184
    move-object v2, p2

    .line 185
    move-object v3, v8

    .line 186
    move-object v5, p1

    .line 187
    move-object v6, p3

    .line 188
    invoke-direct/range {v2 .. v7}, La2/q1;-><init>(Landroid/content/ContextWrapper;Ld2/m;Landroid/os/Handler;Ly1/t;La2/n1;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 195
    .line 196
    .line 197
    move-result-object p2

    .line 198
    new-instance p3, Lg2/f;

    .line 199
    .line 200
    invoke-direct {p3, p4, p2}, Lg2/f;-><init>(Ly1/t;Landroid/os/Looper;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    const/4 p2, 0x0

    .line 211
    :goto_5
    const/4 p3, 0x4

    .line 212
    if-ge p2, p3, :cond_c

    .line 213
    .line 214
    new-instance p3, Le2/b;

    .line 215
    .line 216
    invoke-direct {p3, p5, p1}, Le2/b;-><init>(Ly1/t;Landroid/os/Looper;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    add-int/lit8 p2, p2, 0x1

    .line 223
    .line 224
    goto :goto_5

    .line 225
    :cond_c
    new-instance p1, Lk2/b;

    .line 226
    .line 227
    invoke-direct {p1}, Lk2/b;-><init>()V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    new-instance p1, Lc2/h;

    .line 234
    .line 235
    new-instance p2, Lc2/b;

    .line 236
    .line 237
    const/4 p3, 0x0

    .line 238
    invoke-direct {p2, v8, p3}, Lc2/b;-><init>(Landroid/content/ContextWrapper;I)V

    .line 239
    .line 240
    .line 241
    invoke-direct {p1, p2}, Lc2/h;-><init>(Lc2/b;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    new-array p1, v9, [Ly1/a;

    .line 248
    .line 249
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    check-cast p1, [Ly1/a;

    .line 254
    .line 255
    return-object p1
.end method
