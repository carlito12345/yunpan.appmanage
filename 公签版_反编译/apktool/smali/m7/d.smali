.class public final Lm7/d;
.super Lqf/c;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lqf/c;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final t(Lm7/t;FF)V
    .locals 6

    .line 1
    mul-float v0, p3, p2

    .line 2
    .line 3
    const/high16 v1, 0x43340000    # 180.0f

    .line 4
    .line 5
    const/high16 v2, 0x42b40000    # 90.0f

    .line 6
    .line 7
    invoke-virtual {p1, v0, v1, v2}, Lm7/t;->d(FFF)V

    .line 8
    .line 9
    .line 10
    float-to-double v0, v2

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    float-to-double v2, p3

    .line 20
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    .line 21
    .line 22
    .line 23
    mul-double v0, v0, v2

    .line 24
    .line 25
    float-to-double p2, p2

    .line 26
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    .line 27
    .line 28
    .line 29
    mul-double v0, v0, p2

    .line 30
    .line 31
    double-to-float v0, v0

    .line 32
    const/4 v1, 0x0

    .line 33
    float-to-double v4, v1

    .line 34
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    .line 35
    .line 36
    .line 37
    move-result-wide v4

    .line 38
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    .line 39
    .line 40
    .line 41
    move-result-wide v4

    .line 42
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    .line 43
    .line 44
    .line 45
    mul-double v4, v4, v2

    .line 46
    .line 47
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    .line 48
    .line 49
    .line 50
    mul-double v4, v4, p2

    .line 51
    .line 52
    double-to-float p2, v4

    .line 53
    invoke-virtual {p1, v0, p2}, Lm7/t;->c(FF)V

    .line 54
    .line 55
    .line 56
    return-void
.end method
