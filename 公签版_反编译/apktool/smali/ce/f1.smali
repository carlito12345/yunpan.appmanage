.class public final Lce/f1;
.super Lce/j0;
.source "SourceFile"


# instance fields
.field public M0:Z

.field public N0:I

.field public O0:I

.field public P0:I

.field public Q0:Ljava/lang/String;

.field public R0:I

.field public t0:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lce/j0;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x32

    .line 5
    .line 6
    iput-byte v0, p0, Lce/q;->c:B

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-byte v0, p0, Lce/j0;->S:B

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-byte v0, p0, Lce/j0;->S:B

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const-string v0, "Trans2FindFirst2Response["

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const-string v0, "Trans2FindNext2Response["

    .line 10
    .line 11
    :goto_0
    new-instance v1, Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0}, Lg/b;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-super {p0}, Lce/j0;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, ",sid="

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget v2, p0, Lce/f1;->t0:I

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v2, ",searchCount="

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget v2, p0, Lce/j0;->Z:I

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v2, ",isEndOfSearch="

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-boolean v2, p0, Lce/f1;->M0:Z

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v2, ",eaErrorOffset="

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget v2, p0, Lce/f1;->N0:I

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v2, ",lastNameOffset="

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget v2, p0, Lce/f1;->O0:I

    .line 70
    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v2, ",lastName="

    .line 75
    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget-object v2, p0, Lce/f1;->Q0:Ljava/lang/String;

    .line 80
    .line 81
    const-string v3, "]"

    .line 82
    .line 83
    invoke-static {v2, v3, v0}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return-object v1
.end method

