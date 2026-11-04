.class public Lcom/owen/tvrecyclerview/widget/ItemSpacingOffsets;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAddSpacingAtEnd:Z

.field private final mHorizontalSpacing:I

.field private final mTempLaneInfo:Lcom/owen/tvrecyclerview/Lanes$LaneInfo;

.field private final mVerticalSpacing:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/owen/tvrecyclerview/Lanes$LaneInfo;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/owen/tvrecyclerview/Lanes$LaneInfo;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/owen/tvrecyclerview/widget/ItemSpacingOffsets;->mTempLaneInfo:Lcom/owen/tvrecyclerview/Lanes$LaneInfo;

    .line 10
    .line 11
    if-ltz p1, :cond_0

    .line 12
    .line 13
    if-ltz p2, :cond_0

    .line 14
    .line 15
    iput p1, p0, Lcom/owen/tvrecyclerview/widget/ItemSpacingOffsets;->mVerticalSpacing:I

    .line 16
    .line 17
    iput p2, p0, Lcom/owen/tvrecyclerview/widget/ItemSpacingOffsets;->mHorizontalSpacing:I

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    const-string p2, "Spacings should be equal or greater than 0"

    .line 23
    .line 24
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1
.end method

.method public static isFirstChildInLane(Lcom/owen/tvrecyclerview/BaseLayoutManager;I)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/BaseLayoutManager;->getLanes()Lcom/owen/tvrecyclerview/Lanes;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/owen/tvrecyclerview/Lanes;->getCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-lt p1, v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    :goto_0
    if-ge v2, p1, :cond_2

    .line 16
    .line 17
    invoke-virtual {p0, v2}, Lcom/owen/tvrecyclerview/BaseLayoutManager;->getLaneSpanForPosition(I)I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    add-int/2addr v3, v4

    .line 22
    if-lt v3, v0, :cond_1

    .line 23
    .line 24
    return v1

    .line 25
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    const/4 p0, 0x1

    .line 29
    return p0
.end method

.method public static isLastChildInLane(Lcom/owen/tvrecyclerview/BaseLayoutManager;II)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/owen/tvrecyclerview/BaseLayoutManager;->getLanes()Lcom/owen/tvrecyclerview/Lanes;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/owen/tvrecyclerview/Lanes;->getCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sub-int/2addr p2, v0

    .line 10
    const/4 v0, 0x0

    .line 11
    if-ge p1, p2, :cond_0

    .line 12
    .line 13
    return v0

    .line 14
    :cond_0
    instance-of p1, p0, Lcom/owen/tvrecyclerview/widget/SpannableGridLayoutManager;

    .line 15
    .line 16
    if-nez p1, :cond_2

    .line 17
    .line 18
    instance-of p0, p0, Lcom/owen/tvrecyclerview/widget/StaggeredGridLayoutManager;

    .line 19
    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 p0, 0x1

    .line 24
    return p0

    .line 25
    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method public getHorizontalSpacing()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/owen/tvrecyclerview/widget/ItemSpacingOffsets;->mHorizontalSpacing:I

    .line 2
    .line 3
    return v0
.end method

