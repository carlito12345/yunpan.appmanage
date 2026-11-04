.class public final Lsd/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public final e:Lvc/f;


# direct methods
.method public constructor <init>(Lvc/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lsd/b;->e:Lvc/f;

    return-void
.end method

.method public constructor <init>(Lvc/f;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lsd/b;->e:Lvc/f;

    .line 5
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xf

    if-le v0, v2, :cond_0

    .line 6
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 7
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lsd/b;->a:Ljava/lang/String;

    .line 8
    iput p3, p0, Lsd/b;->c:I

    if-eqz p4, :cond_1

    .line 9
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lwc/a;

    .line 10
    iget-object p4, p1, Lwc/a;->a0:Ljava/lang/String;

    .line 11
    :goto_0
    iput-object p4, p0, Lsd/b;->b:Ljava/lang/String;

    .line 12
    iput v1, p0, Lsd/b;->d:I

    return-void
.end method

.method public constructor <init>(Lvc/f;Lsd/b;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lsd/b;->e:Lvc/f;

    .line 15
    iget-object p1, p2, Lsd/b;->a:Ljava/lang/String;

    .line 16
    iput-object p1, p0, Lsd/b;->a:Ljava/lang/String;

    .line 17
    iget p1, p2, Lsd/b;->c:I

    .line 18
    iput p1, p0, Lsd/b;->c:I

    .line 19
    iget-object p1, p2, Lsd/b;->b:Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lsd/b;->b:Ljava/lang/String;

    .line 21
    iget p1, p2, Lsd/b;->d:I

    iput p1, p0, Lsd/b;->d:I

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 1
    const-string v0, "0.0.0.0"

    .line 2
    .line 3
    iget-object v1, p0, Lsd/b;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget v0, p0, Lsd/b;->c:I

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lsd/b;->b:Ljava/lang/String;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    return v0
.end method

.method public final b(I[B)I
    .locals 8

    .line 1
    const/16 v0, 0x21

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    const/16 v2, 0xf

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    const/16 v5, 0xf

    .line 10
    .line 11
    :goto_0
    if-ge v4, v2, :cond_1

    .line 12
    .line 13
    mul-int/lit8 v6, v4, 0x2

    .line 14
    .line 15
    add-int/lit8 v7, v6, 0x1

    .line 16
    .line 17
    add-int/2addr v7, p1

    .line 18
    aget-byte v7, p2, v7

    .line 19
    .line 20
    and-int/lit16 v7, v7, 0xff

    .line 21
    .line 22
    add-int/lit8 v7, v7, -0x41

    .line 23
    .line 24
    shl-int/lit8 v7, v7, 0x4

    .line 25
    .line 26
    int-to-byte v7, v7

    .line 27
    aput-byte v7, v1, v4

    .line 28
    .line 29
    add-int/lit8 v6, v6, 0x2

    .line 30
    .line 31
    add-int/2addr v6, p1

    .line 32
    aget-byte v6, p2, v6

    .line 33
    .line 34
    and-int/lit16 v6, v6, 0xff

    .line 35
    .line 36
    add-int/lit8 v6, v6, -0x41

    .line 37
    .line 38
    and-int/2addr v6, v2

    .line 39
    int-to-byte v6, v6

    .line 40
    or-int/2addr v6, v7

    .line 41
    int-to-byte v6, v6

    .line 42
    aput-byte v6, v1, v4

    .line 43
    .line 44
    const/16 v7, 0x20

    .line 45
    .line 46
    if-eq v6, v7, :cond_0

    .line 47
    .line 48
    add-int/lit8 v5, v4, 0x1

    .line 49
    .line 50
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iget-object v4, p0, Lsd/b;->e:Lvc/f;

    .line 54
    .line 55
    invoke-static {v1, v3, v5, v4}, Lge/b;->c([BIILvc/f;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iput-object v1, p0, Lsd/b;->a:Ljava/lang/String;

    .line 60
    .line 61
    add-int/lit8 v1, p1, 0x1f

    .line 62
    .line 63
    aget-byte v1, p2, v1

    .line 64
    .line 65
    and-int/lit16 v1, v1, 0xff

    .line 66
    .line 67
    add-int/lit8 v1, v1, -0x41

    .line 68
    .line 69
    shl-int/lit8 v1, v1, 0x4

    .line 70
    .line 71
    iput v1, p0, Lsd/b;->c:I

    .line 72
    .line 73
    add-int/lit8 v3, p1, 0x20

    .line 74
    .line 75
    aget-byte v3, p2, v3

    .line 76
    .line 77
    and-int/lit16 v3, v3, 0xff

    .line 78
    .line 79
    add-int/lit8 v3, v3, -0x41

    .line 80
    .line 81
    and-int/2addr v2, v3

    .line 82
    or-int/2addr v1, v2

    .line 83
    iput v1, p0, Lsd/b;->c:I

    .line 84
    .line 85
    add-int/lit8 v1, p1, 0x21

    .line 86
    .line 87
    add-int/lit8 p1, p1, 0x22

    .line 88
    .line 89
    aget-byte v2, p2, v1

    .line 90
    .line 91
    and-int/lit16 v2, v2, 0xff

    .line 92
    .line 93
    if-nez v2, :cond_2

    .line 94
    .line 95
    const/4 p1, 0x0

    .line 96
    iput-object p1, p0, Lsd/b;->b:Ljava/lang/String;

    .line 97
    .line 98
    const/4 p1, 0x1

    .line 99
    goto :goto_2

    .line 100
    :cond_2
    new-instance v3, Ljava/lang/StringBuffer;

    .line 101
    .line 102
    invoke-static {p2, p1, v2, v4}, Lge/b;->c([BIILvc/f;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    add-int/2addr p1, v2

    .line 110
    :goto_1
    add-int/lit8 v2, p1, 0x1

    .line 111
    .line 112
    aget-byte p1, p2, p1

    .line 113
    .line 114
    and-int/lit16 p1, p1, 0xff

    .line 115
    .line 116
    if-eqz p1, :cond_3

    .line 117
    .line 118
    const/16 v5, 0x2e

    .line 119
    .line 120
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 121
    .line 122
    .line 123
    invoke-static {p2, v2, p1, v4}, Lge/b;->c([BIILvc/f;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    .line 129
    .line 130
    add-int/2addr p1, v2

    .line 131
    goto :goto_1

    .line 132
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    iput-object p1, p0, Lsd/b;->b:Ljava/lang/String;

    .line 137
    .line 138
    sub-int p1, v2, v1

    .line 139
    .line 140
    :goto_2
    add-int/2addr p1, v0

    .line 141
    return p1
.end method

.method public final c(I[B)I
    .locals 9

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    aput-byte v0, p2, p1

    .line 4
    .line 5
    iget-object v0, p0, Lsd/b;->a:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v1, p0, Lsd/b;->e:Lvc/f;

    .line 8
    .line 9
    invoke-static {v0, v1}, Lge/b;->e(Ljava/lang/String;Lvc/f;)[B

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    :goto_0
    array-length v4, v0

    .line 16
    const/16 v5, 0xf

    .line 17
    .line 18
    const/16 v6, 0x41

    .line 19
    .line 20
    if-ge v3, v4, :cond_0

    .line 21
    .line 22
    mul-int/lit8 v4, v3, 0x2

    .line 23
    .line 24
    add-int/lit8 v7, v4, 0x1

    .line 25
    .line 26
    add-int/2addr v7, p1

    .line 27
    aget-byte v8, v0, v3

    .line 28
    .line 29
    and-int/lit16 v8, v8, 0xf0

    .line 30
    .line 31
    shr-int/lit8 v8, v8, 0x4

    .line 32
    .line 33
    add-int/2addr v8, v6

    .line 34
    int-to-byte v8, v8

    .line 35
    aput-byte v8, p2, v7

    .line 36
    .line 37
    add-int/lit8 v4, v4, 0x2

    .line 38
    .line 39
    add-int/2addr v4, p1

    .line 40
    aget-byte v7, v0, v3

    .line 41
    .line 42
    and-int/2addr v5, v7

    .line 43
    add-int/2addr v5, v6

    .line 44
    int-to-byte v5, v5

    .line 45
    aput-byte v5, p2, v4

    .line 46
    .line 47
    add-int/lit8 v3, v3, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    :goto_1
    if-ge v3, v5, :cond_1

    .line 51
    .line 52
    mul-int/lit8 v0, v3, 0x2

    .line 53
    .line 54
    add-int/lit8 v4, v0, 0x1

    .line 55
    .line 56
    add-int/2addr v4, p1

    .line 57
    const/16 v7, 0x43

    .line 58
    .line 59
    aput-byte v7, p2, v4

    .line 60
    .line 61
    add-int/lit8 v0, v0, 0x2

    .line 62
    .line 63
    add-int/2addr v0, p1

    .line 64
    aput-byte v6, p2, v0

    .line 65
    .line 66
    add-int/lit8 v3, v3, 0x1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    add-int/lit8 v0, p1, 0x1f

    .line 70
    .line 71
    iget v3, p0, Lsd/b;->c:I

    .line 72
    .line 73
    and-int/lit16 v4, v3, 0xf0

    .line 74
    .line 75
    shr-int/lit8 v4, v4, 0x4

    .line 76
    .line 77
    add-int/2addr v4, v6

    .line 78
    int-to-byte v4, v4

    .line 79
    aput-byte v4, p2, v0

    .line 80
    .line 81
    add-int/lit8 v0, p1, 0x20

    .line 82
    .line 83
    and-int/2addr v3, v5

    .line 84
    add-int/2addr v3, v6

    .line 85
    int-to-byte v3, v3

    .line 86
    aput-byte v3, p2, v0

    .line 87
    .line 88
    add-int/lit8 v0, p1, 0x21

    .line 89
    .line 90
    iget-object v3, p0, Lsd/b;->b:Ljava/lang/String;

    .line 91
    .line 92
    if-nez v3, :cond_2

    .line 93
    .line 94
    aput-byte v2, p2, v0

    .line 95
    .line 96
    const/4 p1, 0x1

    .line 97
    goto :goto_4

    .line 98
    :cond_2
    add-int/lit8 p1, p1, 0x22

    .line 99
    .line 100
    const/16 v4, 0x2e

    .line 101
    .line 102
    aput-byte v4, p2, v0

    .line 103
    .line 104
    invoke-static {v3, v1}, Lge/b;->e(Ljava/lang/String;Lvc/f;)[B

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    iget-object v1, p0, Lsd/b;->b:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    invoke-static {v0, v2, p2, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lsd/b;->b:Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    add-int/2addr v0, p1

    .line 124
    aput-byte v2, p2, v0

    .line 125
    .line 126
    add-int/lit8 v0, v0, -0x1

    .line 127
    .line 128
    iget-object p1, p0, Lsd/b;->b:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    sub-int p1, v0, p1

    .line 135
    .line 136
    const/4 v1, 0x0

    .line 137
    :goto_2
    aget-byte v3, p2, v0

    .line 138
    .line 139
    if-ne v3, v4, :cond_3

    .line 140
    .line 141
    int-to-byte v1, v1

    .line 142
    aput-byte v1, p2, v0

    .line 143
    .line 144
    const/4 v1, 0x0

    .line 145
    goto :goto_3

    .line 146
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 147
    .line 148
    :goto_3
    add-int/lit8 v3, v0, -0x1

    .line 149
    .line 150
    if-gt v0, p1, :cond_4

    .line 151
    .line 152
    iget-object p1, p0, Lsd/b;->b:Ljava/lang/String;

    .line 153
    .line 154
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    add-int/lit8 p1, p1, 0x2

    .line 159
    .line 160
    :goto_4
    add-int/lit8 p1, p1, 0x21

    .line 161
    .line 162
    return p1

    .line 163
    :cond_4
    move v0, v3

    .line 164
    goto :goto_2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Lsd/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Lsd/b;

    .line 8
    .line 9
    iget-object v0, p0, Lsd/b;->b:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-nez v0, :cond_2

    .line 13
    .line 14
    iget-object v0, p1, Lsd/b;->b:Ljava/lang/String;

    .line 15
    .line 16
    if-nez v0, :cond_2

    .line 17
    .line 18
    iget-object v0, p0, Lsd/b;->a:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v3, p1, Lsd/b;->a:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget v0, p0, Lsd/b;->c:I

    .line 29
    .line 30
    iget p1, p1, Lsd/b;->c:I

    .line 31
    .line 32
    if-ne v0, p1, :cond_1

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    :cond_1
    return v1

    .line 36
    :cond_2
    iget-object v0, p0, Lsd/b;->a:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v3, p1, Lsd/b;->a:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    iget v0, p0, Lsd/b;->c:I

    .line 47
    .line 48
    iget v3, p1, Lsd/b;->c:I

    .line 49
    .line 50
    if-ne v0, v3, :cond_3

    .line 51
    .line 52
    iget-object v0, p0, Lsd/b;->b:Ljava/lang/String;

    .line 53
    .line 54
    iget-object p1, p1, Lsd/b;->b:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_3

    .line 61
    .line 62
    const/4 v1, 0x1

    .line 63
    :cond_3
    return v1
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lsd/b;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lsd/b;->c:I

    .line 8
    .line 9
    const v2, 0x1003f

    .line 10
    .line 11
    .line 12
    mul-int v1, v1, v2

    .line 13
    .line 14
    add-int/2addr v1, v0

    .line 15
    iget v0, p0, Lsd/b;->d:I

    .line 16
    .line 17
    mul-int v0, v0, v2

    .line 18
    .line 19
    add-int/2addr v0, v1

    .line 20
    iget-object v1, p0, Lsd/b;->b:Ljava/lang/String;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    iget-object v1, p0, Lsd/b;->b:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    add-int/2addr v0, v1

    .line 37
    :cond_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lsd/b;->a:Ljava/lang/String;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    const-string v1, "null"

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/4 v4, 0x1

    .line 19
    if-ne v3, v4, :cond_1

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const/16 v3, 0x2e

    .line 26
    .line 27
    aput-char v3, v1, v2

    .line 28
    .line 29
    aput-char v3, v1, v4

    .line 30
    .line 31
    const/16 v2, 0xe

    .line 32
    .line 33
    aput-char v3, v1, v2

    .line 34
    .line 35
    new-instance v2, Ljava/lang/String;

    .line 36
    .line 37
    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    .line 38
    .line 39
    .line 40
    move-object v1, v2

    .line 41
    :cond_1
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 42
    .line 43
    .line 44
    const-string v1, "<"

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    .line 48
    .line 49
    iget v1, p0, Lsd/b;->c:I

    .line 50
    .line 51
    const/4 v2, 0x2

    .line 52
    invoke-static {v1, v2}, Lge/a;->l(II)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    .line 58
    .line 59
    const-string v1, ">"

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    .line 63
    .line 64
    iget-object v1, p0, Lsd/b;->b:Ljava/lang/String;

    .line 65
    .line 66
    if-eqz v1, :cond_2

    .line 67
    .line 68
    const-string v1, "."

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    .line 72
    .line 73
    iget-object v1, p0, Lsd/b;->b:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    .line 77
    .line 78
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    return-object v0
.end method
