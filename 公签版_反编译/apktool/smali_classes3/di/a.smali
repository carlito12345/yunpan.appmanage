.class public final Ldi/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:[B

.field public final f:I

.field public g:I

.field public h:I

.field public i:Z

.field public j:I

.field public k:I

.field public final synthetic l:I

.field public final m:Ldi/b;

.field public final n:[I

.field public final o:Landroidx/room/s;

.field public final p:I

.field public final q:I

.field public r:I

.field public s:I


# direct methods
.method public constructor <init>(IIIIILyh/b;I)V
    .locals 6

    iput p7, p0, Ldi/a;->l:I

    packed-switch p7, :pswitch_data_0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p6

    .line 1
    invoke-direct/range {v0 .. v5}, Ldi/a;-><init>(IIIILyh/b;)V

    const/4 p2, -0x1

    .line 2
    iput p2, p0, Ldi/a;->r:I

    add-int/lit8 p2, p1, 0x1

    .line 3
    iput p2, p0, Ldi/a;->q:I

    .line 4
    iput p2, p0, Ldi/a;->s:I

    .line 5
    new-instance p3, Ldi/b;

    invoke-direct {p3, p1, p6}, Ldi/b;-><init>(ILyh/b;)V

    iput-object p3, p0, Ldi/a;->m:Ldi/b;

    mul-int/lit8 p2, p2, 0x2

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p6, p2, p1}, Lyh/b;->b(IZ)[I

    move-result-object p1

    iput-object p1, p0, Ldi/a;->n:[I

    .line 7
    new-instance p1, Landroidx/room/s;

    add-int/lit8 p2, p4, -0x1

    const/4 p3, 0x1

    invoke-direct {p1, p2, p3}, Landroidx/room/s;-><init>(II)V

    iput-object p1, p0, Ldi/a;->o:Landroidx/room/s;

    if-lez p5, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    div-int/lit8 p4, p4, 0x2

    add-int/lit8 p5, p4, 0x10

    :goto_0
    iput p5, p0, Ldi/a;->p:I

    return-void

    :pswitch_0
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p6

    .line 9
    invoke-direct/range {v0 .. v5}, Ldi/a;-><init>(IIIILyh/b;)V

    const/4 p2, -0x1

    .line 10
    iput p2, p0, Ldi/a;->r:I

    .line 11
    new-instance p2, Ldi/b;

    invoke-direct {p2, p1, p6}, Ldi/b;-><init>(ILyh/b;)V

    iput-object p2, p0, Ldi/a;->m:Ldi/b;

    add-int/lit8 p1, p1, 0x1

    .line 12
    iput p1, p0, Ldi/a;->q:I

    const/4 p2, 0x0

    .line 13
    invoke-virtual {p6, p1, p2}, Lyh/b;->b(IZ)[I

    move-result-object p2

    iput-object p2, p0, Ldi/a;->n:[I

    .line 14
    iput p1, p0, Ldi/a;->s:I

    .line 15
    new-instance p1, Landroidx/room/s;

    add-int/lit8 p2, p4, -0x1

    const/4 p3, 0x1

    invoke-direct {p1, p2, p3}, Landroidx/room/s;-><init>(II)V

    iput-object p1, p0, Ldi/a;->o:Landroidx/room/s;

    if-lez p5, :cond_1

    goto :goto_1

    .line 16
    :cond_1
    div-int/lit8 p4, p4, 0x4

    add-int/lit8 p5, p4, 0x4

    :goto_1
    iput p5, p0, Ldi/a;->p:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(IIIILyh/b;)V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 18
    iput v0, p0, Ldi/a;->g:I

    .line 19
    iput v0, p0, Ldi/a;->h:I

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Ldi/a;->i:Z

    .line 21
    iput v0, p0, Ldi/a;->j:I

    .line 22
    iput v0, p0, Ldi/a;->k:I

    add-int/2addr p2, p1

    const/16 v0, 0x111

    add-int/2addr p3, v0

    .line 23
    div-int/lit8 p1, p1, 0x2

    const/high16 v1, 0x40000

    add-int/2addr p1, v1

    const/high16 v1, 0x20000000

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    add-int v1, p2, p3

    add-int/2addr v1, p1

    .line 24
    iput v1, p0, Ldi/a;->f:I

    .line 25
    invoke-virtual {p5, v1}, Lyh/b;->a(I)[B

    move-result-object p1

    iput-object p1, p0, Ldi/a;->e:[B

    .line 26
    iput p2, p0, Ldi/a;->a:I

    .line 27
    iput p3, p0, Ldi/a;->b:I

    .line 28
    iput v0, p0, Ldi/a;->c:I

    .line 29
    iput p4, p0, Ldi/a;->d:I

    return-void
.end method

.method public static g(II[I)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v1, p0, :cond_1

    .line 4
    .line 5
    aget v2, p2, v1

    .line 6
    .line 7
    if-gt v2, p1, :cond_0

    .line 8
    .line 9
    aput v0, p2, v1

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    sub-int/2addr v2, p1

    .line 13
    aput v2, p2, v1

    .line 14
    .line 15
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(II[B)I
    .locals 6

    .line 1
    iget v0, p0, Ldi/a;->g:I

    .line 2
    .line 3
    iget v1, p0, Ldi/a;->f:I

    .line 4
    .line 5
    iget v2, p0, Ldi/a;->b:I

    .line 6
    .line 7
    sub-int v3, v1, v2

    .line 8
    .line 9
    iget-object v4, p0, Ldi/a;->e:[B

    .line 10
    .line 11
    if-lt v0, v3, :cond_0

    .line 12
    .line 13
    add-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    iget v3, p0, Ldi/a;->a:I

    .line 16
    .line 17
    sub-int/2addr v0, v3

    .line 18
    and-int/lit8 v0, v0, -0x10

    .line 19
    .line 20
    iget v3, p0, Ldi/a;->j:I

    .line 21
    .line 22
    sub-int/2addr v3, v0

    .line 23
    const/4 v5, 0x0

    .line 24
    invoke-static {v4, v0, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    .line 26
    .line 27
    iget v3, p0, Ldi/a;->g:I

    .line 28
    .line 29
    sub-int/2addr v3, v0

    .line 30
    iput v3, p0, Ldi/a;->g:I

    .line 31
    .line 32
    iget v3, p0, Ldi/a;->h:I

    .line 33
    .line 34
    sub-int/2addr v3, v0

    .line 35
    iput v3, p0, Ldi/a;->h:I

    .line 36
    .line 37
    iget v3, p0, Ldi/a;->j:I

    .line 38
    .line 39
    sub-int/2addr v3, v0

    .line 40
    iput v3, p0, Ldi/a;->j:I

    .line 41
    .line 42
    :cond_0
    iget v0, p0, Ldi/a;->j:I

    .line 43
    .line 44
    sub-int/2addr v1, v0

    .line 45
    if-le p2, v1, :cond_1

    .line 46
    .line 47
    move p2, v1

    .line 48
    :cond_1
    invoke-static {p3, p1, v4, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    .line 50
    .line 51
    iget p1, p0, Ldi/a;->j:I

    .line 52
    .line 53
    add-int/2addr p1, p2

    .line 54
    iput p1, p0, Ldi/a;->j:I

    .line 55
    .line 56
    if-lt p1, v2, :cond_2

    .line 57
    .line 58
    sub-int/2addr p1, v2

    .line 59
    iput p1, p0, Ldi/a;->h:I

    .line 60
    .line 61
    :cond_2
    invoke-virtual {p0}, Ldi/a;->h()V

    .line 62
    .line 63
    .line 64
    return p2
.end method

.method public final b(I)I
    .locals 1

    .line 1
    iget v0, p0, Ldi/a;->g:I

    .line 2
    .line 3
    sub-int/2addr v0, p1

    .line 4
    iget-object p1, p0, Ldi/a;->e:[B

    .line 5
    .line 6
    aget-byte p1, p1, v0

    .line 7
    .line 8
    and-int/lit16 p1, p1, 0xff

    .line 9
    .line 10
    return p1
.end method

.method public final c(II)I
    .locals 1

    .line 1
    iget v0, p0, Ldi/a;->g:I

    .line 2
    .line 3
    add-int/2addr v0, p1

    .line 4
    sub-int/2addr v0, p2

    .line 5
    iget-object p1, p0, Ldi/a;->e:[B

    .line 6
    .line 7
    aget-byte p1, p1, v0

    .line 8
    .line 9
    and-int/lit16 p1, p1, 0xff

    .line 10
    .line 11
    return p1
.end method

.method public d()I
    .locals 6

    .line 1
    iget v0, p0, Ldi/a;->d:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ldi/a;->e(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget v1, p0, Ldi/a;->s:I

    .line 10
    .line 11
    add-int/lit8 v1, v1, 0x1

    .line 12
    .line 13
    iput v1, p0, Ldi/a;->s:I

    .line 14
    .line 15
    const v2, 0x7fffffff

    .line 16
    .line 17
    .line 18
    iget v3, p0, Ldi/a;->q:I

    .line 19
    .line 20
    if-ne v1, v2, :cond_0

    .line 21
    .line 22
    sub-int/2addr v2, v3

    .line 23
    iget-object v1, p0, Ldi/a;->m:Ldi/b;

    .line 24
    .line 25
    iget-object v4, v1, Ldi/b;->b:[I

    .line 26
    .line 27
    const/16 v5, 0x400

    .line 28
    .line 29
    invoke-static {v5, v2, v4}, Ldi/a;->g(II[I)V

    .line 30
    .line 31
    .line 32
    iget-object v4, v1, Ldi/b;->c:[I

    .line 33
    .line 34
    const/high16 v5, 0x10000

    .line 35
    .line 36
    invoke-static {v5, v2, v4}, Ldi/a;->g(II[I)V

    .line 37
    .line 38
    .line 39
    iget-object v4, v1, Ldi/b;->d:[I

    .line 40
    .line 41
    iget v1, v1, Ldi/b;->e:I

    .line 42
    .line 43
    invoke-static {v1, v2, v4}, Ldi/a;->g(II[I)V

    .line 44
    .line 45
    .line 46
    mul-int/lit8 v1, v3, 0x2

    .line 47
    .line 48
    iget-object v4, p0, Ldi/a;->n:[I

    .line 49
    .line 50
    invoke-static {v1, v2, v4}, Ldi/a;->g(II[I)V

    .line 51
    .line 52
    .line 53
    iget v1, p0, Ldi/a;->s:I

    .line 54
    .line 55
    sub-int/2addr v1, v2

    .line 56
    iput v1, p0, Ldi/a;->s:I

    .line 57
    .line 58
    :cond_0
    iget v1, p0, Ldi/a;->r:I

    .line 59
    .line 60
    add-int/lit8 v1, v1, 0x1

    .line 61
    .line 62
    iput v1, p0, Ldi/a;->r:I

    .line 63
    .line 64
    if-ne v1, v3, :cond_1

    .line 65
    .line 66
    const/4 v1, 0x0

    .line 67
    iput v1, p0, Ldi/a;->r:I

    .line 68
    .line 69
    :cond_1
    return v0
.end method

.method public final e(I)I
    .locals 2

    .line 1
    iget v0, p0, Ldi/a;->g:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Ldi/a;->g:I

    .line 6
    .line 7
    iget v1, p0, Ldi/a;->j:I

    .line 8
    .line 9
    sub-int/2addr v1, v0

    .line 10
    if-ge v1, p1, :cond_1

    .line 11
    .line 12
    const/4 p1, 0x4

    .line 13
    if-lt v1, p1, :cond_0

    .line 14
    .line 15
    iget-boolean p1, p0, Ldi/a;->i:Z

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    :cond_0
    iget p1, p0, Ldi/a;->k:I

    .line 20
    .line 21
    add-int/lit8 p1, p1, 0x1

    .line 22
    .line 23
    iput p1, p0, Ldi/a;->k:I

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    :cond_1
    return v1
.end method

.method public f()I
    .locals 6

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Ldi/a;->e(I)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget v1, p0, Ldi/a;->s:I

    .line 9
    .line 10
    add-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    iput v1, p0, Ldi/a;->s:I

    .line 13
    .line 14
    const v2, 0x7fffffff

    .line 15
    .line 16
    .line 17
    iget v3, p0, Ldi/a;->q:I

    .line 18
    .line 19
    if-ne v1, v2, :cond_0

    .line 20
    .line 21
    sub-int/2addr v2, v3

    .line 22
    iget-object v1, p0, Ldi/a;->m:Ldi/b;

    .line 23
    .line 24
    iget-object v4, v1, Ldi/b;->b:[I

    .line 25
    .line 26
    const/16 v5, 0x400

    .line 27
    .line 28
    invoke-static {v5, v2, v4}, Ldi/a;->g(II[I)V

    .line 29
    .line 30
    .line 31
    iget-object v4, v1, Ldi/b;->c:[I

    .line 32
    .line 33
    const/high16 v5, 0x10000

    .line 34
    .line 35
    invoke-static {v5, v2, v4}, Ldi/a;->g(II[I)V

    .line 36
    .line 37
    .line 38
    iget-object v4, v1, Ldi/b;->d:[I

    .line 39
    .line 40
    iget v1, v1, Ldi/b;->e:I

    .line 41
    .line 42
    invoke-static {v1, v2, v4}, Ldi/a;->g(II[I)V

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Ldi/a;->n:[I

    .line 46
    .line 47
    invoke-static {v3, v2, v1}, Ldi/a;->g(II[I)V

    .line 48
    .line 49
    .line 50
    iget v1, p0, Ldi/a;->s:I

    .line 51
    .line 52
    sub-int/2addr v1, v2

    .line 53
    iput v1, p0, Ldi/a;->s:I

    .line 54
    .line 55
    :cond_0
    iget v1, p0, Ldi/a;->r:I

    .line 56
    .line 57
    add-int/lit8 v1, v1, 0x1

    .line 58
    .line 59
    iput v1, p0, Ldi/a;->r:I

    .line 60
    .line 61
    if-ne v1, v3, :cond_1

    .line 62
    .line 63
    const/4 v1, 0x0

    .line 64
    iput v1, p0, Ldi/a;->r:I

    .line 65
    .line 66
    :cond_1
    return v0
.end method

.method public final h()V
    .locals 3

    .line 1
    iget v0, p0, Ldi/a;->k:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    iget v1, p0, Ldi/a;->g:I

    .line 6
    .line 7
    iget v2, p0, Ldi/a;->h:I

    .line 8
    .line 9
    if-ge v1, v2, :cond_0

    .line 10
    .line 11
    sub-int/2addr v1, v0

    .line 12
    iput v1, p0, Ldi/a;->g:I

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput v1, p0, Ldi/a;->k:I

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ldi/a;->j(I)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final i(Lyh/b;)V
    .locals 2

    .line 1
    iget v0, p0, Ldi/a;->l:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ldi/a;->n:[I

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lyh/b;->d([I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Ldi/a;->m:Ldi/b;

    .line 12
    .line 13
    iget-object v1, v0, Ldi/b;->d:[I

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Lyh/b;->d([I)V

    .line 16
    .line 17
    .line 18
    iget-object v1, v0, Ldi/b;->c:[I

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Lyh/b;->d([I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, v0, Ldi/b;->b:[I

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lyh/b;->d([I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Ldi/a;->e:[B

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Lyh/b;->c([B)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :pswitch_0
    iget-object v0, p0, Ldi/a;->n:[I

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lyh/b;->d([I)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Ldi/a;->m:Ldi/b;

    .line 40
    .line 41
    iget-object v1, v0, Ldi/b;->d:[I

    .line 42
    .line 43
    invoke-virtual {p1, v1}, Lyh/b;->d([I)V

    .line 44
    .line 45
    .line 46
    iget-object v1, v0, Ldi/b;->c:[I

    .line 47
    .line 48
    invoke-virtual {p1, v1}, Lyh/b;->d([I)V

    .line 49
    .line 50
    .line 51
    iget-object v0, v0, Ldi/b;->b:[I

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Lyh/b;->d([I)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Ldi/a;->e:[B

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Lyh/b;->c([B)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    nop

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final j(I)V
    .locals 4

    .line 1
    iget v0, p0, Ldi/a;->l:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :goto_0
    add-int/lit8 v0, p1, -0x1

    .line 7
    .line 8
    if-lez p1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Ldi/a;->f()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget p1, p0, Ldi/a;->g:I

    .line 17
    .line 18
    iget-object v1, p0, Ldi/a;->m:Ldi/b;

    .line 19
    .line 20
    iget-object v2, p0, Ldi/a;->e:[B

    .line 21
    .line 22
    invoke-virtual {v1, p1, v2}, Ldi/b;->a(I[B)V

    .line 23
    .line 24
    .line 25
    iget p1, p0, Ldi/a;->r:I

    .line 26
    .line 27
    iget-object v2, v1, Ldi/b;->d:[I

    .line 28
    .line 29
    iget v3, v1, Ldi/b;->h:I

    .line 30
    .line 31
    aget v2, v2, v3

    .line 32
    .line 33
    iget-object v3, p0, Ldi/a;->n:[I

    .line 34
    .line 35
    aput v2, v3, p1

    .line 36
    .line 37
    iget p1, p0, Ldi/a;->s:I

    .line 38
    .line 39
    invoke-virtual {v1, p1}, Ldi/b;->b(I)V

    .line 40
    .line 41
    .line 42
    :cond_0
    move p1, v0

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    return-void

    .line 45
    :goto_1
    :pswitch_0
    add-int/lit8 v0, p1, -0x1

    .line 46
    .line 47
    if-lez p1, :cond_4

    .line 48
    .line 49
    invoke-virtual {p0}, Ldi/a;->d()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    iget v1, p0, Ldi/a;->d:I

    .line 54
    .line 55
    if-ge p1, v1, :cond_2

    .line 56
    .line 57
    if-nez p1, :cond_3

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_2
    move p1, v1

    .line 61
    :cond_3
    iget v1, p0, Ldi/a;->g:I

    .line 62
    .line 63
    iget-object v2, p0, Ldi/a;->m:Ldi/b;

    .line 64
    .line 65
    iget-object v3, p0, Ldi/a;->e:[B

    .line 66
    .line 67
    invoke-virtual {v2, v1, v3}, Ldi/b;->a(I[B)V

    .line 68
    .line 69
    .line 70
    iget-object v1, v2, Ldi/b;->d:[I

    .line 71
    .line 72
    iget v3, v2, Ldi/b;->h:I

    .line 73
    .line 74
    aget v1, v1, v3

    .line 75
    .line 76
    iget v3, p0, Ldi/a;->s:I

    .line 77
    .line 78
    invoke-virtual {v2, v3}, Ldi/b;->b(I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, p1, v1}, Ldi/a;->k(II)V

    .line 82
    .line 83
    .line 84
    :goto_2
    move p1, v0

    .line 85
    goto :goto_1

    .line 86
    :cond_4
    return-void

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public k(II)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Ldi/a;->r:I

    .line 6
    .line 7
    shl-int/lit8 v3, v2, 0x1

    .line 8
    .line 9
    add-int/lit8 v3, v3, 0x1

    .line 10
    .line 11
    shl-int/lit8 v2, v2, 0x1

    .line 12
    .line 13
    iget v4, v0, Ldi/a;->p:I

    .line 14
    .line 15
    move v6, v4

    .line 16
    const/4 v7, 0x0

    .line 17
    const/4 v8, 0x0

    .line 18
    move v4, v3

    .line 19
    move v3, v2

    .line 20
    move/from16 v2, p2

    .line 21
    .line 22
    :goto_0
    iget v9, v0, Ldi/a;->s:I

    .line 23
    .line 24
    sub-int/2addr v9, v2

    .line 25
    add-int/lit8 v10, v6, -0x1

    .line 26
    .line 27
    iget-object v11, v0, Ldi/a;->n:[I

    .line 28
    .line 29
    if-eqz v6, :cond_0

    .line 30
    .line 31
    iget v6, v0, Ldi/a;->q:I

    .line 32
    .line 33
    if-lt v9, v6, :cond_1

    .line 34
    .line 35
    :cond_0
    const/4 v1, 0x0

    .line 36
    goto :goto_3

    .line 37
    :cond_1
    iget v12, v0, Ldi/a;->r:I

    .line 38
    .line 39
    sub-int v13, v12, v9

    .line 40
    .line 41
    if-le v9, v12, :cond_2

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    const/4 v6, 0x0

    .line 45
    :goto_1
    add-int/2addr v13, v6

    .line 46
    shl-int/lit8 v6, v13, 0x1

    .line 47
    .line 48
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    .line 49
    .line 50
    .line 51
    move-result v12

    .line 52
    iget v13, v0, Ldi/a;->g:I

    .line 53
    .line 54
    add-int v14, v13, v12

    .line 55
    .line 56
    sub-int/2addr v14, v9

    .line 57
    iget-object v15, v0, Ldi/a;->e:[B

    .line 58
    .line 59
    aget-byte v14, v15, v14

    .line 60
    .line 61
    add-int v16, v13, v12

    .line 62
    .line 63
    aget-byte v5, v15, v16

    .line 64
    .line 65
    if-ne v14, v5, :cond_3

    .line 66
    .line 67
    add-int/lit8 v12, v12, 0x1

    .line 68
    .line 69
    invoke-static {v15, v13, v9, v12, v1}, Lcom/bumptech/glide/d;->A([BIIII)I

    .line 70
    .line 71
    .line 72
    move-result v12

    .line 73
    if-ne v12, v1, :cond_3

    .line 74
    .line 75
    aget v1, v11, v6

    .line 76
    .line 77
    aput v1, v11, v3

    .line 78
    .line 79
    add-int/lit8 v6, v6, 0x1

    .line 80
    .line 81
    aget v1, v11, v6

    .line 82
    .line 83
    aput v1, v11, v4

    .line 84
    .line 85
    return-void

    .line 86
    :cond_3
    iget v5, v0, Ldi/a;->g:I

    .line 87
    .line 88
    add-int v13, v5, v12

    .line 89
    .line 90
    sub-int/2addr v13, v9

    .line 91
    aget-byte v9, v15, v13

    .line 92
    .line 93
    and-int/lit16 v9, v9, 0xff

    .line 94
    .line 95
    add-int/2addr v5, v12

    .line 96
    aget-byte v5, v15, v5

    .line 97
    .line 98
    and-int/lit16 v5, v5, 0xff

    .line 99
    .line 100
    if-ge v9, v5, :cond_4

    .line 101
    .line 102
    aput v2, v11, v3

    .line 103
    .line 104
    add-int/lit8 v6, v6, 0x1

    .line 105
    .line 106
    aget v2, v11, v6

    .line 107
    .line 108
    move v3, v6

    .line 109
    move v8, v12

    .line 110
    goto :goto_2

    .line 111
    :cond_4
    aput v2, v11, v4

    .line 112
    .line 113
    aget v2, v11, v6

    .line 114
    .line 115
    move v4, v6

    .line 116
    move v7, v12

    .line 117
    :goto_2
    move v6, v10

    .line 118
    goto :goto_0

    .line 119
    :goto_3
    aput v1, v11, v4

    .line 120
    .line 121
    aput v1, v11, v3

    .line 122
    .line 123
    return-void
.end method
