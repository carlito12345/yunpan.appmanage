.class public final Lra/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:F

.field public c:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lra/b;->a()V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget v0, p0, Lra/b;->a:I

    .line 2
    .line 3
    const/16 v1, 0xfa0

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iput v1, p0, Lra/b;->a:I

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    int-to-float v0, v0

    .line 16
    const v1, 0x40c90fdb

    .line 17
    .line 18
    .line 19
    mul-float v0, v0, v1

    .line 20
    .line 21
    const/high16 v1, 0x3f800000    # 1.0f

    .line 22
    .line 23
    div-float v0, v1, v0

    .line 24
    .line 25
    const v2, 0xbb80

    .line 26
    .line 27
    .line 28
    int-to-float v2, v2

    .line 29
    div-float/2addr v1, v2

    .line 30
    add-float/2addr v0, v1

    .line 31
    div-float/2addr v1, v0

    .line 32
    iput v1, p0, Lra/b;->b:F

    .line 33
    .line 34
    return-void
.end method
