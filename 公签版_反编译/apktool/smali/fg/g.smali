.class public final Lfg/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public a:Lfg/i;

.field public b:Z

.field public c:Lfg/u;

.field public d:J

.field public e:[B

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lfg/g;->d:J

    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lfg/g;->f:I

    .line 10
    .line 11
    iput v0, p0, Lfg/g;->g:I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    .line 1
    iget-object v0, p0, Lfg/g;->a:Lfg/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lfg/g;->a:Lfg/i;

    .line 7
    .line 8
    iput-object v0, p0, Lfg/g;->c:Lfg/u;

    .line 9
    .line 10
    const-wide/16 v1, -0x1

    .line 11
    .line 12
    iput-wide v1, p0, Lfg/g;->d:J

    .line 13
    .line 14
    iput-object v0, p0, Lfg/g;->e:[B

    .line 15
    .line 16
    const/4 v0, -0x1

    .line 17
    iput v0, p0, Lfg/g;->f:I

    .line 18
    .line 19
    iput v0, p0, Lfg/g;->g:I

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string v1, "not attached to a buffer"

    .line 25
    .line 26
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v0
.end method

.method public final r(J)I
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    iget-object v3, v0, Lfg/g;->a:Lfg/i;

    .line 6
    .line 7
    if-eqz v3, :cond_a

    .line 8
    .line 9
    const-wide/16 v4, -0x1

    .line 10
    .line 11
    cmp-long v6, v1, v4

    .line 12
    .line 13
    if-ltz v6, :cond_9

    .line 14
    .line 15
    iget-wide v6, v3, Lfg/i;->b:J

    .line 16
    .line 17
    cmp-long v8, v1, v6

    .line 18
    .line 19
    if-gtz v8, :cond_9

    .line 20
    .line 21
    cmp-long v8, v1, v4

    .line 22
    .line 23
    if-eqz v8, :cond_8

    .line 24
    .line 25
    cmp-long v4, v1, v6

    .line 26
    .line 27
    if-nez v4, :cond_0

    .line 28
    .line 29
    goto/16 :goto_3

    .line 30
    .line 31
    :cond_0
    iget-object v4, v3, Lfg/i;->a:Lfg/u;

    .line 32
    .line 33
    iget-object v5, v0, Lfg/g;->c:Lfg/u;

    .line 34
    .line 35
    const-wide/16 v8, 0x0

    .line 36
    .line 37
    if-eqz v5, :cond_2

    .line 38
    .line 39
    iget-wide v10, v0, Lfg/g;->d:J

    .line 40
    .line 41
    iget v12, v0, Lfg/g;->f:I

    .line 42
    .line 43
    iget v13, v5, Lfg/u;->b:I

    .line 44
    .line 45
    sub-int/2addr v12, v13

    .line 46
    int-to-long v12, v12

    .line 47
    sub-long/2addr v10, v12

    .line 48
    cmp-long v12, v10, v1

    .line 49
    .line 50
    if-lez v12, :cond_1

    .line 51
    .line 52
    move-wide v6, v10

    .line 53
    move-object/from16 v16, v5

    .line 54
    .line 55
    move-object v5, v4

    .line 56
    move-object/from16 v4, v16

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    move-wide v8, v10

    .line 60
    goto :goto_0

    .line 61
    :cond_2
    move-object v5, v4

    .line 62
    :goto_0
    sub-long v10, v6, v1

    .line 63
    .line 64
    sub-long v12, v1, v8

    .line 65
    .line 66
    cmp-long v14, v10, v12

    .line 67
    .line 68
    if-lez v14, :cond_3

    .line 69
    .line 70
    :goto_1
    invoke-static {v5}, Lue/d;->b(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    iget v4, v5, Lfg/u;->c:I

    .line 74
    .line 75
    iget v6, v5, Lfg/u;->b:I

    .line 76
    .line 77
    sub-int/2addr v4, v6

    .line 78
    int-to-long v6, v4

    .line 79
    add-long/2addr v6, v8

    .line 80
    cmp-long v4, v1, v6

    .line 81
    .line 82
    if-ltz v4, :cond_5

    .line 83
    .line 84
    iget-object v5, v5, Lfg/u;->f:Lfg/u;

    .line 85
    .line 86
    move-wide v8, v6

    .line 87
    goto :goto_1

    .line 88
    :cond_3
    :goto_2
    cmp-long v5, v6, v1

    .line 89
    .line 90
    if-lez v5, :cond_4

    .line 91
    .line 92
    invoke-static {v4}, Lue/d;->b(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    iget-object v4, v4, Lfg/u;->g:Lfg/u;

    .line 96
    .line 97
    invoke-static {v4}, Lue/d;->b(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    iget v5, v4, Lfg/u;->c:I

    .line 101
    .line 102
    iget v8, v4, Lfg/u;->b:I

    .line 103
    .line 104
    sub-int/2addr v5, v8

    .line 105
    int-to-long v8, v5

    .line 106
    sub-long/2addr v6, v8

    .line 107
    goto :goto_2

    .line 108
    :cond_4
    move-object v5, v4

    .line 109
    move-wide v8, v6

    .line 110
    :cond_5
    iget-boolean v4, v0, Lfg/g;->b:Z

    .line 111
    .line 112
    if-eqz v4, :cond_7

    .line 113
    .line 114
    invoke-static {v5}, Lue/d;->b(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    iget-boolean v4, v5, Lfg/u;->d:Z

    .line 118
    .line 119
    if-eqz v4, :cond_7

    .line 120
    .line 121
    new-instance v4, Lfg/u;

    .line 122
    .line 123
    iget-object v6, v5, Lfg/u;->a:[B

    .line 124
    .line 125
    array-length v7, v6

    .line 126
    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 127
    .line 128
    .line 129
    move-result-object v11

    .line 130
    const-string v6, "copyOf(this, size)"

    .line 131
    .line 132
    invoke-static {v11, v6}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    iget v12, v5, Lfg/u;->b:I

    .line 136
    .line 137
    iget v13, v5, Lfg/u;->c:I

    .line 138
    .line 139
    const/4 v14, 0x0

    .line 140
    const/4 v15, 0x1

    .line 141
    move-object v10, v4

    .line 142
    invoke-direct/range {v10 .. v15}, Lfg/u;-><init>([BIIZZ)V

    .line 143
    .line 144
    .line 145
    iget-object v6, v3, Lfg/i;->a:Lfg/u;

    .line 146
    .line 147
    if-ne v6, v5, :cond_6

    .line 148
    .line 149
    iput-object v4, v3, Lfg/i;->a:Lfg/u;

    .line 150
    .line 151
    :cond_6
    invoke-virtual {v5, v4}, Lfg/u;->b(Lfg/u;)V

    .line 152
    .line 153
    .line 154
    iget-object v3, v4, Lfg/u;->g:Lfg/u;

    .line 155
    .line 156
    invoke-static {v3}, Lue/d;->b(Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v3}, Lfg/u;->a()Lfg/u;

    .line 160
    .line 161
    .line 162
    move-object v5, v4

    .line 163
    :cond_7
    iput-object v5, v0, Lfg/g;->c:Lfg/u;

    .line 164
    .line 165
    iput-wide v1, v0, Lfg/g;->d:J

    .line 166
    .line 167
    invoke-static {v5}, Lue/d;->b(Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    iget-object v3, v5, Lfg/u;->a:[B

    .line 171
    .line 172
    iput-object v3, v0, Lfg/g;->e:[B

    .line 173
    .line 174
    iget v3, v5, Lfg/u;->b:I

    .line 175
    .line 176
    sub-long/2addr v1, v8

    .line 177
    long-to-int v2, v1

    .line 178
    add-int/2addr v3, v2

    .line 179
    iput v3, v0, Lfg/g;->f:I

    .line 180
    .line 181
    iget v1, v5, Lfg/u;->c:I

    .line 182
    .line 183
    iput v1, v0, Lfg/g;->g:I

    .line 184
    .line 185
    sub-int/2addr v1, v3

    .line 186
    goto :goto_4

    .line 187
    :cond_8
    :goto_3
    const/4 v3, 0x0

    .line 188
    iput-object v3, v0, Lfg/g;->c:Lfg/u;

    .line 189
    .line 190
    iput-wide v1, v0, Lfg/g;->d:J

    .line 191
    .line 192
    iput-object v3, v0, Lfg/g;->e:[B

    .line 193
    .line 194
    const/4 v1, -0x1

    .line 195
    iput v1, v0, Lfg/g;->f:I

    .line 196
    .line 197
    iput v1, v0, Lfg/g;->g:I

    .line 198
    .line 199
    :goto_4
    return v1

    .line 200
    :cond_9
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 201
    .line 202
    const-string v5, "offset="

    .line 203
    .line 204
    const-string v6, " > size="

    .line 205
    .line 206
    invoke-static {v1, v2, v5, v6}, Landroid/support/v4/media/session/a;->w(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    iget-wide v2, v3, Lfg/i;->b:J

    .line 211
    .line 212
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    invoke-direct {v4, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    throw v4

    .line 223
    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 224
    .line 225
    const-string v2, "not attached to a buffer"

    .line 226
    .line 227
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    goto :goto_6

    .line 231
    :goto_5
    throw v1

    .line 232
    :goto_6
    goto :goto_5
.end method
