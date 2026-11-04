.class public final Lya/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr1/k0;


# instance fields
.field public final synthetic a:Lya/l;


# direct methods
.method public constructor <init>(Lya/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lya/k;->a:Lya/l;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final synthetic A(IZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic B(ILr1/l0;Lr1/l0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic C(Lr1/h0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic D(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic E(Lr1/y;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic F(Lu7/y0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic H(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic a(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic b(Lr1/b1;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic d(Lr1/x0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic e(Lr1/v0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic f(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic g(IZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic h(Lr1/i0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic i(F)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic j(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final k(I)V
    .locals 6

    .line 1
    const/4 v0, 0x4

    .line 2
    iget-object v1, p0, Lya/k;->a:Lya/l;

    .line 3
    .line 4
    if-eq p1, v0, :cond_4

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_2

    .line 10
    .line 11
    :cond_0
    const/4 v2, 0x3

    .line 12
    if-ne p1, v2, :cond_5

    .line 13
    .line 14
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 15
    .line 16
    const/16 v2, 0x13

    .line 17
    .line 18
    if-lt p1, v2, :cond_1

    .line 19
    .line 20
    iget-object p1, v1, Lya/l;->d:Lz7/s;

    .line 21
    .line 22
    iget-object p1, p1, Lz7/s;->a:Lb8/n;

    .line 23
    .line 24
    const-string v2, "volumeGain"

    .line 25
    .line 26
    invoke-virtual {p1, v2}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    iget-object p1, v1, Lya/l;->d:Lz7/s;

    .line 33
    .line 34
    invoke-virtual {p1, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lz7/p;->e()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-lez p1, :cond_1

    .line 43
    .line 44
    new-instance p1, Landroid/media/audiofx/LoudnessEnhancer;

    .line 45
    .line 46
    iget-object v3, v1, Lya/l;->f:Ly1/x;

    .line 47
    .line 48
    invoke-virtual {v3}, Ly1/x;->h0()V

    .line 49
    .line 50
    .line 51
    iget-object v3, v3, Ly1/x;->E:Lb5/i;

    .line 52
    .line 53
    invoke-virtual {v3}, Lb5/i;->e()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    check-cast v3, Ljava/lang/Integer;

    .line 58
    .line 59
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    invoke-direct {p1, v3}, Landroid/media/audiofx/LoudnessEnhancer;-><init>(I)V

    .line 64
    .line 65
    .line 66
    iput-object p1, v1, Lya/l;->h:Landroid/media/audiofx/LoudnessEnhancer;

    .line 67
    .line 68
    iget-object v3, v1, Lya/l;->d:Lz7/s;

    .line 69
    .line 70
    invoke-virtual {v3, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v2}, Lz7/p;->e()I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    invoke-virtual {p1, v2}, Landroid/media/audiofx/LoudnessEnhancer;->setTargetGain(I)V

    .line 79
    .line 80
    .line 81
    iget-object p1, v1, Lya/l;->h:Landroid/media/audiofx/LoudnessEnhancer;

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Landroid/media/audiofx/LoudnessEnhancer;->setEnabled(Z)I

    .line 84
    .line 85
    .line 86
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    :try_start_0
    iget-object p1, v1, Lya/l;->d:Lz7/s;

    .line 90
    .line 91
    const-string v2, "systemVolumeType"

    .line 92
    .line 93
    invoke-virtual {p1, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p1}, Lz7/p;->e()I

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    iput p1, v1, Lya/l;->j:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .line 103
    if-ltz p1, :cond_3

    .line 104
    .line 105
    const-string v2, "systemVolume"

    .line 106
    .line 107
    const/16 v3, 0x64

    .line 108
    .line 109
    if-lt p1, v3, :cond_2

    .line 110
    .line 111
    :try_start_1
    sget-object v4, Lcom/yunpan/appmanage/carsdk/j0;->a:Lcom/yunpan/appmanage/carsdk/k0;

    .line 112
    .line 113
    sub-int/2addr p1, v3

    .line 114
    invoke-virtual {v4, p1}, Lcom/yunpan/appmanage/carsdk/k0;->f(I)I

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    iput p1, v1, Lya/l;->k:I

    .line 119
    .line 120
    iget p1, v1, Lya/l;->j:I

    .line 121
    .line 122
    sub-int/2addr p1, v3

    .line 123
    iget-object v3, v1, Lya/l;->d:Lz7/s;

    .line 124
    .line 125
    invoke-virtual {v3, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-virtual {v2}, Lz7/p;->e()I

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    invoke-virtual {v4, p1, v2}, Lcom/yunpan/appmanage/carsdk/k0;->h(II)V

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :catch_0
    move-exception p1

    .line 138
    goto :goto_0

    .line 139
    :cond_2
    iget-object v3, v1, Lya/l;->g:Landroid/media/AudioManager;

    .line 140
    .line 141
    invoke-virtual {v3, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    iput p1, v1, Lya/l;->k:I

    .line 146
    .line 147
    iget-object p1, v1, Lya/l;->g:Landroid/media/AudioManager;

    .line 148
    .line 149
    iget v3, v1, Lya/l;->j:I

    .line 150
    .line 151
    iget-object v4, v1, Lya/l;->d:Lz7/s;

    .line 152
    .line 153
    invoke-virtual {v4, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    invoke-virtual {v2}, Lz7/p;->e()I

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    const/4 v4, 0x0

    .line 162
    invoke-virtual {p1, v3, v2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 163
    .line 164
    .line 165
    goto :goto_1

    .line 166
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 167
    .line 168
    .line 169
    :cond_3
    :goto_1
    iget-object p1, v1, Lya/l;->f:Ly1/x;

    .line 170
    .line 171
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1}, Ly1/x;->h0()V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1, v0, v0}, Ly1/x;->e0(IZ)V

    .line 178
    .line 179
    .line 180
    :try_start_2
    iget-object p1, v1, Lya/l;->f:Ly1/x;

    .line 181
    .line 182
    invoke-virtual {p1}, Ly1/x;->H()J

    .line 183
    .line 184
    .line 185
    move-result-wide v2

    .line 186
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    cmp-long p1, v2, v4

    .line 192
    .line 193
    if-eqz p1, :cond_5

    .line 194
    .line 195
    iget-object p1, v1, Lya/l;->f:Ly1/x;

    .line 196
    .line 197
    invoke-virtual {p1}, Ly1/x;->H()J

    .line 198
    .line 199
    .line 200
    move-result-wide v2

    .line 201
    const-wide/16 v4, 0x0

    .line 202
    .line 203
    cmp-long p1, v2, v4

    .line 204
    .line 205
    if-lez p1, :cond_5

    .line 206
    .line 207
    iget-object p1, v1, Lya/l;->i:Landroid/os/Handler;

    .line 208
    .line 209
    new-instance v0, Lua/g8;

    .line 210
    .line 211
    const/16 v2, 0xf

    .line 212
    .line 213
    invoke-direct {v0, v2, p0}, Lua/g8;-><init>(ILjava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    iget-object v1, v1, Lya/l;->f:Ly1/x;

    .line 217
    .line 218
    invoke-virtual {v1}, Ly1/x;->H()J

    .line 219
    .line 220
    .line 221
    move-result-wide v1

    .line 222
    const-wide/16 v3, 0x12c

    .line 223
    .line 224
    add-long/2addr v1, v3

    .line 225
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 226
    .line 227
    .line 228
    goto :goto_3

    .line 229
    :cond_4
    :goto_2
    invoke-virtual {v1}, Lya/l;->c()V

    .line 230
    .line 231
    .line 232
    :catch_1
    :cond_5
    :goto_3
    return-void
.end method

.method public final synthetic m(Lr1/b0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic n(Ly1/k;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic o(Lr1/j0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic p(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic q(Lt1/c;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic r(Ly1/k;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic t(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic u(Lr1/d;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic v(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic x(Lr1/d0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic y()V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic z(Z)V
    .locals 0

    .line 1
    return-void
.end method