.method public final v(II[B)I
    .locals 6

    .line 1
    iget p2, p0, Lce/f1;->O0:I

    .line 2
    .line 3
    add-int/2addr p2, p1

    .line 4
    iput p2, p0, Lce/f1;->P0:I

    .line 5
    .line 6
    iget p2, p0, Lce/j0;->Z:I

    .line 7
    .line 8
    new-array p2, p2, [Lce/e1;

    .line 9
    .line 10
    iput-object p2, p0, Lce/j0;->h0:[Lce/g;

    .line 11
    .line 12
    const/4 p2, 0x0

    .line 13
    :goto_0
    iget v0, p0, Lce/j0;->Z:I

    .line 14
    .line 15
    if-ge p2, v0, :cond_5

    .line 16
    .line 17
    iget-object v0, p0, Lce/j0;->h0:[Lce/g;

    .line 18
    .line 19
    new-instance v1, Lce/e1;

    .line 20
    .line 21
    invoke-direct {v1}, Lce/e1;-><init>()V

    .line 22
    .line 23
    .line 24
    aput-object v1, v0, p2

    .line 25
    .line 26
    invoke-static {p1, p3}, Lce/q;->g(I[B)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iput v0, v1, Lce/e1;->a:I

    .line 31
    .line 32
    add-int/lit8 v0, p1, 0x4

    .line 33
    .line 34
    invoke-static {v0, p3}, Lce/q;->g(I[B)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iput v0, v1, Lce/e1;->b:I

    .line 39
    .line 40
    add-int/lit8 v0, p1, 0x8

    .line 41
    .line 42
    invoke-static {v0, p3}, Lce/q;->l(I[B)J

    .line 43
    .line 44
    .line 45
    move-result-wide v2

    .line 46
    iput-wide v2, v1, Lce/e1;->c:J

    .line 47
    .line 48
    add-int/lit8 v0, p1, 0x18

    .line 49
    .line 50
    invoke-static {v0, p3}, Lce/q;->l(I[B)J

    .line 51
    .line 52
    .line 53
    move-result-wide v2

    .line 54
    iput-wide v2, v1, Lce/e1;->d:J

    .line 55
    .line 56
    add-int/lit8 v0, p1, 0x28

    .line 57
    .line 58
    invoke-static {v0, p3}, Lce/q;->h(I[B)J

    .line 59
    .line 60
    .line 61
    move-result-wide v2

    .line 62
    iput-wide v2, v1, Lce/e1;->e:J

    .line 63
    .line 64
    add-int/lit8 v0, p1, 0x38

    .line 65
    .line 66
    invoke-static {v0, p3}, Lce/q;->g(I[B)I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    iput v0, v1, Lce/e1;->f:I

    .line 71
    .line 72
    add-int/lit8 v0, p1, 0x3c

    .line 73
    .line 74
    invoke-static {v0, p3}, Lce/q;->g(I[B)I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    iput v0, v1, Lce/e1;->g:I

    .line 79
    .line 80
    add-int/lit8 v2, p1, 0x5e

    .line 81
    .line 82
    const/4 v3, 0x1

    .line 83
    :try_start_0
    iget-boolean v4, p0, Lce/q;->q:Z

    .line 84
    .line 85
    if-eqz v4, :cond_0

    .line 86
    .line 87
    new-instance v4, Ljava/lang/String;

    .line 88
    .line 89
    const-string v5, "UTF-16LE"

    .line 90
    .line 91
    invoke-direct {v4, p3, v2, v0, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 92
    .line 93
    .line 94
    goto :goto_2

    .line 95
    :catch_0
    move-exception v0

    .line 96
    goto :goto_1

    .line 97
    :cond_0
    if-lez v0, :cond_1

    .line 98
    .line 99
    add-int v4, v2, v0

    .line 100
    .line 101
    sub-int/2addr v4, v3

    .line 102
    aget-byte v4, p3, v4

    .line 103
    .line 104
    if-nez v4, :cond_1

    .line 105
    .line 106
    add-int/lit8 v0, v0, -0x1

    .line 107
    .line 108
    :cond_1
    new-instance v4, Ljava/lang/String;

    .line 109
    .line 110
    sget-object v5, Lce/q0;->m0:Ljava/lang/String;

    .line 111
    .line 112
    invoke-direct {v4, p3, v2, v0, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .line 114
    .line 115
    goto :goto_2

    .line 116
    :goto_1
    sget v2, Lde/d;->b:I

    .line 117
    .line 118
    if-le v2, v3, :cond_2

    .line 119
    .line 120
    sget-object v2, Lce/q;->A:Lde/d;

    .line 121
    .line 122
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 123
    .line 124
    .line 125
    :cond_2
    const/4 v4, 0x0

    .line 126
    :goto_2
    iput-object v4, v1, Lce/e1;->h:Ljava/lang/String;

    .line 127
    .line 128
    iget v0, p0, Lce/f1;->P0:I

    .line 129
    .line 130
    if-lt v0, p1, :cond_4

    .line 131
    .line 132
    iget v2, v1, Lce/e1;->a:I

    .line 133
    .line 134
    if-eqz v2, :cond_3

    .line 135
    .line 136
    add-int/2addr v2, p1

    .line 137
    if-ge v0, v2, :cond_4

    .line 138
    .line 139
    :cond_3
    iput-object v4, p0, Lce/f1;->Q0:Ljava/lang/String;

    .line 140
    .line 141
    iget v0, v1, Lce/e1;->b:I

    .line 142
    .line 143
    iput v0, p0, Lce/f1;->R0:I

    .line 144
    .line 145
    :cond_4
    iget v0, v1, Lce/e1;->a:I

    .line 146
    .line 147
    add-int/2addr p1, v0

    .line 148
    add-int/lit8 p2, p2, 0x1

    .line 149
    .line 150
    goto/16 :goto_0

    .line 151
    .line 152
    :cond_5
    iget p1, p0, Lce/j0;->R:I

    .line 153
    .line 154
    return p1
.end method

.method public final w([B)I
    .locals 4

    .line 1
    iget-byte v0, p0, Lce/j0;->S:B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, v2, :cond_0

    .line 6
    .line 7
    invoke-static {v1, p1}, Lce/q;->f(I[B)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lce/f1;->t0:I

    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    invoke-static {v0, p1}, Lce/q;->f(I[B)I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    iput v3, p0, Lce/j0;->Z:I

    .line 21
    .line 22
    add-int/lit8 v3, v0, 0x2

    .line 23
    .line 24
    aget-byte v3, p1, v3

    .line 25
    .line 26
    and-int/2addr v3, v2

    .line 27
    if-ne v3, v2, :cond_1

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    :cond_1
    iput-boolean v1, p0, Lce/f1;->M0:Z

    .line 31
    .line 32
    add-int/lit8 v1, v0, 0x4

    .line 33
    .line 34
    invoke-static {v1, p1}, Lce/q;->f(I[B)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    iput v1, p0, Lce/f1;->N0:I

    .line 39
    .line 40
    add-int/lit8 v1, v0, 0x6

    .line 41
    .line 42
    invoke-static {v1, p1}, Lce/q;->f(I[B)I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    iput p1, p0, Lce/f1;->O0:I

    .line 47
    .line 48
    add-int/lit8 v0, v0, 0x8

    .line 49
    .line 50
    return v0
.end method
