.class public final Lnb/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmb/i;


# instance fields
.field public final a:[Ld3/g;

.field public b:Z


# direct methods
.method public constructor <init>(Lmb/g;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x40

    .line 5
    .line 6
    new-array v0, v0, [Ld3/g;

    .line 7
    .line 8
    iput-object v0, p0, Lnb/a;->a:[Ld3/g;

    .line 9
    .line 10
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p0}, Lmb/g;->a(Lmb/i;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final synthetic b(Lmb/g;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final declared-synchronized c(Lmb/g;IIIILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    sub-int/2addr p4, p2

    .line 3
    const/4 p1, 0x0

    .line 4
    :goto_0
    :try_start_0
    iget-object p3, p0, Lnb/a;->a:[Ld3/g;

    .line 5
    .line 6
    array-length p5, p3

    .line 7
    if-ge p1, p5, :cond_3

    .line 8
    .line 9
    aget-object p5, p3, p1

    .line 10
    .line 11
    if-nez p5, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget p6, p5, Ld3/g;->b:I

    .line 15
    .line 16
    if-le p6, p2, :cond_1

    .line 17
    .line 18
    add-int/2addr p6, p4

    .line 19
    iput p6, p5, Ld3/g;->b:I

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto :goto_2

    .line 24
    :cond_1
    if-ne p6, p2, :cond_2

    .line 25
    .line 26
    const/4 p5, 0x0

    .line 27
    aput-object p5, p3, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    :cond_2
    :goto_1
    add-int/lit8 p1, p1, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_3
    monitor-exit p0

    .line 33
    return-void

    .line 34
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    goto :goto_4

    .line 36
    :goto_3
    throw p1

    .line 37
    :goto_4
    goto :goto_3
.end method

.method public final j(Lmb/g;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final declared-synchronized k(Lmb/g;IIIILjava/lang/StringBuilder;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    sub-int p1, p4, p2

    .line 3
    .line 4
    const/4 p3, 0x0

    .line 5
    :goto_0
    :try_start_0
    iget-object p5, p0, Lnb/a;->a:[Ld3/g;

    .line 6
    .line 7
    array-length p6, p5

    .line 8
    if-ge p3, p6, :cond_3

    .line 9
    .line 10
    aget-object p6, p5, p3

    .line 11
    .line 12
    if-nez p6, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    iget v0, p6, Ld3/g;->b:I

    .line 16
    .line 17
    if-lt v0, p2, :cond_2

    .line 18
    .line 19
    if-le v0, p4, :cond_1

    .line 20
    .line 21
    sub-int/2addr v0, p1

    .line 22
    iput v0, p6, Ld3/g;->b:I

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto :goto_2

    .line 27
    :cond_1
    const/4 p6, 0x0

    .line 28
    aput-object p6, p5, p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    :cond_2
    :goto_1
    add-int/lit8 p3, p3, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    monitor-exit p0

    .line 34
    return-void

    .line 35
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    goto :goto_4

    .line 37
    :goto_3
    throw p1

    .line 38
    :goto_4
    goto :goto_3
.end method

.method public final s(ILmb/h;)Lnb/b;
    .locals 13

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-boolean v1, p0, Lnb/a;->b:Z

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-static {v2, v2}, Lsb/h;->g(II)J

    .line 6
    .line 7
    .line 8
    move-result-wide v3

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    new-instance p1, Lnb/b;

    .line 12
    .line 13
    new-array v0, v0, [J

    .line 14
    .line 15
    aput-wide v3, v0, v2

    .line 16
    .line 17
    iget p2, p2, Lmb/h;->c:I

    .line 18
    .line 19
    invoke-direct {p1, v0, p2}, Lnb/b;-><init>([JI)V

    .line 20
    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_0
    monitor-enter p0

    .line 24
    const/4 v1, 0x0

    .line 25
    :goto_0
    :try_start_0
    iget-object v5, p0, Lnb/a;->a:[Ld3/g;

    .line 26
    .line 27
    array-length v6, v5

    .line 28
    if-ge v1, v6, :cond_2

    .line 29
    .line 30
    aget-object v5, v5, v1

    .line 31
    .line 32
    if-eqz v5, :cond_1

    .line 33
    .line 34
    iget v6, v5, Ld3/g;->b:I

    .line 35
    .line 36
    if-ne v6, p1, :cond_1

    .line 37
    .line 38
    iget-object p1, v5, Ld3/g;->c:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p1, Lnb/b;

    .line 41
    .line 42
    monitor-exit p0

    .line 43
    return-object p1

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    goto :goto_3

    .line 46
    :cond_1
    add-int/2addr v1, v0

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    iget v1, p2, Lmb/h;->c:I

    .line 50
    .line 51
    iget v5, p2, Lmb/h;->d:I

    .line 52
    .line 53
    if-lez v5, :cond_4

    .line 54
    .line 55
    invoke-static {v1}, Lsb/h;->e(I)[C

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-static {p2, v2, v1, v3, v2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 60
    .line 61
    .line 62
    new-instance v4, Ljava/text/Bidi;

    .line 63
    .line 64
    iget v11, p2, Lmb/h;->c:I

    .line 65
    .line 66
    const/4 v8, 0x0

    .line 67
    const/4 v12, -0x2

    .line 68
    const/4 v9, 0x0

    .line 69
    const/4 v10, 0x0

    .line 70
    move-object v6, v4

    .line 71
    move-object v7, v3

    .line 72
    invoke-direct/range {v6 .. v12}, Ljava/text/Bidi;-><init>([CI[BIII)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4}, Ljava/text/Bidi;->getRunCount()I

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    new-array v5, p2, [J

    .line 80
    .line 81
    const/4 v6, 0x0

    .line 82
    :goto_1
    if-ge v6, p2, :cond_3

    .line 83
    .line 84
    invoke-virtual {v4, v6}, Ljava/text/Bidi;->getRunStart(I)I

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    invoke-virtual {v4, v6}, Ljava/text/Bidi;->getRunLevel(I)I

    .line 89
    .line 90
    .line 91
    move-result v8

    .line 92
    invoke-static {v7, v8}, Lsb/h;->g(II)J

    .line 93
    .line 94
    .line 95
    move-result-wide v7

    .line 96
    aput-wide v7, v5, v6

    .line 97
    .line 98
    add-int/2addr v6, v0

    .line 99
    goto :goto_1

    .line 100
    :cond_3
    invoke-static {v3}, Lsb/h;->h([C)V

    .line 101
    .line 102
    .line 103
    new-instance p2, Lnb/b;

    .line 104
    .line 105
    invoke-direct {p2, v5, v1}, Lnb/b;-><init>([JI)V

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_4
    new-instance p2, Lnb/b;

    .line 110
    .line 111
    new-array v5, v0, [J

    .line 112
    .line 113
    aput-wide v3, v5, v2

    .line 114
    .line 115
    invoke-direct {p2, v5, v1}, Lnb/b;-><init>([JI)V

    .line 116
    .line 117
    .line 118
    :goto_2
    monitor-enter p0

    .line 119
    :try_start_1
    iget-object v1, p0, Lnb/a;->a:[Ld3/g;

    .line 120
    .line 121
    array-length v3, v1

    .line 122
    sub-int/2addr v3, v0

    .line 123
    invoke-static {v1, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lnb/a;->a:[Ld3/g;

    .line 127
    .line 128
    new-instance v1, Ld3/g;

    .line 129
    .line 130
    const/4 v3, 0x3

    .line 131
    invoke-direct {v1, p1, v3, p2}, Ld3/g;-><init>(IILjava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    aput-object v1, v0, v2

    .line 135
    .line 136
    monitor-exit p0

    .line 137
    return-object p2

    .line 138
    :catchall_1
    move-exception p1

    .line 139
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 140
    throw p1

    .line 141
    :goto_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 142
    goto :goto_5

    .line 143
    :goto_4
    throw p1

    .line 144
    :goto_5
    goto :goto_4
.end method
