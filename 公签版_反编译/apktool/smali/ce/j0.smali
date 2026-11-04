.class public abstract Lce/j0;
.super Lce/q;
.source "SourceFile"

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field public C:I

.field public D:I

.field public E:Z

.field public F:Z

.field public G:I

.field public H:I

.field public I:I

.field public K:I

.field public L:I

.field public M:I

.field public N:I

.field public O:I

.field public P:I

.field public R:I

.field public S:B

.field public T:Z

.field public V:Z

.field public X:[B

.field public Y:I

.field public Z:I

.field public h0:[Lce/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lce/q;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lce/j0;->T:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lce/j0;->V:Z

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lce/j0;->X:[B

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final d(I[B)I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lce/j0;->D:I

    .line 3
    .line 4
    iput v0, p0, Lce/j0;->C:I

    .line 5
    .line 6
    iget v1, p0, Lce/j0;->I:I

    .line 7
    .line 8
    if-lez v1, :cond_0

    .line 9
    .line 10
    iget v2, p0, Lce/j0;->K:I

    .line 11
    .line 12
    iget v3, p0, Lce/q;->e:I

    .line 13
    .line 14
    sub-int v3, p1, v3

    .line 15
    .line 16
    sub-int/2addr v2, v3

    .line 17
    iput v2, p0, Lce/j0;->C:I

    .line 18
    .line 19
    add-int/2addr p1, v2

    .line 20
    iget-object v2, p0, Lce/j0;->X:[B

    .line 21
    .line 22
    iget v3, p0, Lce/j0;->L:I

    .line 23
    .line 24
    invoke-static {p2, p1, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    .line 26
    .line 27
    iget v1, p0, Lce/j0;->I:I

    .line 28
    .line 29
    add-int/2addr p1, v1

    .line 30
    :cond_0
    iget v1, p0, Lce/j0;->R:I

    .line 31
    .line 32
    if-lez v1, :cond_1

    .line 33
    .line 34
    iget v2, p0, Lce/j0;->M:I

    .line 35
    .line 36
    iget v3, p0, Lce/q;->e:I

    .line 37
    .line 38
    sub-int v3, p1, v3

    .line 39
    .line 40
    sub-int/2addr v2, v3

    .line 41
    iput v2, p0, Lce/j0;->D:I

    .line 42
    .line 43
    add-int/2addr p1, v2

    .line 44
    iget-object v2, p0, Lce/j0;->X:[B

    .line 45
    .line 46
    iget v3, p0, Lce/j0;->P:I

    .line 47
    .line 48
    iget v4, p0, Lce/j0;->N:I

    .line 49
    .line 50
    add-int/2addr v3, v4

    .line 51
    invoke-static {p2, p1, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    .line 53
    .line 54
    :cond_1
    iget-boolean p1, p0, Lce/j0;->E:Z

    .line 55
    .line 56
    const/4 p2, 0x1

    .line 57
    if-nez p1, :cond_2

    .line 58
    .line 59
    iget p1, p0, Lce/j0;->L:I

    .line 60
    .line 61
    iget v1, p0, Lce/j0;->I:I

    .line 62
    .line 63
    add-int/2addr p1, v1

    .line 64
    iget v1, p0, Lce/j0;->G:I

    .line 65
    .line 66
    if-ne p1, v1, :cond_2

    .line 67
    .line 68
    iput-boolean p2, p0, Lce/j0;->E:Z

    .line 69
    .line 70
    :cond_2
    iget-boolean p1, p0, Lce/j0;->F:Z

    .line 71
    .line 72
    if-nez p1, :cond_3

    .line 73
    .line 74
    iget p1, p0, Lce/j0;->N:I

    .line 75
    .line 76
    iget v1, p0, Lce/j0;->R:I

    .line 77
    .line 78
    add-int/2addr p1, v1

    .line 79
    iget v1, p0, Lce/j0;->H:I

    .line 80
    .line 81
    if-ne p1, v1, :cond_3

    .line 82
    .line 83
    iput-boolean p2, p0, Lce/j0;->F:Z

    .line 84
    .line 85
    :cond_3
    iget-boolean p1, p0, Lce/j0;->E:Z

    .line 86
    .line 87
    if-eqz p1, :cond_4

    .line 88
    .line 89
    iget-boolean p1, p0, Lce/j0;->F:Z

    .line 90
    .line 91
    if-eqz p1, :cond_4

    .line 92
    .line 93
    iput-boolean v0, p0, Lce/j0;->T:Z

    .line 94
    .line 95
    iget-object p1, p0, Lce/j0;->X:[B

    .line 96
    .line 97
    invoke-virtual {p0, p1}, Lce/j0;->w([B)I

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lce/j0;->X:[B

    .line 101
    .line 102
    iget p2, p0, Lce/j0;->P:I

    .line 103
    .line 104
    iget v0, p0, Lce/j0;->H:I

    .line 105
    .line 106
    invoke-virtual {p0, p2, v0, p1}, Lce/j0;->v(II[B)I

    .line 107
    .line 108
    .line 109
    :cond_4
    iget p1, p0, Lce/j0;->C:I

    .line 110
    .line 111
    iget p2, p0, Lce/j0;->I:I

    .line 112
    .line 113
    add-int/2addr p1, p2

    .line 114
    iget p2, p0, Lce/j0;->D:I

    .line 115
    .line 116
    add-int/2addr p1, p2

    .line 117
    iget p2, p0, Lce/j0;->R:I

    .line 118
    .line 119
    add-int/2addr p1, p2

    .line 120
    return p1
.end method

.method public final hasMoreElements()Z
    .locals 1

    .line 1
    iget v0, p0, Lce/q;->h:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lce/j0;->T:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public final i(I[B)I
    .locals 2

    .line 1
    invoke-static {p1, p2}, Lce/q;->f(I[B)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lce/j0;->G:I

    .line 6
    .line 7
    iget v1, p0, Lce/j0;->P:I

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    iput v0, p0, Lce/j0;->P:I

    .line 12
    .line 13
    :cond_0
    add-int/lit8 v0, p1, 0x2

    .line 14
    .line 15
    invoke-static {v0, p2}, Lce/q;->f(I[B)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iput v0, p0, Lce/j0;->H:I

    .line 20
    .line 21
    add-int/lit8 v0, p1, 0x6

    .line 22
    .line 23
    invoke-static {v0, p2}, Lce/q;->f(I[B)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iput v0, p0, Lce/j0;->I:I

    .line 28
    .line 29
    add-int/lit8 v0, p1, 0x8

    .line 30
    .line 31
    invoke-static {v0, p2}, Lce/q;->f(I[B)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iput v0, p0, Lce/j0;->K:I

    .line 36
    .line 37
    add-int/lit8 v0, p1, 0xa

    .line 38
    .line 39
    invoke-static {v0, p2}, Lce/q;->f(I[B)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iput v0, p0, Lce/j0;->L:I

    .line 44
    .line 45
    add-int/lit8 v0, p1, 0xc

    .line 46
    .line 47
    invoke-static {v0, p2}, Lce/q;->f(I[B)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    iput v0, p0, Lce/j0;->R:I

    .line 52
    .line 53
    add-int/lit8 v0, p1, 0xe

    .line 54
    .line 55
    invoke-static {v0, p2}, Lce/q;->f(I[B)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    iput v0, p0, Lce/j0;->M:I

    .line 60
    .line 61
    add-int/lit8 v0, p1, 0x10

    .line 62
    .line 63
    invoke-static {v0, p2}, Lce/q;->f(I[B)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    iput v0, p0, Lce/j0;->N:I

    .line 68
    .line 69
    add-int/lit8 v0, p1, 0x12

    .line 70
    .line 71
    aget-byte p2, p2, v0

    .line 72
    .line 73
    and-int/lit16 p2, p2, 0xff

    .line 74
    .line 75
    iput p2, p0, Lce/j0;->O:I

    .line 76
    .line 77
    add-int/lit8 v0, p1, 0x14

    .line 78
    .line 79
    if-eqz p2, :cond_1

    .line 80
    .line 81
    sget p2, Lde/d;->b:I

    .line 82
    .line 83
    const/4 v1, 0x2

    .line 84
    if-le p2, v1, :cond_1

    .line 85
    .line 86
    sget-object p2, Lce/q;->A:Lde/d;

    .line 87
    .line 88
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    :cond_1
    sub-int/2addr v0, p1

    .line 92
    return v0
.end method

.method public final m()V
    .locals 2

    .line 1
    invoke-super {p0}, Lce/q;->m()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lce/j0;->P:I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lce/j0;->T:Z

    .line 9
    .line 10
    iput-boolean v1, p0, Lce/j0;->V:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Lce/j0;->F:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lce/j0;->E:Z

    .line 15
    .line 16
    return-void
.end method

.method public final nextElement()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lce/j0;->V:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lce/j0;->V:Z

    .line 7
    .line 8
    :cond_0
    return-object p0
.end method

.method public final o(I[B)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final t(I[B)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

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
    invoke-super {p0}, Lce/q;->toString()Ljava/lang/String;

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
    iget v2, p0, Lce/j0;->G:I

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
    iget v2, p0, Lce/j0;->H:I

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v2, ",parameterCount="

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget v2, p0, Lce/j0;->I:I

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v2, ",parameterOffset="

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget v2, p0, Lce/j0;->K:I

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v2, ",parameterDisplacement="

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    iget v2, p0, Lce/j0;->L:I

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v2, ",dataCount="

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget v2, p0, Lce/j0;->R:I

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v2, ",dataOffset="

    .line 76
    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    iget v2, p0, Lce/j0;->M:I

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v2, ",dataDisplacement="

    .line 86
    .line 87
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget v2, p0, Lce/j0;->N:I

    .line 91
    .line 92
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v2, ",setupCount="

    .line 96
    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    iget v2, p0, Lce/j0;->O:I

    .line 101
    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v2, ",pad="

    .line 106
    .line 107
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    iget v2, p0, Lce/j0;->C:I

    .line 111
    .line 112
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v2, ",pad1="

    .line 116
    .line 117
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    iget v2, p0, Lce/j0;->D:I

    .line 121
    .line 122
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    return-object v0
.end method

.method public abstract v(II[B)I
.end method

.method public abstract w([B)I
.end method
