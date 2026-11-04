.class public final Lei/g;
.super Lei/a;
.source "SourceFile"


# instance fields
.field public final e:[I

.field public final f:[[I

.field public final synthetic g:Lei/h;


# direct methods
.method public constructor <init>(Lei/h;II)V
    .locals 1

    .line 1
    iput-object p1, p0, Lei/g;->g:Lei/h;

    .line 2
    .line 3
    invoke-direct {p0}, Lei/a;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    shl-int p2, p1, p2

    .line 8
    .line 9
    new-array v0, p2, [I

    .line 10
    .line 11
    iput-object v0, p0, Lei/g;->e:[I

    .line 12
    .line 13
    sub-int/2addr p3, p1

    .line 14
    const/16 v0, 0x10

    .line 15
    .line 16
    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    .line 17
    .line 18
    .line 19
    move-result p3

    .line 20
    const/4 v0, 0x2

    .line 21
    new-array v0, v0, [I

    .line 22
    .line 23
    aput p3, v0, p1

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    aput p2, v0, p1

    .line 27
    .line 28
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 29
    .line 30
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, [[I

    .line 35
    .line 36
    iput-object p1, p0, Lei/g;->f:[[I

    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    invoke-super {p0}, Lei/a;->a()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    iget-object v2, p0, Lei/g;->e:[I

    .line 7
    .line 8
    array-length v3, v2

    .line 9
    if-ge v1, v3, :cond_0

    .line 10
    .line 11
    aput v0, v2, v1

    .line 12
    .line 13
    add-int/lit8 v1, v1, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return-void
.end method

.method public final b(II)V
    .locals 6

    .line 1
    add-int/lit8 v0, p1, -0x2

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lei/a;->a:[S

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    iget-object v4, p0, Lei/g;->g:Lei/h;

    .line 8
    .line 9
    const/16 v5, 0x8

    .line 10
    .line 11
    if-ge v0, v5, :cond_0

    .line 12
    .line 13
    iget-object p1, v4, Lei/h;->m:Lfi/d;

    .line 14
    .line 15
    invoke-virtual {p1, v2, v1, v1}, Lfi/d;->o0([SII)V

    .line 16
    .line 17
    .line 18
    iget-object p1, v4, Lei/h;->m:Lfi/d;

    .line 19
    .line 20
    iget-object v1, p0, Lei/a;->b:[[S

    .line 21
    .line 22
    aget-object v1, v1, p2

    .line 23
    .line 24
    invoke-virtual {p1, v1, v0}, Lfi/d;->p0([SI)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v0, v4, Lei/h;->m:Lfi/d;

    .line 29
    .line 30
    invoke-virtual {v0, v2, v1, v3}, Lfi/d;->o0([SII)V

    .line 31
    .line 32
    .line 33
    add-int/lit8 v0, p1, -0xa

    .line 34
    .line 35
    if-ge v0, v5, :cond_1

    .line 36
    .line 37
    iget-object p1, v4, Lei/h;->m:Lfi/d;

    .line 38
    .line 39
    invoke-virtual {p1, v2, v3, v1}, Lfi/d;->o0([SII)V

    .line 40
    .line 41
    .line 42
    iget-object p1, v4, Lei/h;->m:Lfi/d;

    .line 43
    .line 44
    iget-object v1, p0, Lei/a;->c:[[S

    .line 45
    .line 46
    aget-object v1, v1, p2

    .line 47
    .line 48
    invoke-virtual {p1, v1, v0}, Lfi/d;->p0([SI)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    iget-object v0, v4, Lei/h;->m:Lfi/d;

    .line 53
    .line 54
    invoke-virtual {v0, v2, v3, v3}, Lfi/d;->o0([SII)V

    .line 55
    .line 56
    .line 57
    iget-object v0, v4, Lei/h;->m:Lfi/d;

    .line 58
    .line 59
    add-int/lit8 p1, p1, -0x12

    .line 60
    .line 61
    iget-object v1, p0, Lei/a;->d:[S

    .line 62
    .line 63
    invoke-virtual {v0, v1, p1}, Lfi/d;->p0([SI)V

    .line 64
    .line 65
    .line 66
    :goto_0
    iget-object p1, p0, Lei/g;->e:[I

    .line 67
    .line 68
    aget v0, p1, p2

    .line 69
    .line 70
    sub-int/2addr v0, v3

    .line 71
    aput v0, p1, p2

    .line 72
    .line 73
    return-void
.end method

.method public final c()V
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lei/g;->e:[I

    .line 4
    .line 5
    array-length v3, v2

    .line 6
    if-ge v1, v3, :cond_3

    .line 7
    .line 8
    aget v3, v2, v1

    .line 9
    .line 10
    if-gtz v3, :cond_2

    .line 11
    .line 12
    const/16 v3, 0x20

    .line 13
    .line 14
    aput v3, v2, v1

    .line 15
    .line 16
    iget-object v2, p0, Lei/a;->a:[S

    .line 17
    .line 18
    aget-short v3, v2, v0

    .line 19
    .line 20
    invoke-static {v3, v0}, Lfi/d;->q0(II)I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    const/4 v4, 0x0

    .line 25
    :goto_1
    const/16 v5, 0x8

    .line 26
    .line 27
    iget-object v6, p0, Lei/g;->f:[[I

    .line 28
    .line 29
    if-ge v4, v5, :cond_0

    .line 30
    .line 31
    aget-object v5, v6, v1

    .line 32
    .line 33
    iget-object v6, p0, Lei/a;->b:[[S

    .line 34
    .line 35
    aget-object v6, v6, v1

    .line 36
    .line 37
    invoke-static {v6, v4}, Lfi/d;->r0([SI)I

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    add-int/2addr v6, v3

    .line 42
    aput v6, v5, v4

    .line 43
    .line 44
    add-int/lit8 v4, v4, 0x1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_0
    aget-short v3, v2, v0

    .line 48
    .line 49
    const/4 v5, 0x1

    .line 50
    invoke-static {v3, v5}, Lfi/d;->q0(II)I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    aget-short v7, v2, v5

    .line 55
    .line 56
    invoke-static {v7, v0}, Lfi/d;->q0(II)I

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    :goto_2
    const/16 v8, 0x10

    .line 61
    .line 62
    if-ge v4, v8, :cond_1

    .line 63
    .line 64
    aget-object v8, v6, v1

    .line 65
    .line 66
    add-int v9, v3, v7

    .line 67
    .line 68
    iget-object v10, p0, Lei/a;->c:[[S

    .line 69
    .line 70
    aget-object v10, v10, v1

    .line 71
    .line 72
    add-int/lit8 v11, v4, -0x8

    .line 73
    .line 74
    invoke-static {v10, v11}, Lfi/d;->r0([SI)I

    .line 75
    .line 76
    .line 77
    move-result v10

    .line 78
    add-int/2addr v10, v9

    .line 79
    aput v10, v8, v4

    .line 80
    .line 81
    add-int/lit8 v4, v4, 0x1

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_1
    aget-short v2, v2, v5

    .line 85
    .line 86
    invoke-static {v2, v5}, Lfi/d;->q0(II)I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    :goto_3
    aget-object v5, v6, v1

    .line 91
    .line 92
    array-length v7, v5

    .line 93
    if-ge v4, v7, :cond_2

    .line 94
    .line 95
    add-int v7, v3, v2

    .line 96
    .line 97
    add-int/lit8 v8, v4, -0x10

    .line 98
    .line 99
    iget-object v9, p0, Lei/a;->d:[S

    .line 100
    .line 101
    invoke-static {v9, v8}, Lfi/d;->r0([SI)I

    .line 102
    .line 103
    .line 104
    move-result v8

    .line 105
    add-int/2addr v8, v7

    .line 106
    aput v8, v5, v4

    .line 107
    .line 108
    add-int/lit8 v4, v4, 0x1

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_3
    return-void
.end method
