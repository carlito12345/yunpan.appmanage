.class public abstract Lfi/d;
.super Lcom/bumptech/glide/c;
.source "SourceFile"


# static fields
.field public static final p:[I


# instance fields
.field public l:J

.field public m:I

.field public n:J

.field public o:B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const/16 v0, 0x80

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    sput-object v0, Lfi/d;->p:[I

    .line 6
    .line 7
    const/16 v0, 0x8

    .line 8
    .line 9
    :goto_0
    const/16 v1, 0x800

    .line 10
    .line 11
    if-ge v0, v1, :cond_2

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    move v3, v0

    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_1
    const/4 v4, 0x4

    .line 17
    if-ge v1, v4, :cond_1

    .line 18
    .line 19
    mul-int v3, v3, v3

    .line 20
    .line 21
    shl-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    :goto_2
    const/high16 v4, -0x10000

    .line 24
    .line 25
    and-int/2addr v4, v3

    .line 26
    if-eqz v4, :cond_0

    .line 27
    .line 28
    ushr-int/lit8 v3, v3, 0x1

    .line 29
    .line 30
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    sget-object v1, Lfi/d;->p:[I

    .line 37
    .line 38
    shr-int/lit8 v3, v0, 0x4

    .line 39
    .line 40
    rsub-int v2, v2, 0xa1

    .line 41
    .line 42
    aput v2, v1, v3

    .line 43
    .line 44
    add-int/lit8 v0, v0, 0x10

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/c;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static q0(II)I
    .locals 1

    .line 1
    sget-object v0, Lfi/d;->p:[I

    .line 2
    .line 3
    neg-int p1, p1

    .line 4
    and-int/lit16 p1, p1, 0x7ff

    .line 5
    .line 6
    xor-int/2addr p0, p1

    .line 7
    ushr-int/lit8 p0, p0, 0x4

    .line 8
    .line 9
    aget p0, v0, p0

    .line 10
    .line 11
    return p0
.end method

.method public static r0([SI)I
    .locals 4

    .line 1
    array-length v0, p0

    .line 2
    or-int/2addr p1, v0

    .line 3
    const/4 v0, 0x0

    .line 4
    :cond_0
    and-int/lit8 v1, p1, 0x1

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    ushr-int/2addr p1, v2

    .line 8
    aget-short v3, p0, p1

    .line 9
    .line 10
    invoke-static {v3, v1}, Lfi/d;->q0(II)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    add-int/2addr v0, v1

    .line 15
    if-ne p1, v2, :cond_0

    .line 16
    .line 17
    return v0
.end method


# virtual methods
.method public final o0([SII)V
    .locals 9

    .line 1
    aget-short v0, p1, p2

    .line 2
    .line 3
    iget v1, p0, Lfi/d;->m:I

    .line 4
    .line 5
    ushr-int/lit8 v2, v1, 0xb

    .line 6
    .line 7
    mul-int v2, v2, v0

    .line 8
    .line 9
    if-nez p3, :cond_0

    .line 10
    .line 11
    iput v2, p0, Lfi/d;->m:I

    .line 12
    .line 13
    rsub-int p3, v0, 0x800

    .line 14
    .line 15
    ushr-int/lit8 p3, p3, 0x5

    .line 16
    .line 17
    add-int/2addr v0, p3

    .line 18
    int-to-short p3, v0

    .line 19
    aput-short p3, p1, p2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-wide v3, p0, Lfi/d;->l:J

    .line 23
    .line 24
    int-to-long v5, v2

    .line 25
    const-wide v7, 0xffffffffL

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    and-long/2addr v5, v7

    .line 31
    add-long/2addr v3, v5

    .line 32
    iput-wide v3, p0, Lfi/d;->l:J

    .line 33
    .line 34
    sub-int/2addr v1, v2

    .line 35
    iput v1, p0, Lfi/d;->m:I

    .line 36
    .line 37
    ushr-int/lit8 p3, v0, 0x5

    .line 38
    .line 39
    sub-int/2addr v0, p3

    .line 40
    int-to-short p3, v0

    .line 41
    aput-short p3, p1, p2

    .line 42
    .line 43
    :goto_0
    iget p1, p0, Lfi/d;->m:I

    .line 44
    .line 45
    const/high16 p2, -0x1000000

    .line 46
    .line 47
    and-int/2addr p2, p1

    .line 48
    if-nez p2, :cond_1

    .line 49
    .line 50
    shl-int/lit8 p1, p1, 0x8

    .line 51
    .line 52
    iput p1, p0, Lfi/d;->m:I

    .line 53
    .line 54
    invoke-virtual {p0}, Lfi/d;->t0()V

    .line 55
    .line 56
    .line 57
    :cond_1
    return-void
.end method

.method public final p0([SI)V
    .locals 4

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x1

    .line 4
    :cond_0
    ushr-int/2addr v0, v1

    .line 5
    and-int v3, p2, v0

    .line 6
    .line 7
    invoke-virtual {p0, p1, v2, v3}, Lfi/d;->o0([SII)V

    .line 8
    .line 9
    .line 10
    shl-int/2addr v2, v1

    .line 11
    if-eqz v3, :cond_1

    .line 12
    .line 13
    or-int/lit8 v2, v2, 0x1

    .line 14
    .line 15
    :cond_1
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    return-void
.end method

.method public s0()I
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Error;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method public final t0()V
    .locals 8

    .line 1
    iget-wide v0, p0, Lfi/d;->l:J

    .line 2
    .line 3
    const/16 v2, 0x20

    .line 4
    .line 5
    ushr-long v2, v0, v2

    .line 6
    .line 7
    long-to-int v3, v2

    .line 8
    const-wide/16 v4, 0x1

    .line 9
    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    const-wide v6, 0xff000000L

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    cmp-long v2, v0, v6

    .line 18
    .line 19
    if-gez v2, :cond_1

    .line 20
    .line 21
    :cond_0
    iget-byte v0, p0, Lfi/d;->o:B

    .line 22
    .line 23
    :goto_0
    add-int/2addr v0, v3

    .line 24
    invoke-virtual {p0, v0}, Lfi/d;->u0(I)V

    .line 25
    .line 26
    .line 27
    iget-wide v0, p0, Lfi/d;->n:J

    .line 28
    .line 29
    sub-long/2addr v0, v4

    .line 30
    iput-wide v0, p0, Lfi/d;->n:J

    .line 31
    .line 32
    const-wide/16 v6, 0x0

    .line 33
    .line 34
    cmp-long v2, v0, v6

    .line 35
    .line 36
    if-nez v2, :cond_2

    .line 37
    .line 38
    iget-wide v0, p0, Lfi/d;->l:J

    .line 39
    .line 40
    const/16 v2, 0x18

    .line 41
    .line 42
    ushr-long/2addr v0, v2

    .line 43
    long-to-int v1, v0

    .line 44
    int-to-byte v0, v1

    .line 45
    iput-byte v0, p0, Lfi/d;->o:B

    .line 46
    .line 47
    :cond_1
    iget-wide v0, p0, Lfi/d;->n:J

    .line 48
    .line 49
    add-long/2addr v0, v4

    .line 50
    iput-wide v0, p0, Lfi/d;->n:J

    .line 51
    .line 52
    iget-wide v0, p0, Lfi/d;->l:J

    .line 53
    .line 54
    const-wide/32 v2, 0xffffff

    .line 55
    .line 56
    .line 57
    and-long/2addr v0, v2

    .line 58
    const/16 v2, 0x8

    .line 59
    .line 60
    shl-long/2addr v0, v2

    .line 61
    iput-wide v0, p0, Lfi/d;->l:J

    .line 62
    .line 63
    return-void

    .line 64
    :cond_2
    const/16 v0, 0xff

    .line 65
    .line 66
    goto :goto_0
.end method

.method public abstract u0(I)V
.end method
