.class public final Lce/c1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static j:I


# instance fields
.field public a:I

.field public b:I

.field public final c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Lce/y0;

.field public g:Z

.field public h:Z

.field public i:I


# direct methods
.method public constructor <init>(Lce/y0;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "?????"

    .line 5
    .line 6
    iput-object v0, p0, Lce/c1;->d:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p1, p0, Lce/c1;->f:Lce/y0;

    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lce/c1;->c:Ljava/lang/String;

    .line 15
    .line 16
    if-eqz p3, :cond_0

    .line 17
    .line 18
    const-string p1, "??"

    .line 19
    .line 20
    invoke-virtual {p3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    iput-object p3, p0, Lce/c1;->d:Ljava/lang/String;

    .line 27
    .line 28
    :cond_0
    iget-object p1, p0, Lce/c1;->d:Ljava/lang/String;

    .line 29
    .line 30
    iput-object p1, p0, Lce/c1;->e:Ljava/lang/String;

    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    iput p1, p0, Lce/c1;->a:I

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lce/c1;->c:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    const-string p1, "??"

    .line 12
    .line 13
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lce/c1;->d:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    :cond_0
    const/4 p1, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p1, 0x0

    .line 30
    :goto_0
    return p1
.end method

.method public final b(Lce/q;Lce/q;)V
    .locals 6

    .line 1
    const-string v0, "\\"

    .line 2
    .line 3
    const-string v1, "Invalid operation for "

    .line 4
    .line 5
    const-string v2, "Invalid operation for "

    .line 6
    .line 7
    iget-object v3, p0, Lce/c1;->f:Lce/y0;

    .line 8
    .line 9
    invoke-virtual {v3}, Lce/y0;->e()Lce/b1;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    monitor-enter v3

    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    :try_start_0
    iput-boolean v4, p2, Lce/q;->r:Z

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto/16 :goto_3

    .line 22
    .line 23
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2}, Lce/c1;->c(Lce/q;Lce/q;)V

    .line 24
    .line 25
    .line 26
    if-eqz p1, :cond_7

    .line 27
    .line 28
    if-eqz p2, :cond_1

    .line 29
    .line 30
    iget-boolean v4, p2, Lce/q;->r:Z

    .line 31
    .line 32
    if-eqz v4, :cond_1

    .line 33
    .line 34
    goto/16 :goto_2

    .line 35
    .line 36
    :cond_1
    iget-object v4, p0, Lce/c1;->d:Ljava/lang/String;

    .line 37
    .line 38
    const-string v5, "A:"

    .line 39
    .line 40
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-nez v4, :cond_4

    .line 45
    .line 46
    iget-byte v4, p1, Lce/q;->c:B

    .line 47
    .line 48
    const/16 v5, -0x5e

    .line 49
    .line 50
    if-eq v4, v5, :cond_4

    .line 51
    .line 52
    const/4 v5, 0x4

    .line 53
    if-eq v4, v5, :cond_4

    .line 54
    .line 55
    const/16 v5, 0x25

    .line 56
    .line 57
    if-eq v4, v5, :cond_2

    .line 58
    .line 59
    const/16 v5, 0x32

    .line 60
    .line 61
    if-eq v4, v5, :cond_2

    .line 62
    .line 63
    const/16 v2, 0x71

    .line 64
    .line 65
    if-eq v4, v2, :cond_4

    .line 66
    .line 67
    packed-switch v4, :pswitch_data_0

    .line 68
    .line 69
    .line 70
    new-instance p2, Lce/r0;

    .line 71
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object v1, p0, Lce/c1;->d:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v1, " service"

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-direct {p2, p1}, Lce/r0;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p2

    .line 98
    :cond_2
    move-object v1, p1

    .line 99
    check-cast v1, Lce/i0;

    .line 100
    .line 101
    iget-byte v1, v1, Lce/i0;->X:B

    .line 102
    .line 103
    and-int/lit16 v1, v1, 0xff

    .line 104
    .line 105
    if-eqz v1, :cond_4

    .line 106
    .line 107
    const/16 v4, 0x10

    .line 108
    .line 109
    if-eq v1, v4, :cond_4

    .line 110
    .line 111
    const/16 v4, 0x23

    .line 112
    .line 113
    if-eq v1, v4, :cond_4

    .line 114
    .line 115
    const/16 v4, 0x26

    .line 116
    .line 117
    if-eq v1, v4, :cond_4

    .line 118
    .line 119
    const/16 v4, 0x68

    .line 120
    .line 121
    if-eq v1, v4, :cond_4

    .line 122
    .line 123
    const/16 v4, 0xd7

    .line 124
    .line 125
    if-eq v1, v4, :cond_4

    .line 126
    .line 127
    const/16 v4, 0x53

    .line 128
    .line 129
    if-eq v1, v4, :cond_4

    .line 130
    .line 131
    const/16 v4, 0x54

    .line 132
    .line 133
    if-ne v1, v4, :cond_3

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_3
    new-instance p1, Lce/r0;

    .line 137
    .line 138
    new-instance p2, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    iget-object v0, p0, Lce/c1;->d:Ljava/lang/String;

    .line 144
    .line 145
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v0, " service"

    .line 149
    .line 150
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    invoke-direct {p1, p2}, Lce/r0;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    throw p1

    .line 161
    :cond_4
    :goto_1
    :pswitch_0
    iget v1, p0, Lce/c1;->b:I

    .line 162
    .line 163
    iput v1, p1, Lce/q;->j:I

    .line 164
    .line 165
    iget-boolean v1, p0, Lce/c1;->g:Z

    .line 166
    .line 167
    if-eqz v1, :cond_5

    .line 168
    .line 169
    iget-object v1, p0, Lce/c1;->d:Ljava/lang/String;

    .line 170
    .line 171
    const-string v2, "IPC"

    .line 172
    .line 173
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    if-nez v1, :cond_5

    .line 178
    .line 179
    iget-object v1, p1, Lce/q;->x:Ljava/lang/String;

    .line 180
    .line 181
    if-eqz v1, :cond_5

    .line 182
    .line 183
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    if-lez v1, :cond_5

    .line 188
    .line 189
    const/16 v1, 0x1000

    .line 190
    .line 191
    iput v1, p1, Lce/q;->i:I

    .line 192
    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    iget-object v0, p0, Lce/c1;->f:Lce/y0;

    .line 199
    .line 200
    invoke-virtual {v0}, Lce/y0;->e()Lce/b1;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    iget-object v0, v0, Lce/b1;->D:Ljava/lang/String;

    .line 205
    .line 206
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    const/16 v0, 0x5c

    .line 210
    .line 211
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    iget-object v0, p0, Lce/c1;->c:Ljava/lang/String;

    .line 215
    .line 216
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    iget-object v0, p1, Lce/q;->x:Ljava/lang/String;

    .line 220
    .line 221
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    iput-object v0, p1, Lce/q;->x:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    .line 230
    :cond_5
    :try_start_1
    iget-object v0, p0, Lce/c1;->f:Lce/y0;

    .line 231
    .line 232
    invoke-virtual {v0, p1, p2}, Lce/y0;->c(Lce/q;Lce/q;)V
    :try_end_1
    .catch Lce/r0; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    .line 234
    .line 235
    :try_start_2
    monitor-exit v3

    .line 236
    return-void

    .line 237
    :catch_0
    move-exception p1

    .line 238
    iget p2, p1, Lce/r0;->a:I

    .line 239
    .line 240
    const v0, -0x3fffff37    # -2.000048f

    .line 241
    .line 242
    .line 243
    if-ne p2, v0, :cond_6

    .line 244
    .line 245
    const/4 p2, 0x1

    .line 246
    invoke-virtual {p0, p2}, Lce/c1;->d(Z)V

    .line 247
    .line 248
    .line 249
    :cond_6
    throw p1

    .line 250
    :cond_7
    :goto_2
    monitor-exit v3

    .line 251
    return-void

    .line 252
    :goto_3
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 253
    throw p1

    .line 254
    nop

    .line 255
    :pswitch_data_0
    .packed-switch 0x2d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Lce/q;Lce/q;)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lce/c1;->f:Lce/y0;

    .line 3
    .line 4
    invoke-virtual {v1}, Lce/y0;->e()Lce/b1;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    monitor-enter v1

    .line 9
    :goto_0
    :try_start_0
    iget v2, p0, Lce/c1;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    const/4 v3, 0x2

    .line 12
    if-eqz v2, :cond_2

    .line 13
    .line 14
    if-eq v2, v3, :cond_1

    .line 15
    .line 16
    const/4 v3, 0x3

    .line 17
    if-ne v2, v3, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :try_start_1
    iget-object v2, p0, Lce/c1;->f:Lce/y0;

    .line 21
    .line 22
    iget-object v2, v2, Lce/y0;->h:Lce/b1;

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    goto/16 :goto_4

    .line 30
    .line 31
    :catch_0
    move-exception p1

    .line 32
    :try_start_2
    new-instance p2, Lce/r0;

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-direct {p2, v0, p1}, Lce/r0;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 39
    .line 40
    .line 41
    throw p2

    .line 42
    :cond_1
    :goto_1
    monitor-exit v1

    .line 43
    return-void

    .line 44
    :cond_2
    iput v0, p0, Lce/c1;->a:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 45
    .line 46
    :try_start_3
    iget-object v2, p0, Lce/c1;->f:Lce/y0;

    .line 47
    .line 48
    iget-object v2, v2, Lce/y0;->h:Lce/b1;

    .line 49
    .line 50
    invoke-virtual {v2}, Lce/b1;->l()V

    .line 51
    .line 52
    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v4, "\\\\"

    .line 59
    .line 60
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget-object v4, p0, Lce/c1;->f:Lce/y0;

    .line 64
    .line 65
    iget-object v4, v4, Lce/y0;->h:Lce/b1;

    .line 66
    .line 67
    iget-object v4, v4, Lce/b1;->D:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const/16 v4, 0x5c

    .line 73
    .line 74
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    iget-object v4, p0, Lce/c1;->c:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    iget-object v4, p0, Lce/c1;->e:Ljava/lang/String;

    .line 87
    .line 88
    iput-object v4, p0, Lce/c1;->d:Ljava/lang/String;

    .line 89
    .line 90
    iget-object v4, p0, Lce/c1;->f:Lce/y0;

    .line 91
    .line 92
    iget-object v4, v4, Lce/y0;->h:Lce/b1;

    .line 93
    .line 94
    sget-object v4, Lce/b1;->E:[B

    .line 95
    .line 96
    sget v4, Lde/d;->b:I

    .line 97
    .line 98
    const/4 v5, 0x4

    .line 99
    if-lt v4, v5, :cond_3

    .line 100
    .line 101
    sget-object v4, Lce/b1;->G:Lde/d;

    .line 102
    .line 103
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :catch_1
    move-exception p1

    .line 108
    goto :goto_3

    .line 109
    :cond_3
    :goto_2
    new-instance v4, Lce/l0;

    .line 110
    .line 111
    invoke-direct {v4, p2}, Lce/l0;-><init>(Lce/q;)V

    .line 112
    .line 113
    .line 114
    new-instance p2, Lce/k0;

    .line 115
    .line 116
    iget-object v5, p0, Lce/c1;->f:Lce/y0;

    .line 117
    .line 118
    iget-object v6, p0, Lce/c1;->d:Ljava/lang/String;

    .line 119
    .line 120
    invoke-direct {p2, v5, v2, v6, p1}, Lce/k0;-><init>(Lce/y0;Ljava/lang/String;Ljava/lang/String;Lce/q;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v5, p2, v4}, Lce/y0;->c(Lce/q;Lce/q;)V

    .line 124
    .line 125
    .line 126
    iget p1, v4, Lce/q;->j:I

    .line 127
    .line 128
    iput p1, p0, Lce/c1;->b:I

    .line 129
    .line 130
    iget-object p1, v4, Lce/l0;->H:Ljava/lang/String;

    .line 131
    .line 132
    iput-object p1, p0, Lce/c1;->d:Ljava/lang/String;

    .line 133
    .line 134
    iget-boolean p1, v4, Lce/l0;->G:Z

    .line 135
    .line 136
    iput-boolean p1, p0, Lce/c1;->g:Z

    .line 137
    .line 138
    sget p1, Lce/c1;->j:I

    .line 139
    .line 140
    add-int/lit8 p2, p1, 0x1

    .line 141
    .line 142
    sput p2, Lce/c1;->j:I

    .line 143
    .line 144
    iput p1, p0, Lce/c1;->i:I

    .line 145
    .line 146
    iput v3, p0, Lce/c1;->a:I
    :try_end_3
    .catch Lce/r0; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 147
    .line 148
    :try_start_4
    monitor-exit v1

    .line 149
    return-void

    .line 150
    :goto_3
    invoke-virtual {p0, v0}, Lce/c1;->d(Z)V

    .line 151
    .line 152
    .line 153
    const/4 p2, 0x0

    .line 154
    iput p2, p0, Lce/c1;->a:I

    .line 155
    .line 156
    throw p1

    .line 157
    :goto_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 158
    goto :goto_6

    .line 159
    :goto_5
    throw p1

    .line 160
    :goto_6
    goto :goto_5
.end method

.method public final d(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lce/c1;->f:Lce/y0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lce/y0;->e()Lce/b1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget v1, p0, Lce/c1;->a:I

    .line 9
    .line 10
    const/4 v2, 0x2

    .line 11
    if-eq v1, v2, :cond_0

    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    const/4 v1, 0x3

    .line 18
    iput v1, p0, Lce/c1;->a:I

    .line 19
    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    iget p1, p0, Lce/c1;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    :try_start_1
    new-instance p1, Lce/t;

    .line 27
    .line 28
    const/4 v1, 0x6

    .line 29
    invoke-direct {p1, v1}, Lce/t;-><init>(I)V

    .line 30
    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-virtual {p0, p1, v1}, Lce/c1;->b(Lce/q;Lce/q;)V
    :try_end_1
    .catch Lce/r0; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception p1

    .line 38
    :try_start_2
    iget-object v1, p0, Lce/c1;->f:Lce/y0;

    .line 39
    .line 40
    iget-object v1, v1, Lce/y0;->h:Lce/b1;

    .line 41
    .line 42
    sget-object v1, Lce/b1;->E:[B

    .line 43
    .line 44
    sget v1, Lde/d;->b:I

    .line 45
    .line 46
    const/4 v2, 0x1

    .line 47
    if-le v1, v2, :cond_1

    .line 48
    .line 49
    sget-object v1, Lce/b1;->G:Lde/d;

    .line 50
    .line 51
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 55
    iput-boolean p1, p0, Lce/c1;->g:Z

    .line 56
    .line 57
    iput-boolean p1, p0, Lce/c1;->h:Z

    .line 58
    .line 59
    iput p1, p0, Lce/c1;->a:I

    .line 60
    .line 61
    iget-object p1, p0, Lce/c1;->f:Lce/y0;

    .line 62
    .line 63
    iget-object p1, p1, Lce/y0;->h:Lce/b1;

    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 66
    .line 67
    .line 68
    monitor-exit v0

    .line 69
    return-void

    .line 70
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    throw p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lce/c1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lce/c1;

    .line 6
    .line 7
    iget-object v0, p1, Lce/c1;->c:Ljava/lang/String;

    .line 8
    .line 9
    iget-object p1, p1, Lce/c1;->d:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p0, v0, p1}, Lce/c1;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "SmbTree[share="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lce/c1;->c:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ",service="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lce/c1;->d:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ",tid="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lce/c1;->b:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ",inDfs="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-boolean v1, p0, Lce/c1;->g:Z

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ",inDomainDfs="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-boolean v1, p0, Lce/c1;->h:Z

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ",connectionState="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget v1, p0, Lce/c1;->a:I

    .line 59
    .line 60
    const-string v2, "]"

    .line 61
    .line 62
    invoke-static {v0, v1, v2}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    return-object v0
.end method