.method public getItemOffsets(Landroid/graphics/Rect;ILandroidx/recyclerview/widget/RecyclerView;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    invoke-virtual/range {p3 .. p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    check-cast v3, Lcom/owen/tvrecyclerview/BaseLayoutManager;

    .line 12
    .line 13
    iget-object v4, v0, Lcom/owen/tvrecyclerview/widget/ItemSpacingOffsets;->mTempLaneInfo:Lcom/owen/tvrecyclerview/Lanes$LaneInfo;

    .line 14
    .line 15
    sget-object v5, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;->END:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;

    .line 16
    .line 17
    invoke-virtual {v3, v4, v2, v5}, Lcom/owen/tvrecyclerview/BaseLayoutManager;->getLaneForPosition(Lcom/owen/tvrecyclerview/Lanes$LaneInfo;ILcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;)V

    .line 18
    .line 19
    .line 20
    iget-object v4, v0, Lcom/owen/tvrecyclerview/widget/ItemSpacingOffsets;->mTempLaneInfo:Lcom/owen/tvrecyclerview/Lanes$LaneInfo;

    .line 21
    .line 22
    iget v4, v4, Lcom/owen/tvrecyclerview/Lanes$LaneInfo;->startLane:I

    .line 23
    .line 24
    invoke-virtual {v3, v2}, Lcom/owen/tvrecyclerview/BaseLayoutManager;->getLaneSpanForPosition(I)I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    invoke-virtual {v3}, Lcom/owen/tvrecyclerview/BaseLayoutManager;->getLanes()Lcom/owen/tvrecyclerview/Lanes;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    invoke-virtual {v6}, Lcom/owen/tvrecyclerview/Lanes;->getCount()I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    invoke-virtual/range {p3 .. p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/m1;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    invoke-virtual {v7}, Landroidx/recyclerview/widget/m1;->b()I

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    invoke-virtual {v3}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->isVertical()Z

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    const/4 v9, 0x1

    .line 49
    if-nez v4, :cond_0

    .line 50
    .line 51
    const/4 v11, 0x1

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const/4 v11, 0x0

    .line 54
    :goto_0
    invoke-virtual {v0, v3, v2, v4}, Lcom/owen/tvrecyclerview/widget/ItemSpacingOffsets;->isSecondLane(Lcom/owen/tvrecyclerview/BaseLayoutManager;II)Z

    .line 55
    .line 56
    .line 57
    move-result v12

    .line 58
    add-int/2addr v4, v5

    .line 59
    if-ne v4, v6, :cond_1

    .line 60
    .line 61
    const/4 v5, 0x1

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    const/4 v5, 0x0

    .line 64
    :goto_1
    sub-int/2addr v6, v9

    .line 65
    if-ne v4, v6, :cond_2

    .line 66
    .line 67
    const/4 v4, 0x1

    .line 68
    goto :goto_2

    .line 69
    :cond_2
    const/4 v4, 0x0

    .line 70
    :goto_2
    if-eqz v8, :cond_3

    .line 71
    .line 72
    iget v6, v0, Lcom/owen/tvrecyclerview/widget/ItemSpacingOffsets;->mHorizontalSpacing:I

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_3
    iget v6, v0, Lcom/owen/tvrecyclerview/widget/ItemSpacingOffsets;->mVerticalSpacing:I

    .line 76
    .line 77
    :goto_3
    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    .line 78
    .line 79
    const-wide v15, 0x3fd6666666666666L    # 0.35

    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    const-wide v17, 0x3fe4cccccccccccdL    # 0.65

    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    if-eqz v11, :cond_4

    .line 90
    .line 91
    const/4 v9, 0x0

    .line 92
    goto :goto_5

    .line 93
    :cond_4
    if-eqz v5, :cond_5

    .line 94
    .line 95
    if-nez v12, :cond_5

    .line 96
    .line 97
    int-to-double v9, v6

    .line 98
    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    .line 99
    .line 100
    .line 101
    mul-double v9, v9, v17

    .line 102
    .line 103
    :goto_4
    double-to-int v9, v9

    .line 104
    goto :goto_5

    .line 105
    :cond_5
    if-eqz v12, :cond_6

    .line 106
    .line 107
    if-nez v5, :cond_6

    .line 108
    .line 109
    int-to-double v9, v6

    .line 110
    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    .line 111
    .line 112
    .line 113
    mul-double v9, v9, v15

    .line 114
    .line 115
    goto :goto_4

    .line 116
    :cond_6
    int-to-double v9, v6

    .line 117
    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    .line 118
    .line 119
    .line 120
    mul-double v9, v9, v13

    .line 121
    .line 122
    goto :goto_4

    .line 123
    :goto_5
    if-eqz v5, :cond_7

    .line 124
    .line 125
    const/4 v4, 0x0

    .line 126
    goto :goto_7

    .line 127
    :cond_7
    if-eqz v11, :cond_8

    .line 128
    .line 129
    if-nez v4, :cond_8

    .line 130
    .line 131
    int-to-double v4, v6

    .line 132
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    .line 133
    .line 134
    .line 135
    mul-double v4, v4, v17

    .line 136
    .line 137
    :goto_6
    double-to-int v4, v4

    .line 138
    goto :goto_7

    .line 139
    :cond_8
    if-eqz v4, :cond_9

    .line 140
    .line 141
    if-nez v11, :cond_9

    .line 142
    .line 143
    int-to-double v4, v6

    .line 144
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    .line 145
    .line 146
    .line 147
    mul-double v4, v4, v15

    .line 148
    .line 149
    goto :goto_6

    .line 150
    :cond_9
    int-to-double v4, v6

    .line 151
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    .line 152
    .line 153
    .line 154
    mul-double v4, v4, v13

    .line 155
    .line 156
    goto :goto_6

    .line 157
    :goto_7
    invoke-static {v3, v2}, Lcom/owen/tvrecyclerview/widget/ItemSpacingOffsets;->isFirstChildInLane(Lcom/owen/tvrecyclerview/BaseLayoutManager;I)Z

    .line 158
    .line 159
    .line 160
    move-result v5

    .line 161
    iget-boolean v6, v0, Lcom/owen/tvrecyclerview/widget/ItemSpacingOffsets;->mAddSpacingAtEnd:Z

    .line 162
    .line 163
    if-nez v6, :cond_a

    .line 164
    .line 165
    invoke-static {v3, v2, v7}, Lcom/owen/tvrecyclerview/widget/ItemSpacingOffsets;->isLastChildInLane(Lcom/owen/tvrecyclerview/BaseLayoutManager;II)Z

    .line 166
    .line 167
    .line 168
    move-result v2

    .line 169
    if-eqz v2, :cond_a

    .line 170
    .line 171
    const/4 v2, 0x1

    .line 172
    goto :goto_8

    .line 173
    :cond_a
    const/4 v2, 0x0

    .line 174
    :goto_8
    if-eqz v8, :cond_d

    .line 175
    .line 176
    iput v9, v1, Landroid/graphics/Rect;->left:I

    .line 177
    .line 178
    if-eqz v5, :cond_b

    .line 179
    .line 180
    const/4 v3, 0x0

    .line 181
    goto :goto_9

    .line 182
    :cond_b
    iget v3, v0, Lcom/owen/tvrecyclerview/widget/ItemSpacingOffsets;->mVerticalSpacing:I

    .line 183
    .line 184
    div-int/lit8 v3, v3, 0x2

    .line 185
    .line 186
    :goto_9
    iput v3, v1, Landroid/graphics/Rect;->top:I

    .line 187
    .line 188
    iput v4, v1, Landroid/graphics/Rect;->right:I

    .line 189
    .line 190
    if-eqz v2, :cond_c

    .line 191
    .line 192
    const/4 v10, 0x0

    .line 193
    goto :goto_a

    .line 194
    :cond_c
    iget v2, v0, Lcom/owen/tvrecyclerview/widget/ItemSpacingOffsets;->mVerticalSpacing:I

    .line 195
    .line 196
    div-int/lit8 v10, v2, 0x2

    .line 197
    .line 198
    :goto_a
    iput v10, v1, Landroid/graphics/Rect;->bottom:I

    .line 199
    .line 200
    goto :goto_d

    .line 201
    :cond_d
    if-eqz v5, :cond_e

    .line 202
    .line 203
    const/4 v3, 0x0

    .line 204
    goto :goto_b

    .line 205
    :cond_e
    iget v3, v0, Lcom/owen/tvrecyclerview/widget/ItemSpacingOffsets;->mHorizontalSpacing:I

    .line 206
    .line 207
    div-int/lit8 v3, v3, 0x2

    .line 208
    .line 209
    :goto_b
    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 210
    .line 211
    iput v9, v1, Landroid/graphics/Rect;->top:I

    .line 212
    .line 213
    if-eqz v2, :cond_f

    .line 214
    .line 215
    const/4 v10, 0x0

    .line 216
    goto :goto_c

    .line 217
    :cond_f
    iget v2, v0, Lcom/owen/tvrecyclerview/widget/ItemSpacingOffsets;->mHorizontalSpacing:I

    .line 218
    .line 219
    div-int/lit8 v10, v2, 0x2

    .line 220
    .line 221
    :goto_c
    iput v10, v1, Landroid/graphics/Rect;->right:I

    .line 222
    .line 223
    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 224
    .line 225
    :goto_d
    return-void
.end method

.method public getSpacingSize(Lcom/owen/tvrecyclerview/BaseLayoutManager;)I
    .locals 0

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/owen/tvrecyclerview/TwoWayLayoutManager;->isVertical()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget p1, p0, Lcom/owen/tvrecyclerview/widget/ItemSpacingOffsets;->mHorizontalSpacing:I

    .line 10
    .line 11
    return p1

    .line 12
    :cond_0
    iget p1, p0, Lcom/owen/tvrecyclerview/widget/ItemSpacingOffsets;->mVerticalSpacing:I

    .line 13
    .line 14
    return p1

    .line 15
    :cond_1
    const/4 p1, 0x0

    .line 16
    return p1
.end method

.method public getVerticalSpacing()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/owen/tvrecyclerview/widget/ItemSpacingOffsets;->mVerticalSpacing:I

    .line 2
    .line 3
    return v0
.end method

.method public isSecondLane(Lcom/owen/tvrecyclerview/BaseLayoutManager;II)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p3, :cond_3

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    goto :goto_2

    .line 7
    :cond_0
    const/4 v1, 0x1

    .line 8
    sub-int/2addr p2, v1

    .line 9
    const/4 v2, -0x1

    .line 10
    :goto_0
    if-ltz p2, :cond_2

    .line 11
    .line 12
    iget-object v2, p0, Lcom/owen/tvrecyclerview/widget/ItemSpacingOffsets;->mTempLaneInfo:Lcom/owen/tvrecyclerview/Lanes$LaneInfo;

    .line 13
    .line 14
    sget-object v3, Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;->END:Lcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;

    .line 15
    .line 16
    invoke-virtual {p1, v2, p2, v3}, Lcom/owen/tvrecyclerview/BaseLayoutManager;->getLaneForPosition(Lcom/owen/tvrecyclerview/Lanes$LaneInfo;ILcom/owen/tvrecyclerview/TwoWayLayoutManager$Direction;)V

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Lcom/owen/tvrecyclerview/widget/ItemSpacingOffsets;->mTempLaneInfo:Lcom/owen/tvrecyclerview/Lanes$LaneInfo;

    .line 20
    .line 21
    iget v2, v2, Lcom/owen/tvrecyclerview/Lanes$LaneInfo;->startLane:I

    .line 22
    .line 23
    if-eq v2, p3, :cond_1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    add-int/lit8 p2, p2, -0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    :goto_1
    invoke-virtual {p1, p2}, Lcom/owen/tvrecyclerview/BaseLayoutManager;->getLaneSpanForPosition(I)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-nez v2, :cond_3

    .line 34
    .line 35
    add-int/2addr v2, p1

    .line 36
    if-ne p3, v2, :cond_3

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    :cond_3
    :goto_2
    return v0
.end method

.method public setAddSpacingAtEnd(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/owen/tvrecyclerview/widget/ItemSpacingOffsets;->mAddSpacingAtEnd:Z

    .line 2
    .line 3
    return-void
.end method
