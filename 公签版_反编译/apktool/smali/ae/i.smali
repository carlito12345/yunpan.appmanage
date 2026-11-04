.class public final Lae/i;
.super Lae/e;
.source "SourceFile"


# instance fields
.field public A:I

.field public final B:[B

.field public C:[Lae/g;

.field public final z:Lae/g;


# direct methods
.method public constructor <init>(Lae/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lae/e;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lae/i;->z:Lae/g;

    .line 5
    .line 6
    new-instance p1, Lae/b;

    .line 7
    .line 8
    invoke-direct {p1}, Lae/b;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lae/e;->r:Lae/b;

    .line 12
    .line 13
    const/4 p1, 0x6

    .line 14
    new-array p1, p1, [B

    .line 15
    .line 16
    iput-object p1, p0, Lae/i;->B:[B

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a(I[B)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lae/e;->e(I[B)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final d(I[B)I
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    aget-byte v2, v1, p1

    .line 6
    .line 7
    and-int/lit16 v2, v2, 0xff

    .line 8
    .line 9
    mul-int/lit8 v3, v2, 0x12

    .line 10
    .line 11
    iget v4, v0, Lae/e;->x:I

    .line 12
    .line 13
    sub-int/2addr v4, v3

    .line 14
    const/4 v5, 0x1

    .line 15
    sub-int/2addr v4, v5

    .line 16
    add-int/lit8 v6, p1, 0x1

    .line 17
    .line 18
    iput v2, v0, Lae/i;->A:I

    .line 19
    .line 20
    add-int/2addr v3, v6

    .line 21
    iget-object v2, v0, Lae/i;->B:[B

    .line 22
    .line 23
    const/4 v7, 0x0

    .line 24
    const/4 v8, 0x6

    .line 25
    invoke-static {v1, v3, v2, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    .line 27
    .line 28
    iget v2, v0, Lae/i;->A:I

    .line 29
    .line 30
    new-array v2, v2, [Lae/g;

    .line 31
    .line 32
    iput-object v2, v0, Lae/i;->C:[Lae/g;

    .line 33
    .line 34
    iget-object v2, v0, Lae/i;->z:Lae/g;

    .line 35
    .line 36
    iget-object v3, v2, Lae/g;->a:Lae/b;

    .line 37
    .line 38
    iget-object v3, v3, Lae/b;->b:Ljava/lang/String;

    .line 39
    .line 40
    move v9, v6

    .line 41
    const/4 v8, 0x0

    .line 42
    const/4 v10, 0x0

    .line 43
    :goto_0
    :try_start_0
    iget v11, v0, Lae/i;->A:I

    .line 44
    .line 45
    if-ge v8, v11, :cond_4

    .line 46
    .line 47
    add-int/lit8 v11, v9, 0xe

    .line 48
    .line 49
    :goto_1
    aget-byte v12, v1, v11

    .line 50
    .line 51
    const/16 v13, 0x20

    .line 52
    .line 53
    if-ne v12, v13, :cond_0

    .line 54
    .line 55
    add-int/lit8 v11, v11, -0x1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_0
    new-instance v12, Ljava/lang/String;

    .line 59
    .line 60
    sub-int/2addr v11, v9

    .line 61
    add-int/2addr v11, v5

    .line 62
    sget-object v13, Lae/b;->f:Ljava/lang/String;

    .line 63
    .line 64
    invoke-direct {v12, v1, v9, v11, v13}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 65
    .line 66
    .line 67
    add-int/lit8 v11, v9, 0xf

    .line 68
    .line 69
    aget-byte v11, v1, v11

    .line 70
    .line 71
    and-int/lit16 v11, v11, 0xff

    .line 72
    .line 73
    add-int/lit8 v13, v9, 0x10

    .line 74
    .line 75
    aget-byte v13, v1, v13

    .line 76
    .line 77
    if-nez v10, :cond_3

    .line 78
    .line 79
    iget-object v13, v2, Lae/g;->a:Lae/b;

    .line 80
    .line 81
    iget v14, v13, Lae/b;->c:I

    .line 82
    .line 83
    if-ne v14, v11, :cond_3

    .line 84
    .line 85
    sget-object v14, Lae/g;->k:Lae/b;

    .line 86
    .line 87
    if-eq v13, v14, :cond_1

    .line 88
    .line 89
    iget-object v13, v13, Lae/b;->a:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v13

    .line 95
    if-eqz v13, :cond_3

    .line 96
    .line 97
    :cond_1
    iget-object v10, v2, Lae/g;->a:Lae/b;

    .line 98
    .line 99
    if-ne v10, v14, :cond_2

    .line 100
    .line 101
    new-instance v10, Lae/b;

    .line 102
    .line 103
    invoke-direct {v10, v12, v11, v3}, Lae/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 104
    .line 105
    .line 106
    iput-object v10, v2, Lae/g;->a:Lae/b;

    .line 107
    .line 108
    :cond_2
    iput-boolean v5, v2, Lae/g;->c:Z

    .line 109
    .line 110
    iget-object v10, v0, Lae/i;->C:[Lae/g;

    .line 111
    .line 112
    aput-object v2, v10, v8

    .line 113
    .line 114
    const/4 v10, 0x1

    .line 115
    goto :goto_2

    .line 116
    :cond_3
    iget-object v13, v0, Lae/i;->C:[Lae/g;

    .line 117
    .line 118
    new-instance v14, Lae/g;

    .line 119
    .line 120
    new-instance v15, Lae/b;

    .line 121
    .line 122
    invoke-direct {v15, v12, v11, v3}, Lae/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 123
    .line 124
    .line 125
    iget v11, v2, Lae/g;->b:I

    .line 126
    .line 127
    invoke-direct {v14, v15, v11, v7}, Lae/g;-><init>(Lae/b;II)V

    .line 128
    .line 129
    .line 130
    aput-object v14, v13, v8
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .line 132
    :goto_2
    add-int/lit8 v9, v9, 0x12

    .line 133
    .line 134
    add-int/lit8 v8, v8, 0x1

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :catch_0
    :cond_4
    sub-int/2addr v9, v6

    .line 138
    add-int/2addr v9, v6

    .line 139
    new-array v2, v4, [B

    .line 140
    .line 141
    invoke-static {v1, v9, v2, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    .line 143
    .line 144
    add-int/2addr v9, v4

    .line 145
    sub-int v9, v9, p1

    .line 146
    .line 147
    return v9
.end method

.method public final g(I[B)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "NodeStatusResponse["

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, Lae/e;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const-string v3, "]"

    .line 15
    .line 16
    invoke-static {v2, v3, v1}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method
