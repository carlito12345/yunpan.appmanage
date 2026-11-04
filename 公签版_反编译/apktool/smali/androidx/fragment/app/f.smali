.class public final synthetic Landroidx/fragment/app/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt0/f;
.implements Lcom/hjq/permissions/core/OnPermissionFragmentCallback;
.implements Lh2/k;
.implements Lmb/f;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p5, p0, Landroidx/fragment/app/f;->a:I

    iput-object p1, p0, Landroidx/fragment/app/f;->b:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/fragment/app/f;->c:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/fragment/app/f;->d:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/fragment/app/f;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 4

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/fragment/app/f;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Landroidx/fragment/app/n;

    .line 6
    .line 7
    invoke-static {v1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "$animationInfo"

    .line 11
    .line 12
    iget-object v2, p0, Landroidx/fragment/app/f;->d:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v2, Landroidx/fragment/app/i;

    .line 15
    .line 16
    invoke-static {v2, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v0, "$operation"

    .line 20
    .line 21
    iget-object v3, p0, Landroidx/fragment/app/f;->e:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v3, Landroidx/fragment/app/z1;

    .line 24
    .line 25
    invoke-static {v3, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Landroidx/fragment/app/f;->b:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, Landroid/view/View;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 33
    .line 34
    .line 35
    iget-object v1, v1, Landroidx/fragment/app/n;->a:Landroid/view/ViewGroup;

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Landroidx/fragment/app/j;->a()V

    .line 41
    .line 42
    .line 43
    const-string v0, "FragmentManager"

    .line 44
    .line 45
    const/4 v1, 0x2

    .line 46
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_0

    .line 51
    .line 52
    invoke-virtual {v3}, Landroidx/fragment/app/z1;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    :cond_0
    return-void
.end method

.method public d(ILr1/r0;[I)Lu7/y0;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v10, p2

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/fragment/app/f;->d:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, [I

    .line 8
    .line 9
    aget v11, v1, p1

    .line 10
    .line 11
    iget-object v1, v0, Landroidx/fragment/app/f;->b:Ljava/lang/Object;

    .line 12
    .line 13
    move-object v12, v1

    .line 14
    check-cast v12, Lh2/i;

    .line 15
    .line 16
    iget-object v1, v0, Landroidx/fragment/app/f;->e:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Landroid/graphics/Point;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget v2, v12, Lr1/v0;->e:I

    .line 26
    .line 27
    :goto_0
    if-eqz v1, :cond_1

    .line 28
    .line 29
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    iget v1, v12, Lr1/v0;->f:I

    .line 33
    .line 34
    :goto_1
    iget-boolean v3, v12, Lr1/v0;->h:Z

    .line 35
    .line 36
    const v14, 0x7fffffff

    .line 37
    .line 38
    .line 39
    if-eq v2, v14, :cond_9

    .line 40
    .line 41
    if-ne v1, v14, :cond_2

    .line 42
    .line 43
    goto/16 :goto_7

    .line 44
    .line 45
    :cond_2
    const/4 v4, 0x0

    .line 46
    const v5, 0x7fffffff

    .line 47
    .line 48
    .line 49
    :goto_2
    iget v6, v10, Lr1/r0;->a:I

    .line 50
    .line 51
    if-ge v4, v6, :cond_8

    .line 52
    .line 53
    iget-object v6, v10, Lr1/r0;->d:[Lr1/p;

    .line 54
    .line 55
    aget-object v6, v6, v4

    .line 56
    .line 57
    iget v7, v6, Lr1/p;->v:I

    .line 58
    .line 59
    if-lez v7, :cond_7

    .line 60
    .line 61
    iget v8, v6, Lr1/p;->w:I

    .line 62
    .line 63
    if-lez v8, :cond_7

    .line 64
    .line 65
    if-eqz v3, :cond_5

    .line 66
    .line 67
    if-le v7, v8, :cond_3

    .line 68
    .line 69
    const/4 v9, 0x1

    .line 70
    goto :goto_3

    .line 71
    :cond_3
    const/4 v9, 0x0

    .line 72
    :goto_3
    if-le v2, v1, :cond_4

    .line 73
    .line 74
    const/4 v13, 0x1

    .line 75
    goto :goto_4

    .line 76
    :cond_4
    const/4 v13, 0x0

    .line 77
    :goto_4
    if-eq v9, v13, :cond_5

    .line 78
    .line 79
    move v13, v1

    .line 80
    move v9, v2

    .line 81
    goto :goto_5

    .line 82
    :cond_5
    move v9, v1

    .line 83
    move v13, v2

    .line 84
    :goto_5
    mul-int v15, v7, v9

    .line 85
    .line 86
    mul-int v14, v8, v13

    .line 87
    .line 88
    if-lt v15, v14, :cond_6

    .line 89
    .line 90
    new-instance v9, Landroid/graphics/Point;

    .line 91
    .line 92
    invoke-static {v14, v7}, Lu1/f0;->e(II)I

    .line 93
    .line 94
    .line 95
    move-result v7

    .line 96
    invoke-direct {v9, v13, v7}, Landroid/graphics/Point;-><init>(II)V

    .line 97
    .line 98
    .line 99
    goto :goto_6

    .line 100
    :cond_6
    new-instance v7, Landroid/graphics/Point;

    .line 101
    .line 102
    invoke-static {v15, v8}, Lu1/f0;->e(II)I

    .line 103
    .line 104
    .line 105
    move-result v13

    .line 106
    invoke-direct {v7, v13, v9}, Landroid/graphics/Point;-><init>(II)V

    .line 107
    .line 108
    .line 109
    move-object v9, v7

    .line 110
    :goto_6
    iget v6, v6, Lr1/p;->v:I

    .line 111
    .line 112
    mul-int v7, v6, v8

    .line 113
    .line 114
    iget v13, v9, Landroid/graphics/Point;->x:I

    .line 115
    .line 116
    int-to-float v13, v13

    .line 117
    const v14, 0x3f7ae148    # 0.98f

    .line 118
    .line 119
    .line 120
    mul-float v13, v13, v14

    .line 121
    .line 122
    float-to-int v13, v13

    .line 123
    if-lt v6, v13, :cond_7

    .line 124
    .line 125
    iget v6, v9, Landroid/graphics/Point;->y:I

    .line 126
    .line 127
    int-to-float v6, v6

    .line 128
    mul-float v6, v6, v14

    .line 129
    .line 130
    float-to-int v6, v6

    .line 131
    if-lt v8, v6, :cond_7

    .line 132
    .line 133
    if-ge v7, v5, :cond_7

    .line 134
    .line 135
    move v5, v7

    .line 136
    :cond_7
    add-int/lit8 v4, v4, 0x1

    .line 137
    .line 138
    const v14, 0x7fffffff

    .line 139
    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_8
    move v13, v5

    .line 143
    goto :goto_8

    .line 144
    :cond_9
    :goto_7
    const v13, 0x7fffffff

    .line 145
    .line 146
    .line 147
    :goto_8
    const-string v1, "initialCapacity"

    .line 148
    .line 149
    const/4 v2, 0x4

    .line 150
    invoke-static {v2, v1}, Lu7/q;->c(ILjava/lang/String;)V

    .line 151
    .line 152
    .line 153
    new-array v1, v2, [Ljava/lang/Object;

    .line 154
    .line 155
    move-object v14, v1

    .line 156
    const/4 v9, 0x0

    .line 157
    const/4 v15, 0x0

    .line 158
    :goto_9
    iget v1, v10, Lr1/r0;->a:I

    .line 159
    .line 160
    if-ge v15, v1, :cond_d

    .line 161
    .line 162
    iget-object v1, v10, Lr1/r0;->d:[Lr1/p;

    .line 163
    .line 164
    aget-object v1, v1, v15

    .line 165
    .line 166
    invoke-virtual {v1}, Lr1/p;->b()I

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    const v8, 0x7fffffff

    .line 171
    .line 172
    .line 173
    if-eq v13, v8, :cond_b

    .line 174
    .line 175
    const/4 v2, -0x1

    .line 176
    if-eq v1, v2, :cond_a

    .line 177
    .line 178
    if-gt v1, v13, :cond_a

    .line 179
    .line 180
    goto :goto_a

    .line 181
    :cond_a
    const/16 v16, 0x0

    .line 182
    .line 183
    goto :goto_b

    .line 184
    :cond_b
    :goto_a
    const/16 v16, 0x1

    .line 185
    .line 186
    :goto_b
    new-instance v17, Lh2/m;

    .line 187
    .line 188
    aget v6, p3, v15

    .line 189
    .line 190
    iget-object v1, v0, Landroidx/fragment/app/f;->c:Ljava/lang/Object;

    .line 191
    .line 192
    move-object v7, v1

    .line 193
    check-cast v7, Ljava/lang/String;

    .line 194
    .line 195
    move-object/from16 v1, v17

    .line 196
    .line 197
    move/from16 v2, p1

    .line 198
    .line 199
    move-object/from16 v3, p2

    .line 200
    .line 201
    move v4, v15

    .line 202
    move-object v5, v12

    .line 203
    const v18, 0x7fffffff

    .line 204
    .line 205
    .line 206
    move v8, v11

    .line 207
    move v0, v9

    .line 208
    move/from16 v9, v16

    .line 209
    .line 210
    invoke-direct/range {v1 .. v9}, Lh2/m;-><init>(ILr1/r0;ILh2/i;ILjava/lang/String;IZ)V

    .line 211
    .line 212
    .line 213
    array-length v1, v14

    .line 214
    add-int/lit8 v9, v0, 0x1

    .line 215
    .line 216
    invoke-static {v1, v9}, Lu7/a0;->f(II)I

    .line 217
    .line 218
    .line 219
    move-result v1

    .line 220
    array-length v2, v14

    .line 221
    if-gt v1, v2, :cond_c

    .line 222
    .line 223
    goto :goto_c

    .line 224
    :cond_c
    invoke-static {v14, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    move-object v14, v1

    .line 229
    :goto_c
    aput-object v17, v14, v0

    .line 230
    .line 231
    add-int/lit8 v15, v15, 0x1

    .line 232
    .line 233
    move-object/from16 v0, p0

    .line 234
    .line 235
    goto :goto_9

    .line 236
    :cond_d
    move v0, v9

    .line 237
    invoke-static {v0, v14}, Lu7/g0;->i(I[Ljava/lang/Object;)Lu7/y0;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    return-object v0
.end method

.method public f(ILmb/h;Lnb/b;)V
    .locals 3

    .line 1
    iget p3, p2, Lmb/h;->c:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Landroidx/fragment/app/f;->b:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v1, Lu1/p;

    .line 7
    .line 8
    iget-object v2, p0, Landroidx/fragment/app/f;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v2, Leb/c;

    .line 11
    .line 12
    invoke-virtual {v1, p2, v0, p3, v2}, Lu1/p;->d(Ljava/lang/CharSequence;IILeb/c;)F

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    float-to-double p2, p2

    .line 17
    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    .line 18
    .line 19
    .line 20
    move-result-wide p2

    .line 21
    double-to-int p2, p2

    .line 22
    iget-object p3, p0, Landroidx/fragment/app/f;->d:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p3, Landroidx/leanback/widget/i;

    .line 25
    .line 26
    iget v0, p3, Landroidx/leanback/widget/i;->b:I

    .line 27
    .line 28
    if-le p2, v0, :cond_0

    .line 29
    .line 30
    iput p2, p3, Landroidx/leanback/widget/i;->b:I

    .line 31
    .line 32
    :cond_0
    iget-object p3, p0, Landroidx/fragment/app/f;->e:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p3, [I

    .line 35
    .line 36
    if-eqz p3, :cond_1

    .line 37
    .line 38
    aput p2, p3, p1

    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method public synthetic onRequestPermissionAnomaly()V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/fragment/app/f;->a:I

    invoke-static {p0}, Lcom/hjq/permissions/core/a;->a(Lcom/hjq/permissions/core/OnPermissionFragmentCallback;)V

    return-void
.end method

.method public onRequestPermissionFinish()V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/fragment/app/f;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/fragment/app/f;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/j0;

    iget-object v1, p0, Landroidx/fragment/app/f;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Landroidx/fragment/app/f;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v3, p0, Landroidx/fragment/app/f;->e:Ljava/lang/Object;

    check-cast v3, Lcom/hjq/permissions/OnPermissionCallback;

    invoke-static {v0, v1, v2, v3}, Lcom/hjq/permissions/XXPermissions;->a(Landroidx/fragment/app/j0;Landroidx/fragment/app/Fragment;Ljava/util/List;Lcom/hjq/permissions/OnPermissionCallback;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/fragment/app/f;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Landroidx/fragment/app/f;->e:Ljava/lang/Object;

    check-cast v1, Lcom/hjq/permissions/OnPermissionCallback;

    iget-object v2, p0, Landroidx/fragment/app/f;->b:Ljava/lang/Object;

    check-cast v2, Landroid/app/Activity;

    iget-object v3, p0, Landroidx/fragment/app/f;->c:Ljava/lang/Object;

    check-cast v3, Landroid/app/Fragment;

    invoke-static {v2, v3, v0, v1}, Lcom/hjq/permissions/XXPermissions;->b(Landroid/app/Activity;Landroid/app/Fragment;Ljava/util/List;Lcom/hjq/permissions/OnPermissionCallback;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic onRequestPermissionNow()V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/fragment/app/f;->a:I

    invoke-static {p0}, Lcom/hjq/permissions/core/a;->b(Lcom/hjq/permissions/core/OnPermissionFragmentCallback;)V

    return-void
.end method
