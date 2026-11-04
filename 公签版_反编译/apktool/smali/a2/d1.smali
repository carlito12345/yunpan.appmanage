.class public final La2/d1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La2/y;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:La2/o1;

.field public final c:La2/g1;

.field public final d:La1/i;

.field public final e:F

.field public f:Lu1/m;

.field public g:Lu1/z;

.field public h:La2/g;

.field public i:La2/l;

.field public j:Landroid/os/Looper;

.field public k:Landroid/content/Context;


# direct methods
.method public constructor <init>(La2/c1;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, La2/c1;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object v0, p0, La2/d1;->a:Landroid/content/Context;

    .line 7
    .line 8
    iget-object v1, p1, La2/c1;->b:La2/g1;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, La2/d1;->c:La2/g1;

    .line 14
    .line 15
    iget-object v1, p1, La2/c1;->c:La2/o1;

    .line 16
    .line 17
    iput-object v1, p0, La2/d1;->b:La2/o1;

    .line 18
    .line 19
    iget-object v1, p1, La2/c1;->d:La2/g;

    .line 20
    .line 21
    iput-object v1, p0, La2/d1;->h:La2/g;

    .line 22
    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance v0, La1/i;

    .line 28
    .line 29
    const/4 v1, 0x2

    .line 30
    invoke-direct {v0, v1, p0}, La1/i;-><init>(ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    iput-object v0, p0, La2/d1;->d:La1/i;

    .line 34
    .line 35
    iget p1, p1, La2/c1;->e:F

    .line 36
    .line 37
    iput p1, p0, La2/d1;->e:F

    .line 38
    .line 39
    sget-object p1, Lu1/z;->a:Lu1/z;

    .line 40
    .line 41
    iput-object p1, p0, La2/d1;->g:Lu1/z;

    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public final a(La2/x;)La2/a1;
    .locals 7

    .line 1
    :try_start_0
    iget v0, p1, La2/x;->h:I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/16 v2, 0x22

    .line 5
    .line 6
    iget v3, p1, La2/x;->i:I

    .line 7
    .line 8
    if-eq v3, v1, :cond_2

    .line 9
    .line 10
    iget-object v1, p0, La2/d1;->a:Landroid/content/Context;

    .line 11
    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    :try_start_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 15
    .line 16
    if-lt v4, v2, :cond_2

    .line 17
    .line 18
    iget-object v0, p0, La2/d1;->k:Landroid/content/Context;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-static {v0}, La2/b1;->a(Landroid/content/Context;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eq v0, v3, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception p1

    .line 30
    goto/16 :goto_3

    .line 31
    .line 32
    :catch_1
    move-exception p1

    .line 33
    goto/16 :goto_3

    .line 34
    .line 35
    :cond_0
    :goto_0
    invoke-static {v1, v3}, La2/b1;->c(Landroid/content/Context;I)Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, La2/d1;->k:Landroid/content/Context;

    .line 40
    .line 41
    :cond_1
    iget-object v0, p0, La2/d1;->k:Landroid/content/Context;

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    move-object v1, v0

    .line 45
    const/4 v0, 0x0

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    const/4 v1, 0x0

    .line 48
    :goto_1
    new-instance v3, Landroid/media/AudioFormat$Builder;

    .line 49
    .line 50
    invoke-direct {v3}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 51
    .line 52
    .line 53
    iget v4, p1, La2/x;->b:I

    .line 54
    .line 55
    invoke-virtual {v3, v4}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    iget v4, p1, La2/x;->c:I

    .line 60
    .line 61
    invoke-virtual {v3, v4}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    iget v4, p1, La2/x;->a:I

    .line 66
    .line 67
    invoke-virtual {v3, v4}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v3}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    iget-object v4, p1, La2/x;->g:Lr1/d;

    .line 76
    .line 77
    iget-boolean v5, p1, La2/x;->d:Z

    .line 78
    .line 79
    const/4 v6, 0x1

    .line 80
    if-eqz v5, :cond_3

    .line 81
    .line 82
    new-instance v4, Landroid/media/AudioAttributes$Builder;

    .line 83
    .line 84
    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 85
    .line 86
    .line 87
    const/4 v5, 0x3

    .line 88
    invoke-virtual {v4, v5}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    const/16 v5, 0x10

    .line 93
    .line 94
    invoke-virtual {v4, v5}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-virtual {v4, v6}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-virtual {v4}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    goto :goto_2

    .line 107
    :cond_3
    invoke-virtual {v4}, Lr1/d;->a()Landroid/media/AudioAttributes;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    :goto_2
    new-instance v5, Landroid/media/AudioTrack$Builder;

    .line 112
    .line 113
    invoke-direct {v5}, Landroid/media/AudioTrack$Builder;-><init>()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v5, v4}, Landroid/media/AudioTrack$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioTrack$Builder;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    invoke-virtual {v4, v3}, Landroid/media/AudioTrack$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioTrack$Builder;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-virtual {v3, v6}, Landroid/media/AudioTrack$Builder;->setTransferMode(I)Landroid/media/AudioTrack$Builder;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    iget v4, p1, La2/x;->f:I

    .line 129
    .line 130
    invoke-virtual {v3, v4}, Landroid/media/AudioTrack$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioTrack$Builder;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    invoke-virtual {v3, v0}, Landroid/media/AudioTrack$Builder;->setSessionId(I)Landroid/media/AudioTrack$Builder;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 139
    .line 140
    const/16 v4, 0x1d

    .line 141
    .line 142
    if-lt v3, v4, :cond_4

    .line 143
    .line 144
    iget-boolean v4, p1, La2/x;->e:Z

    .line 145
    .line 146
    invoke-static {v0, v4}, La2/c;->i(Landroid/media/AudioTrack$Builder;Z)V

    .line 147
    .line 148
    .line 149
    :cond_4
    if-lt v3, v2, :cond_5

    .line 150
    .line 151
    if-eqz v1, :cond_5

    .line 152
    .line 153
    invoke-static {v0, v1}, La2/b1;->h(Landroid/media/AudioTrack$Builder;Landroid/content/Context;)V

    .line 154
    .line 155
    .line 156
    :cond_5
    invoke-virtual {v0}, Landroid/media/AudioTrack$Builder;->build()Landroid/media/AudioTrack;

    .line 157
    .line 158
    .line 159
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 160
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getState()I

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-ne v0, v6, :cond_6

    .line 165
    .line 166
    new-instance v6, La2/a1;

    .line 167
    .line 168
    iget-object v5, p0, La2/d1;->g:Lu1/z;

    .line 169
    .line 170
    iget-object v3, p0, La2/d1;->d:La1/i;

    .line 171
    .line 172
    iget v4, p0, La2/d1;->e:F

    .line 173
    .line 174
    move-object v0, v6

    .line 175
    move-object v2, p1

    .line 176
    invoke-direct/range {v0 .. v5}, La2/a1;-><init>(Landroid/media/AudioTrack;La2/x;La1/i;FLu1/z;)V

    .line 177
    .line 178
    .line 179
    return-object v6

    .line 180
    :cond_6
    :try_start_2
    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 181
    .line 182
    .line 183
    :catch_2
    new-instance p1, La2/v;

    .line 184
    .line 185
    invoke-direct {p1}, La2/v;-><init>()V

    .line 186
    .line 187
    .line 188
    throw p1

    .line 189
    :goto_3
    new-instance v0, La2/v;

    .line 190
    .line 191
    invoke-direct {v0, p1}, La2/v;-><init>(Ljava/lang/RuntimeException;)V

    .line 192
    .line 193
    .line 194
    throw v0
.end method

.method public final b(La2/s;)La2/u;
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, La2/d1;->e(La2/s;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, La2/d1;->c:La2/g1;

    .line 5
    .line 6
    iget-object v1, p1, La2/s;->a:Lr1/p;

    .line 7
    .line 8
    iget-object p1, p1, La2/s;->b:Lr1/d;

    .line 9
    .line 10
    invoke-virtual {v0, p1, v1}, La2/g1;->Q(Lr1/d;Lr1/p;)La2/p;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v2, La2/t;

    .line 15
    .line 16
    invoke-direct {v2}, La2/t;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object v3, v1, Lr1/p;->o:Ljava/lang/String;

    .line 20
    .line 21
    const-string v4, "audio/raw"

    .line 22
    .line 23
    invoke-static {v3, v4}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const/4 v4, 0x0

    .line 28
    const/4 v5, 0x2

    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    iget p1, v1, Lr1/p;->I:I

    .line 32
    .line 33
    if-ne p1, v5, :cond_1

    .line 34
    .line 35
    :goto_0
    const/4 v4, 0x2

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    iget-object v3, p0, La2/d1;->h:La2/g;

    .line 38
    .line 39
    invoke-virtual {v3, p1, v1}, La2/g;->c(Lr1/d;Lr1/p;)Landroid/util/Pair;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    :goto_1
    iput v4, v2, La2/t;->d:I

    .line 47
    .line 48
    iget-boolean p1, v0, La2/p;->a:Z

    .line 49
    .line 50
    iput-boolean p1, v2, La2/t;->a:Z

    .line 51
    .line 52
    iget-boolean p1, v0, La2/p;->b:Z

    .line 53
    .line 54
    iput-boolean p1, v2, La2/t;->b:Z

    .line 55
    .line 56
    iget-boolean p1, v0, La2/p;->c:Z

    .line 57
    .line 58
    iput-boolean p1, v2, La2/t;->c:Z

    .line 59
    .line 60
    invoke-virtual {v2}, La2/t;->a()La2/u;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    return-object p1
.end method

.method public final c(La2/s;)La2/x;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p1}, La2/d1;->e(La2/s;)V

    .line 6
    .line 7
    .line 8
    iget-object v2, v1, La2/s;->a:Lr1/p;

    .line 9
    .line 10
    iget-object v3, v2, Lr1/p;->o:Ljava/lang/String;

    .line 11
    .line 12
    const-string v4, "audio/raw"

    .line 13
    .line 14
    invoke-static {v3, v4}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/4 v5, -0x1

    .line 19
    const/4 v6, 0x1

    .line 20
    iget-object v8, v1, La2/s;->b:Lr1/d;

    .line 21
    .line 22
    iget-object v9, v2, Lr1/p;->o:Ljava/lang/String;

    .line 23
    .line 24
    iget v10, v2, Lr1/p;->G:I

    .line 25
    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    iget v3, v2, Lr1/p;->I:I

    .line 29
    .line 30
    invoke-static {v3}, Lu1/f0;->D(I)Z

    .line 31
    .line 32
    .line 33
    move-result v11

    .line 34
    invoke-static {v11}, La9/o;->k(Z)V

    .line 35
    .line 36
    .line 37
    invoke-static {v10}, Lu1/f0;->n(I)I

    .line 38
    .line 39
    .line 40
    move-result v11

    .line 41
    invoke-static {v3}, Lu1/f0;->o(I)I

    .line 42
    .line 43
    .line 44
    move-result v12

    .line 45
    mul-int v12, v12, v10

    .line 46
    .line 47
    const/4 v10, 0x0

    .line 48
    const/4 v13, 0x0

    .line 49
    :goto_0
    const/4 v14, 0x0

    .line 50
    goto :goto_2

    .line 51
    :cond_0
    iget-boolean v3, v1, La2/s;->d:Z

    .line 52
    .line 53
    if-eqz v3, :cond_1

    .line 54
    .line 55
    iget-object v11, v0, La2/d1;->c:La2/g1;

    .line 56
    .line 57
    invoke-virtual {v11, v8, v2}, La2/g1;->Q(Lr1/d;Lr1/p;)La2/p;

    .line 58
    .line 59
    .line 60
    move-result-object v11

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    sget-object v11, La2/p;->d:La2/p;

    .line 63
    .line 64
    :goto_1
    if-eqz v3, :cond_2

    .line 65
    .line 66
    iget-boolean v3, v11, La2/p;->a:Z

    .line 67
    .line 68
    if-eqz v3, :cond_2

    .line 69
    .line 70
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    iget-object v3, v2, Lr1/p;->k:Ljava/lang/String;

    .line 74
    .line 75
    invoke-static {v9, v3}, Lr1/e0;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    invoke-static {v10}, Lu1/f0;->n(I)I

    .line 80
    .line 81
    .line 82
    move-result v10

    .line 83
    iget-boolean v11, v11, La2/p;->b:Z

    .line 84
    .line 85
    const/4 v12, -0x1

    .line 86
    const/4 v13, 0x1

    .line 87
    const/4 v14, 0x1

    .line 88
    move/from16 v22, v11

    .line 89
    .line 90
    move v11, v10

    .line 91
    move/from16 v10, v22

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_2
    iget-object v3, v0, La2/d1;->h:La2/g;

    .line 95
    .line 96
    invoke-virtual {v3, v8, v2}, La2/g;->c(Lr1/d;Lr1/p;)Landroid/util/Pair;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    if-eqz v3, :cond_11

    .line 101
    .line 102
    iget-object v10, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v10, Ljava/lang/Integer;

    .line 105
    .line 106
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 107
    .line 108
    .line 109
    move-result v10

    .line 110
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast v3, Ljava/lang/Integer;

    .line 113
    .line 114
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 115
    .line 116
    .line 117
    move-result v11

    .line 118
    move v3, v10

    .line 119
    const/4 v10, 0x0

    .line 120
    const/4 v12, -0x1

    .line 121
    const/4 v13, 0x2

    .line 122
    goto :goto_0

    .line 123
    :goto_2
    const-string v15, "audio/vnd.dts.hd;profile=lbr"

    .line 124
    .line 125
    invoke-static {v9, v15}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v9

    .line 129
    iget v15, v2, Lr1/p;->j:I

    .line 130
    .line 131
    if-eqz v9, :cond_3

    .line 132
    .line 133
    if-ne v15, v5, :cond_3

    .line 134
    .line 135
    const v15, 0xbb800

    .line 136
    .line 137
    .line 138
    :cond_3
    iget v2, v2, Lr1/p;->H:I

    .line 139
    .line 140
    iget v9, v1, La2/s;->h:I

    .line 141
    .line 142
    if-eq v9, v5, :cond_4

    .line 143
    .line 144
    move-object/from16 v21, v8

    .line 145
    .line 146
    move/from16 v20, v10

    .line 147
    .line 148
    move/from16 v16, v11

    .line 149
    .line 150
    move/from16 v17, v14

    .line 151
    .line 152
    goto/16 :goto_d

    .line 153
    .line 154
    :cond_4
    invoke-static {v2, v11, v3}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    .line 155
    .line 156
    .line 157
    move-result v9

    .line 158
    const/4 v7, -0x2

    .line 159
    if-eq v9, v7, :cond_5

    .line 160
    .line 161
    const/4 v7, 0x1

    .line 162
    goto :goto_3

    .line 163
    :cond_5
    const/4 v7, 0x0

    .line 164
    :goto_3
    invoke-static {v7}, La9/o;->t(Z)V

    .line 165
    .line 166
    .line 167
    if-eq v12, v5, :cond_6

    .line 168
    .line 169
    goto :goto_4

    .line 170
    :cond_6
    const/4 v12, 0x1

    .line 171
    :goto_4
    if-eqz v14, :cond_7

    .line 172
    .line 173
    iget v7, v0, La2/d1;->e:F

    .line 174
    .line 175
    float-to-double v4, v7

    .line 176
    goto :goto_5

    .line 177
    :cond_7
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 178
    .line 179
    :goto_5
    iget-object v7, v0, La2/d1;->b:La2/o1;

    .line 180
    .line 181
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    .line 183
    .line 184
    const-wide/32 v18, 0xf4240

    .line 185
    .line 186
    .line 187
    if-eqz v13, :cond_f

    .line 188
    .line 189
    if-eq v13, v6, :cond_d

    .line 190
    .line 191
    const/4 v6, 0x2

    .line 192
    if-ne v13, v6, :cond_c

    .line 193
    .line 194
    const/4 v6, 0x5

    .line 195
    const/16 v7, 0x8

    .line 196
    .line 197
    if-ne v3, v6, :cond_8

    .line 198
    .line 199
    const v6, 0x7a120

    .line 200
    .line 201
    .line 202
    :goto_6
    const/4 v7, -0x1

    .line 203
    goto :goto_7

    .line 204
    :cond_8
    if-ne v3, v7, :cond_9

    .line 205
    .line 206
    const v6, 0xf4240

    .line 207
    .line 208
    .line 209
    goto :goto_6

    .line 210
    :cond_9
    const v6, 0x3d090

    .line 211
    .line 212
    .line 213
    goto :goto_6

    .line 214
    :goto_7
    if-eq v15, v7, :cond_a

    .line 215
    .line 216
    sget-object v7, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    .line 217
    .line 218
    const/16 v0, 0x8

    .line 219
    .line 220
    invoke-static {v15, v0, v7}, Lcom/bumptech/glide/d;->m(IILjava/math/RoundingMode;)I

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    goto :goto_9

    .line 225
    :cond_a
    invoke-static {v3}, Ll2/b;->j(I)I

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    const v7, -0x7fffffff

    .line 230
    .line 231
    .line 232
    if-eq v0, v7, :cond_b

    .line 233
    .line 234
    const/4 v7, 0x1

    .line 235
    goto :goto_8

    .line 236
    :cond_b
    const/4 v7, 0x0

    .line 237
    :goto_8
    invoke-static {v7}, La9/o;->t(Z)V

    .line 238
    .line 239
    .line 240
    :goto_9
    int-to-long v6, v6

    .line 241
    move/from16 v17, v14

    .line 242
    .line 243
    int-to-long v14, v0

    .line 244
    mul-long v6, v6, v14

    .line 245
    .line 246
    div-long v6, v6, v18

    .line 247
    .line 248
    invoke-static {v6, v7}, Ld/b;->h(J)I

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    :goto_a
    move-object/from16 v21, v8

    .line 253
    .line 254
    move/from16 v20, v10

    .line 255
    .line 256
    move/from16 v16, v11

    .line 257
    .line 258
    goto :goto_c

    .line 259
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 260
    .line 261
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 262
    .line 263
    .line 264
    throw v0

    .line 265
    :cond_d
    move/from16 v17, v14

    .line 266
    .line 267
    invoke-static {v3}, Ll2/b;->j(I)I

    .line 268
    .line 269
    .line 270
    move-result v0

    .line 271
    const v6, -0x7fffffff

    .line 272
    .line 273
    .line 274
    if-eq v0, v6, :cond_e

    .line 275
    .line 276
    const/4 v6, 0x1

    .line 277
    goto :goto_b

    .line 278
    :cond_e
    const/4 v6, 0x0

    .line 279
    :goto_b
    invoke-static {v6}, La9/o;->t(Z)V

    .line 280
    .line 281
    .line 282
    const v6, 0x2faf080

    .line 283
    .line 284
    .line 285
    int-to-long v6, v6

    .line 286
    int-to-long v14, v0

    .line 287
    mul-long v6, v6, v14

    .line 288
    .line 289
    div-long v6, v6, v18

    .line 290
    .line 291
    invoke-static {v6, v7}, Ld/b;->h(J)I

    .line 292
    .line 293
    .line 294
    move-result v0

    .line 295
    goto :goto_a

    .line 296
    :cond_f
    move/from16 v17, v14

    .line 297
    .line 298
    mul-int/lit8 v0, v9, 0x4

    .line 299
    .line 300
    const v6, 0x3d090

    .line 301
    .line 302
    .line 303
    int-to-long v6, v6

    .line 304
    int-to-long v14, v2

    .line 305
    mul-long v6, v6, v14

    .line 306
    .line 307
    move/from16 v20, v10

    .line 308
    .line 309
    move/from16 v16, v11

    .line 310
    .line 311
    int-to-long v10, v12

    .line 312
    mul-long v6, v6, v10

    .line 313
    .line 314
    div-long v6, v6, v18

    .line 315
    .line 316
    invoke-static {v6, v7}, Ld/b;->h(J)I

    .line 317
    .line 318
    .line 319
    move-result v6

    .line 320
    const v7, 0xb71b0

    .line 321
    .line 322
    .line 323
    move-object/from16 v21, v8

    .line 324
    .line 325
    int-to-long v7, v7

    .line 326
    mul-long v7, v7, v14

    .line 327
    .line 328
    mul-long v7, v7, v10

    .line 329
    .line 330
    div-long v7, v7, v18

    .line 331
    .line 332
    invoke-static {v7, v8}, Ld/b;->h(J)I

    .line 333
    .line 334
    .line 335
    move-result v7

    .line 336
    invoke-static {v0, v6, v7}, Lu1/f0;->g(III)I

    .line 337
    .line 338
    .line 339
    move-result v0

    .line 340
    :goto_c
    int-to-double v6, v0

    .line 341
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    .line 342
    .line 343
    .line 344
    mul-double v6, v6, v4

    .line 345
    .line 346
    double-to-int v0, v6

    .line 347
    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    .line 348
    .line 349
    .line 350
    move-result v0

    .line 351
    add-int/2addr v0, v12

    .line 352
    const/4 v4, 0x1

    .line 353
    sub-int/2addr v0, v4

    .line 354
    div-int/2addr v0, v12

    .line 355
    mul-int v9, v0, v12

    .line 356
    .line 357
    :goto_d
    new-instance v0, La2/w;

    .line 358
    .line 359
    invoke-direct {v0}, La2/w;-><init>()V

    .line 360
    .line 361
    .line 362
    iput v2, v0, La2/w;->b:I

    .line 363
    .line 364
    move/from16 v11, v16

    .line 365
    .line 366
    iput v11, v0, La2/w;->c:I

    .line 367
    .line 368
    iput v3, v0, La2/w;->a:I

    .line 369
    .line 370
    iput v9, v0, La2/w;->f:I

    .line 371
    .line 372
    iget v2, v1, La2/s;->e:I

    .line 373
    .line 374
    iput v2, v0, La2/w;->h:I

    .line 375
    .line 376
    move-object/from16 v2, v21

    .line 377
    .line 378
    iput-object v2, v0, La2/w;->g:Lr1/d;

    .line 379
    .line 380
    const/4 v2, 0x1

    .line 381
    if-ne v13, v2, :cond_10

    .line 382
    .line 383
    const/4 v6, 0x1

    .line 384
    goto :goto_e

    .line 385
    :cond_10
    const/4 v6, 0x0

    .line 386
    :goto_e
    iput-boolean v6, v0, La2/w;->e:Z

    .line 387
    .line 388
    iget-boolean v2, v1, La2/s;->g:Z

    .line 389
    .line 390
    iput-boolean v2, v0, La2/w;->d:Z

    .line 391
    .line 392
    move/from16 v7, v17

    .line 393
    .line 394
    iput-boolean v7, v0, La2/w;->j:Z

    .line 395
    .line 396
    move/from16 v7, v20

    .line 397
    .line 398
    iput-boolean v7, v0, La2/w;->k:Z

    .line 399
    .line 400
    iget v1, v1, La2/s;->f:I

    .line 401
    .line 402
    iput v1, v0, La2/w;->i:I

    .line 403
    .line 404
    new-instance v1, La2/x;

    .line 405
    .line 406
    invoke-direct {v1, v0}, La2/x;-><init>(La2/w;)V

    .line 407
    .line 408
    .line 409
    return-object v1

    .line 410
    :cond_11
    new-instance v0, La2/r;

    .line 411
    .line 412
    new-instance v1, Ljava/lang/StringBuilder;

    .line 413
    .line 414
    const-string v3, "Unable to configure passthrough for: "

    .line 415
    .line 416
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v1

    .line 426
    invoke-direct {v0, v1}, La2/r;-><init>(Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    goto :goto_10

    .line 430
    :goto_f
    throw v0

    .line 431
    :goto_10
    goto :goto_f
.end method

.method public final d()V
    .locals 6

    .line 1
    iget-object v0, p0, La2/d1;->f:Lu1/m;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lu1/m;->d()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, La2/d1;->i:La2/l;

    .line 9
    .line 10
    if-eqz v0, :cond_6

    .line 11
    .line 12
    iget-boolean v1, v0, La2/l;->k:Z

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    const/4 v1, 0x0

    .line 18
    iput-object v1, v0, La2/l;->h:La2/g;

    .line 19
    .line 20
    iget-object v2, v0, La2/l;->a:Landroid/content/Context;

    .line 21
    .line 22
    invoke-static {v2}, Ls1/g;->v(Landroid/content/Context;)Landroid/media/AudioManager;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    iget-object v4, v0, La2/l;->d:La2/i;

    .line 27
    .line 28
    invoke-static {v3, v4}, La2/a;->n(Landroid/media/AudioManager;La2/i;)V

    .line 29
    .line 30
    .line 31
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 32
    .line 33
    const/16 v4, 0x20

    .line 34
    .line 35
    if-lt v3, v4, :cond_4

    .line 36
    .line 37
    iget-object v3, v0, La2/l;->g:Lj2/d;

    .line 38
    .line 39
    if-eqz v3, :cond_4

    .line 40
    .line 41
    iget-object v4, v3, Lj2/d;->a:Landroid/media/Spatializer;

    .line 42
    .line 43
    if-eqz v4, :cond_3

    .line 44
    .line 45
    iget-object v5, v3, Lj2/d;->d:Lj2/c;

    .line 46
    .line 47
    if-eqz v5, :cond_3

    .line 48
    .line 49
    iget-object v3, v3, Lj2/d;->c:Landroid/os/Handler;

    .line 50
    .line 51
    if-nez v3, :cond_2

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    invoke-static {v4, v5}, Lj2/b;->g(Landroid/media/Spatializer;Lj2/c;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    :cond_3
    :goto_0
    iput-object v1, v0, La2/l;->g:Lj2/d;

    .line 61
    .line 62
    :cond_4
    iget-object v1, v0, La2/l;->e:La2/k;

    .line 63
    .line 64
    invoke-virtual {v2, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 65
    .line 66
    .line 67
    iget-object v1, v0, La2/l;->f:La2/j;

    .line 68
    .line 69
    if-eqz v1, :cond_5

    .line 70
    .line 71
    iget-object v2, v1, La2/j;->a:Landroid/content/ContentResolver;

    .line 72
    .line 73
    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 74
    .line 75
    .line 76
    :cond_5
    const/4 v1, 0x0

    .line 77
    iput-boolean v1, v0, La2/l;->k:Z

    .line 78
    .line 79
    :cond_6
    :goto_1
    return-void
.end method

.method public final e(La2/s;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0}, La2/d1;->f()V

    .line 4
    .line 5
    .line 6
    iget-object v2, p0, La2/d1;->i:La2/l;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    const-string v4, "android.media.action.HDMI_AUDIO_PLUG"

    .line 10
    .line 11
    iget-object v5, p1, La2/s;->b:Lr1/d;

    .line 12
    .line 13
    if-nez v2, :cond_3

    .line 14
    .line 15
    iget-object v6, p0, La2/d1;->a:Landroid/content/Context;

    .line 16
    .line 17
    if-eqz v6, :cond_3

    .line 18
    .line 19
    new-instance v2, La2/l;

    .line 20
    .line 21
    new-instance v7, La1/d;

    .line 22
    .line 23
    invoke-direct {v7, v1, p0}, La1/d;-><init>(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p1, La2/s;->c:Landroid/media/AudioDeviceInfo;

    .line 27
    .line 28
    invoke-direct {v2, v6, v7, v5, p1}, La2/l;-><init>(Landroid/content/Context;La1/d;Lr1/d;Landroid/media/AudioDeviceInfo;)V

    .line 29
    .line 30
    .line 31
    iput-object v2, p0, La2/d1;->i:La2/l;

    .line 32
    .line 33
    iget-boolean p1, v2, La2/l;->k:Z

    .line 34
    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    iget-object p1, v2, La2/l;->h:La2/g;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iput-boolean v1, v2, La2/l;->k:Z

    .line 44
    .line 45
    iget-object p1, v2, La2/l;->f:La2/j;

    .line 46
    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    iget-object v1, p1, La2/j;->a:Landroid/content/ContentResolver;

    .line 50
    .line 51
    iget-object v5, p1, La2/j;->b:Landroid/net/Uri;

    .line 52
    .line 53
    invoke-virtual {v1, v5, v0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    iget-object p1, v2, La2/l;->a:Landroid/content/Context;

    .line 57
    .line 58
    invoke-static {p1}, Ls1/g;->v(Landroid/content/Context;)Landroid/media/AudioManager;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    iget-object v5, v2, La2/l;->c:Landroid/os/Handler;

    .line 63
    .line 64
    iget-object v6, v2, La2/l;->d:La2/i;

    .line 65
    .line 66
    invoke-static {v1, v6, v5}, La2/a;->o(Landroid/media/AudioManager;La2/i;Landroid/os/Handler;)V

    .line 67
    .line 68
    .line 69
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 70
    .line 71
    const/16 v6, 0x20

    .line 72
    .line 73
    if-lt v1, v6, :cond_2

    .line 74
    .line 75
    iget-object v1, v2, La2/l;->g:Lj2/d;

    .line 76
    .line 77
    if-nez v1, :cond_2

    .line 78
    .line 79
    invoke-static {p1}, Lu1/f0;->F(Landroid/content/Context;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    new-instance v6, Lj2/d;

    .line 84
    .line 85
    new-instance v7, La2/h;

    .line 86
    .line 87
    invoke-direct {v7, v0, v2}, La2/h;-><init>(ILjava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-direct {v6, p1, v7, v0}, Lj2/d;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Boolean;)V

    .line 95
    .line 96
    .line 97
    iput-object v6, v2, La2/l;->g:Lj2/d;

    .line 98
    .line 99
    :cond_2
    new-instance v0, Landroid/content/IntentFilter;

    .line 100
    .line 101
    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget-object v1, v2, La2/l;->e:La2/k;

    .line 105
    .line 106
    invoke-virtual {p1, v1, v0, v3, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v2}, La2/l;->a()Ljava/util/List;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    iget-object v3, v2, La2/l;->j:Lr1/d;

    .line 115
    .line 116
    iget-object v4, v2, La2/l;->i:Landroid/media/AudioDeviceInfo;

    .line 117
    .line 118
    invoke-static {p1, v0, v3, v4, v1}, La2/g;->b(Landroid/content/Context;Landroid/content/Intent;Lr1/d;Landroid/media/AudioDeviceInfo;Ljava/util/List;)La2/g;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    iput-object p1, v2, La2/l;->h:La2/g;

    .line 123
    .line 124
    :goto_0
    iput-object p1, p0, La2/d1;->h:La2/g;

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_3
    if-eqz v2, :cond_7

    .line 128
    .line 129
    iget-object p1, p1, La2/s;->c:Landroid/media/AudioDeviceInfo;

    .line 130
    .line 131
    if-eqz p1, :cond_5

    .line 132
    .line 133
    iget-object v0, v2, La2/l;->i:Landroid/media/AudioDeviceInfo;

    .line 134
    .line 135
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-eqz v0, :cond_4

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_4
    iput-object p1, v2, La2/l;->i:Landroid/media/AudioDeviceInfo;

    .line 143
    .line 144
    iget-object v0, v2, La2/l;->j:Lr1/d;

    .line 145
    .line 146
    invoke-virtual {v2}, La2/l;->a()Ljava/util/List;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    sget-object v6, La2/g;->e:Lu7/y0;

    .line 151
    .line 152
    new-instance v6, Landroid/content/IntentFilter;

    .line 153
    .line 154
    invoke-direct {v6, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    iget-object v7, v2, La2/l;->a:Landroid/content/Context;

    .line 158
    .line 159
    invoke-virtual {v7, v3, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 160
    .line 161
    .line 162
    move-result-object v6

    .line 163
    invoke-static {v7, v6, v0, p1, v1}, La2/g;->b(Landroid/content/Context;Landroid/content/Intent;Lr1/d;Landroid/media/AudioDeviceInfo;Ljava/util/List;)La2/g;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-virtual {v2, p1}, La2/l;->b(La2/g;)V

    .line 168
    .line 169
    .line 170
    :cond_5
    :goto_1
    iget-object p1, p0, La2/d1;->i:La2/l;

    .line 171
    .line 172
    iget-object v0, p1, La2/l;->j:Lr1/d;

    .line 173
    .line 174
    invoke-static {v5, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    if-eqz v0, :cond_6

    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_6
    iput-object v5, p1, La2/l;->j:Lr1/d;

    .line 182
    .line 183
    iget-object v0, p1, La2/l;->i:Landroid/media/AudioDeviceInfo;

    .line 184
    .line 185
    invoke-virtual {p1}, La2/l;->a()Ljava/util/List;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    sget-object v2, La2/g;->e:Lu7/y0;

    .line 190
    .line 191
    new-instance v2, Landroid/content/IntentFilter;

    .line 192
    .line 193
    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    iget-object v4, p1, La2/l;->a:Landroid/content/Context;

    .line 197
    .line 198
    invoke-virtual {v4, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    invoke-static {v4, v2, v5, v0, v1}, La2/g;->b(Landroid/content/Context;Landroid/content/Intent;Lr1/d;Landroid/media/AudioDeviceInfo;Ljava/util/List;)La2/g;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-virtual {p1, v0}, La2/l;->b(La2/g;)V

    .line 207
    .line 208
    .line 209
    :cond_7
    :goto_2
    iget-object p1, p0, La2/d1;->h:La2/g;

    .line 210
    .line 211
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 212
    .line 213
    .line 214
    return-void
.end method

.method public final f()V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, La2/d1;->a:Landroid/content/Context;

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    iget-object v3, p0, La2/d1;->j:Landroid/os/Looper;

    .line 13
    .line 14
    if-eqz v3, :cond_2

    .line 15
    .line 16
    if-ne v3, v2, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v4, 0x0

    .line 20
    goto :goto_1

    .line 21
    :cond_2
    :goto_0
    const/4 v4, 0x1

    .line 22
    :goto_1
    const-string v5, "null"

    .line 23
    .line 24
    if-nez v3, :cond_3

    .line 25
    .line 26
    move-object v3, v5

    .line 27
    goto :goto_2

    .line 28
    :cond_3
    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    :goto_2
    if-nez v2, :cond_4

    .line 37
    .line 38
    goto :goto_3

    .line 39
    :cond_4
    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    :goto_3
    if-eqz v4, :cond_5

    .line 48
    .line 49
    iput-object v2, p0, La2/d1;->j:Landroid/os/Looper;

    .line 50
    .line 51
    return-void

    .line 52
    :cond_5
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    const/4 v4, 0x2

    .line 55
    new-array v4, v4, [Ljava/lang/Object;

    .line 56
    .line 57
    aput-object v3, v4, v1

    .line 58
    .line 59
    aput-object v5, v4, v0

    .line 60
    .line 61
    const-string v0, "AudioTrackAudioOutputProvider accessed on multiple threads: %s and %s"

    .line 62
    .line 63
    invoke-static {v0, v4}, Landroid/support/v4/media/session/b;->y(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw v2
.end method
