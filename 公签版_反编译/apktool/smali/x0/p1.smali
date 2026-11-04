.class public final Lx0/p1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lx0/v1;

.field public final synthetic b:Lx0/j2;

.field public final synthetic c:Lx0/j2;

.field public final synthetic d:I

.field public final synthetic e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lx0/v1;Lx0/j2;Lx0/j2;ILandroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lx0/p1;->a:Lx0/v1;

    .line 2
    .line 3
    iput-object p2, p0, Lx0/p1;->b:Lx0/j2;

    .line 4
    .line 5
    iput-object p3, p0, Lx0/p1;->c:Lx0/j2;

    .line 6
    .line 7
    iput p4, p0, Lx0/p1;->d:I

    .line 8
    .line 9
    iput-object p5, p0, Lx0/p1;->e:Landroid/view/View;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget-object v3, v0, Lx0/p1;->a:Lx0/v1;

    .line 8
    .line 9
    iget-object v4, v3, Lx0/v1;->a:Lx0/u1;

    .line 10
    .line 11
    invoke-virtual {v4, v2}, Lx0/u1;->d(F)V

    .line 12
    .line 13
    .line 14
    iget-object v2, v3, Lx0/v1;->a:Lx0/u1;

    .line 15
    .line 16
    invoke-virtual {v2}, Lx0/u1;->b()F

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    sget-object v4, Lx0/r1;->e:Landroid/view/animation/Interpolator;

    .line 21
    .line 22
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 23
    .line 24
    iget-object v5, v0, Lx0/p1;->b:Lx0/j2;

    .line 25
    .line 26
    const/16 v6, 0x1e

    .line 27
    .line 28
    if-lt v4, v6, :cond_0

    .line 29
    .line 30
    new-instance v4, Lx0/z1;

    .line 31
    .line 32
    invoke-direct {v4, v5}, Lx0/z1;-><init>(Lx0/j2;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/16 v6, 0x1d

    .line 37
    .line 38
    if-lt v4, v6, :cond_1

    .line 39
    .line 40
    new-instance v4, Lx0/y1;

    .line 41
    .line 42
    invoke-direct {v4, v5}, Lx0/y1;-><init>(Lx0/j2;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/16 v6, 0x14

    .line 47
    .line 48
    if-lt v4, v6, :cond_2

    .line 49
    .line 50
    new-instance v4, Lx0/x1;

    .line 51
    .line 52
    invoke-direct {v4, v5}, Lx0/x1;-><init>(Lx0/j2;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    new-instance v4, Lx0/a2;

    .line 57
    .line 58
    invoke-direct {v4, v5}, Lx0/a2;-><init>(Lx0/j2;)V

    .line 59
    .line 60
    .line 61
    :goto_0
    const/4 v6, 0x1

    .line 62
    :goto_1
    const/16 v7, 0x100

    .line 63
    .line 64
    if-gt v6, v7, :cond_4

    .line 65
    .line 66
    iget v7, v0, Lx0/p1;->d:I

    .line 67
    .line 68
    and-int/2addr v7, v6

    .line 69
    iget-object v8, v5, Lx0/j2;->a:Lx0/g2;

    .line 70
    .line 71
    if-nez v7, :cond_3

    .line 72
    .line 73
    invoke-virtual {v8, v6}, Lx0/g2;->f(I)Lp0/c;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    invoke-virtual {v4, v6, v7}, Lx0/a2;->c(ILp0/c;)V

    .line 78
    .line 79
    .line 80
    move/from16 p1, v2

    .line 81
    .line 82
    move-object v8, v3

    .line 83
    :goto_2
    const/4 v1, 0x1

    .line 84
    goto :goto_3

    .line 85
    :cond_3
    invoke-virtual {v8, v6}, Lx0/g2;->f(I)Lp0/c;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    iget-object v8, v0, Lx0/p1;->c:Lx0/j2;

    .line 90
    .line 91
    iget-object v8, v8, Lx0/j2;->a:Lx0/g2;

    .line 92
    .line 93
    invoke-virtual {v8, v6}, Lx0/g2;->f(I)Lp0/c;

    .line 94
    .line 95
    .line 96
    move-result-object v8

    .line 97
    iget v9, v7, Lp0/c;->a:I

    .line 98
    .line 99
    iget v10, v8, Lp0/c;->a:I

    .line 100
    .line 101
    sub-int/2addr v9, v10

    .line 102
    int-to-float v9, v9

    .line 103
    const/high16 v10, 0x3f800000    # 1.0f

    .line 104
    .line 105
    sub-float/2addr v10, v2

    .line 106
    mul-float v9, v9, v10

    .line 107
    .line 108
    float-to-double v11, v9

    .line 109
    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    .line 110
    .line 111
    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    .line 112
    .line 113
    .line 114
    add-double/2addr v11, v13

    .line 115
    double-to-int v9, v11

    .line 116
    iget v11, v7, Lp0/c;->b:I

    .line 117
    .line 118
    iget v12, v8, Lp0/c;->b:I

    .line 119
    .line 120
    sub-int/2addr v11, v12

    .line 121
    int-to-float v11, v11

    .line 122
    mul-float v11, v11, v10

    .line 123
    .line 124
    float-to-double v11, v11

    .line 125
    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    .line 126
    .line 127
    .line 128
    add-double/2addr v11, v13

    .line 129
    double-to-int v11, v11

    .line 130
    iget v12, v7, Lp0/c;->c:I

    .line 131
    .line 132
    iget v15, v8, Lp0/c;->c:I

    .line 133
    .line 134
    sub-int/2addr v12, v15

    .line 135
    int-to-float v12, v12

    .line 136
    mul-float v12, v12, v10

    .line 137
    .line 138
    move/from16 p1, v2

    .line 139
    .line 140
    float-to-double v1, v12

    .line 141
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    .line 142
    .line 143
    .line 144
    add-double/2addr v1, v13

    .line 145
    double-to-int v1, v1

    .line 146
    iget v2, v7, Lp0/c;->d:I

    .line 147
    .line 148
    iget v8, v8, Lp0/c;->d:I

    .line 149
    .line 150
    sub-int/2addr v2, v8

    .line 151
    int-to-float v2, v2

    .line 152
    mul-float v2, v2, v10

    .line 153
    .line 154
    move-object v8, v3

    .line 155
    float-to-double v2, v2

    .line 156
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    .line 157
    .line 158
    .line 159
    add-double/2addr v2, v13

    .line 160
    double-to-int v2, v2

    .line 161
    invoke-static {v7, v9, v11, v1, v2}, Lx0/j2;->e(Lp0/c;IIII)Lp0/c;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-virtual {v4, v6, v1}, Lx0/a2;->c(ILp0/c;)V

    .line 166
    .line 167
    .line 168
    goto :goto_2

    .line 169
    :goto_3
    shl-int/2addr v6, v1

    .line 170
    move/from16 v2, p1

    .line 171
    .line 172
    move-object v3, v8

    .line 173
    goto :goto_1

    .line 174
    :cond_4
    move-object v8, v3

    .line 175
    invoke-virtual {v4}, Lx0/a2;->b()Lx0/j2;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    iget-object v3, v0, Lx0/p1;->e:Landroid/view/View;

    .line 184
    .line 185
    invoke-static {v3, v1, v2}, Lx0/r1;->g(Landroid/view/View;Lx0/j2;Ljava/util/List;)V

    .line 186
    .line 187
    .line 188
    return-void
.end method
