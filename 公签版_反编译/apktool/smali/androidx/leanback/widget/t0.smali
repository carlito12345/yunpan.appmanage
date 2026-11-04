.class public final Landroidx/leanback/widget/t0;
.super Landroid/text/style/ReplacementSpan;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final synthetic c:Landroidx/leanback/widget/SearchEditText;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/SearchEditText;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/leanback/widget/t0;->c:Landroidx/leanback/widget/SearchEditText;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Landroidx/leanback/widget/t0;->a:I

    .line 7
    .line 8
    iput p3, p0, Landroidx/leanback/widget/t0;->b:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    move/from16 v4, p4

    .line 10
    .line 11
    move-object/from16 v5, p9

    .line 12
    .line 13
    invoke-virtual {v5, v2, v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    float-to-int v2, v2

    .line 18
    iget-object v3, v0, Landroidx/leanback/widget/t0;->c:Landroidx/leanback/widget/SearchEditText;

    .line 19
    .line 20
    iget-object v4, v3, Landroidx/leanback/widget/u0;->b:Landroid/graphics/Bitmap;

    .line 21
    .line 22
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    mul-int/lit8 v6, v4, 0x2

    .line 27
    .line 28
    div-int v7, v2, v6

    .line 29
    .line 30
    rem-int v8, v2, v6

    .line 31
    .line 32
    div-int/lit8 v8, v8, 0x2

    .line 33
    .line 34
    invoke-virtual {v3}, Landroid/view/View;->getLayoutDirection()I

    .line 35
    .line 36
    .line 37
    move-result v9

    .line 38
    const/4 v10, 0x1

    .line 39
    const/4 v11, 0x0

    .line 40
    if-ne v10, v9, :cond_0

    .line 41
    .line 42
    const/4 v9, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 v9, 0x0

    .line 45
    :goto_0
    iget-object v12, v3, Landroidx/leanback/widget/u0;->a:Ljava/util/Random;

    .line 46
    .line 47
    iget v13, v0, Landroidx/leanback/widget/t0;->a:I

    .line 48
    .line 49
    int-to-long v13, v13

    .line 50
    invoke-virtual {v12, v13, v14}, Ljava/util/Random;->setSeed(J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getAlpha()I

    .line 54
    .line 55
    .line 56
    move-result v13

    .line 57
    :goto_1
    if-ge v11, v7, :cond_4

    .line 58
    .line 59
    iget v14, v0, Landroidx/leanback/widget/t0;->b:I

    .line 60
    .line 61
    add-int/2addr v14, v11

    .line 62
    iget v15, v3, Landroidx/leanback/widget/u0;->d:I

    .line 63
    .line 64
    if-lt v14, v15, :cond_1

    .line 65
    .line 66
    goto :goto_4

    .line 67
    :cond_1
    mul-int v14, v11, v6

    .line 68
    .line 69
    add-int/2addr v14, v8

    .line 70
    div-int/lit8 v15, v4, 0x2

    .line 71
    .line 72
    add-int/2addr v15, v14

    .line 73
    int-to-float v14, v15

    .line 74
    if-eqz v9, :cond_2

    .line 75
    .line 76
    int-to-float v15, v2

    .line 77
    add-float v15, p5, v15

    .line 78
    .line 79
    sub-float/2addr v15, v14

    .line 80
    int-to-float v14, v4

    .line 81
    sub-float/2addr v15, v14

    .line 82
    goto :goto_2

    .line 83
    :cond_2
    add-float v15, p5, v14

    .line 84
    .line 85
    :goto_2
    const/4 v14, 0x4

    .line 86
    invoke-virtual {v12, v14}, Ljava/util/Random;->nextInt(I)I

    .line 87
    .line 88
    .line 89
    move-result v14

    .line 90
    add-int/2addr v14, v10

    .line 91
    mul-int/lit8 v14, v14, 0x3f

    .line 92
    .line 93
    invoke-virtual {v5, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v12}, Ljava/util/Random;->nextBoolean()Z

    .line 97
    .line 98
    .line 99
    move-result v14

    .line 100
    if-eqz v14, :cond_3

    .line 101
    .line 102
    iget-object v14, v3, Landroidx/leanback/widget/u0;->c:Landroid/graphics/Bitmap;

    .line 103
    .line 104
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    .line 105
    .line 106
    .line 107
    move-result v16

    .line 108
    sub-int v10, p7, v16

    .line 109
    .line 110
    int-to-float v10, v10

    .line 111
    invoke-virtual {v1, v14, v15, v10, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 112
    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_3
    iget-object v10, v3, Landroidx/leanback/widget/u0;->b:Landroid/graphics/Bitmap;

    .line 116
    .line 117
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    .line 118
    .line 119
    .line 120
    move-result v14

    .line 121
    sub-int v14, p7, v14

    .line 122
    .line 123
    int-to-float v14, v14

    .line 124
    invoke-virtual {v1, v10, v15, v14, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 125
    .line 126
    .line 127
    :goto_3
    add-int/lit8 v11, v11, 0x1

    .line 128
    .line 129
    const/4 v10, 0x1

    .line 130
    goto :goto_1

    .line 131
    :cond_4
    :goto_4
    invoke-virtual {v5, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 132
    .line 133
    .line 134
    return-void
.end method

.method public final getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    .line 1
    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    float-to-int p1, p1

    .line 6
    return p1
.end method
