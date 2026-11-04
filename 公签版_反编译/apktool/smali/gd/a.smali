.class public abstract Lgd/a;
.super Led/c;
.source "SourceFile"

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field public G:I

.field public H:I

.field public I:Z

.field public K:Z

.field public L:I

.field public M:I

.field public final M0:Ljava/lang/String;

.field public N:I

.field public N0:I

.field public O:I

.field public O0:[B

.field public P:I

.field public R:I

.field public S:I

.field public T:I

.field public V:I

.field public X:I

.field public Y:I

.field public final Z:I

.field public final h0:I

.field public final t0:B


# direct methods
.method public constructor <init>(Lvc/f;BB)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Led/c;-><init>(Lvc/f;BLjava/lang/String;)V

    .line 3
    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    iput p2, p0, Lgd/a;->G:I

    .line 7
    .line 8
    iput p2, p0, Lgd/a;->H:I

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lgd/a;->I:Z

    .line 12
    .line 13
    iput-boolean v0, p0, Lgd/a;->K:Z

    .line 14
    .line 15
    iput p2, p0, Lgd/a;->Z:I

    .line 16
    .line 17
    iput v0, p0, Lgd/a;->h0:I

    .line 18
    .line 19
    const-string p2, ""

    .line 20
    .line 21
    iput-object p2, p0, Lgd/a;->M0:Ljava/lang/String;

    .line 22
    .line 23
    iput-byte p3, p0, Lgd/a;->t0:B

    .line 24
    .line 25
    check-cast p1, Lwc/a;

    .line 26
    .line 27
    iget p1, p1, Lwc/a;->i0:I

    .line 28
    .line 29
    add-int/lit16 p1, p1, -0x200

    .line 30
    .line 31
    iput p1, p0, Lgd/a;->Y:I

    .line 32
    .line 33
    const/16 p1, 0x400

    .line 34
    .line 35
    iput p1, p0, Lgd/a;->X:I

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final hasMoreElements()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lgd/a;->I:Z

    .line 2
    .line 3
    return v0
.end method

.method public final i0(I[B)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final k0(I[B)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final bridge synthetic nextElement()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lgd/a;->s0()V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final o0(I[B)I
    .locals 6

    .line 1
    iget-byte v0, p0, Led/c;->a:B

    .line 2
    .line 3
    const/16 v1, 0x25

    .line 4
    .line 5
    if-ne v0, v1, :cond_1

    .line 6
    .line 7
    iget-byte v0, p0, Led/c;->b:B

    .line 8
    .line 9
    const/16 v1, 0x80

    .line 10
    .line 11
    and-int/2addr v0, v1

    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lgd/a;->M0:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p0, v0, p1, p2}, Led/c;->r0(Ljava/lang/String;I[B)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    add-int/2addr v0, p1

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    move v0, p1

    .line 24
    :goto_1
    iget v1, p0, Lgd/a;->G:I

    .line 25
    .line 26
    add-int/2addr v0, v1

    .line 27
    iget v1, p0, Lgd/a;->M:I

    .line 28
    .line 29
    if-lez v1, :cond_2

    .line 30
    .line 31
    iget-object v2, p0, Lgd/a;->O0:[B

    .line 32
    .line 33
    iget v3, p0, Led/c;->c:I

    .line 34
    .line 35
    iget v4, p0, Lgd/a;->N:I

    .line 36
    .line 37
    add-int/2addr v3, v4

    .line 38
    const/4 v4, 0x0

    .line 39
    invoke-static {v2, v4, p2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    .line 41
    .line 42
    iget v1, p0, Led/c;->c:I

    .line 43
    .line 44
    iget v2, p0, Lgd/a;->N:I

    .line 45
    .line 46
    add-int/2addr v1, v2

    .line 47
    iget v2, p0, Lgd/a;->M:I

    .line 48
    .line 49
    add-int/2addr v1, v2

    .line 50
    iget v2, p0, Lgd/a;->H:I

    .line 51
    .line 52
    add-int/2addr v1, v2

    .line 53
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    :cond_2
    iget v1, p0, Lgd/a;->P:I

    .line 58
    .line 59
    if-lez v1, :cond_3

    .line 60
    .line 61
    iget-object v2, p0, Lgd/a;->O0:[B

    .line 62
    .line 63
    iget v3, p0, Lgd/a;->L:I

    .line 64
    .line 65
    iget v4, p0, Led/c;->c:I

    .line 66
    .line 67
    iget v5, p0, Lgd/a;->R:I

    .line 68
    .line 69
    add-int/2addr v4, v5

    .line 70
    invoke-static {v2, v3, p2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    .line 72
    .line 73
    iget p2, p0, Lgd/a;->L:I

    .line 74
    .line 75
    iget v1, p0, Lgd/a;->P:I

    .line 76
    .line 77
    add-int/2addr p2, v1

    .line 78
    iput p2, p0, Lgd/a;->L:I

    .line 79
    .line 80
    iget p2, p0, Led/c;->c:I

    .line 81
    .line 82
    iget v2, p0, Lgd/a;->R:I

    .line 83
    .line 84
    add-int/2addr p2, v2

    .line 85
    add-int/2addr p2, v1

    .line 86
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    :cond_3
    sub-int/2addr v0, p1

    .line 91
    return v0
.end method

.method public final q0(I[B)I
    .locals 6

    .line 1
    iget v0, p0, Lgd/a;->T:I

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    invoke-static {v0, v1, p2, p1}, Lrd/a;->e(J[BI)V

    .line 5
    .line 6
    .line 7
    add-int/lit8 v0, p1, 0x2

    .line 8
    .line 9
    iget v1, p0, Lgd/a;->V:I

    .line 10
    .line 11
    int-to-long v1, v1

    .line 12
    invoke-static {v1, v2, p2, v0}, Lrd/a;->e(J[BI)V

    .line 13
    .line 14
    .line 15
    add-int/lit8 v0, p1, 0x4

    .line 16
    .line 17
    iget-byte v1, p0, Led/c;->a:B

    .line 18
    .line 19
    const/16 v2, 0x26

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    if-eq v1, v2, :cond_0

    .line 23
    .line 24
    iget v1, p0, Lgd/a;->X:I

    .line 25
    .line 26
    int-to-long v4, v1

    .line 27
    invoke-static {v4, v5, p2, v0}, Lrd/a;->e(J[BI)V

    .line 28
    .line 29
    .line 30
    add-int/lit8 v0, p1, 0x6

    .line 31
    .line 32
    iget v1, p0, Lgd/a;->Y:I

    .line 33
    .line 34
    int-to-long v4, v1

    .line 35
    invoke-static {v4, v5, p2, v0}, Lrd/a;->e(J[BI)V

    .line 36
    .line 37
    .line 38
    add-int/lit8 v0, p1, 0x8

    .line 39
    .line 40
    add-int/lit8 v1, p1, 0x9

    .line 41
    .line 42
    aput-byte v3, p2, v0

    .line 43
    .line 44
    add-int/lit8 v0, p1, 0xa

    .line 45
    .line 46
    aput-byte v3, p2, v1

    .line 47
    .line 48
    int-to-long v4, v3

    .line 49
    invoke-static {v4, v5, p2, v0}, Lrd/a;->e(J[BI)V

    .line 50
    .line 51
    .line 52
    add-int/lit8 v0, p1, 0xc

    .line 53
    .line 54
    iget v1, p0, Lgd/a;->Z:I

    .line 55
    .line 56
    int-to-long v4, v1

    .line 57
    invoke-static {v4, v5, p2, v0}, Lrd/a;->f(J[BI)V

    .line 58
    .line 59
    .line 60
    add-int/lit8 v0, p1, 0x10

    .line 61
    .line 62
    add-int/lit8 v1, p1, 0x11

    .line 63
    .line 64
    aput-byte v3, p2, v0

    .line 65
    .line 66
    add-int/lit8 v0, p1, 0x12

    .line 67
    .line 68
    aput-byte v3, p2, v1

    .line 69
    .line 70
    :cond_0
    iget v1, p0, Lgd/a;->M:I

    .line 71
    .line 72
    int-to-long v4, v1

    .line 73
    invoke-static {v4, v5, p2, v0}, Lrd/a;->e(J[BI)V

    .line 74
    .line 75
    .line 76
    add-int/lit8 v1, v0, 0x2

    .line 77
    .line 78
    iget v4, p0, Lgd/a;->N:I

    .line 79
    .line 80
    int-to-long v4, v4

    .line 81
    invoke-static {v4, v5, p2, v1}, Lrd/a;->e(J[BI)V

    .line 82
    .line 83
    .line 84
    add-int/lit8 v1, v0, 0x4

    .line 85
    .line 86
    iget-byte v4, p0, Led/c;->a:B

    .line 87
    .line 88
    if-ne v4, v2, :cond_1

    .line 89
    .line 90
    iget v4, p0, Lgd/a;->O:I

    .line 91
    .line 92
    int-to-long v4, v4

    .line 93
    invoke-static {v4, v5, p2, v1}, Lrd/a;->e(J[BI)V

    .line 94
    .line 95
    .line 96
    add-int/lit8 v1, v0, 0x6

    .line 97
    .line 98
    :cond_1
    iget v0, p0, Lgd/a;->P:I

    .line 99
    .line 100
    int-to-long v4, v0

    .line 101
    invoke-static {v4, v5, p2, v1}, Lrd/a;->e(J[BI)V

    .line 102
    .line 103
    .line 104
    add-int/lit8 v0, v1, 0x2

    .line 105
    .line 106
    iget v4, p0, Lgd/a;->P:I

    .line 107
    .line 108
    if-nez v4, :cond_2

    .line 109
    .line 110
    const/4 v4, 0x0

    .line 111
    goto :goto_0

    .line 112
    :cond_2
    iget v4, p0, Lgd/a;->R:I

    .line 113
    .line 114
    :goto_0
    int-to-long v4, v4

    .line 115
    invoke-static {v4, v5, p2, v0}, Lrd/a;->e(J[BI)V

    .line 116
    .line 117
    .line 118
    add-int/lit8 v0, v1, 0x4

    .line 119
    .line 120
    iget-byte v4, p0, Led/c;->a:B

    .line 121
    .line 122
    if-ne v4, v2, :cond_3

    .line 123
    .line 124
    iget v2, p0, Lgd/a;->S:I

    .line 125
    .line 126
    int-to-long v2, v2

    .line 127
    invoke-static {v2, v3, p2, v0}, Lrd/a;->e(J[BI)V

    .line 128
    .line 129
    .line 130
    add-int/lit8 v1, v1, 0x6

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_3
    add-int/lit8 v2, v1, 0x5

    .line 134
    .line 135
    iget v4, p0, Lgd/a;->h0:I

    .line 136
    .line 137
    int-to-byte v4, v4

    .line 138
    aput-byte v4, p2, v0

    .line 139
    .line 140
    add-int/lit8 v1, v1, 0x6

    .line 141
    .line 142
    aput-byte v3, p2, v2

    .line 143
    .line 144
    invoke-virtual {p0, v1, p2}, Lgd/a;->v0(I[B)I

    .line 145
    .line 146
    .line 147
    move-result p2

    .line 148
    add-int/2addr v1, p2

    .line 149
    :goto_1
    sub-int/2addr v1, p1

    .line 150
    return v1
.end method

.method public final reset()V
    .locals 1

    .line 1
    invoke-super {p0}, Led/c;->reset()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lgd/a;->I:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lgd/a;->K:Z

    .line 8
    .line 9
    return-void
.end method

.method public final s0()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lgd/a;->K:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    iput-boolean v1, p0, Lgd/a;->K:Z

    .line 7
    .line 8
    iget v0, p0, Lgd/a;->h0:I

    .line 9
    .line 10
    mul-int/lit8 v0, v0, 0x2

    .line 11
    .line 12
    add-int/lit8 v0, v0, 0x3f

    .line 13
    .line 14
    iput v0, p0, Lgd/a;->N:I

    .line 15
    .line 16
    iget-byte v2, p0, Led/c;->a:B

    .line 17
    .line 18
    const/16 v3, 0x25

    .line 19
    .line 20
    if-ne v2, v3, :cond_1

    .line 21
    .line 22
    iget-byte v2, p0, Led/c;->b:B

    .line 23
    .line 24
    const/16 v3, 0x80

    .line 25
    .line 26
    and-int/2addr v2, v3

    .line 27
    if-ne v2, v3, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v2, p0, Lgd/a;->M0:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p0, v0, v2}, Led/c;->m0(ILjava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    add-int/2addr v2, v0

    .line 37
    iput v2, p0, Lgd/a;->N:I

    .line 38
    .line 39
    :cond_1
    :goto_0
    iget v0, p0, Lgd/a;->N:I

    .line 40
    .line 41
    rem-int/lit8 v2, v0, 0x4

    .line 42
    .line 43
    if-nez v2, :cond_2

    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    rsub-int/lit8 v2, v2, 0x4

    .line 48
    .line 49
    :goto_1
    iput v2, p0, Lgd/a;->G:I

    .line 50
    .line 51
    add-int/2addr v0, v2

    .line 52
    iput v0, p0, Lgd/a;->N:I

    .line 53
    .line 54
    iget-object v0, p0, Lgd/a;->O0:[B

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Lgd/a;->u0([B)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    iput v0, p0, Lgd/a;->T:I

    .line 61
    .line 62
    iput v0, p0, Lgd/a;->L:I

    .line 63
    .line 64
    iget v2, p0, Lgd/a;->N0:I

    .line 65
    .line 66
    iget v3, p0, Lgd/a;->N:I

    .line 67
    .line 68
    sub-int/2addr v2, v3

    .line 69
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    iput v0, p0, Lgd/a;->M:I

    .line 74
    .line 75
    sub-int/2addr v2, v0

    .line 76
    iget v3, p0, Lgd/a;->N:I

    .line 77
    .line 78
    add-int/2addr v3, v0

    .line 79
    iput v3, p0, Lgd/a;->R:I

    .line 80
    .line 81
    rem-int/lit8 v0, v3, 0x4

    .line 82
    .line 83
    if-nez v0, :cond_3

    .line 84
    .line 85
    const/4 v0, 0x0

    .line 86
    goto :goto_2

    .line 87
    :cond_3
    rsub-int/lit8 v0, v0, 0x4

    .line 88
    .line 89
    :goto_2
    iput v0, p0, Lgd/a;->H:I

    .line 90
    .line 91
    add-int/2addr v3, v0

    .line 92
    iput v3, p0, Lgd/a;->R:I

    .line 93
    .line 94
    iget-object v0, p0, Lgd/a;->O0:[B

    .line 95
    .line 96
    iget v3, p0, Lgd/a;->L:I

    .line 97
    .line 98
    invoke-virtual {p0, v3, v0}, Lgd/a;->t0(I[B)I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    iput v0, p0, Lgd/a;->V:I

    .line 103
    .line 104
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    iput v0, p0, Lgd/a;->P:I

    .line 109
    .line 110
    goto :goto_5

    .line 111
    :cond_4
    iget-byte v0, p0, Led/c;->a:B

    .line 112
    .line 113
    const/16 v2, -0x60

    .line 114
    .line 115
    if-eq v0, v2, :cond_5

    .line 116
    .line 117
    const/16 v0, 0x26

    .line 118
    .line 119
    int-to-byte v0, v0

    .line 120
    iput-byte v0, p0, Led/c;->a:B

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_5
    const/16 v0, -0x5f

    .line 124
    .line 125
    int-to-byte v0, v0

    .line 126
    iput-byte v0, p0, Led/c;->a:B

    .line 127
    .line 128
    :goto_3
    const/16 v0, 0x33

    .line 129
    .line 130
    iput v0, p0, Lgd/a;->N:I

    .line 131
    .line 132
    iget v2, p0, Lgd/a;->T:I

    .line 133
    .line 134
    iget v3, p0, Lgd/a;->O:I

    .line 135
    .line 136
    sub-int v4, v2, v3

    .line 137
    .line 138
    if-lez v4, :cond_6

    .line 139
    .line 140
    const/4 v4, 0x1

    .line 141
    iput v4, p0, Lgd/a;->G:I

    .line 142
    .line 143
    add-int/2addr v0, v4

    .line 144
    iput v0, p0, Lgd/a;->N:I

    .line 145
    .line 146
    :cond_6
    iget v0, p0, Lgd/a;->M:I

    .line 147
    .line 148
    add-int/2addr v3, v0

    .line 149
    iput v3, p0, Lgd/a;->O:I

    .line 150
    .line 151
    iget v0, p0, Lgd/a;->N0:I

    .line 152
    .line 153
    iget v4, p0, Lgd/a;->N:I

    .line 154
    .line 155
    sub-int/2addr v0, v4

    .line 156
    iget v4, p0, Lgd/a;->G:I

    .line 157
    .line 158
    sub-int/2addr v0, v4

    .line 159
    sub-int/2addr v2, v3

    .line 160
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    iput v2, p0, Lgd/a;->M:I

    .line 165
    .line 166
    sub-int/2addr v0, v2

    .line 167
    iget v3, p0, Lgd/a;->N:I

    .line 168
    .line 169
    add-int/2addr v3, v2

    .line 170
    iput v3, p0, Lgd/a;->R:I

    .line 171
    .line 172
    rem-int/lit8 v2, v3, 0x4

    .line 173
    .line 174
    if-nez v2, :cond_7

    .line 175
    .line 176
    const/4 v2, 0x0

    .line 177
    goto :goto_4

    .line 178
    :cond_7
    rsub-int/lit8 v2, v2, 0x4

    .line 179
    .line 180
    :goto_4
    iput v2, p0, Lgd/a;->H:I

    .line 181
    .line 182
    add-int/2addr v3, v2

    .line 183
    iput v3, p0, Lgd/a;->R:I

    .line 184
    .line 185
    iget v3, p0, Lgd/a;->S:I

    .line 186
    .line 187
    iget v4, p0, Lgd/a;->P:I

    .line 188
    .line 189
    add-int/2addr v3, v4

    .line 190
    iput v3, p0, Lgd/a;->S:I

    .line 191
    .line 192
    sub-int/2addr v0, v2

    .line 193
    iget v2, p0, Lgd/a;->V:I

    .line 194
    .line 195
    sub-int/2addr v2, v3

    .line 196
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    iput v0, p0, Lgd/a;->P:I

    .line 201
    .line 202
    :goto_5
    iget v0, p0, Lgd/a;->O:I

    .line 203
    .line 204
    iget v2, p0, Lgd/a;->M:I

    .line 205
    .line 206
    add-int/2addr v0, v2

    .line 207
    iget v2, p0, Lgd/a;->T:I

    .line 208
    .line 209
    if-lt v0, v2, :cond_8

    .line 210
    .line 211
    iget v0, p0, Lgd/a;->S:I

    .line 212
    .line 213
    iget v2, p0, Lgd/a;->P:I

    .line 214
    .line 215
    add-int/2addr v0, v2

    .line 216
    iget v2, p0, Lgd/a;->V:I

    .line 217
    .line 218
    if-lt v0, v2, :cond_8

    .line 219
    .line 220
    iput-boolean v1, p0, Lgd/a;->I:Z

    .line 221
    .line 222
    :cond_8
    return-void
.end method

.method public abstract t0(I[B)I
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Led/c;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, ",totalParameterCount="

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget v2, p0, Lgd/a;->T:I

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, ",totalDataCount="

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget v2, p0, Lgd/a;->V:I

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v2, ",maxParameterCount="

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget v2, p0, Lgd/a;->X:I

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v2, ",maxDataCount="

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget v2, p0, Lgd/a;->Y:I

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v2, ",maxSetupCount=0,flags=0x"

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const/4 v2, 0x0

    .line 61
    const/4 v3, 0x2

    .line 62
    invoke-static {v2, v3}, Lge/a;->l(II)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v2, ",timeout="

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    iget v2, p0, Lgd/a;->Z:I

    .line 75
    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v2, ",parameterCount="

    .line 80
    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    iget v2, p0, Lgd/a;->M:I

    .line 85
    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v2, ",parameterOffset="

    .line 90
    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    iget v2, p0, Lgd/a;->N:I

    .line 95
    .line 96
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v2, ",parameterDisplacement="

    .line 100
    .line 101
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    iget v2, p0, Lgd/a;->O:I

    .line 105
    .line 106
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v2, ",dataCount="

    .line 110
    .line 111
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    iget v2, p0, Lgd/a;->P:I

    .line 115
    .line 116
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string v2, ",dataOffset="

    .line 120
    .line 121
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    iget v2, p0, Lgd/a;->R:I

    .line 125
    .line 126
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string v2, ",dataDisplacement="

    .line 130
    .line 131
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    iget v2, p0, Lgd/a;->S:I

    .line 135
    .line 136
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v2, ",setupCount="

    .line 140
    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    iget v2, p0, Lgd/a;->h0:I

    .line 145
    .line 146
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string v2, ",pad="

    .line 150
    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    iget v2, p0, Lgd/a;->G:I

    .line 155
    .line 156
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string v2, ",pad1="

    .line 160
    .line 161
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    iget v2, p0, Lgd/a;->H:I

    .line 165
    .line 166
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    return-object v0
.end method

.method public abstract u0([B)I
.end method

.method public abstract v0(I[B)I
.end method
