.class public final Lei/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:[La/b;

.field public final synthetic d:Lei/b;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lei/e;->a:I

    const/4 p1, 0x1

    shl-int p2, p1, p2

    sub-int/2addr p2, p1

    .line 3
    iput p2, p0, Lei/e;->b:I

    return-void
.end method

.method public constructor <init>(Lei/f;II)V
    .locals 0

    .line 4
    iput-object p1, p0, Lei/e;->d:Lei/b;

    .line 5
    invoke-direct {p0, p2, p3}, Lei/e;-><init>(II)V

    const/4 p1, 0x1

    add-int/2addr p2, p3

    shl-int/2addr p1, p2

    .line 6
    new-array p1, p1, [Lei/d;

    iput-object p1, p0, Lei/e;->c:[La/b;

    const/4 p1, 0x0

    .line 7
    :goto_0
    iget-object p2, p0, Lei/e;->c:[La/b;

    check-cast p2, [Lei/d;

    array-length p3, p2

    if-ge p1, p3, :cond_0

    .line 8
    new-instance p3, Lei/d;

    invoke-direct {p3, p0}, Lei/d;-><init>(Lei/e;)V

    aput-object p3, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lei/h;II)V
    .locals 0

    .line 9
    iput-object p1, p0, Lei/e;->d:Lei/b;

    .line 10
    invoke-direct {p0, p2, p3}, Lei/e;-><init>(II)V

    const/4 p1, 0x1

    add-int/2addr p2, p3

    shl-int/2addr p1, p2

    .line 11
    new-array p1, p1, [Lei/d;

    iput-object p1, p0, Lei/e;->c:[La/b;

    const/4 p1, 0x0

    .line 12
    :goto_0
    iget-object p2, p0, Lei/e;->c:[La/b;

    check-cast p2, [Lei/d;

    array-length p3, p2

    if-ge p1, p3, :cond_0

    .line 13
    new-instance p3, Lei/d;

    invoke-direct {p3, p0}, Lei/d;-><init>(Lei/e;)V

    aput-object p3, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(IIIILandroidx/leanback/widget/i;)I
    .locals 6

    .line 1
    iget-object v0, p0, Lei/e;->d:Lei/b;

    .line 2
    .line 3
    check-cast v0, Lei/h;

    .line 4
    .line 5
    iget v1, p5, Landroidx/leanback/widget/i;->b:I

    .line 6
    .line 7
    iget-object v2, v0, Lei/b;->d:[[S

    .line 8
    .line 9
    aget-object v1, v2, v1

    .line 10
    .line 11
    iget v0, v0, Lei/b;->a:I

    .line 12
    .line 13
    and-int/2addr v0, p4

    .line 14
    aget-short v0, v1, v0

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-static {v0, v1}, Lfi/d;->q0(II)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {p0, p3, p4}, Lei/e;->b(II)I

    .line 22
    .line 23
    .line 24
    move-result p3

    .line 25
    iget p4, p5, Landroidx/leanback/widget/i;->b:I

    .line 26
    .line 27
    const/4 p5, 0x1

    .line 28
    const/4 v2, 0x7

    .line 29
    if-ge p4, v2, :cond_0

    .line 30
    .line 31
    const/4 p4, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 p4, 0x0

    .line 34
    :goto_0
    iget-object v2, p0, Lei/e;->c:[La/b;

    .line 35
    .line 36
    check-cast v2, [Lei/d;

    .line 37
    .line 38
    const/high16 v3, 0x10000

    .line 39
    .line 40
    const/16 v4, 0x100

    .line 41
    .line 42
    if-eqz p4, :cond_2

    .line 43
    .line 44
    aget-object p4, v2, p3

    .line 45
    .line 46
    or-int/2addr p1, v4

    .line 47
    :cond_1
    ushr-int/lit8 p2, p1, 0x8

    .line 48
    .line 49
    ushr-int/lit8 p3, p1, 0x7

    .line 50
    .line 51
    and-int/2addr p3, p5

    .line 52
    iget-object v2, p4, La/b;->a:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v2, [S

    .line 55
    .line 56
    aget-short p2, v2, p2

    .line 57
    .line 58
    invoke-static {p2, p3}, Lfi/d;->q0(II)I

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    add-int/2addr v1, p2

    .line 63
    shl-int/2addr p1, p5

    .line 64
    if-lt p1, v3, :cond_1

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    aget-object p3, v2, p3

    .line 68
    .line 69
    or-int/2addr p1, v4

    .line 70
    :cond_3
    shl-int/2addr p2, p5

    .line 71
    and-int p4, p2, v4

    .line 72
    .line 73
    add-int/2addr p4, v4

    .line 74
    ushr-int/lit8 v2, p1, 0x8

    .line 75
    .line 76
    add-int/2addr p4, v2

    .line 77
    ushr-int/lit8 v2, p1, 0x7

    .line 78
    .line 79
    and-int/2addr v2, p5

    .line 80
    iget-object v5, p3, La/b;->a:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v5, [S

    .line 83
    .line 84
    aget-short p4, v5, p4

    .line 85
    .line 86
    invoke-static {p4, v2}, Lfi/d;->q0(II)I

    .line 87
    .line 88
    .line 89
    move-result p4

    .line 90
    add-int/2addr v1, p4

    .line 91
    shl-int/2addr p1, p5

    .line 92
    xor-int p4, p2, p1

    .line 93
    .line 94
    xor-int/lit8 p4, p4, -0x1

    .line 95
    .line 96
    and-int/2addr v4, p4

    .line 97
    if-lt p1, v3, :cond_3

    .line 98
    .line 99
    :goto_1
    add-int/2addr v0, v1

    .line 100
    return v0
.end method

.method public final b(II)I
    .locals 2

    .line 1
    iget v0, p0, Lei/e;->a:I

    .line 2
    .line 3
    rsub-int/lit8 v1, v0, 0x8

    .line 4
    .line 5
    shr-int/2addr p1, v1

    .line 6
    iget v1, p0, Lei/e;->b:I

    .line 7
    .line 8
    and-int/2addr p2, v1

    .line 9
    shl-int/2addr p2, v0

    .line 10
    add-int/2addr p1, p2

    .line 11
    return p1
.end method
