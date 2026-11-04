.class public final Lz6/b;
.super Landroidx/recyclerview/widget/v1;
.source "SourceFile"


# instance fields
.field public final a:Landroid/graphics/Paint;

.field public final b:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/v1;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Paint;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lz6/b;->a:Landroid/graphics/Paint;

    .line 10
    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iput-object v1, p0, Lz6/b;->b:Ljava/util/List;

    .line 21
    .line 22
    const/high16 v1, 0x40a00000    # 5.0f

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 25
    .line 26
    .line 27
    const v1, -0xff01

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 31
    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/n2;)V
    .locals 9

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/v1;->onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/n2;)V

    .line 2
    .line 3
    .line 4
    iget-object p3, p0, Lz6/b;->a:Landroid/graphics/Paint;

    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const v1, 0x7f0703a7

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lz6/b;->b:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lz6/f;

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    sget-object v0, Lp0/a;->a:Ljava/lang/ThreadLocal;

    .line 43
    .line 44
    const/high16 v0, 0x3f800000    # 1.0f

    .line 45
    .line 46
    sub-float/2addr v0, v1

    .line 47
    const v2, -0xff01

    .line 48
    .line 49
    .line 50
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    int-to-float v3, v3

    .line 55
    mul-float v3, v3, v0

    .line 56
    .line 57
    const v4, -0xffff01

    .line 58
    .line 59
    .line 60
    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    int-to-float v5, v5

    .line 65
    mul-float v5, v5, v1

    .line 66
    .line 67
    add-float/2addr v5, v3

    .line 68
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    int-to-float v3, v3

    .line 73
    mul-float v3, v3, v0

    .line 74
    .line 75
    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    int-to-float v7, v7

    .line 80
    mul-float v7, v7, v1

    .line 81
    .line 82
    add-float/2addr v7, v3

    .line 83
    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    int-to-float v3, v3

    .line 88
    mul-float v3, v3, v0

    .line 89
    .line 90
    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    .line 91
    .line 92
    .line 93
    move-result v8

    .line 94
    int-to-float v8, v8

    .line 95
    mul-float v8, v8, v1

    .line 96
    .line 97
    add-float/2addr v8, v3

    .line 98
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    int-to-float v2, v2

    .line 103
    mul-float v2, v2, v0

    .line 104
    .line 105
    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    int-to-float v0, v0

    .line 110
    mul-float v0, v0, v1

    .line 111
    .line 112
    add-float/2addr v0, v2

    .line 113
    float-to-int v1, v5

    .line 114
    float-to-int v2, v7

    .line 115
    float-to-int v3, v8

    .line 116
    float-to-int v0, v0

    .line 117
    invoke-static {v1, v2, v3, v0}, Landroid/graphics/Color;->argb(IIII)I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    check-cast v0, Lcom/google/android/material/carousel/CarouselLayoutManager;

    .line 129
    .line 130
    invoke-virtual {v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->a()Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-eqz v0, :cond_0

    .line 135
    .line 136
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    check-cast v0, Lcom/google/android/material/carousel/CarouselLayoutManager;

    .line 141
    .line 142
    iget-object v0, v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->a:Lz6/e;

    .line 143
    .line 144
    invoke-virtual {v0}, Lz6/e;->e()I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    int-to-float v2, v0

    .line 149
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    check-cast v0, Lcom/google/android/material/carousel/CarouselLayoutManager;

    .line 154
    .line 155
    iget-object v0, v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->a:Lz6/e;

    .line 156
    .line 157
    invoke-virtual {v0}, Lz6/e;->a()I

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    int-to-float v4, v0

    .line 162
    const/4 v1, 0x0

    .line 163
    const/4 v3, 0x0

    .line 164
    move-object v0, p1

    .line 165
    move-object v5, p3

    .line 166
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 167
    .line 168
    .line 169
    goto/16 :goto_0

    .line 170
    .line 171
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    check-cast v0, Lcom/google/android/material/carousel/CarouselLayoutManager;

    .line 176
    .line 177
    iget-object v0, v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->a:Lz6/e;

    .line 178
    .line 179
    invoke-virtual {v0}, Lz6/e;->b()I

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    int-to-float v1, v0

    .line 184
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    check-cast v0, Lcom/google/android/material/carousel/CarouselLayoutManager;

    .line 189
    .line 190
    iget-object v0, v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->a:Lz6/e;

    .line 191
    .line 192
    invoke-virtual {v0}, Lz6/e;->c()I

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    int-to-float v3, v0

    .line 197
    const/4 v4, 0x0

    .line 198
    const/4 v2, 0x0

    .line 199
    move-object v0, p1

    .line 200
    move-object v5, p3

    .line 201
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 202
    .line 203
    .line 204
    goto/16 :goto_0

    .line 205
    .line 206
    :cond_1
    return-void
.end method
