.class public final synthetic La2/u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu1/j;
.implements Lb8/o;
.implements Lec/d;
.implements Lcom/android/apksig/util/RunnablesExecutor;
.implements Lz2/g;
.implements Lt7/d;
.implements Lu1/f;
.implements Ly9/a;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, La2/u0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, La2/u0;->a:I

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    move-object/from16 v0, p1

    .line 9
    .line 10
    check-cast v0, La2/h1;

    .line 11
    .line 12
    iget-object v0, v0, La2/h1;->a:La2/n1;

    .line 13
    .line 14
    iget-object v0, v0, La2/n1;->n:La1/i;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, v0, La1/i;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, La2/q1;

    .line 21
    .line 22
    iget-object v2, v0, Ly1/a;->a:Ljava/lang/Object;

    .line 23
    .line 24
    monitor-enter v2

    .line 25
    :try_start_0
    iget-object v0, v0, Ly1/a;->s:Lh2/n;

    .line 26
    .line 27
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0}, Lh2/n;->n()V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    throw v0

    .line 37
    :cond_0
    :goto_0
    return-void

    .line 38
    :pswitch_0
    move-object/from16 v0, p1

    .line 39
    .line 40
    check-cast v0, La2/i1;

    .line 41
    .line 42
    iget-object v2, v0, La2/i1;->b:La2/n1;

    .line 43
    .line 44
    iget-object v3, v2, La2/n1;->j:La2/i1;

    .line 45
    .line 46
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    iget-boolean v0, v2, La2/n1;->M:Z

    .line 54
    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    const/4 v0, 0x1

    .line 58
    iput-boolean v0, v2, La2/n1;->N:Z

    .line 59
    .line 60
    :cond_2
    :goto_1
    return-void

    .line 61
    :pswitch_1
    move-object/from16 v0, p1

    .line 62
    .line 63
    check-cast v0, La2/i1;

    .line 64
    .line 65
    iget-object v2, v0, La2/i1;->b:La2/n1;

    .line 66
    .line 67
    iget-object v3, v2, La2/n1;->j:La2/i1;

    .line 68
    .line 69
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_3

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_3
    iget-object v0, v2, La2/n1;->n:La1/i;

    .line 77
    .line 78
    if-eqz v0, :cond_4

    .line 79
    .line 80
    iget-boolean v2, v2, La2/n1;->O:Z

    .line 81
    .line 82
    if-eqz v2, :cond_4

    .line 83
    .line 84
    iget-object v0, v0, La1/i;->b:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v0, La2/q1;

    .line 87
    .line 88
    iget-object v0, v0, Ld2/u;->L:Ly1/b0;

    .line 89
    .line 90
    if-eqz v0, :cond_4

    .line 91
    .line 92
    invoke-virtual {v0}, Ly1/b0;->a()V

    .line 93
    .line 94
    .line 95
    :cond_4
    :goto_2
    return-void

    .line 96
    :pswitch_2
    move-object/from16 v0, p1

    .line 97
    .line 98
    check-cast v0, La2/i1;

    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    sget-object v2, La2/n1;->c0:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 104
    .line 105
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    .line 106
    .line 107
    .line 108
    iget-object v2, v0, La2/i1;->b:La2/n1;

    .line 109
    .line 110
    iget-object v2, v2, La2/n1;->n:La1/i;

    .line 111
    .line 112
    if-eqz v2, :cond_5

    .line 113
    .line 114
    new-instance v3, La2/k0;

    .line 115
    .line 116
    iget-object v0, v0, La2/i1;->a:La2/x;

    .line 117
    .line 118
    iget v0, v0, La2/x;->a:I

    .line 119
    .line 120
    invoke-direct {v3}, La2/k0;-><init>()V

    .line 121
    .line 122
    .line 123
    iget-object v0, v2, La1/i;->b:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast v0, La2/q1;

    .line 126
    .line 127
    iget-object v0, v0, La2/q1;->A1:La2/j0;

    .line 128
    .line 129
    iget-object v2, v0, La2/j0;->b:Landroid/os/Handler;

    .line 130
    .line 131
    if-eqz v2, :cond_5

    .line 132
    .line 133
    new-instance v4, La2/z;

    .line 134
    .line 135
    const/4 v5, 0x1

    .line 136
    invoke-direct {v4, v0, v3, v5}, La2/z;-><init>(La2/j0;La2/k0;I)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 140
    .line 141
    .line 142
    :cond_5
    return-void

    .line 143
    :pswitch_3
    move-object/from16 v0, p1

    .line 144
    .line 145
    check-cast v0, La2/i1;

    .line 146
    .line 147
    iget-object v2, v0, La2/i1;->b:La2/n1;

    .line 148
    .line 149
    iget-object v3, v2, La2/n1;->j:La2/i1;

    .line 150
    .line 151
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-nez v0, :cond_6

    .line 156
    .line 157
    goto :goto_4

    .line 158
    :cond_6
    iget-object v0, v2, La2/n1;->n:La1/i;

    .line 159
    .line 160
    if-eqz v0, :cond_8

    .line 161
    .line 162
    iget-object v0, v2, La2/n1;->p:La2/k1;

    .line 163
    .line 164
    iget v3, v0, La2/k1;->b:I

    .line 165
    .line 166
    const/4 v4, -0x1

    .line 167
    if-eq v3, v4, :cond_7

    .line 168
    .line 169
    iget-object v0, v0, La2/k1;->e:Ljava/lang/Object;

    .line 170
    .line 171
    check-cast v0, La2/x;

    .line 172
    .line 173
    iget v0, v0, La2/x;->f:I

    .line 174
    .line 175
    div-int/2addr v0, v3

    .line 176
    int-to-long v3, v0

    .line 177
    iget-object v0, v2, La2/n1;->t:La2/a1;

    .line 178
    .line 179
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    .line 181
    .line 182
    iget-object v0, v0, La2/a1;->a:Landroid/media/AudioTrack;

    .line 183
    .line 184
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getSampleRate()I

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    invoke-static {v0, v3, v4}, Lu1/f0;->K(IJ)J

    .line 189
    .line 190
    .line 191
    move-result-wide v3

    .line 192
    goto :goto_3

    .line 193
    :cond_7
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 199
    .line 200
    .line 201
    move-result-wide v5

    .line 202
    iget-wide v7, v2, La2/n1;->W:J

    .line 203
    .line 204
    sub-long v14, v5, v7

    .line 205
    .line 206
    iget-object v0, v2, La2/n1;->n:La1/i;

    .line 207
    .line 208
    iget-object v2, v2, La2/n1;->p:La2/k1;

    .line 209
    .line 210
    iget-object v2, v2, La2/k1;->e:Ljava/lang/Object;

    .line 211
    .line 212
    check-cast v2, La2/x;

    .line 213
    .line 214
    iget v11, v2, La2/x;->f:I

    .line 215
    .line 216
    invoke-static {v3, v4}, Lu1/f0;->R(J)J

    .line 217
    .line 218
    .line 219
    move-result-wide v12

    .line 220
    iget-object v0, v0, La1/i;->b:Ljava/lang/Object;

    .line 221
    .line 222
    check-cast v0, La2/q1;

    .line 223
    .line 224
    iget-object v10, v0, La2/q1;->A1:La2/j0;

    .line 225
    .line 226
    iget-object v0, v10, La2/j0;->b:Landroid/os/Handler;

    .line 227
    .line 228
    if-eqz v0, :cond_8

    .line 229
    .line 230
    new-instance v2, La2/i0;

    .line 231
    .line 232
    const/16 v16, 0x0

    .line 233
    .line 234
    move-object v9, v2

    .line 235
    invoke-direct/range {v9 .. v16}, La2/i0;-><init>(Ljava/lang/Object;IJJI)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 239
    .line 240
    .line 241
    :cond_8
    :goto_4
    return-void

    .line 242
    nop

    .line 243
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lf2/a1;

    .line 2
    .line 3
    iget-object p1, p1, Lf2/a1;->b:Lb2/f;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, La2/u0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    check-cast p1, Lf3/s;

    .line 7
    .line 8
    return-object p1

    .line 9
    :pswitch_1
    check-cast p1, Lr1/r0;

    .line 10
    .line 11
    iget p1, p1, Lr1/r0;->c:I

    .line 12
    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    :pswitch_2
    check-cast p1, Lf2/a0;

    .line 19
    .line 20
    invoke-interface {p1}, Lf2/a0;->n()Lf2/j1;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object p1, p1, Lf2/j1;->b:Lu7/y0;

    .line 25
    .line 26
    new-instance v0, La2/u0;

    .line 27
    .line 28
    const/16 v1, 0x16

    .line 29
    .line 30
    invoke-direct {v0, v1}, La2/u0;-><init>(I)V

    .line 31
    .line 32
    .line 33
    invoke-static {p1, v0}, Lu7/q;->t(Ljava/util/List;Lt7/d;)Ljava/util/AbstractList;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p1}, Lu7/g0;->m(Ljava/util/Collection;)Lu7/g0;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    return-object p1

    .line 42
    :pswitch_3
    check-cast p1, Ll2/o;

    .line 43
    .line 44
    invoke-interface {p1}, Ll2/o;->b()Ll2/o;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    return-object p1

    .line 57
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b(IIIII)Z
    .locals 3

    .line 1
    const/16 v0, 0x43

    const/4 v1, 0x2

    const/16 v2, 0x4d

    if-ne p2, v0, :cond_0

    const/16 v0, 0x4f

    if-ne p3, v0, :cond_0

    if-ne p4, v2, :cond_0

    if-eq p5, v2, :cond_1

    if-eq p1, v1, :cond_1

    :cond_0
    if-ne p2, v2, :cond_2

    const/16 p2, 0x4c

    if-ne p3, p2, :cond_2

    if-ne p4, p2, :cond_2

    const/16 p2, 0x54

    if-eq p5, p2, :cond_1

    if-ne p1, v1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, La2/u0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayDeque;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 9
    .line 10
    .line 11
    return-object v0

    .line 12
    :pswitch_0
    new-instance v0, Ljava/util/TreeSet;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 15
    .line 16
    .line 17
    return-object v0

    .line 18
    :pswitch_1
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 21
    .line 22
    .line 23
    return-object v0

    .line 24
    :pswitch_2
    new-instance v0, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    return-object v0

    .line 30
    :pswitch_3
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    .line 33
    .line 34
    .line 35
    return-object v0

    .line 36
    :pswitch_4
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 37
    .line 38
    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 39
    .line 40
    .line 41
    return-object v0

    .line 42
    :pswitch_5
    new-instance v0, Ljava/util/TreeMap;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 45
    .line 46
    .line 47
    return-object v0

    .line 48
    :pswitch_6
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 49
    .line 50
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 51
    .line 52
    .line 53
    return-object v0

    .line 54
    :pswitch_7
    new-instance v0, Lb8/n;

    .line 55
    .line 56
    const/4 v1, 0x1

    .line 57
    invoke-direct {v0, v1}, Lb8/n;-><init>(Z)V

    .line 58
    .line 59
    .line 60
    return-object v0

    .line 61
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public d([B)Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, La2/u0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    const/4 v0, 0x2

    .line 7
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :pswitch_1
    const/4 v0, 0x2

    .line 13
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    :pswitch_2
    const/4 v0, 0x2

    .line 19
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    :pswitch_3
    const/4 v0, 0x2

    .line 25
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public execute(Lcom/android/apksig/util/RunnablesProvider;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/apksig/util/a;->a(Lcom/android/apksig/util/RunnablesProvider;)V

    return-void
.end method

.method public g(Lmc/b;)V
    .locals 10

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const-string v1, "reboot:"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    iget v4, p0, La2/u0;->a:I

    .line 8
    .line 9
    sparse-switch v4, :sswitch_data_0

    .line 10
    .line 11
    .line 12
    sget-object v0, Lfa/a;->b:Lfa/e0;

    .line 13
    .line 14
    invoke-virtual {v0}, Lfa/e0;->c()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    const-string v0, "adb\u5df2\u65ad\u5f00\uff0c\u8bf7\u91cd\u65b0\u8fde\u63a5"

    .line 21
    .line 22
    invoke-static {v0, p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, v0, Lfa/e0;->c:Lz9/a;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lz9/a;->J(Ljava/lang/String;)Lz9/d;

    .line 29
    .line 30
    .line 31
    const-wide/16 v0, 0x7d0

    .line 32
    .line 33
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void

    .line 40
    :sswitch_0
    sget-object v0, Lfa/l;->a:Lfa/m;

    .line 41
    .line 42
    invoke-virtual {v0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_1

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lfa/m;->O(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    sget-object v0, Lfa/h;->a:Lfa/j;

    .line 53
    .line 54
    invoke-virtual {v0}, Lfa/j;->i()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_2

    .line 59
    .line 60
    sget-object v1, Lu9/d;->a:Ljava/util/concurrent/ExecutorService;

    .line 61
    .line 62
    new-instance v2, Lfa/f;

    .line 63
    .line 64
    invoke-direct {v2, v0, v3}, Lfa/f;-><init>(Lfa/j;I)V

    .line 65
    .line 66
    .line 67
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    new-array v0, v3, [Ljava/lang/String;

    .line 72
    .line 73
    const-string v1, "reboot"

    .line 74
    .line 75
    aput-object v1, v0, v2

    .line 76
    .line 77
    invoke-static {v0}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lv9/e;->l0()Landroidx/room/s;

    .line 82
    .line 83
    .line 84
    :goto_1
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :sswitch_1
    :try_start_0
    invoke-static {}, Lq4/a;->v()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {p1, v0}, Lmc/b;->f(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :catch_0
    move-exception v0

    .line 100
    invoke-virtual {p1, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 101
    .line 102
    .line 103
    :goto_2
    return-void

    .line 104
    :sswitch_2
    sget-object v1, Lcom/yunpan/appmanage/util/e0;->a:Lcom/yunpan/appmanage/util/d0;

    .line 105
    .line 106
    invoke-virtual {v1}, Lcom/yunpan/appmanage/util/d0;->c()Ljava/util/ArrayList;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    if-ge v2, v4, :cond_5

    .line 115
    .line 116
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    check-cast v4, Lx9/n5;

    .line 121
    .line 122
    iget v5, v4, Lx9/n5;->a:I

    .line 123
    .line 124
    const/4 v6, 0x2

    .line 125
    if-ne v5, v6, :cond_4

    .line 126
    .line 127
    invoke-static {v4}, Lqf/c;->j0(Lx9/n5;)Z

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    if-eqz v5, :cond_3

    .line 132
    .line 133
    invoke-virtual {p1, v4}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 137
    .line 138
    .line 139
    goto :goto_4

    .line 140
    :cond_3
    iput-object v0, v4, Lx9/n5;->k:Ljava/lang/String;

    .line 141
    .line 142
    invoke-static {v4}, Lqf/c;->K(Lx9/n5;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    sget-object v6, Lcom/yunpan/appmanage/util/e0;->a:Lcom/yunpan/appmanage/util/d0;

    .line 147
    .line 148
    invoke-virtual {v6, v2, v4}, Lcom/yunpan/appmanage/util/d0;->h(ILx9/n5;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 152
    .line 153
    .line 154
    move-result v5

    .line 155
    if-eqz v5, :cond_4

    .line 156
    .line 157
    iget-object v5, v4, Lx9/n5;->k:Ljava/lang/String;

    .line 158
    .line 159
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 160
    .line 161
    .line 162
    move-result v5

    .line 163
    if-nez v5, :cond_4

    .line 164
    .line 165
    invoke-virtual {p1, v4}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 169
    .line 170
    .line 171
    goto :goto_4

    .line 172
    :cond_4
    add-int/2addr v2, v3

    .line 173
    goto :goto_3

    .line 174
    :cond_5
    new-instance v0, Ljava/lang/Exception;

    .line 175
    .line 176
    const-string v1, "\u6ca1\u6709123\u7f51\u76d8\u8d26\u53f7"

    .line 177
    .line 178
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 185
    .line 186
    .line 187
    :goto_4
    return-void

    .line 188
    :sswitch_3
    const-string v1, "access_token"

    .line 189
    .line 190
    const-string v4, "refresh_token"

    .line 191
    .line 192
    sget-object v5, Lcom/yunpan/appmanage/util/e0;->a:Lcom/yunpan/appmanage/util/d0;

    .line 193
    .line 194
    invoke-virtual {v5}, Lcom/yunpan/appmanage/util/d0;->c()Ljava/util/ArrayList;

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    :goto_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 199
    .line 200
    .line 201
    move-result v6

    .line 202
    if-ge v2, v6, :cond_9

    .line 203
    .line 204
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v6

    .line 208
    check-cast v6, Lx9/n5;

    .line 209
    .line 210
    iget v7, v6, Lx9/n5;->a:I

    .line 211
    .line 212
    const/16 v8, 0x15

    .line 213
    .line 214
    if-ne v7, v8, :cond_8

    .line 215
    .line 216
    invoke-static {v6}, Ls1/g;->k0(Lx9/n5;)Z

    .line 217
    .line 218
    .line 219
    move-result v7

    .line 220
    if-eqz v7, :cond_6

    .line 221
    .line 222
    invoke-virtual {p1, v6}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 226
    .line 227
    .line 228
    goto/16 :goto_7

    .line 229
    .line 230
    :cond_6
    iput-object v0, v6, Lx9/n5;->r:Ljava/lang/String;

    .line 231
    .line 232
    :try_start_1
    new-instance v7, Lz7/s;

    .line 233
    .line 234
    invoke-direct {v7}, Lz7/s;-><init>()V

    .line 235
    .line 236
    .line 237
    const-string v8, "client_id"

    .line 238
    .line 239
    const-string v9, "aMe-8VSlkrbQXpUR"

    .line 240
    .line 241
    invoke-virtual {v7, v8, v9}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    const-string v8, "grant_type"

    .line 245
    .line 246
    invoke-virtual {v7, v8, v4}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    iget-object v8, v6, Lx9/n5;->s:Ljava/lang/String;

    .line 250
    .line 251
    invoke-virtual {v7, v4, v8}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    const-string v8, "https://account.guangyapan.com/v1/auth/token"

    .line 255
    .line 256
    invoke-virtual {v7}, Lz7/p;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v7

    .line 260
    invoke-static {v8, v7}, Ls1/g;->G(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v7

    .line 264
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 265
    .line 266
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v7, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 270
    .line 271
    .line 272
    move-result v8

    .line 273
    if-eqz v8, :cond_7

    .line 274
    .line 275
    invoke-static {v7}, Ld/b;->b0(Ljava/lang/String;)Lz7/p;

    .line 276
    .line 277
    .line 278
    move-result-object v7

    .line 279
    invoke-virtual {v7}, Lz7/p;->g()Lz7/s;

    .line 280
    .line 281
    .line 282
    move-result-object v7

    .line 283
    invoke-virtual {v7, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 284
    .line 285
    .line 286
    move-result-object v8

    .line 287
    invoke-virtual {v8}, Lz7/p;->i()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v8

    .line 291
    iput-object v8, v6, Lx9/n5;->r:Ljava/lang/String;

    .line 292
    .line 293
    invoke-virtual {v7, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 294
    .line 295
    .line 296
    move-result-object v8

    .line 297
    invoke-virtual {v8}, Lz7/p;->i()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v8

    .line 301
    iput-object v8, v6, Lx9/n5;->s:Ljava/lang/String;

    .line 302
    .line 303
    const-string v8, "sub"

    .line 304
    .line 305
    invoke-virtual {v7, v8}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 306
    .line 307
    .line 308
    move-result-object v7

    .line 309
    invoke-virtual {v7}, Lz7/p;->i()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v7

    .line 313
    iput-object v7, v6, Lx9/n5;->t:Ljava/lang/String;

    .line 314
    .line 315
    goto :goto_6

    .line 316
    :catch_1
    nop

    .line 317
    goto :goto_6

    .line 318
    :cond_7
    new-instance v7, Ljava/lang/Exception;

    .line 319
    .line 320
    const-string v8, "\u8bf7\u6c42\u5931\u8d25"

    .line 321
    .line 322
    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    throw v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 326
    :goto_6
    iget-object v7, v6, Lx9/n5;->r:Ljava/lang/String;

    .line 327
    .line 328
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 329
    .line 330
    .line 331
    move-result v7

    .line 332
    if-nez v7, :cond_8

    .line 333
    .line 334
    sget-object v0, Lcom/yunpan/appmanage/util/e0;->a:Lcom/yunpan/appmanage/util/d0;

    .line 335
    .line 336
    invoke-virtual {v0, v2, v6}, Lcom/yunpan/appmanage/util/d0;->h(ILx9/n5;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {p1, v6}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 343
    .line 344
    .line 345
    goto :goto_7

    .line 346
    :cond_8
    add-int/2addr v2, v3

    .line 347
    goto/16 :goto_5

    .line 348
    .line 349
    :cond_9
    new-instance v0, Ljava/lang/Exception;

    .line 350
    .line 351
    const-string v1, "\u6ca1\u6709\u5149\u9e2d\u7f51\u76d8\u8d26\u53f7"

    .line 352
    .line 353
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {p1, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 360
    .line 361
    .line 362
    :goto_7
    return-void

    .line 363
    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_3
        0xf -> :sswitch_2
        0x11 -> :sswitch_1
        0x1a -> :sswitch_0
    .end sparse-switch
.end method
