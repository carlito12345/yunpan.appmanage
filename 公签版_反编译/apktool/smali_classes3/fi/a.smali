.class public abstract Lfi/a;
.super Lcom/bumptech/glide/c;
.source "SourceFile"


# instance fields
.field public l:I

.field public m:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/c;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lfi/a;->l:I

    .line 6
    .line 7
    iput v0, p0, Lfi/a;->m:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final o0([SI)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Lfi/a;->q0()V

    .line 2
    .line 3
    .line 4
    aget-short v0, p1, p2

    .line 5
    .line 6
    iget v1, p0, Lfi/a;->l:I

    .line 7
    .line 8
    ushr-int/lit8 v2, v1, 0xb

    .line 9
    .line 10
    mul-int v2, v2, v0

    .line 11
    .line 12
    iget v3, p0, Lfi/a;->m:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    xor-int v5, v3, v4

    .line 17
    .line 18
    xor-int/2addr v4, v2

    .line 19
    if-ne v5, v4, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    if-ge v5, v4, :cond_1

    .line 23
    .line 24
    iput v2, p0, Lfi/a;->l:I

    .line 25
    .line 26
    rsub-int v1, v0, 0x800

    .line 27
    .line 28
    ushr-int/lit8 v1, v1, 0x5

    .line 29
    .line 30
    add-int/2addr v0, v1

    .line 31
    int-to-short v0, v0

    .line 32
    aput-short v0, p1, p2

    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    sub-int/2addr v1, v2

    .line 37
    iput v1, p0, Lfi/a;->l:I

    .line 38
    .line 39
    sub-int/2addr v3, v2

    .line 40
    iput v3, p0, Lfi/a;->m:I

    .line 41
    .line 42
    ushr-int/lit8 v1, v0, 0x5

    .line 43
    .line 44
    sub-int/2addr v0, v1

    .line 45
    int-to-short v0, v0

    .line 46
    aput-short v0, p1, p2

    .line 47
    .line 48
    const/4 p1, 0x1

    .line 49
    :goto_1
    return p1
.end method

.method public final p0([S)I
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    :cond_0
    shl-int/lit8 v1, v0, 0x1

    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Lfi/a;->o0([SI)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    or-int/2addr v0, v1

    .line 9
    array-length v1, p1

    .line 10
    if-lt v0, v1, :cond_0

    .line 11
    .line 12
    array-length p1, p1

    .line 13
    sub-int/2addr v0, p1

    .line 14
    return v0
.end method

.method public abstract q0()V
.end method
