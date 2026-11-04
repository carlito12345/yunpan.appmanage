.class public final Lod/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lod/b;
.implements Lod/c;


# instance fields
.field public a:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lod/a;->a:[I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    return v0
.end method

.method public final c(I[B)I
    .locals 6

    .line 1
    iget-object v0, p0, Lod/a;->a:[I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    array-length v0, v0

    .line 6
    int-to-long v0, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    :goto_0
    invoke-static {v0, v1, p2, p1}, Lrd/a;->e(J[BI)V

    .line 11
    .line 12
    .line 13
    add-int/lit8 v0, p1, 0x2

    .line 14
    .line 15
    iget-object v1, p0, Lod/a;->a:[I

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    array-length v2, v1

    .line 20
    const/4 v3, 0x0

    .line 21
    :goto_1
    if-ge v3, v2, :cond_1

    .line 22
    .line 23
    aget v4, v1, v3

    .line 24
    .line 25
    int-to-long v4, v4

    .line 26
    invoke-static {v4, v5, p2, v0}, Lrd/a;->e(J[BI)V

    .line 27
    .line 28
    .line 29
    add-int/lit8 v0, v0, 0x2

    .line 30
    .line 31
    add-int/lit8 v3, v3, 0x1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    sub-int/2addr v0, p1

    .line 35
    return v0
.end method

.method public final i(II[B)I
    .locals 4

    .line 1
    invoke-static {p1, p3}, Lrd/a;->a(I[B)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    add-int/lit8 v0, p1, 0x2

    .line 6
    .line 7
    new-array v1, p2, [I

    .line 8
    .line 9
    iput-object v1, p0, Lod/a;->a:[I

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    if-ge v1, p2, :cond_0

    .line 13
    .line 14
    iget-object v2, p0, Lod/a;->a:[I

    .line 15
    .line 16
    invoke-static {v0, p3}, Lrd/a;->a(I[B)I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    aput v3, v2, v1

    .line 21
    .line 22
    add-int/lit8 v0, v0, 0x2

    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    sub-int/2addr v0, p1

    .line 28
    return v0
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lod/a;->a:[I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    array-length v0, v0

    .line 6
    mul-int/lit8 v0, v0, 0x2

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    add-int/lit8 v0, v0, 0x4

    .line 11
    .line 12
    return v0
.end method
