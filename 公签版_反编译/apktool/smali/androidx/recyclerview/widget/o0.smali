.class public final Landroidx/recyclerview/widget/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/recyclerview/widget/o0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 6

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/o0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    .line 8
    sub-float/2addr p1, v0

    .line 9
    mul-float v1, p1, p1

    .line 10
    .line 11
    mul-float v1, v1, p1

    .line 12
    .line 13
    mul-float v1, v1, p1

    .line 14
    .line 15
    mul-float v1, v1, p1

    .line 16
    .line 17
    add-float/2addr v1, v0

    .line 18
    return v1

    .line 19
    :pswitch_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 20
    .line 21
    sub-float/2addr p1, v0

    .line 22
    mul-float v1, p1, p1

    .line 23
    .line 24
    mul-float v1, v1, p1

    .line 25
    .line 26
    mul-float v1, v1, p1

    .line 27
    .line 28
    mul-float v1, v1, p1

    .line 29
    .line 30
    add-float/2addr v1, v0

    .line 31
    return v1

    .line 32
    :pswitch_1
    const/high16 v0, -0x3ee00000    # -10.0f

    .line 33
    .line 34
    mul-float v0, v0, p1

    .line 35
    .line 36
    float-to-double v0, v0

    .line 37
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 38
    .line 39
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 40
    .line 41
    .line 42
    move-result-wide v0

    .line 43
    const v2, 0x3dcccccd    # 0.1f

    .line 44
    .line 45
    .line 46
    sub-float/2addr p1, v2

    .line 47
    float-to-double v2, p1

    .line 48
    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    .line 54
    .line 55
    .line 56
    mul-double v2, v2, v4

    .line 57
    .line 58
    const p1, 0x3ecccccd    # 0.4f

    .line 59
    .line 60
    .line 61
    float-to-double v4, p1

    .line 62
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    .line 63
    .line 64
    .line 65
    div-double/2addr v2, v4

    .line 66
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 67
    .line 68
    .line 69
    move-result-wide v2

    .line 70
    mul-double v2, v2, v0

    .line 71
    .line 72
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 73
    .line 74
    add-double/2addr v2, v0

    .line 75
    double-to-float p1, v2

    .line 76
    return p1

    .line 77
    :pswitch_2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 78
    .line 79
    sub-float/2addr p1, v0

    .line 80
    mul-float v1, p1, p1

    .line 81
    .line 82
    mul-float v1, v1, p1

    .line 83
    .line 84
    mul-float v1, v1, p1

    .line 85
    .line 86
    mul-float v1, v1, p1

    .line 87
    .line 88
    add-float/2addr v1, v0

    .line 89
    return v1

    .line 90
    :pswitch_3
    const/high16 v0, 0x3f800000    # 1.0f

    .line 91
    .line 92
    sub-float/2addr p1, v0

    .line 93
    mul-float v1, p1, p1

    .line 94
    .line 95
    mul-float v1, v1, p1

    .line 96
    .line 97
    mul-float v1, v1, p1

    .line 98
    .line 99
    mul-float v1, v1, p1

    .line 100
    .line 101
    add-float/2addr v1, v0

    .line 102
    return v1

    .line 103
    :pswitch_4
    mul-float v0, p1, p1

    .line 104
    .line 105
    mul-float v0, v0, p1

    .line 106
    .line 107
    mul-float v0, v0, p1

    .line 108
    .line 109
    mul-float v0, v0, p1

    .line 110
    .line 111
    return v0

    .line 112
    nop

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
