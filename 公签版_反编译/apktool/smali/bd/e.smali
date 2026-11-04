.class public final Lbd/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvc/g;


# instance fields
.field public final synthetic a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Ljava/io/Serializable;

.field public i:Ljava/io/Serializable;

.field public j:Ljava/io/Serializable;

.field public k:Ljava/lang/Object;

.field public l:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    iput p1, p0, Lbd/e;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lbd/e;->i:Ljava/io/Serializable;

    .line 11
    .line 12
    iput-object p1, p0, Lbd/e;->j:Ljava/io/Serializable;

    .line 13
    .line 14
    iput-object p1, p0, Lbd/e;->k:Ljava/lang/Object;

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    new-array p1, p1, [Ljava/lang/String;

    .line 18
    .line 19
    iput-object p1, p0, Lbd/e;->l:Ljava/lang/Object;

    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    .line 26
    .line 27
    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lbd/e;->h:Ljava/io/Serializable;

    .line 31
    .line 32
    new-instance p1, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lbd/e;->i:Ljava/io/Serializable;

    .line 38
    .line 39
    const/16 p1, 0x3e8

    .line 40
    .line 41
    iput p1, p0, Lbd/e;->b:I

    .line 42
    .line 43
    const/4 p1, 0x0

    .line 44
    iput p1, p0, Lbd/e;->c:I

    .line 45
    .line 46
    iput p1, p0, Lbd/e;->d:I

    .line 47
    .line 48
    new-instance p1, Lsb/a;

    .line 49
    .line 50
    invoke-direct {p1, p0}, Lsb/a;-><init>(Lbd/e;)V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, Lbd/e;->k:Ljava/lang/Object;

    .line 54
    .line 55
    new-instance p1, Ljava/util/ArrayList;

    .line 56
    .line 57
    const/16 v0, 0xa

    .line 58
    .line 59
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 60
    .line 61
    .line 62
    iput-object p1, p0, Lbd/e;->j:Ljava/io/Serializable;

    .line 63
    .line 64
    return-void

    .line 65
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static e(II[B)Ljava/lang/String;
    .locals 2

    .line 1
    rem-int/lit8 v0, p0, 0x2

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    add-int/lit8 p0, p0, 0x1

    .line 6
    .line 7
    :cond_0
    invoke-static {p0, p1, p2}, Lge/b;->b(II[B)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    new-instance v0, Ljava/lang/String;

    .line 12
    .line 13
    sget-object v1, Lge/b;->b:Ljava/nio/charset/Charset;

    .line 14
    .line 15
    invoke-direct {v0, p2, p0, p1, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method


# virtual methods
.method public b(II)V
    .locals 6

    .line 1
    if-ltz p1, :cond_7

    .line 2
    .line 3
    iget v0, p0, Lbd/e;->c:I

    .line 4
    .line 5
    if-gt p1, v0, :cond_7

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lbd/e;->c(I)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    iget-object v2, p0, Lbd/e;->j:Ljava/io/Serializable;

    .line 13
    .line 14
    check-cast v2, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-ge v1, v3, :cond_1

    .line 21
    .line 22
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Lsb/b;

    .line 27
    .line 28
    iget v3, v3, Lsb/b;->b:I

    .line 29
    .line 30
    if-lt v3, p1, :cond_0

    .line 31
    .line 32
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    add-int/lit8 v1, v1, -0x1

    .line 36
    .line 37
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-object p1, p0, Lbd/e;->l:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p1, Lsb/a;

    .line 43
    .line 44
    iget v1, p0, Lbd/e;->e:I

    .line 45
    .line 46
    :goto_1
    iget v2, p1, Lsb/a;->b:I

    .line 47
    .line 48
    if-le v1, v2, :cond_3

    .line 49
    .line 50
    iget-object v3, p1, Lsb/a;->d:Lsb/a;

    .line 51
    .line 52
    if-nez v3, :cond_2

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_2
    sub-int/2addr v1, v2

    .line 56
    move-object p1, v3

    .line 57
    goto :goto_1

    .line 58
    :cond_3
    :goto_2
    add-int/lit8 v3, v1, 0x1

    .line 59
    .line 60
    sub-int/2addr v2, v1

    .line 61
    iget-object v4, p1, Lsb/a;->a:[I

    .line 62
    .line 63
    invoke-static {v4, v1, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    .line 65
    .line 66
    aput p2, v4, v1

    .line 67
    .line 68
    iget v1, p1, Lsb/a;->b:I

    .line 69
    .line 70
    add-int/lit8 v1, v1, 0x1

    .line 71
    .line 72
    iput v1, p1, Lsb/a;->b:I

    .line 73
    .line 74
    iget v2, p1, Lsb/a;->c:I

    .line 75
    .line 76
    if-le p2, v2, :cond_4

    .line 77
    .line 78
    iput p2, p1, Lsb/a;->c:I

    .line 79
    .line 80
    :cond_4
    iget p2, p0, Lbd/e;->c:I

    .line 81
    .line 82
    add-int/lit8 p2, p2, 0x1

    .line 83
    .line 84
    iput p2, p0, Lbd/e;->c:I

    .line 85
    .line 86
    iget p2, p0, Lbd/e;->b:I

    .line 87
    .line 88
    if-le v1, p2, :cond_6

    .line 89
    .line 90
    iget-object p2, p1, Lsb/a;->d:Lsb/a;

    .line 91
    .line 92
    iget-object v1, p1, Lsb/a;->e:Lbd/e;

    .line 93
    .line 94
    iget-object v2, v1, Lbd/e;->i:Ljava/io/Serializable;

    .line 95
    .line 96
    check-cast v2, Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    if-eqz v3, :cond_5

    .line 103
    .line 104
    new-instance v2, Lsb/a;

    .line 105
    .line 106
    invoke-direct {v2, v1}, Lsb/a;-><init>(Lbd/e;)V

    .line 107
    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    add-int/lit8 v3, v3, -0x1

    .line 115
    .line 116
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    check-cast v2, Lsb/a;

    .line 121
    .line 122
    :goto_3
    iget v1, v1, Lbd/e;->b:I

    .line 123
    .line 124
    mul-int/lit8 v1, v1, 0x3

    .line 125
    .line 126
    div-int/lit8 v1, v1, 0x4

    .line 127
    .line 128
    iget-object v3, v2, Lsb/a;->a:[I

    .line 129
    .line 130
    iget v5, p1, Lsb/a;->b:I

    .line 131
    .line 132
    sub-int/2addr v5, v1

    .line 133
    invoke-static {v4, v1, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    .line 135
    .line 136
    iget v0, p1, Lsb/a;->b:I

    .line 137
    .line 138
    sub-int/2addr v0, v1

    .line 139
    iput v0, v2, Lsb/a;->b:I

    .line 140
    .line 141
    iput v1, p1, Lsb/a;->b:I

    .line 142
    .line 143
    iput-object v2, p1, Lsb/a;->d:Lsb/a;

    .line 144
    .line 145
    iput-object p2, v2, Lsb/a;->d:Lsb/a;

    .line 146
    .line 147
    invoke-virtual {p1}, Lsb/a;->a()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v2}, Lsb/a;->a()V

    .line 151
    .line 152
    .line 153
    :cond_6
    iget p1, p0, Lbd/e;->d:I

    .line 154
    .line 155
    add-int/lit8 p1, p1, 0x1

    .line 156
    .line 157
    iput p1, p0, Lbd/e;->d:I

    .line 158
    .line 159
    return-void

    .line 160
    :cond_7
    new-instance p2, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 161
    .line 162
    const-string v0, "index = "

    .line 163
    .line 164
    const-string v1, ", length = "

    .line 165
    .line 166
    invoke-static {v0, p1, v1}, Lg/b;->n(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    iget v0, p0, Lbd/e;->c:I

    .line 171
    .line 172
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-direct {p2, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    goto :goto_5

    .line 183
    :goto_4
    throw p2

    .line 184
    :goto_5
    goto :goto_4
.end method

.method public c(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lbd/e;->k:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lsb/a;

    .line 4
    .line 5
    const/4 v1, -0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    move v5, p1

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, -0x1

    .line 10
    :goto_0
    iget-object v6, p0, Lbd/e;->j:Ljava/io/Serializable;

    .line 11
    .line 12
    check-cast v6, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v7

    .line 18
    if-ge v3, v7, :cond_1

    .line 19
    .line 20
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    check-cast v6, Lsb/b;

    .line 25
    .line 26
    iget v7, v6, Lsb/b;->b:I

    .line 27
    .line 28
    if-ge v7, p1, :cond_0

    .line 29
    .line 30
    sub-int v7, p1, v7

    .line 31
    .line 32
    if-ge v7, v5, :cond_0

    .line 33
    .line 34
    iget-object v0, v6, Lsb/b;->a:Lsb/a;

    .line 35
    .line 36
    move v4, v3

    .line 37
    move v5, v7

    .line 38
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    if-eq v4, v1, :cond_2

    .line 42
    .line 43
    invoke-static {v6, v2, v4}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 44
    .line 45
    .line 46
    :cond_2
    :goto_1
    iget v1, v0, Lsb/a;->b:I

    .line 47
    .line 48
    if-lt v5, v1, :cond_3

    .line 49
    .line 50
    iget-object v3, v0, Lsb/a;->d:Lsb/a;

    .line 51
    .line 52
    if-eqz v3, :cond_3

    .line 53
    .line 54
    sub-int/2addr v5, v1

    .line 55
    add-int/lit8 v2, v2, 0x1

    .line 56
    .line 57
    move-object v0, v3

    .line 58
    goto :goto_1

    .line 59
    :cond_3
    const/16 v1, 0x1e

    .line 60
    .line 61
    if-lt v2, v1, :cond_4

    .line 62
    .line 63
    sub-int/2addr p1, v5

    .line 64
    new-instance v1, Lsb/b;

    .line 65
    .line 66
    invoke-direct {v1}, Lsb/b;-><init>()V

    .line 67
    .line 68
    .line 69
    iput p1, v1, Lsb/b;->b:I

    .line 70
    .line 71
    iput-object v0, v1, Lsb/b;->a:Lsb/a;

    .line 72
    .line 73
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    :cond_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    const/16 v1, 0x8

    .line 81
    .line 82
    if-le p1, v1, :cond_5

    .line 83
    .line 84
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    add-int/lit8 p1, p1, -0x1

    .line 89
    .line 90
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    :cond_5
    iput v5, p0, Lbd/e;->e:I

    .line 94
    .line 95
    iput-object v0, p0, Lbd/e;->l:Ljava/lang/Object;

    .line 96
    .line 97
    return-void
.end method

.method public d(I)I
    .locals 3

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iget v0, p0, Lbd/e;->c:I

    .line 4
    .line 5
    if-ge p1, v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lbd/e;->c(I)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lbd/e;->l:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p1, Lsb/a;

    .line 13
    .line 14
    iget v0, p0, Lbd/e;->e:I

    .line 15
    .line 16
    iget-object p1, p1, Lsb/a;->a:[I

    .line 17
    .line 18
    aget p1, p1, v0

    .line 19
    .line 20
    return p1

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 22
    .line 23
    const-string v1, "index = "

    .line 24
    .line 25
    const-string v2, ", length = "

    .line 26
    .line 27
    invoke-static {v1, p1, v2}, Lg/b;->n(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget v1, p0, Lbd/e;->c:I

    .line 32
    .line 33
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v0
.end method

.method public f(II)V
    .locals 6

    .line 1
    iget v0, p0, Lbd/e;->c:I

    .line 2
    .line 3
    if-gt p2, v0, :cond_4

    .line 4
    .line 5
    if-ltz p1, :cond_4

    .line 6
    .line 7
    if-gt p1, p2, :cond_4

    .line 8
    .line 9
    iget-object v0, p0, Lbd/e;->k:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Lsb/a;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    iget v2, v0, Lsb/a;->b:I

    .line 15
    .line 16
    if-lt p1, v2, :cond_0

    .line 17
    .line 18
    sub-int/2addr p1, v2

    .line 19
    sub-int/2addr p2, v2

    .line 20
    iget-object v1, v0, Lsb/a;->d:Lsb/a;

    .line 21
    .line 22
    move-object v5, v1

    .line 23
    move-object v1, v0

    .line 24
    move-object v0, v5

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    sub-int/2addr p2, p1

    .line 27
    move v2, p2

    .line 28
    :goto_1
    if-lez v2, :cond_3

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    if-nez p1, :cond_2

    .line 32
    .line 33
    iget v4, v0, Lsb/a;->b:I

    .line 34
    .line 35
    if-lt v2, v4, :cond_2

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    iget-object v4, v0, Lsb/a;->d:Lsb/a;

    .line 40
    .line 41
    iput-object v4, v1, Lsb/a;->d:Lsb/a;

    .line 42
    .line 43
    iget-object v4, p0, Lbd/e;->i:Ljava/io/Serializable;

    .line 44
    .line 45
    check-cast v4, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    :cond_1
    iget v4, v0, Lsb/a;->b:I

    .line 51
    .line 52
    sub-int/2addr v2, v4

    .line 53
    iput v3, v0, Lsb/a;->b:I

    .line 54
    .line 55
    iget-object v0, v0, Lsb/a;->d:Lsb/a;

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    iget p1, v0, Lsb/a;->b:I

    .line 59
    .line 60
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    iget v1, v0, Lsb/a;->b:I

    .line 65
    .line 66
    sub-int/2addr v1, p1

    .line 67
    iget-object v4, v0, Lsb/a;->a:[I

    .line 68
    .line 69
    invoke-static {v4, p1, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    .line 71
    .line 72
    iget v1, v0, Lsb/a;->b:I

    .line 73
    .line 74
    sub-int/2addr v1, p1

    .line 75
    iput v1, v0, Lsb/a;->b:I

    .line 76
    .line 77
    invoke-virtual {v0}, Lsb/a;->a()V

    .line 78
    .line 79
    .line 80
    sub-int/2addr v2, p1

    .line 81
    iget-object p1, v0, Lsb/a;->d:Lsb/a;

    .line 82
    .line 83
    move-object v1, v0

    .line 84
    move-object v0, p1

    .line 85
    const/4 p1, 0x0

    .line 86
    goto :goto_1

    .line 87
    :cond_3
    iget p1, p0, Lbd/e;->c:I

    .line 88
    .line 89
    sub-int/2addr p1, p2

    .line 90
    iput p1, p0, Lbd/e;->c:I

    .line 91
    .line 92
    return-void

    .line 93
    :cond_4
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 94
    .line 95
    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 96
    .line 97
    .line 98
    goto :goto_3

    .line 99
    :goto_2
    throw p1

    .line 100
    :goto_3
    goto :goto_2
.end method

.method public g(II)V
    .locals 3

    .line 1
    if-ltz p1, :cond_3

    .line 2
    .line 3
    iget v0, p0, Lbd/e;->c:I

    .line 4
    .line 5
    if-ge p1, v0, :cond_3

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lbd/e;->c(I)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lbd/e;->l:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p1, Lsb/a;

    .line 13
    .line 14
    iget v0, p0, Lbd/e;->e:I

    .line 15
    .line 16
    iget-object v1, p1, Lsb/a;->a:[I

    .line 17
    .line 18
    aget v2, v1, v0

    .line 19
    .line 20
    aput p2, v1, v0

    .line 21
    .line 22
    iget v0, p1, Lsb/a;->c:I

    .line 23
    .line 24
    if-ne v2, v0, :cond_1

    .line 25
    .line 26
    if-lt p2, v2, :cond_0

    .line 27
    .line 28
    iput p2, p1, Lsb/a;->c:I

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p1}, Lsb/a;->a()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    if-le p2, v0, :cond_2

    .line 36
    .line 37
    iput p2, p1, Lsb/a;->c:I

    .line 38
    .line 39
    :cond_2
    :goto_0
    iget p1, p0, Lbd/e;->d:I

    .line 40
    .line 41
    add-int/lit8 p1, p1, 0x1

    .line 42
    .line 43
    iput p1, p0, Lbd/e;->d:I

    .line 44
    .line 45
    return-void

    .line 46
    :cond_3
    new-instance p2, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 47
    .line 48
    const-string v0, "index = "

    .line 49
    .line 50
    const-string v1, ", length = "

    .line 51
    .line 52
    invoke-static {v0, p1, v1}, Lg/b;->n(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iget v0, p0, Lbd/e;->c:I

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-direct {p2, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p2
.end method

.method public i(II[B)I
    .locals 5

    .line 1
    invoke-static {p1, p3}, Lrd/a;->a(I[B)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lbd/e;->b:I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x3

    .line 9
    if-eq v0, v2, :cond_1

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Landroidx/fragment/app/b0;

    .line 15
    .line 16
    new-instance p2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string p3, "Version "

    .line 19
    .line 20
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget p3, p0, Lbd/e;->b:I

    .line 24
    .line 25
    const-string v0, " referral not supported. Please report this to jcifs at samba dot org."

    .line 26
    .line 27
    invoke-static {p2, p3, v0}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    const/16 p3, 0xa

    .line 32
    .line 33
    invoke-direct {p1, p2, p3}, Landroidx/fragment/app/b0;-><init>(Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    throw p1

    .line 37
    :cond_1
    :goto_0
    add-int/lit8 v0, p1, 0x2

    .line 38
    .line 39
    invoke-static {v0, p3}, Lrd/a;->a(I[B)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iput v0, p0, Lbd/e;->c:I

    .line 44
    .line 45
    add-int/lit8 v0, p1, 0x4

    .line 46
    .line 47
    invoke-static {v0, p3}, Lrd/a;->a(I[B)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    iput v0, p0, Lbd/e;->d:I

    .line 52
    .line 53
    add-int/lit8 v0, p1, 0x6

    .line 54
    .line 55
    invoke-static {v0, p3}, Lrd/a;->a(I[B)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    iput v0, p0, Lbd/e;->e:I

    .line 60
    .line 61
    add-int/lit8 v0, p1, 0x8

    .line 62
    .line 63
    iget v3, p0, Lbd/e;->b:I

    .line 64
    .line 65
    if-ne v3, v2, :cond_7

    .line 66
    .line 67
    invoke-static {v0, p3}, Lrd/a;->a(I[B)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    iput v0, p0, Lbd/e;->f:I

    .line 72
    .line 73
    add-int/lit8 v0, p1, 0xa

    .line 74
    .line 75
    invoke-static {v0, p3}, Lrd/a;->a(I[B)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    iput v0, p0, Lbd/e;->g:I

    .line 80
    .line 81
    add-int/lit8 v0, p1, 0xc

    .line 82
    .line 83
    iget v1, p0, Lbd/e;->e:I

    .line 84
    .line 85
    and-int/lit8 v1, v1, 0x2

    .line 86
    .line 87
    if-nez v1, :cond_4

    .line 88
    .line 89
    invoke-static {v0, p3}, Lrd/a;->a(I[B)I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    add-int/lit8 v1, p1, 0xe

    .line 94
    .line 95
    invoke-static {v1, p3}, Lrd/a;->a(I[B)I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    add-int/lit8 v2, p1, 0x10

    .line 100
    .line 101
    invoke-static {v2, p3}, Lrd/a;->a(I[B)I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-lez v0, :cond_2

    .line 106
    .line 107
    add-int/2addr v0, p1

    .line 108
    invoke-static {v0, p2, p3}, Lbd/e;->e(II[B)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    iput-object v0, p0, Lbd/e;->i:Ljava/io/Serializable;

    .line 113
    .line 114
    :cond_2
    if-lez v2, :cond_3

    .line 115
    .line 116
    add-int/2addr v2, p1

    .line 117
    invoke-static {v2, p2, p3}, Lbd/e;->e(II[B)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    iput-object v0, p0, Lbd/e;->j:Ljava/io/Serializable;

    .line 122
    .line 123
    :cond_3
    if-lez v1, :cond_8

    .line 124
    .line 125
    add-int/2addr p1, v1

    .line 126
    invoke-static {p1, p2, p3}, Lbd/e;->e(II[B)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    iput-object p1, p0, Lbd/e;->h:Ljava/io/Serializable;

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_4
    invoke-static {v0, p3}, Lrd/a;->a(I[B)I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    add-int/lit8 v1, p1, 0xe

    .line 138
    .line 139
    invoke-static {v1, p3}, Lrd/a;->a(I[B)I

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    add-int/lit8 v2, p1, 0x10

    .line 144
    .line 145
    invoke-static {v2, p3}, Lrd/a;->a(I[B)I

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    if-lez v0, :cond_5

    .line 150
    .line 151
    add-int/2addr v0, p1

    .line 152
    invoke-static {v0, p2, p3}, Lbd/e;->e(II[B)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    iput-object v0, p0, Lbd/e;->k:Ljava/lang/Object;

    .line 157
    .line 158
    :cond_5
    if-lez v2, :cond_8

    .line 159
    .line 160
    new-instance v0, Ljava/util/ArrayList;

    .line 161
    .line 162
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .line 164
    .line 165
    const/4 v3, 0x0

    .line 166
    :goto_1
    if-ge v3, v1, :cond_6

    .line 167
    .line 168
    add-int v4, p1, v2

    .line 169
    .line 170
    invoke-static {v4, p2, p3}, Lbd/e;->e(II[B)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 178
    .line 179
    .line 180
    move-result v4

    .line 181
    mul-int/lit8 v4, v4, 0x2

    .line 182
    .line 183
    add-int/lit8 v4, v4, 0x2

    .line 184
    .line 185
    add-int/2addr v2, v4

    .line 186
    add-int/lit8 v3, v3, 0x1

    .line 187
    .line 188
    goto :goto_1

    .line 189
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 190
    .line 191
    .line 192
    move-result p1

    .line 193
    new-array p1, p1, [Ljava/lang/String;

    .line 194
    .line 195
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    check-cast p1, [Ljava/lang/String;

    .line 200
    .line 201
    iput-object p1, p0, Lbd/e;->l:Ljava/lang/Object;

    .line 202
    .line 203
    goto :goto_2

    .line 204
    :cond_7
    if-ne v3, v1, :cond_8

    .line 205
    .line 206
    invoke-static {v0, p2, p3}, Lbd/e;->e(II[B)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    iput-object p1, p0, Lbd/e;->j:Ljava/io/Serializable;

    .line 211
    .line 212
    :cond_8
    :goto_2
    iget p1, p0, Lbd/e;->c:I

    .line 213
    .line 214
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lbd/e;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_0
    new-instance v0, Ljava/lang/String;

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v2, "Referral[version="

    .line 16
    .line 17
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget v2, p0, Lbd/e;->b:I

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, ",size="

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget v2, p0, Lbd/e;->c:I

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v2, ",serverType="

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget v2, p0, Lbd/e;->d:I

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v2, ",flags="

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget v2, p0, Lbd/e;->e:I

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v2, ",proximity="

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    iget v2, p0, Lbd/e;->f:I

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v2, ",ttl="

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget v2, p0, Lbd/e;->g:I

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v2, ",path="

    .line 76
    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    iget-object v2, p0, Lbd/e;->i:Ljava/io/Serializable;

    .line 81
    .line 82
    check-cast v2, Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v2, ",altPath="

    .line 88
    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    iget-object v2, p0, Lbd/e;->h:Ljava/io/Serializable;

    .line 93
    .line 94
    check-cast v2, Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v2, ",node="

    .line 100
    .line 101
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    iget-object v2, p0, Lbd/e;->j:Ljava/io/Serializable;

    .line 105
    .line 106
    check-cast v2, Ljava/lang/String;

    .line 107
    .line 108
    const-string v3, "]"

    .line 109
    .line 110
    invoke-static {v2, v3, v1}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    return-object v0

    .line 118
    nop

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
