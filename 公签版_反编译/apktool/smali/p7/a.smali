.class public final Lp7/a;
.super Lha/l2;
.source "SourceFile"


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lp7/a;->b:I

    const/16 p1, 0x1b

    invoke-direct {p0, p1}, Lha/l2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final X(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;Landroid/view/View;FLandroid/graphics/drawable/Drawable;)V
    .locals 7

    .line 1
    iget v0, p0, Lp7/a;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/high16 v0, 0x3f000000    # 0.5f

    .line 7
    .line 8
    cmpg-float v1, p4, v0

    .line 9
    .line 10
    if-gez v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object p2, p3

    .line 14
    :goto_0
    invoke-static {p1, p2}, Lha/l2;->G(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;)Landroid/graphics/RectF;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/4 p2, 0x0

    .line 19
    const/high16 p3, 0x3f800000    # 1.0f

    .line 20
    .line 21
    cmpg-float v1, p4, v0

    .line 22
    .line 23
    if-gez v1, :cond_1

    .line 24
    .line 25
    invoke-static {p3, p2, p2, v0, p4}, Lr6/a;->b(FFFFF)F

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-static {p2, p3, v0, p3, p4}, Lr6/a;->b(FFFFF)F

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    :goto_1
    iget p3, p1, Landroid/graphics/RectF;->left:F

    .line 35
    .line 36
    float-to-int p3, p3

    .line 37
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 38
    .line 39
    .line 40
    move-result-object p4

    .line 41
    iget p4, p4, Landroid/graphics/Rect;->top:I

    .line 42
    .line 43
    iget p1, p1, Landroid/graphics/RectF;->right:F

    .line 44
    .line 45
    float-to-int p1, p1

    .line 46
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 51
    .line 52
    invoke-virtual {p5, p3, p4, p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 53
    .line 54
    .line 55
    const/high16 p1, 0x437f0000    # 255.0f

    .line 56
    .line 57
    mul-float p2, p2, p1

    .line 58
    .line 59
    float-to-int p1, p2

    .line 60
    invoke-virtual {p5, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :pswitch_0
    invoke-static {p1, p2}, Lha/l2;->G(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;)Landroid/graphics/RectF;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    invoke-static {p1, p3}, Lha/l2;->G(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;)Landroid/graphics/RectF;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iget p3, p2, Landroid/graphics/RectF;->left:F

    .line 73
    .line 74
    iget v0, p1, Landroid/graphics/RectF;->left:F

    .line 75
    .line 76
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 77
    .line 78
    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    .line 79
    .line 80
    const-wide v5, 0x400921fb54442d18L    # Math.PI

    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    cmpg-float p3, p3, v0

    .line 86
    .line 87
    if-gez p3, :cond_2

    .line 88
    .line 89
    float-to-double p3, p4

    .line 90
    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    .line 91
    .line 92
    .line 93
    mul-double p3, p3, v5

    .line 94
    .line 95
    div-double/2addr p3, v3

    .line 96
    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    .line 97
    .line 98
    .line 99
    move-result-wide v3

    .line 100
    sub-double/2addr v1, v3

    .line 101
    double-to-float v0, v1

    .line 102
    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    .line 103
    .line 104
    .line 105
    move-result-wide p3

    .line 106
    double-to-float p3, p3

    .line 107
    goto :goto_2

    .line 108
    :cond_2
    float-to-double p3, p4

    .line 109
    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    .line 110
    .line 111
    .line 112
    mul-double p3, p3, v5

    .line 113
    .line 114
    div-double/2addr p3, v3

    .line 115
    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    .line 116
    .line 117
    .line 118
    move-result-wide v3

    .line 119
    double-to-float v0, v3

    .line 120
    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    .line 121
    .line 122
    .line 123
    move-result-wide p3

    .line 124
    sub-double/2addr v1, p3

    .line 125
    double-to-float p3, v1

    .line 126
    :goto_2
    iget p4, p2, Landroid/graphics/RectF;->left:F

    .line 127
    .line 128
    float-to-int p4, p4

    .line 129
    iget v1, p1, Landroid/graphics/RectF;->left:F

    .line 130
    .line 131
    float-to-int v1, v1

    .line 132
    invoke-static {p4, v0, v1}, Lr6/a;->c(IFI)I

    .line 133
    .line 134
    .line 135
    move-result p4

    .line 136
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 141
    .line 142
    iget p2, p2, Landroid/graphics/RectF;->right:F

    .line 143
    .line 144
    float-to-int p2, p2

    .line 145
    iget p1, p1, Landroid/graphics/RectF;->right:F

    .line 146
    .line 147
    float-to-int p1, p1

    .line 148
    invoke-static {p2, p3, p1}, Lr6/a;->c(IFI)I

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 157
    .line 158
    invoke-virtual {p5, p4, v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 159
    .line 160
    .line 161
    return-void

    .line 162
    nop

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
