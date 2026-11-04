.class public final Lbi/b;
.super Lbi/a;
.source "SourceFile"


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lbi/a;-><init>(I)V

    return-void
.end method


# virtual methods
.method public c(II[B[B)V
    .locals 6

    .line 1
    iget v0, p0, Lbi/a;->a:I

    .line 2
    .line 3
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    :goto_0
    iget-object v4, p0, Lbi/a;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v4, [B

    .line 12
    .line 13
    if-ge v3, v1, :cond_0

    .line 14
    .line 15
    add-int v5, p1, v3

    .line 16
    .line 17
    aget-byte v5, p3, v5

    .line 18
    .line 19
    aget-byte v4, v4, v3

    .line 20
    .line 21
    sub-int/2addr v5, v4

    .line 22
    int-to-byte v4, v5

    .line 23
    aput-byte v4, p4, v3

    .line 24
    .line 25
    add-int/lit8 v3, v3, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    if-lt p2, v0, :cond_1

    .line 29
    .line 30
    add-int v1, p1, p2

    .line 31
    .line 32
    sub-int/2addr v1, v0

    .line 33
    invoke-static {p3, v1, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    sub-int v1, v0, v3

    .line 38
    .line 39
    invoke-static {v4, v3, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    .line 41
    .line 42
    sub-int v1, v0, v3

    .line 43
    .line 44
    invoke-static {p3, p1, v4, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    .line 46
    .line 47
    :goto_1
    if-ge v3, p2, :cond_2

    .line 48
    .line 49
    add-int v1, p1, v3

    .line 50
    .line 51
    aget-byte v2, p3, v1

    .line 52
    .line 53
    sub-int/2addr v1, v0

    .line 54
    aget-byte v1, p3, v1

    .line 55
    .line 56
    sub-int/2addr v2, v1

    .line 57
    int-to-byte v1, v2

    .line 58
    aput-byte v1, p4, v3

    .line 59
    .line 60
    add-int/lit8 v3, v3, 0x1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    return-void
.end method
