.class public final Lce/t;
.super Lce/q;
.source "SourceFile"


# instance fields
.field public final synthetic C:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lce/t;->C:I

    packed-switch p1, :pswitch_data_0

    .line 1
    :pswitch_0
    invoke-direct {p0}, Lce/q;-><init>()V

    return-void

    .line 2
    :pswitch_1
    invoke-direct {p0}, Lce/q;-><init>()V

    const/16 p1, 0x71

    .line 3
    iput-byte p1, p0, Lce/q;->c:B

    return-void

    .line 4
    :pswitch_2
    invoke-direct {p0}, Lce/q;-><init>()V

    const/16 p1, 0x72

    .line 5
    iput-byte p1, p0, Lce/q;->c:B

    .line 6
    sget p1, Lce/q0;->n0:I

    iput p1, p0, Lce/q;->i:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput p2, p0, Lce/t;->C:I

    packed-switch p2, :pswitch_data_0

    .line 7
    :pswitch_0
    invoke-direct {p0}, Lce/q;-><init>()V

    .line 8
    iput-object p1, p0, Lce/q;->x:Ljava/lang/String;

    const/4 p1, 0x0

    .line 9
    iput-byte p1, p0, Lce/q;->c:B

    return-void

    .line 10
    :pswitch_1
    invoke-direct {p0}, Lce/q;-><init>()V

    .line 11
    iput-object p1, p0, Lce/q;->x:Ljava/lang/String;

    const/16 p1, 0x8

    .line 12
    iput-byte p1, p0, Lce/q;->c:B

    return-void

    .line 13
    :pswitch_2
    invoke-direct {p0}, Lce/q;-><init>()V

    .line 14
    iput-object p1, p0, Lce/q;->x:Ljava/lang/String;

    const/4 p1, 0x1

    .line 15
    iput-byte p1, p0, Lce/q;->c:B

    return-void

    .line 16
    :pswitch_3
    invoke-direct {p0}, Lce/q;-><init>()V

    .line 17
    iput-object p1, p0, Lce/q;->x:Ljava/lang/String;

    const/4 p1, 0x6

    .line 18
    iput-byte p1, p0, Lce/q;->c:B

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final d(I[B)I
    .locals 0

    .line 1
    iget p1, p0, Lce/t;->C:I

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    const/4 p1, 0x0

    return p1

    :pswitch_1
    const/4 p1, 0x0

    return p1

    :pswitch_2
    const/4 p1, 0x0

    return p1

    :pswitch_3
    const/4 p1, 0x0

    return p1

    :pswitch_4
    const/4 p1, 0x0

    return p1

    :pswitch_5
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final i(I[B)I
    .locals 0

    .line 1
    iget p1, p0, Lce/t;->C:I

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    const/4 p1, 0x0

    return p1

    :pswitch_1
    const/4 p1, 0x0

    return p1

    :pswitch_2
    const/4 p1, 0x0

    return p1

    :pswitch_3
    const/4 p1, 0x0

    return p1

    :pswitch_4
    const/4 p1, 0x0

    return p1

    :pswitch_5
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final o(I[B)I
    .locals 3

    .line 1
    iget v0, p0, Lce/t;->C:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return p1

    .line 8
    :pswitch_0
    add-int/lit8 v0, p1, 0x1

    .line 9
    .line 10
    const/4 v1, 0x4

    .line 11
    aput-byte v1, p2, p1

    .line 12
    .line 13
    iget-object v1, p0, Lce/q;->x:Ljava/lang/String;

    .line 14
    .line 15
    iget-boolean v2, p0, Lce/q;->q:Z

    .line 16
    .line 17
    invoke-virtual {p0, v1, p2, v0, v2}, Lce/q;->u(Ljava/lang/String;[BIZ)I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    add-int/2addr p2, v0

    .line 22
    sub-int/2addr p2, p1

    .line 23
    return p2

    .line 24
    :pswitch_1
    const/4 v0, 0x0

    .line 25
    :try_start_0
    const-string v1, "\u0002NT LM 0.12\u0000"

    .line 26
    .line 27
    const-string v2, "ASCII"

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 30
    .line 31
    .line 32
    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    array-length v2, v1

    .line 34
    invoke-static {v1, v0, p2, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    .line 36
    .line 37
    array-length v0, v1

    .line 38
    :catch_0
    return v0

    .line 39
    :pswitch_2
    add-int/lit8 v0, p1, 0x1

    .line 40
    .line 41
    const/4 v1, 0x4

    .line 42
    aput-byte v1, p2, p1

    .line 43
    .line 44
    iget-object v1, p0, Lce/q;->x:Ljava/lang/String;

    .line 45
    .line 46
    iget-boolean v2, p0, Lce/q;->q:Z

    .line 47
    .line 48
    invoke-virtual {p0, v1, p2, v0, v2}, Lce/q;->u(Ljava/lang/String;[BIZ)I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    add-int/2addr p2, v0

    .line 53
    sub-int/2addr p2, p1

    .line 54
    return p2

    .line 55
    :pswitch_3
    add-int/lit8 v0, p1, 0x1

    .line 56
    .line 57
    const/4 v1, 0x4

    .line 58
    aput-byte v1, p2, p1

    .line 59
    .line 60
    iget-object v1, p0, Lce/q;->x:Ljava/lang/String;

    .line 61
    .line 62
    iget-boolean v2, p0, Lce/q;->q:Z

    .line 63
    .line 64
    invoke-virtual {p0, v1, p2, v0, v2}, Lce/q;->u(Ljava/lang/String;[BIZ)I

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    add-int/2addr p2, v0

    .line 69
    sub-int/2addr p2, p1

    .line 70
    return p2

    .line 71
    :pswitch_4
    add-int/lit8 v0, p1, 0x1

    .line 72
    .line 73
    const/4 v1, 0x4

    .line 74
    aput-byte v1, p2, p1

    .line 75
    .line 76
    iget-object v1, p0, Lce/q;->x:Ljava/lang/String;

    .line 77
    .line 78
    iget-boolean v2, p0, Lce/q;->q:Z

    .line 79
    .line 80
    invoke-virtual {p0, v1, p2, v0, v2}, Lce/q;->u(Ljava/lang/String;[BIZ)I

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    add-int/2addr p2, v0

    .line 85
    sub-int/2addr p2, p1

    .line 86
    return p2

    .line 87
    :pswitch_5
    const/4 p1, 0x0

    .line 88
    return p1

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final t(I[B)I
    .locals 2

    .line 1
    iget v0, p0, Lce/t;->C:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return p1

    .line 8
    :pswitch_0
    const/4 p1, 0x0

    .line 9
    return p1

    .line 10
    :pswitch_1
    const/4 p1, 0x0

    .line 11
    return p1

    .line 12
    :pswitch_2
    const/4 p1, 0x0

    .line 13
    return p1

    .line 14
    :pswitch_3
    const/4 v0, 0x6

    .line 15
    int-to-long v0, v0

    .line 16
    invoke-static {v0, v1, p2, p1}, Lce/q;->q(J[BI)V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x2

    .line 20
    return p1

    .line 21
    :pswitch_4
    const/4 p1, 0x0

    .line 22
    return p1

    .line 23
    :pswitch_5
    const/4 p1, 0x0

    .line 24
    return p1

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lce/t;->C:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/String;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, "SmbComTreeDisconnect["

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-super {p0}, Lce/q;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const-string v3, "]"

    .line 20
    .line 21
    invoke-static {v2, v3, v1}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-object v0

    .line 29
    :pswitch_0
    new-instance v0, Ljava/lang/String;

    .line 30
    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v2, "SmbComQueryInformation["

    .line 34
    .line 35
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-super {p0}, Lce/q;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v2, ",filename="

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget-object v2, p0, Lce/q;->x:Ljava/lang/String;

    .line 51
    .line 52
    const-string v3, "]"

    .line 53
    .line 54
    invoke-static {v2, v3, v1}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-object v0

    .line 62
    :pswitch_1
    new-instance v0, Ljava/lang/String;

    .line 63
    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v2, "SmbComNegotiate["

    .line 67
    .line 68
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-super {p0}, Lce/q;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v2, ",wordCount="

    .line 79
    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget v2, p0, Lce/q;->n:I

    .line 84
    .line 85
    const-string v3, ",dialects=NT LM 0.12]"

    .line 86
    .line 87
    invoke-static {v1, v2, v3}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    return-object v0

    .line 95
    :pswitch_2
    new-instance v0, Ljava/lang/String;

    .line 96
    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    const-string v2, "SmbComDeleteDirectory["

    .line 100
    .line 101
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-super {p0}, Lce/q;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v2, ",directoryName="

    .line 112
    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    iget-object v2, p0, Lce/q;->x:Ljava/lang/String;

    .line 117
    .line 118
    const-string v3, "]"

    .line 119
    .line 120
    invoke-static {v2, v3, v1}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    return-object v0

    .line 128
    :pswitch_3
    new-instance v0, Ljava/lang/String;

    .line 129
    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    const-string v2, "SmbComDelete["

    .line 133
    .line 134
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-super {p0}, Lce/q;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string v2, ",searchAttributes=0x"

    .line 145
    .line 146
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const/4 v2, 0x6

    .line 150
    const/4 v3, 0x4

    .line 151
    invoke-static {v2, v3}, Lde/c;->c(II)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const-string v2, ",fileName="

    .line 159
    .line 160
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    iget-object v2, p0, Lce/q;->x:Ljava/lang/String;

    .line 164
    .line 165
    const-string v3, "]"

    .line 166
    .line 167
    invoke-static {v2, v3, v1}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    return-object v0

    .line 175
    :pswitch_4
    new-instance v0, Ljava/lang/String;

    .line 176
    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    const-string v2, "SmbComCreateDirectory["

    .line 180
    .line 181
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-super {p0}, Lce/q;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    const-string v2, ",directoryName="

    .line 192
    .line 193
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    iget-object v2, p0, Lce/q;->x:Ljava/lang/String;

    .line 197
    .line 198
    const-string v3, "]"

    .line 199
    .line 200
    invoke-static {v2, v3, v1}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    return-object v0

    .line 208
    :pswitch_5
    new-instance v0, Ljava/lang/String;

    .line 209
    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    const-string v2, "SmbComBlankResponse["

    .line 213
    .line 214
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-super {p0}, Lce/q;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    const-string v3, "]"

    .line 222
    .line 223
    invoke-static {v2, v3, v1}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    return-object v0

    .line 231
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
