.class public Lcom/owen/tvrecyclerview/utils/MathUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static commonDivisor(II)I
    .locals 1

    .line 1
    :goto_0
    rem-int/2addr p0, p1

    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    move v0, p1

    .line 5
    move p1, p0

    .line 6
    move p0, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    return p1
.end method

.method public static commonMultiple(II)I
    .locals 1

    mul-int v0, p0, p1

    .line 1
    invoke-static {p0, p1}, Lcom/owen/tvrecyclerview/utils/MathUtil;->commonDivisor(II)I

    move-result p0

    div-int/2addr v0, p0

    return v0
.end method

.method public static commonMultiple([I)I
    .locals 3

    const/4 v0, 0x0

    .line 2
    aget v0, p0, v0

    const/4 v1, 0x1

    .line 3
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 4
    aget v2, p0, v1

    invoke-static {v0, v2}, Lcom/owen/tvrecyclerview/utils/MathUtil;->commonMultiple(II)I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method
