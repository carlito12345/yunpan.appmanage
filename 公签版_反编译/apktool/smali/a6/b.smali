.class public final La6/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[B

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>([B)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    array-length v0, p1

    const/16 v1, 0x100

    .line 3
    new-array v2, v1, [B

    iput-object v2, p0, La6/b;->a:[B

    const/4 v2, 0x0

    .line 4
    iput v2, p0, La6/b;->b:I

    :goto_0
    iget v3, p0, La6/b;->b:I

    if-ge v3, v1, :cond_0

    .line 5
    iget-object v4, p0, La6/b;->a:[B

    int-to-byte v5, v3

    aput-byte v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    .line 6
    iput v3, p0, La6/b;->b:I

    goto :goto_0

    .line 7
    :cond_0
    iput v2, p0, La6/b;->c:I

    iput v2, p0, La6/b;->b:I

    :goto_1
    iget v3, p0, La6/b;->b:I

    if-ge v3, v1, :cond_1

    .line 8
    iget v4, p0, La6/b;->c:I

    rem-int v5, v3, v0

    aget-byte v5, p1, v5

    add-int/2addr v4, v5

    iget-object v5, p0, La6/b;->a:[B

    aget-byte v6, v5, v3

    add-int/2addr v4, v6

    and-int/lit16 v4, v4, 0xff

    iput v4, p0, La6/b;->c:I

    .line 9
    aget-byte v7, v5, v4

    aput-byte v7, v5, v3

    .line 10
    aput-byte v6, v5, v4

    add-int/lit8 v3, v3, 0x1

    .line 11
    iput v3, p0, La6/b;->b:I

    goto :goto_1

    .line 12
    :cond_1
    iput v2, p0, La6/b;->c:I

    iput v2, p0, La6/b;->b:I

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, La6/b;->a:[B

    .line 15
    iput p2, p0, La6/b;->b:I

    .line 16
    iput p3, p0, La6/b;->c:I

    return-void
.end method


# virtual methods
.method public a([B[B)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    const/16 v2, 0x10

    .line 4
    .line 5
    if-ge v0, v2, :cond_0

    .line 6
    .line 7
    iget v2, p0, La6/b;->b:I

    .line 8
    .line 9
    add-int/lit8 v2, v2, 0x1

    .line 10
    .line 11
    and-int/lit16 v2, v2, 0xff

    .line 12
    .line 13
    iput v2, p0, La6/b;->b:I

    .line 14
    .line 15
    iget v3, p0, La6/b;->c:I

    .line 16
    .line 17
    iget-object v4, p0, La6/b;->a:[B

    .line 18
    .line 19
    aget-byte v5, v4, v2

    .line 20
    .line 21
    add-int/2addr v3, v5

    .line 22
    and-int/lit16 v3, v3, 0xff

    .line 23
    .line 24
    iput v3, p0, La6/b;->c:I

    .line 25
    .line 26
    aget-byte v6, v4, v3

    .line 27
    .line 28
    aput-byte v6, v4, v2

    .line 29
    .line 30
    aput-byte v5, v4, v3

    .line 31
    .line 32
    add-int/lit8 v3, v1, 0x1

    .line 33
    .line 34
    add-int/lit8 v6, v0, 0x1

    .line 35
    .line 36
    aget-byte v0, p1, v0

    .line 37
    .line 38
    aget-byte v2, v4, v2

    .line 39
    .line 40
    add-int/2addr v2, v5

    .line 41
    and-int/lit16 v2, v2, 0xff

    .line 42
    .line 43
    aget-byte v2, v4, v2

    .line 44
    .line 45
    xor-int/2addr v0, v2

    .line 46
    int-to-byte v0, v0

    .line 47
    aput-byte v0, p2, v1

    .line 48
    .line 49
    move v1, v3

    .line 50
    move v0, v6

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    return-void
.end method
