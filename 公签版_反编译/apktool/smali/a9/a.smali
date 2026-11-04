.class public La9/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvc/j;
.implements Lwb/j;


# instance fields
.field public final synthetic a:I

.field public b:I

.field public c:I

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(IC)V
    .locals 0

    iput p1, p0, La9/a;->a:I

    packed-switch p1, :pswitch_data_0

    const/16 p1, 0x5000

    const/4 p2, 0x0

    .line 27
    invoke-direct {p0, p1, p2}, La9/a;-><init>(II)V

    return-void

    .line 28
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(II)V
    .locals 0

    iput p2, p0, La9/a;->a:I

    sparse-switch p2, :sswitch_data_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x4

    .line 2
    new-array p2, p2, [B

    iput-object p2, p0, La9/a;->d:Ljava/lang/Object;

    .line 3
    new-array p1, p1, [B

    iput-object p1, p0, La9/a;->e:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, La9/a;->b:I

    .line 5
    iput p1, p0, La9/a;->c:I

    return-void

    .line 6
    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, -0x1

    .line 7
    iput p2, p0, La9/a;->c:I

    .line 8
    iput p1, p0, La9/a;->b:I

    return-void

    .line 9
    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-array p1, p1, [Lf3/t;

    iput-object p1, p0, La9/a;->d:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 11
    iput p1, p0, La9/a;->c:I

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method public constructor <init>(I[BI[I)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, La9/a;->a:I

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, La9/a;->b:I

    .line 24
    iput-object p2, p0, La9/a;->d:Ljava/lang/Object;

    .line 25
    iput p3, p0, La9/a;->c:I

    .line 26
    iput-object p4, p0, La9/a;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I[F[FI)V
    .locals 6

    const/4 v0, 0x3

    iput v0, p0, La9/a;->a:I

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, La9/a;->b:I

    .line 31
    array-length p1, p2

    int-to-long v0, p1

    const-wide/16 v2, 0x2

    mul-long v0, v0, v2

    array-length p1, p3

    int-to-long v2, p1

    const-wide/16 v4, 0x3

    mul-long v2, v2, v4

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, La9/o;->k(Z)V

    .line 32
    iput-object p2, p0, La9/a;->d:Ljava/lang/Object;

    .line 33
    iput-object p3, p0, La9/a;->e:Ljava/lang/Object;

    .line 34
    iput p4, p0, La9/a;->c:I

    return-void
.end method

.method public constructor <init>(La9/a;)V
    .locals 2

    const/4 v0, 0x4

    iput v0, p0, La9/a;->a:I

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iget-object v0, p1, La9/a;->d:Ljava/lang/Object;

    check-cast v0, [F

    .line 37
    array-length v1, v0

    div-int/lit8 v1, v1, 0x3

    .line 38
    iput v1, p0, La9/a;->b:I

    .line 39
    invoke-static {v0}, Lu1/a;->d([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, La9/a;->d:Ljava/lang/Object;

    .line 40
    iget-object v0, p1, La9/a;->e:Ljava/lang/Object;

    check-cast v0, [F

    invoke-static {v0}, Lu1/a;->d([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, La9/a;->e:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 41
    iget p1, p1, La9/a;->c:I

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x4

    .line 42
    iput p1, p0, La9/a;->c:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x6

    .line 43
    iput p1, p0, La9/a;->c:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x5

    .line 44
    iput p1, p0, La9/a;->c:I

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;II)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, La9/a;->a:I

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, La9/a;->d:Ljava/lang/Object;

    .line 14
    iput-object p2, p0, La9/a;->e:Ljava/lang/Object;

    .line 15
    iput p3, p0, La9/a;->b:I

    .line 16
    iput p4, p0, La9/a;->c:I

    return-void
.end method

.method public constructor <init>(Lq7/p;Ls4/a;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, La9/a;->a:I

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, La9/a;->d:Ljava/lang/Object;

    .line 50
    iput-object p1, p0, La9/a;->e:Ljava/lang/Object;

    .line 51
    iget-object p1, p2, Ls4/a;->c:Ljava/lang/Object;

    check-cast p1, Landroid/content/res/TypedArray;

    const/16 p2, 0x1c

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 52
    iput p2, p0, La9/a;->b:I

    const/16 p2, 0x34

    .line 53
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 54
    iput p1, p0, La9/a;->c:I

    return-void
.end method

.method public constructor <init>(Lwb/n;I)V
    .locals 1

    const/16 v0, 0x9

    iput v0, p0, La9/a;->a:I

    .line 45
    iput-object p1, p0, La9/a;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p2, p0, La9/a;->c:I

    iput p2, p0, La9/a;->b:I

    .line 47
    new-instance p1, Lwb/h;

    invoke-direct {p1}, Lwb/h;-><init>()V

    iput-object p1, p0, La9/a;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, La9/a;->a:I

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 18
    new-array v0, v0, [B

    iput-object v0, p0, La9/a;->d:Ljava/lang/Object;

    .line 19
    iput-object p1, p0, La9/a;->e:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 20
    iput p1, p0, La9/a;->b:I

    .line 21
    iput p1, p0, La9/a;->c:I

    return-void
.end method

.method public static b([[B)La9/a;
    .locals 4

    .line 1
    array-length v0, p0

    .line 2
    mul-int/lit8 v0, v0, 0x4

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    :goto_0
    array-length v3, p0

    .line 7
    if-ge v2, v3, :cond_0

    .line 8
    .line 9
    aget-object v3, p0, v2

    .line 10
    .line 11
    array-length v3, v3

    .line 12
    add-int/2addr v0, v3

    .line 13
    add-int/lit8 v2, v2, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v2, La9/a;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-direct {v2, v0, v3}, La9/a;-><init>(II)V

    .line 20
    .line 21
    .line 22
    :goto_1
    array-length v0, p0

    .line 23
    if-ge v1, v0, :cond_1

    .line 24
    .line 25
    aget-object v0, p0, v1

    .line 26
    .line 27
    array-length v3, v0

    .line 28
    invoke-virtual {v2, v3, v0}, La9/a;->p(I[B)V

    .line 29
    .line 30
    .line 31
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    return-object v2
.end method


# virtual methods
.method public c(I[B)I
    .locals 6

    .line 1
    iget v0, p0, La9/a;->b:I

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    invoke-static {v0, v1, p2, p1}, Lrd/a;->f(J[BI)V

    .line 5
    .line 6
    .line 7
    add-int/lit8 v0, p1, 0x4

    .line 8
    .line 9
    const/16 v1, 0x10

    .line 10
    .line 11
    iget-object v2, p0, La9/a;->d:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v2, [B

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-static {v2, v3, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    .line 18
    .line 19
    add-int/lit8 v0, p1, 0x14

    .line 20
    .line 21
    iget v1, p0, La9/a;->c:I

    .line 22
    .line 23
    int-to-long v1, v1

    .line 24
    invoke-static {v1, v2, p2, v0}, Lrd/a;->e(J[BI)V

    .line 25
    .line 26
    .line 27
    add-int/lit8 v0, p1, 0x16

    .line 28
    .line 29
    iget-object v1, p0, La9/a;->e:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v1, [I

    .line 32
    .line 33
    array-length v2, v1

    .line 34
    int-to-long v4, v2

    .line 35
    invoke-static {v4, v5, p2, v0}, Lrd/a;->e(J[BI)V

    .line 36
    .line 37
    .line 38
    add-int/lit8 v0, p1, 0x18

    .line 39
    .line 40
    array-length v2, v1

    .line 41
    :goto_0
    if-ge v3, v2, :cond_0

    .line 42
    .line 43
    aget v4, v1, v3

    .line 44
    .line 45
    int-to-long v4, v4

    .line 46
    invoke-static {v4, v5, p2, v0}, Lrd/a;->e(J[BI)V

    .line 47
    .line 48
    .line 49
    add-int/lit8 v0, v0, 0x2

    .line 50
    .line 51
    add-int/lit8 v3, v3, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    sub-int/2addr v0, p1

    .line 55
    return v0
.end method

.method public d()I
    .locals 3

    .line 1
    iget-object v0, p0, La9/a;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [B

    .line 4
    .line 5
    iget v1, p0, La9/a;->c:I

    .line 6
    .line 7
    add-int/lit8 v2, v1, 0x1

    .line 8
    .line 9
    iput v2, p0, La9/a;->c:I

    .line 10
    .line 11
    aget-byte v0, v0, v1

    .line 12
    .line 13
    and-int/lit16 v0, v0, 0xff

    .line 14
    .line 15
    return v0
.end method

.method public e(I[B)V
    .locals 3

    .line 1
    iget-object v0, p0, La9/a;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [B

    .line 4
    .line 5
    iget v1, p0, La9/a;->c:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-static {v0, v1, p2, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, La9/a;->c:I

    .line 12
    .line 13
    add-int/2addr p2, p1

    .line 14
    iput p2, p0, La9/a;->c:I

    .line 15
    .line 16
    return-void
.end method

.method public f(ILjava/lang/String;)[[B
    .locals 4

    .line 1
    new-array v0, p1, [[B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :goto_0
    if-ge v1, p1, :cond_1

    .line 5
    .line 6
    invoke-virtual {p0}, La9/a;->g()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    invoke-virtual {p0}, La9/a;->h()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-lt v3, v2, :cond_0

    .line 15
    .line 16
    new-array v3, v2, [B

    .line 17
    .line 18
    aput-object v3, v0, v1

    .line 19
    .line 20
    invoke-virtual {p0, v2, v3}, La9/a;->e(I[B)V

    .line 21
    .line 22
    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance p1, La9/n;

    .line 27
    .line 28
    invoke-direct {p1, p2}, La9/n;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1

    .line 32
    :cond_1
    return-object v0
.end method

.method public g()I
    .locals 3

    .line 1
    invoke-virtual {p0}, La9/a;->k()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    shl-int/lit8 v0, v0, 0x10

    .line 6
    .line 7
    const/high16 v1, -0x10000

    .line 8
    .line 9
    and-int/2addr v0, v1

    .line 10
    invoke-virtual {p0}, La9/a;->k()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const v2, 0xffff

    .line 15
    .line 16
    .line 17
    and-int/2addr v1, v2

    .line 18
    or-int/2addr v0, v1

    .line 19
    return v0
.end method

.method public h()I
    .locals 2

    .line 1
    iget v0, p0, La9/a;->b:I

    .line 2
    .line 3
    iget v1, p0, La9/a;->c:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    return v0
.end method

.method public hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, La9/a;->c:I

    .line 2
    .line 3
    if-ltz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, La9/a;->e:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lwb/n;

    .line 8
    .line 9
    iget-object v1, v1, Lwb/n;->g:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-ge v0, v1, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method public i()[B
    .locals 2

    .line 1
    invoke-virtual {p0}, La9/a;->g()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x2000

    .line 6
    .line 7
    if-ltz v0, :cond_0

    .line 8
    .line 9
    if-le v0, v1, :cond_1

    .line 10
    .line 11
    :cond_0
    const/16 v0, 0x2000

    .line 12
    .line 13
    :cond_1
    new-array v1, v0, [B

    .line 14
    .line 15
    invoke-virtual {p0, v0, v1}, La9/a;->e(I[B)V

    .line 16
    .line 17
    .line 18
    return-object v1
.end method

.method public j()[B
    .locals 5

    .line 1
    invoke-virtual {p0}, La9/a;->g()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, 0x7

    .line 6
    .line 7
    div-int/lit8 v0, v0, 0x8

    .line 8
    .line 9
    new-array v1, v0, [B

    .line 10
    .line 11
    invoke-virtual {p0, v0, v1}, La9/a;->e(I[B)V

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    aget-byte v3, v1, v2

    .line 16
    .line 17
    and-int/lit16 v3, v3, 0x80

    .line 18
    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    add-int/lit8 v3, v0, 0x1

    .line 22
    .line 23
    new-array v3, v3, [B

    .line 24
    .line 25
    aput-byte v2, v3, v2

    .line 26
    .line 27
    const/4 v4, 0x1

    .line 28
    invoke-static {v1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    .line 30
    .line 31
    move-object v1, v3

    .line 32
    :cond_0
    return-object v1
.end method

.method public k()I
    .locals 2

    .line 1
    invoke-virtual {p0}, La9/a;->d()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    shl-int/lit8 v0, v0, 0x8

    .line 6
    .line 7
    const v1, 0xff00

    .line 8
    .line 9
    .line 10
    and-int/2addr v0, v1

    .line 11
    invoke-virtual {p0}, La9/a;->d()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    and-int/lit16 v1, v1, 0xff

    .line 16
    .line 17
    or-int/2addr v0, v1

    .line 18
    return v0
.end method

.method public l()[B
    .locals 2

    .line 1
    invoke-virtual {p0}, La9/a;->g()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x40000

    .line 6
    .line 7
    if-ltz v0, :cond_0

    .line 8
    .line 9
    if-le v0, v1, :cond_1

    .line 10
    .line 11
    :cond_0
    const/high16 v0, 0x40000

    .line 12
    .line 13
    :cond_1
    new-array v1, v0, [B

    .line 14
    .line 15
    invoke-virtual {p0, v0, v1}, La9/a;->e(I[B)V

    .line 16
    .line 17
    .line 18
    return-object v1
.end method

.method public m()J
    .locals 7

    .line 1
    invoke-virtual {p0}, La9/a;->d()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-long v0, v0

    .line 6
    const/16 v2, 0x8

    .line 7
    .line 8
    shl-long/2addr v0, v2

    .line 9
    const-wide/32 v3, 0xff00

    .line 10
    .line 11
    .line 12
    and-long/2addr v0, v3

    .line 13
    invoke-virtual {p0}, La9/a;->d()I

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    and-int/lit16 v5, v5, 0xff

    .line 18
    .line 19
    int-to-long v5, v5

    .line 20
    or-long/2addr v0, v5

    .line 21
    invoke-virtual {p0}, La9/a;->d()I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    int-to-long v5, v5

    .line 26
    shl-long/2addr v5, v2

    .line 27
    and-long/2addr v3, v5

    .line 28
    invoke-virtual {p0}, La9/a;->d()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    and-int/lit16 v2, v2, 0xff

    .line 33
    .line 34
    int-to-long v5, v2

    .line 35
    or-long/2addr v3, v5

    .line 36
    const/16 v2, 0x10

    .line 37
    .line 38
    shl-long/2addr v0, v2

    .line 39
    const-wide/32 v5, -0x10000

    .line 40
    .line 41
    .line 42
    and-long/2addr v0, v5

    .line 43
    const-wide/32 v5, 0xffff

    .line 44
    .line 45
    .line 46
    and-long/2addr v3, v5

    .line 47
    or-long/2addr v0, v3

    .line 48
    return-wide v0
.end method

.method public n(B)V
    .locals 3

    .line 1
    iget-object v0, p0, La9/a;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [B

    .line 4
    .line 5
    iget v1, p0, La9/a;->b:I

    .line 6
    .line 7
    add-int/lit8 v2, v1, 0x1

    .line 8
    .line 9
    iput v2, p0, La9/a;->b:I

    .line 10
    .line 11
    aput-byte p1, v0, v1

    .line 12
    .line 13
    return-void
.end method

.method public next()Lwb/h;
    .locals 7

    .line 1
    invoke-virtual {p0}, La9/a;->hasNext()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    iget-object v0, p0, La9/a;->e:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lwb/n;

    .line 10
    .line 11
    iget-object v1, v0, Lwb/n;->g:Ljava/util/List;

    .line 12
    .line 13
    iget v2, p0, La9/a;->c:I

    .line 14
    .line 15
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lwb/k;

    .line 20
    .line 21
    iget v2, v1, Lwb/k;->d:I

    .line 22
    .line 23
    iget-object v3, p0, La9/a;->d:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v3, Lwb/h;

    .line 26
    .line 27
    iput v2, v3, Lwb/h;->a:I

    .line 28
    .line 29
    iget v2, v1, Lwb/k;->a:I

    .line 30
    .line 31
    iput v2, v3, Lwb/h;->d:I

    .line 32
    .line 33
    iget v2, v1, Lwb/k;->b:I

    .line 34
    .line 35
    iput v2, v3, Lwb/h;->e:I

    .line 36
    .line 37
    iget-object v2, v1, Lwb/k;->c:Ljava/util/ArrayList;

    .line 38
    .line 39
    if-nez v2, :cond_0

    .line 40
    .line 41
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    :cond_0
    iput-object v2, v3, Lwb/h;->f:Ljava/util/List;

    .line 46
    .line 47
    iget v2, p0, La9/a;->c:I

    .line 48
    .line 49
    const/4 v4, 0x0

    .line 50
    const/4 v5, 0x1

    .line 51
    if-lez v2, :cond_2

    .line 52
    .line 53
    iget-object v6, v0, Lwb/n;->g:Ljava/util/List;

    .line 54
    .line 55
    sub-int/2addr v2, v5

    .line 56
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Lwb/k;

    .line 61
    .line 62
    iget v2, v2, Lwb/k;->d:I

    .line 63
    .line 64
    iget v6, v1, Lwb/k;->d:I

    .line 65
    .line 66
    if-eq v2, v6, :cond_1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    const/4 v2, 0x0

    .line 70
    goto :goto_1

    .line 71
    :cond_2
    :goto_0
    const/4 v2, 0x1

    .line 72
    :goto_1
    iput-boolean v2, v3, Lwb/h;->b:Z

    .line 73
    .line 74
    iget v2, p0, La9/a;->c:I

    .line 75
    .line 76
    add-int/2addr v2, v5

    .line 77
    iget-object v6, v0, Lwb/n;->g:Ljava/util/List;

    .line 78
    .line 79
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    if-ge v2, v6, :cond_3

    .line 84
    .line 85
    iget-object v2, v0, Lwb/n;->g:Ljava/util/List;

    .line 86
    .line 87
    iget v6, p0, La9/a;->c:I

    .line 88
    .line 89
    add-int/2addr v6, v5

    .line 90
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    check-cast v2, Lwb/k;

    .line 95
    .line 96
    iget v2, v2, Lwb/k;->d:I

    .line 97
    .line 98
    iget v6, v1, Lwb/k;->d:I

    .line 99
    .line 100
    if-eq v2, v6, :cond_4

    .line 101
    .line 102
    :cond_3
    const/4 v4, 0x1

    .line 103
    :cond_4
    iput-boolean v4, v3, Lwb/h;->c:Z

    .line 104
    .line 105
    iget v0, v0, Lwb/n;->d:I

    .line 106
    .line 107
    int-to-float v0, v0

    .line 108
    invoke-virtual {v1, v0}, Lwb/k;->a(F)F

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    iput v0, v3, Lwb/h;->g:F

    .line 113
    .line 114
    iget v0, p0, La9/a;->c:I

    .line 115
    .line 116
    add-int/2addr v0, v5

    .line 117
    iput v0, p0, La9/a;->c:I

    .line 118
    .line 119
    return-object v3

    .line 120
    :cond_5
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 121
    .line 122
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 123
    .line 124
    .line 125
    throw v0
.end method

.method public o(I)V
    .locals 4

    .line 1
    ushr-int/lit8 v0, p1, 0x18

    .line 2
    .line 3
    int-to-byte v0, v0

    .line 4
    iget-object v1, p0, La9/a;->d:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v1, [B

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    aput-byte v0, v1, v2

    .line 10
    .line 11
    ushr-int/lit8 v0, p1, 0x10

    .line 12
    .line 13
    int-to-byte v0, v0

    .line 14
    const/4 v3, 0x1

    .line 15
    aput-byte v0, v1, v3

    .line 16
    .line 17
    ushr-int/lit8 v0, p1, 0x8

    .line 18
    .line 19
    int-to-byte v0, v0

    .line 20
    const/4 v3, 0x2

    .line 21
    aput-byte v0, v1, v3

    .line 22
    .line 23
    const/4 v0, 0x3

    .line 24
    int-to-byte p1, p1

    .line 25
    aput-byte p1, v1, v0

    .line 26
    .line 27
    iget-object p1, p0, La9/a;->e:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p1, [B

    .line 30
    .line 31
    iget v0, p0, La9/a;->b:I

    .line 32
    .line 33
    const/4 v3, 0x4

    .line 34
    invoke-static {v1, v2, p1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    .line 36
    .line 37
    iget p1, p0, La9/a;->b:I

    .line 38
    .line 39
    add-int/2addr p1, v3

    .line 40
    iput p1, p0, La9/a;->b:I

    .line 41
    .line 42
    return-void
.end method

.method public p(I[B)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, La9/a;->o(I)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iget-object v1, p0, La9/a;->e:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, [B

    .line 8
    .line 9
    iget v2, p0, La9/a;->b:I

    .line 10
    .line 11
    invoke-static {p2, v0, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    .line 13
    .line 14
    iget p2, p0, La9/a;->b:I

    .line 15
    .line 16
    add-int/2addr p2, p1

    .line 17
    iput p2, p0, La9/a;->b:I

    .line 18
    .line 19
    return-void
.end method

.method public q()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, La9/a;->c:I

    .line 3
    .line 4
    return-void
.end method

.method public r(I)V
    .locals 1

    .line 1
    iget v0, p0, La9/a;->b:I

    .line 2
    .line 3
    add-int/2addr v0, p1

    .line 4
    iput v0, p0, La9/a;->b:I

    .line 5
    .line 6
    return-void
.end method

.method public reset()V
    .locals 1

    .line 1
    iget v0, p0, La9/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget v0, p0, La9/a;->b:I

    .line 7
    .line 8
    iput v0, p0, La9/a;->c:I

    .line 9
    .line 10
    return-void

    .line 11
    :pswitch_0
    const/4 v0, 0x0

    .line 12
    iput v0, p0, La9/a;->b:I

    .line 13
    .line 14
    iput v0, p0, La9/a;->c:I

    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public s(Lmf/h;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, La9/a;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lab/a;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Lab/a;->f(Lmf/h;Ljava/util/Locale;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    const-string p1, "null"

    .line 13
    .line 14
    return-object p1
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, La9/a;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [I

    .line 4
    .line 5
    array-length v0, v0

    .line 6
    mul-int/lit8 v0, v0, 0x2

    .line 7
    .line 8
    add-int/lit8 v0, v0, 0x18

    .line 9
    .line 10
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, La9/a;->a:I

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
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "ResourceEntry{size="

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget v1, p0, La9/a;->b:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", flags="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, La9/a;->c:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", key=\'"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, La9/a;->d:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v1, Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v1, "\', value="

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, La9/a;->e:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v1, Lab/a;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const/16 v1, 0x7d

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    return-object v0

    .line 67
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method
