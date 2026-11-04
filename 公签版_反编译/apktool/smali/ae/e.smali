.class public abstract Lae/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:[Lae/g;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Lae/b;

.field public r:Lae/b;

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:Ljava/net/InetAddress;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lae/e;->n:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lae/e;->p:Z

    .line 8
    .line 9
    iput v0, p0, Lae/e;->f:I

    .line 10
    .line 11
    iput v0, p0, Lae/e;->t:I

    .line 12
    .line 13
    return-void
.end method

.method public static b(I[B)I
    .locals 1

    .line 1
    aget-byte v0, p1, p0

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 4
    .line 5
    shl-int/lit8 v0, v0, 0x8

    .line 6
    .line 7
    add-int/lit8 p0, p0, 0x1

    .line 8
    .line 9
    aget-byte p0, p1, p0

    .line 10
    .line 11
    and-int/lit16 p0, p0, 0xff

    .line 12
    .line 13
    add-int/2addr v0, p0

    .line 14
    return v0
.end method

.method public static c(I[B)I
    .locals 2

    .line 1
    aget-byte v0, p1, p0

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 4
    .line 5
    shl-int/lit8 v0, v0, 0x18

    .line 6
    .line 7
    add-int/lit8 v1, p0, 0x1

    .line 8
    .line 9
    aget-byte v1, p1, v1

    .line 10
    .line 11
    and-int/lit16 v1, v1, 0xff

    .line 12
    .line 13
    shl-int/lit8 v1, v1, 0x10

    .line 14
    .line 15
    add-int/2addr v0, v1

    .line 16
    add-int/lit8 v1, p0, 0x2

    .line 17
    .line 18
    aget-byte v1, p1, v1

    .line 19
    .line 20
    and-int/lit16 v1, v1, 0xff

    .line 21
    .line 22
    shl-int/lit8 v1, v1, 0x8

    .line 23
    .line 24
    add-int/2addr v0, v1

    .line 25
    add-int/lit8 p0, p0, 0x3

    .line 26
    .line 27
    aget-byte p0, p1, p0

    .line 28
    .line 29
    and-int/lit16 p0, p0, 0xff

    .line 30
    .line 31
    add-int/2addr v0, p0

    .line 32
    return v0
.end method

.method public static h(II[B)V
    .locals 2

    .line 1
    add-int/lit8 v0, p1, 0x1

    .line 2
    .line 3
    shr-int/lit8 v1, p0, 0x8

    .line 4
    .line 5
    and-int/lit16 v1, v1, 0xff

    .line 6
    .line 7
    int-to-byte v1, v1

    .line 8
    aput-byte v1, p2, p1

    .line 9
    .line 10
    and-int/lit16 p0, p0, 0xff

    .line 11
    .line 12
    int-to-byte p0, p0

    .line 13
    aput-byte p0, p2, v0

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract a(I[B)I
.end method

.method public abstract d(I[B)I
.end method

.method public final e(I[B)I
    .locals 3

    .line 1
    aget-byte v0, p2, p1

    .line 2
    .line 3
    const/16 v1, 0xc0

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lae/e;->q:Lae/b;

    .line 9
    .line 10
    iput-object v0, p0, Lae/e;->r:Lae/b;

    .line 11
    .line 12
    add-int/lit8 v0, p1, 0x2

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lae/e;->r:Lae/b;

    .line 16
    .line 17
    invoke-virtual {v0, p1, p2}, Lae/b;->a(I[B)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    add-int/2addr v0, p1

    .line 22
    :goto_0
    invoke-static {v0, p2}, Lae/e;->b(I[B)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    iput v1, p0, Lae/e;->u:I

    .line 27
    .line 28
    add-int/lit8 v1, v0, 0x2

    .line 29
    .line 30
    invoke-static {v1, p2}, Lae/e;->b(I[B)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    iput v1, p0, Lae/e;->v:I

    .line 35
    .line 36
    add-int/lit8 v1, v0, 0x4

    .line 37
    .line 38
    invoke-static {v1, p2}, Lae/e;->c(I[B)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    iput v1, p0, Lae/e;->w:I

    .line 43
    .line 44
    add-int/lit8 v1, v0, 0x8

    .line 45
    .line 46
    invoke-static {v1, p2}, Lae/e;->b(I[B)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    iput v1, p0, Lae/e;->x:I

    .line 51
    .line 52
    add-int/lit8 v0, v0, 0xa

    .line 53
    .line 54
    div-int/lit8 v2, v1, 0x6

    .line 55
    .line 56
    new-array v2, v2, [Lae/g;

    .line 57
    .line 58
    iput-object v2, p0, Lae/e;->b:[Lae/g;

    .line 59
    .line 60
    add-int/2addr v1, v0

    .line 61
    const/4 v2, 0x0

    .line 62
    :goto_1
    iput v2, p0, Lae/e;->a:I

    .line 63
    .line 64
    if-ge v0, v1, :cond_1

    .line 65
    .line 66
    invoke-virtual {p0, v0, p2}, Lae/e;->d(I[B)I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    add-int/2addr v0, v2

    .line 71
    iget v2, p0, Lae/e;->a:I

    .line 72
    .line 73
    add-int/lit8 v2, v2, 0x1

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_1
    sub-int/2addr v0, p1

    .line 77
    return v0
.end method

.method public final f([B)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p1}, Lae/e;->b(I[B)I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    iput v1, p0, Lae/e;->c:I

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    aget-byte v1, p1, v1

    .line 10
    .line 11
    and-int/lit16 v2, v1, 0x80

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v2, 0x1

    .line 19
    :goto_0
    iput-boolean v2, p0, Lae/e;->k:Z

    .line 20
    .line 21
    and-int/lit8 v2, v1, 0x78

    .line 22
    .line 23
    const/4 v4, 0x3

    .line 24
    shr-int/2addr v2, v4

    .line 25
    iput v2, p0, Lae/e;->d:I

    .line 26
    .line 27
    and-int/lit8 v2, v1, 0x4

    .line 28
    .line 29
    if-nez v2, :cond_1

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    const/4 v2, 0x1

    .line 34
    :goto_1
    iput-boolean v2, p0, Lae/e;->l:Z

    .line 35
    .line 36
    and-int/lit8 v2, v1, 0x2

    .line 37
    .line 38
    if-nez v2, :cond_2

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    goto :goto_2

    .line 42
    :cond_2
    const/4 v2, 0x1

    .line 43
    :goto_2
    iput-boolean v2, p0, Lae/e;->m:Z

    .line 44
    .line 45
    and-int/2addr v1, v3

    .line 46
    if-nez v1, :cond_3

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    goto :goto_3

    .line 50
    :cond_3
    const/4 v1, 0x1

    .line 51
    :goto_3
    iput-boolean v1, p0, Lae/e;->n:Z

    .line 52
    .line 53
    aget-byte v1, p1, v4

    .line 54
    .line 55
    and-int/lit16 v2, v1, 0x80

    .line 56
    .line 57
    if-nez v2, :cond_4

    .line 58
    .line 59
    const/4 v2, 0x0

    .line 60
    goto :goto_4

    .line 61
    :cond_4
    const/4 v2, 0x1

    .line 62
    :goto_4
    iput-boolean v2, p0, Lae/e;->o:Z

    .line 63
    .line 64
    and-int/lit8 v2, v1, 0x10

    .line 65
    .line 66
    if-nez v2, :cond_5

    .line 67
    .line 68
    goto :goto_5

    .line 69
    :cond_5
    const/4 v0, 0x1

    .line 70
    :goto_5
    iput-boolean v0, p0, Lae/e;->p:Z

    .line 71
    .line 72
    and-int/lit8 v0, v1, 0xf

    .line 73
    .line 74
    iput v0, p0, Lae/e;->e:I

    .line 75
    .line 76
    const/4 v0, 0x4

    .line 77
    invoke-static {v0, p1}, Lae/e;->b(I[B)I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    iput v0, p0, Lae/e;->f:I

    .line 82
    .line 83
    const/4 v0, 0x6

    .line 84
    invoke-static {v0, p1}, Lae/e;->b(I[B)I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    iput v0, p0, Lae/e;->g:I

    .line 89
    .line 90
    const/16 v0, 0x8

    .line 91
    .line 92
    invoke-static {v0, p1}, Lae/e;->b(I[B)I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    iput v0, p0, Lae/e;->h:I

    .line 97
    .line 98
    const/16 v0, 0xa

    .line 99
    .line 100
    invoke-static {v0, p1}, Lae/e;->b(I[B)I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    iput v0, p0, Lae/e;->i:I

    .line 105
    .line 106
    const/16 v0, 0xc

    .line 107
    .line 108
    invoke-virtual {p0, v0, p1}, Lae/e;->a(I[B)I

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method public abstract g(I[B)I
.end method

.method public final i([B)I
    .locals 7

    .line 1
    iget v0, p0, Lae/e;->c:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1, p1}, Lae/e;->h(II[B)V

    .line 5
    .line 6
    .line 7
    iget-boolean v0, p0, Lae/e;->k:Z

    .line 8
    .line 9
    const/16 v2, 0x80

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/16 v0, 0x80

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    iget v3, p0, Lae/e;->d:I

    .line 18
    .line 19
    const/4 v4, 0x3

    .line 20
    shl-int/2addr v3, v4

    .line 21
    and-int/lit8 v3, v3, 0x78

    .line 22
    .line 23
    add-int/2addr v0, v3

    .line 24
    iget-boolean v3, p0, Lae/e;->l:Z

    .line 25
    .line 26
    const/4 v5, 0x4

    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    const/4 v3, 0x4

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    const/4 v3, 0x0

    .line 32
    :goto_1
    add-int/2addr v0, v3

    .line 33
    iget-boolean v3, p0, Lae/e;->m:Z

    .line 34
    .line 35
    const/4 v6, 0x2

    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    const/4 v3, 0x2

    .line 39
    goto :goto_2

    .line 40
    :cond_2
    const/4 v3, 0x0

    .line 41
    :goto_2
    add-int/2addr v0, v3

    .line 42
    iget-boolean v3, p0, Lae/e;->n:Z

    .line 43
    .line 44
    add-int/2addr v0, v3

    .line 45
    int-to-byte v0, v0

    .line 46
    aput-byte v0, p1, v6

    .line 47
    .line 48
    iget-boolean v0, p0, Lae/e;->o:Z

    .line 49
    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_3
    const/4 v2, 0x0

    .line 54
    :goto_3
    iget-boolean v0, p0, Lae/e;->p:Z

    .line 55
    .line 56
    if-eqz v0, :cond_4

    .line 57
    .line 58
    const/16 v1, 0x10

    .line 59
    .line 60
    :cond_4
    add-int/2addr v2, v1

    .line 61
    iget v0, p0, Lae/e;->e:I

    .line 62
    .line 63
    and-int/lit8 v0, v0, 0xf

    .line 64
    .line 65
    add-int/2addr v2, v0

    .line 66
    int-to-byte v0, v2

    .line 67
    aput-byte v0, p1, v4

    .line 68
    .line 69
    iget v0, p0, Lae/e;->f:I

    .line 70
    .line 71
    invoke-static {v0, v5, p1}, Lae/e;->h(II[B)V

    .line 72
    .line 73
    .line 74
    iget v0, p0, Lae/e;->g:I

    .line 75
    .line 76
    const/4 v1, 0x6

    .line 77
    invoke-static {v0, v1, p1}, Lae/e;->h(II[B)V

    .line 78
    .line 79
    .line 80
    iget v0, p0, Lae/e;->h:I

    .line 81
    .line 82
    const/16 v1, 0x8

    .line 83
    .line 84
    invoke-static {v0, v1, p1}, Lae/e;->h(II[B)V

    .line 85
    .line 86
    .line 87
    iget v0, p0, Lae/e;->i:I

    .line 88
    .line 89
    const/16 v1, 0xa

    .line 90
    .line 91
    invoke-static {v0, v1, p1}, Lae/e;->h(II[B)V

    .line 92
    .line 93
    .line 94
    const/16 v0, 0xc

    .line 95
    .line 96
    invoke-virtual {p0, v0, p1}, Lae/e;->g(I[B)I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    add-int/2addr p1, v0

    .line 101
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .line 1
    iget v0, p0, Lae/e;->d:I

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string v0, "WACK"

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const-string v0, "QUERY"

    .line 17
    .line 18
    :goto_0
    iget v2, p0, Lae/e;->e:I

    .line 19
    .line 20
    const/4 v3, 0x2

    .line 21
    const/4 v4, 0x4

    .line 22
    const/4 v5, 0x1

    .line 23
    if-eq v2, v5, :cond_2

    .line 24
    .line 25
    if-eq v2, v3, :cond_2

    .line 26
    .line 27
    if-eq v2, v4, :cond_2

    .line 28
    .line 29
    const/4 v6, 0x5

    .line 30
    if-eq v2, v6, :cond_2

    .line 31
    .line 32
    const/4 v6, 0x6

    .line 33
    if-eq v2, v6, :cond_2

    .line 34
    .line 35
    if-eq v2, v1, :cond_2

    .line 36
    .line 37
    invoke-static {v2, v5}, Lde/c;->c(II)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    :cond_2
    iget v1, p0, Lae/e;->s:I

    .line 41
    .line 42
    const-string v2, "NB"

    .line 43
    .line 44
    const-string v6, "NBSTAT"

    .line 45
    .line 46
    const/16 v7, 0x21

    .line 47
    .line 48
    const/16 v8, 0x20

    .line 49
    .line 50
    const-string v9, "0x"

    .line 51
    .line 52
    if-eq v1, v8, :cond_4

    .line 53
    .line 54
    if-eq v1, v7, :cond_3

    .line 55
    .line 56
    invoke-static {v1, v4}, Lde/c;->c(II)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v9, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    goto :goto_1

    .line 65
    :cond_3
    move-object v1, v6

    .line 66
    goto :goto_1

    .line 67
    :cond_4
    move-object v1, v2

    .line 68
    :goto_1
    iget v10, p0, Lae/e;->u:I

    .line 69
    .line 70
    if-eq v10, v5, :cond_8

    .line 71
    .line 72
    if-eq v10, v3, :cond_7

    .line 73
    .line 74
    const/16 v3, 0xa

    .line 75
    .line 76
    if-eq v10, v3, :cond_6

    .line 77
    .line 78
    if-eq v10, v8, :cond_9

    .line 79
    .line 80
    if-eq v10, v7, :cond_5

    .line 81
    .line 82
    invoke-static {v10, v4}, Lde/c;->c(II)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v9, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    goto :goto_2

    .line 91
    :cond_5
    move-object v2, v6

    .line 92
    goto :goto_2

    .line 93
    :cond_6
    const-string v2, "NULL"

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_7
    const-string v2, "NS"

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_8
    const-string v2, "A"

    .line 100
    .line 101
    :cond_9
    :goto_2
    new-instance v3, Ljava/lang/String;

    .line 102
    .line 103
    new-instance v6, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    const-string v7, "nameTrnId="

    .line 106
    .line 107
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iget v7, p0, Lae/e;->c:I

    .line 111
    .line 112
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v7, ",isResponse="

    .line 116
    .line 117
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    iget-boolean v7, p0, Lae/e;->k:Z

    .line 121
    .line 122
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string v7, ",opCode="

    .line 126
    .line 127
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v0, ",isAuthAnswer="

    .line 134
    .line 135
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    iget-boolean v0, p0, Lae/e;->l:Z

    .line 139
    .line 140
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v0, ",isTruncated="

    .line 144
    .line 145
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    iget-boolean v0, p0, Lae/e;->m:Z

    .line 149
    .line 150
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v0, ",isRecurAvailable="

    .line 154
    .line 155
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    iget-boolean v0, p0, Lae/e;->o:Z

    .line 159
    .line 160
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string v0, ",isRecurDesired="

    .line 164
    .line 165
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    iget-boolean v0, p0, Lae/e;->n:Z

    .line 169
    .line 170
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    const-string v0, ",isBroadcast="

    .line 174
    .line 175
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    iget-boolean v0, p0, Lae/e;->p:Z

    .line 179
    .line 180
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string v0, ",resultCode="

    .line 184
    .line 185
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    iget v0, p0, Lae/e;->e:I

    .line 189
    .line 190
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const-string v0, ",questionCount="

    .line 194
    .line 195
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    iget v0, p0, Lae/e;->f:I

    .line 199
    .line 200
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    const-string v0, ",answerCount="

    .line 204
    .line 205
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    iget v0, p0, Lae/e;->g:I

    .line 209
    .line 210
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    const-string v0, ",authorityCount="

    .line 214
    .line 215
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    iget v0, p0, Lae/e;->h:I

    .line 219
    .line 220
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    const-string v0, ",additionalCount="

    .line 224
    .line 225
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    iget v0, p0, Lae/e;->i:I

    .line 229
    .line 230
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    const-string v0, ",questionName="

    .line 234
    .line 235
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    iget-object v0, p0, Lae/e;->q:Lae/b;

    .line 239
    .line 240
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    const-string v0, ",questionType="

    .line 244
    .line 245
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    const-string v0, ",questionClass="

    .line 252
    .line 253
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    iget v0, p0, Lae/e;->t:I

    .line 257
    .line 258
    const-string v1, "IN"

    .line 259
    .line 260
    if-ne v0, v5, :cond_a

    .line 261
    .line 262
    move-object v0, v1

    .line 263
    goto :goto_3

    .line 264
    :cond_a
    invoke-static {v0, v4}, Lde/c;->c(II)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    invoke-virtual {v9, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    :goto_3
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    const-string v0, ",recordName="

    .line 276
    .line 277
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    iget-object v0, p0, Lae/e;->r:Lae/b;

    .line 281
    .line 282
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    const-string v0, ",recordType="

    .line 286
    .line 287
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    const-string v0, ",recordClass="

    .line 294
    .line 295
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    iget v0, p0, Lae/e;->v:I

    .line 299
    .line 300
    if-ne v0, v5, :cond_b

    .line 301
    .line 302
    goto :goto_4

    .line 303
    :cond_b
    invoke-static {v0, v4}, Lde/c;->c(II)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    invoke-virtual {v9, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    :goto_4
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    const-string v0, ",ttl="

    .line 315
    .line 316
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    iget v0, p0, Lae/e;->w:I

    .line 320
    .line 321
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    const-string v0, ",rDataLength="

    .line 325
    .line 326
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    iget v0, p0, Lae/e;->x:I

    .line 330
    .line 331
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    return-object v3
.end method
