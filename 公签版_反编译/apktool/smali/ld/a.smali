.class public final Lld/a;
.super Lid/c;
.source "SourceFile"

# interfaces
.implements Lid/a;


# instance fields
.field public A:I

.field public B:I

.field public C:[B

.field public D:J

.field public E:I

.field public final synthetic y:I

.field public z:[B


# direct methods
.method public constructor <init>(Lvc/f;[B)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lld/a;->y:I

    const/16 v0, 0x9

    .line 1
    invoke-direct {p0, p1, v0}, Lid/c;-><init>(Lvc/f;I)V

    .line 2
    iput-object p2, p0, Lld/a;->C:[B

    return-void
.end method

.method public constructor <init>(Lvc/f;[B[BI)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lld/a;->y:I

    const/16 v0, 0x8

    .line 3
    invoke-direct {p0, p1, v0}, Lid/c;-><init>(Lvc/f;I)V

    .line 4
    iput-object p2, p0, Lld/a;->z:[B

    .line 5
    iput-object p3, p0, Lld/a;->C:[B

    .line 6
    iput p4, p0, Lld/a;->A:I

    return-void
.end method


# virtual methods
.method public final l0(I[B)I
    .locals 0

    .line 1
    iget p1, p0, Lld/a;->y:I

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final p0(I[B)I
    .locals 10

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const-wide/16 v2, 0x31

    .line 4
    .line 5
    const/4 v4, 0x0

    .line 6
    const/4 v5, 0x2

    .line 7
    const/16 v6, 0x10

    .line 8
    .line 9
    iget v7, p0, Lld/a;->y:I

    .line 10
    .line 11
    packed-switch v7, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    invoke-static {v2, v3, p2, p1}, Lrd/a;->e(J[BI)V

    .line 15
    .line 16
    .line 17
    add-int/lit8 v2, p1, 0x2

    .line 18
    .line 19
    add-int/lit8 v3, p1, 0x4

    .line 20
    .line 21
    iget v7, p0, Lld/a;->B:I

    .line 22
    .line 23
    int-to-long v7, v7

    .line 24
    invoke-static {v7, v8, p2, v3}, Lrd/a;->f(J[BI)V

    .line 25
    .line 26
    .line 27
    add-int/lit8 v3, p1, 0x8

    .line 28
    .line 29
    iget-wide v7, p0, Lld/a;->D:J

    .line 30
    .line 31
    invoke-static {v7, v8, p2, v3}, Lrd/a;->g(J[BI)V

    .line 32
    .line 33
    .line 34
    add-int/lit8 v3, p1, 0x10

    .line 35
    .line 36
    iget-object v7, p0, Lld/a;->C:[B

    .line 37
    .line 38
    invoke-static {v7, v4, p2, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    .line 40
    .line 41
    add-int/lit8 v3, p1, 0x20

    .line 42
    .line 43
    int-to-long v6, v4

    .line 44
    invoke-static {v6, v7, p2, v3}, Lrd/a;->f(J[BI)V

    .line 45
    .line 46
    .line 47
    add-int/lit8 v3, p1, 0x24

    .line 48
    .line 49
    iget v8, p0, Lld/a;->E:I

    .line 50
    .line 51
    int-to-long v8, v8

    .line 52
    invoke-static {v8, v9, p2, v3}, Lrd/a;->f(J[BI)V

    .line 53
    .line 54
    .line 55
    add-int/lit8 v3, p1, 0x28

    .line 56
    .line 57
    invoke-static {v0, v1, p2, v3}, Lrd/a;->e(J[BI)V

    .line 58
    .line 59
    .line 60
    add-int/lit8 v3, p1, 0x2a

    .line 61
    .line 62
    invoke-static {v0, v1, p2, v3}, Lrd/a;->e(J[BI)V

    .line 63
    .line 64
    .line 65
    add-int/lit8 v0, p1, 0x2c

    .line 66
    .line 67
    invoke-static {v6, v7, p2, v0}, Lrd/a;->f(J[BI)V

    .line 68
    .line 69
    .line 70
    add-int/lit8 v0, p1, 0x30

    .line 71
    .line 72
    iget v1, p0, Lid/b;->d:I

    .line 73
    .line 74
    sub-int v1, v0, v1

    .line 75
    .line 76
    int-to-long v6, v1

    .line 77
    invoke-static {v6, v7, p2, v2}, Lrd/a;->e(J[BI)V

    .line 78
    .line 79
    .line 80
    iget v1, p0, Lld/a;->B:I

    .line 81
    .line 82
    add-int v2, v0, v1

    .line 83
    .line 84
    array-length v3, p2

    .line 85
    if-gt v2, v3, :cond_0

    .line 86
    .line 87
    iget-object v2, p0, Lld/a;->z:[B

    .line 88
    .line 89
    iget v3, p0, Lld/a;->A:I

    .line 90
    .line 91
    invoke-static {v2, v3, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    .line 93
    .line 94
    iget p2, p0, Lld/a;->B:I

    .line 95
    .line 96
    add-int/2addr v0, p2

    .line 97
    sub-int/2addr v0, p1

    .line 98
    return v0

    .line 99
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 100
    .line 101
    array-length p2, p2

    .line 102
    sub-int/2addr p2, v0

    .line 103
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    iget v0, p0, Lld/a;->B:I

    .line 108
    .line 109
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    new-array v1, v5, [Ljava/lang/Object;

    .line 114
    .line 115
    aput-object p2, v1, v4

    .line 116
    .line 117
    const/4 p2, 0x1

    .line 118
    aput-object v0, v1, p2

    .line 119
    .line 120
    const-string p2, "Data exceeds buffer size ( remain buffer: %d data length: %d)"

    .line 121
    .line 122
    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw p1

    .line 130
    :pswitch_0
    invoke-static {v2, v3, p2, p1}, Lrd/a;->e(J[BI)V

    .line 131
    .line 132
    .line 133
    add-int/2addr v5, p1

    .line 134
    aput-byte v4, p2, v5

    .line 135
    .line 136
    add-int/lit8 v2, p1, 0x3

    .line 137
    .line 138
    aput-byte v4, p2, v2

    .line 139
    .line 140
    add-int/lit8 v2, p1, 0x4

    .line 141
    .line 142
    iget v3, p0, Lld/a;->B:I

    .line 143
    .line 144
    int-to-long v7, v3

    .line 145
    invoke-static {v7, v8, p2, v2}, Lrd/a;->f(J[BI)V

    .line 146
    .line 147
    .line 148
    add-int/lit8 v2, p1, 0x8

    .line 149
    .line 150
    iget-wide v7, p0, Lld/a;->D:J

    .line 151
    .line 152
    invoke-static {v7, v8, p2, v2}, Lrd/a;->g(J[BI)V

    .line 153
    .line 154
    .line 155
    add-int/lit8 v2, p1, 0x10

    .line 156
    .line 157
    iget-object v3, p0, Lld/a;->z:[B

    .line 158
    .line 159
    invoke-static {v3, v4, p2, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    .line 161
    .line 162
    add-int/lit8 v2, p1, 0x20

    .line 163
    .line 164
    int-to-long v5, v4

    .line 165
    invoke-static {v5, v6, p2, v2}, Lrd/a;->f(J[BI)V

    .line 166
    .line 167
    .line 168
    add-int/lit8 v2, p1, 0x24

    .line 169
    .line 170
    invoke-static {v5, v6, p2, v2}, Lrd/a;->f(J[BI)V

    .line 171
    .line 172
    .line 173
    add-int/lit8 v2, p1, 0x28

    .line 174
    .line 175
    iget v3, p0, Lld/a;->E:I

    .line 176
    .line 177
    int-to-long v5, v3

    .line 178
    invoke-static {v5, v6, p2, v2}, Lrd/a;->f(J[BI)V

    .line 179
    .line 180
    .line 181
    add-int/lit8 v2, p1, 0x2c

    .line 182
    .line 183
    invoke-static {v0, v1, p2, v2}, Lrd/a;->e(J[BI)V

    .line 184
    .line 185
    .line 186
    add-int/lit8 v2, p1, 0x2e

    .line 187
    .line 188
    invoke-static {v0, v1, p2, v2}, Lrd/a;->e(J[BI)V

    .line 189
    .line 190
    .line 191
    add-int/lit8 v0, p1, 0x30

    .line 192
    .line 193
    aput-byte v4, p2, v0

    .line 194
    .line 195
    add-int/lit8 p2, p1, 0x31

    .line 196
    .line 197
    sub-int/2addr p2, p1

    .line 198
    return p2

    .line 199
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final q0(Lvc/b;)Lid/d;
    .locals 3

    .line 1
    iget v0, p0, Lld/a;->y:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Lld/c;

    .line 7
    .line 8
    invoke-interface {p1}, Lvc/b;->e()Lvc/f;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-direct {v0, p1}, Lld/c;-><init>(Lvc/f;)V

    .line 13
    .line 14
    .line 15
    return-object v0

    .line 16
    :pswitch_0
    new-instance v0, Lld/b;

    .line 17
    .line 18
    invoke-interface {p1}, Lvc/b;->e()Lvc/f;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object v1, p0, Lld/a;->C:[B

    .line 23
    .line 24
    iget v2, p0, Lld/a;->A:I

    .line 25
    .line 26
    invoke-direct {v0, p1, v1, v2}, Lld/b;-><init>(Lvc/f;[BI)V

    .line 27
    .line 28
    .line 29
    return-object v0

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final size()I
    .locals 2

    .line 1
    iget v0, p0, Lld/a;->y:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lld/a;->B:I

    .line 7
    .line 8
    add-int/lit8 v0, v0, 0x70

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-static {v0, v1}, Lid/b;->o0(II)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    :pswitch_0
    const/4 v0, 0x0

    .line 17
    const/16 v1, 0x71

    .line 18
    .line 19
    invoke-static {v1, v0}, Lid/b;->o0(II)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    return v0

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final w([B)V
    .locals 1

    .line 1
    iget v0, p0, Lld/a;->y:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lld/a;->C:[B

    .line 7
    .line 8
    return-void

    .line 9
    :pswitch_0
    iput-object p1, p0, Lld/a;->z:[B

    .line 10
    .line 11
    return-void

    .line 12
    nop

    .line 13
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
