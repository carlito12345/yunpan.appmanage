.class public final Lx0/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/view/ViewParent;

.field public b:Landroid/view/ViewParent;

.field public final c:Landroid/view/ViewGroup;

.field public d:Z

.field public e:[I


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lx0/t;->c:Landroid/view/ViewGroup;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(FFZ)Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lx0/t;->d:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Lx0/t;->e(I)Landroid/view/ViewParent;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 13
    .line 14
    iget-object v3, p0, Lx0/t;->c:Landroid/view/ViewGroup;

    .line 15
    .line 16
    const/16 v4, 0x15

    .line 17
    .line 18
    if-lt v2, v4, :cond_0

    .line 19
    .line 20
    :try_start_0
    invoke-static {v0, v3, p1, p2, p3}, Lx0/i1;->a(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z

    .line 21
    .line 22
    .line 23
    move-result v1
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    goto :goto_0

    .line 25
    :catch_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    instance-of v2, v0, Lx0/w;

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    check-cast v0, Lx0/w;

    .line 34
    .line 35
    invoke-interface {v0, v3, p1, p2, p3}, Lx0/w;->onNestedFling(Landroid/view/View;FFZ)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    :cond_1
    :goto_0
    return v1
.end method

.method public final b(FF)Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lx0/t;->d:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Lx0/t;->e(I)Landroid/view/ViewParent;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 13
    .line 14
    iget-object v3, p0, Lx0/t;->c:Landroid/view/ViewGroup;

    .line 15
    .line 16
    const/16 v4, 0x15

    .line 17
    .line 18
    if-lt v2, v4, :cond_0

    .line 19
    .line 20
    :try_start_0
    invoke-static {v0, v3, p1, p2}, Lx0/i1;->b(Landroid/view/ViewParent;Landroid/view/View;FF)Z

    .line 21
    .line 22
    .line 23
    move-result v1
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    goto :goto_0

    .line 25
    :catch_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    instance-of v2, v0, Lx0/w;

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    check-cast v0, Lx0/w;

    .line 34
    .line 35
    invoke-interface {v0, v3, p1, p2}, Lx0/w;->onNestedPreFling(Landroid/view/View;FF)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    :cond_1
    :goto_0
    return v1
.end method

.method public final c(II[I[II)Z
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move v3, p1

    .line 3
    move/from16 v4, p2

    .line 4
    .line 5
    move-object/from16 v7, p4

    .line 6
    .line 7
    move/from16 v6, p5

    .line 8
    .line 9
    iget-boolean v1, v0, Lx0/t;->d:Z

    .line 10
    .line 11
    const/4 v8, 0x0

    .line 12
    if-eqz v1, :cond_b

    .line 13
    .line 14
    invoke-virtual {p0, v6}, Lx0/t;->e(I)Landroid/view/ViewParent;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    return v8

    .line 21
    :cond_0
    const/4 v9, 0x1

    .line 22
    if-nez v3, :cond_2

    .line 23
    .line 24
    if-eqz v4, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    if-eqz v7, :cond_b

    .line 28
    .line 29
    aput v8, v7, v8

    .line 30
    .line 31
    aput v8, v7, v9

    .line 32
    .line 33
    goto/16 :goto_4

    .line 34
    .line 35
    :cond_2
    :goto_0
    iget-object v10, v0, Lx0/t;->c:Landroid/view/ViewGroup;

    .line 36
    .line 37
    if-eqz v7, :cond_3

    .line 38
    .line 39
    invoke-virtual {v10, v7}, Landroid/view/View;->getLocationInWindow([I)V

    .line 40
    .line 41
    .line 42
    aget v2, v7, v8

    .line 43
    .line 44
    aget v5, v7, v9

    .line 45
    .line 46
    move v11, v2

    .line 47
    move v12, v5

    .line 48
    goto :goto_1

    .line 49
    :cond_3
    const/4 v11, 0x0

    .line 50
    const/4 v12, 0x0

    .line 51
    :goto_1
    if-nez p3, :cond_5

    .line 52
    .line 53
    iget-object v2, v0, Lx0/t;->e:[I

    .line 54
    .line 55
    if-nez v2, :cond_4

    .line 56
    .line 57
    const/4 v2, 0x2

    .line 58
    new-array v2, v2, [I

    .line 59
    .line 60
    iput-object v2, v0, Lx0/t;->e:[I

    .line 61
    .line 62
    :cond_4
    iget-object v2, v0, Lx0/t;->e:[I

    .line 63
    .line 64
    move-object v13, v2

    .line 65
    goto :goto_2

    .line 66
    :cond_5
    move-object/from16 v13, p3

    .line 67
    .line 68
    :goto_2
    aput v8, v13, v8

    .line 69
    .line 70
    aput v8, v13, v9

    .line 71
    .line 72
    instance-of v2, v1, Lx0/u;

    .line 73
    .line 74
    if-eqz v2, :cond_6

    .line 75
    .line 76
    check-cast v1, Lx0/u;

    .line 77
    .line 78
    move-object v2, v10

    .line 79
    move v3, p1

    .line 80
    move/from16 v4, p2

    .line 81
    .line 82
    move-object v5, v13

    .line 83
    move/from16 v6, p5

    .line 84
    .line 85
    invoke-interface/range {v1 .. v6}, Lx0/u;->f(Landroid/view/View;II[II)V

    .line 86
    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_6
    if-nez v6, :cond_8

    .line 90
    .line 91
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 92
    .line 93
    const/16 v5, 0x15

    .line 94
    .line 95
    if-lt v2, v5, :cond_7

    .line 96
    .line 97
    :try_start_0
    invoke-static {v1, v10, p1, v4, v13}, Lx0/i1;->c(Landroid/view/ViewParent;Landroid/view/View;II[I)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .line 99
    .line 100
    goto :goto_3

    .line 101
    :catch_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_7
    instance-of v2, v1, Lx0/w;

    .line 106
    .line 107
    if-eqz v2, :cond_8

    .line 108
    .line 109
    check-cast v1, Lx0/w;

    .line 110
    .line 111
    invoke-interface {v1, v10, p1, v4, v13}, Lx0/w;->onNestedPreScroll(Landroid/view/View;II[I)V

    .line 112
    .line 113
    .line 114
    :cond_8
    :goto_3
    if-eqz v7, :cond_9

    .line 115
    .line 116
    invoke-virtual {v10, v7}, Landroid/view/View;->getLocationInWindow([I)V

    .line 117
    .line 118
    .line 119
    aget v1, v7, v8

    .line 120
    .line 121
    sub-int/2addr v1, v11

    .line 122
    aput v1, v7, v8

    .line 123
    .line 124
    aget v1, v7, v9

    .line 125
    .line 126
    sub-int/2addr v1, v12

    .line 127
    aput v1, v7, v9

    .line 128
    .line 129
    :cond_9
    aget v1, v13, v8

    .line 130
    .line 131
    if-nez v1, :cond_a

    .line 132
    .line 133
    aget v1, v13, v9

    .line 134
    .line 135
    if-eqz v1, :cond_b

    .line 136
    .line 137
    :cond_a
    const/4 v8, 0x1

    .line 138
    :cond_b
    :goto_4
    return v8
.end method

.method public final d(IIII[II[I)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v9, p5

    .line 4
    .line 5
    move/from16 v7, p6

    .line 6
    .line 7
    iget-boolean v1, v0, Lx0/t;->d:Z

    .line 8
    .line 9
    const/4 v10, 0x0

    .line 10
    if-eqz v1, :cond_b

    .line 11
    .line 12
    invoke-virtual {v0, v7}, Lx0/t;->e(I)Landroid/view/ViewParent;

    .line 13
    .line 14
    .line 15
    move-result-object v8

    .line 16
    if-nez v8, :cond_0

    .line 17
    .line 18
    return v10

    .line 19
    :cond_0
    const/4 v11, 0x1

    .line 20
    if-nez p1, :cond_2

    .line 21
    .line 22
    if-nez p2, :cond_2

    .line 23
    .line 24
    if-nez p3, :cond_2

    .line 25
    .line 26
    if-eqz p4, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    if-eqz v9, :cond_b

    .line 30
    .line 31
    aput v10, v9, v10

    .line 32
    .line 33
    aput v10, v9, v11

    .line 34
    .line 35
    goto/16 :goto_4

    .line 36
    .line 37
    :cond_2
    :goto_0
    iget-object v12, v0, Lx0/t;->c:Landroid/view/ViewGroup;

    .line 38
    .line 39
    if-eqz v9, :cond_3

    .line 40
    .line 41
    invoke-virtual {v12, v9}, Landroid/view/View;->getLocationInWindow([I)V

    .line 42
    .line 43
    .line 44
    aget v1, v9, v10

    .line 45
    .line 46
    aget v2, v9, v11

    .line 47
    .line 48
    move v13, v1

    .line 49
    move v14, v2

    .line 50
    goto :goto_1

    .line 51
    :cond_3
    const/4 v13, 0x0

    .line 52
    const/4 v14, 0x0

    .line 53
    :goto_1
    if-nez p7, :cond_5

    .line 54
    .line 55
    iget-object v1, v0, Lx0/t;->e:[I

    .line 56
    .line 57
    if-nez v1, :cond_4

    .line 58
    .line 59
    const/4 v1, 0x2

    .line 60
    new-array v1, v1, [I

    .line 61
    .line 62
    iput-object v1, v0, Lx0/t;->e:[I

    .line 63
    .line 64
    :cond_4
    iget-object v1, v0, Lx0/t;->e:[I

    .line 65
    .line 66
    aput v10, v1, v10

    .line 67
    .line 68
    aput v10, v1, v11

    .line 69
    .line 70
    move-object v15, v1

    .line 71
    goto :goto_2

    .line 72
    :cond_5
    move-object/from16 v15, p7

    .line 73
    .line 74
    :goto_2
    instance-of v1, v8, Lx0/v;

    .line 75
    .line 76
    if-eqz v1, :cond_6

    .line 77
    .line 78
    move-object v1, v8

    .line 79
    check-cast v1, Lx0/v;

    .line 80
    .line 81
    move-object v2, v12

    .line 82
    move/from16 v3, p1

    .line 83
    .line 84
    move/from16 v4, p2

    .line 85
    .line 86
    move/from16 v5, p3

    .line 87
    .line 88
    move/from16 v6, p4

    .line 89
    .line 90
    move/from16 v7, p6

    .line 91
    .line 92
    move-object v8, v15

    .line 93
    invoke-interface/range {v1 .. v8}, Lx0/v;->b(Landroid/view/View;IIIII[I)V

    .line 94
    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_6
    aget v1, v15, v10

    .line 98
    .line 99
    add-int v1, v1, p3

    .line 100
    .line 101
    aput v1, v15, v10

    .line 102
    .line 103
    aget v1, v15, v11

    .line 104
    .line 105
    add-int v1, v1, p4

    .line 106
    .line 107
    aput v1, v15, v11

    .line 108
    .line 109
    instance-of v1, v8, Lx0/u;

    .line 110
    .line 111
    if-eqz v1, :cond_7

    .line 112
    .line 113
    move-object v1, v8

    .line 114
    check-cast v1, Lx0/u;

    .line 115
    .line 116
    move-object v2, v12

    .line 117
    move/from16 v3, p1

    .line 118
    .line 119
    move/from16 v4, p2

    .line 120
    .line 121
    move/from16 v5, p3

    .line 122
    .line 123
    move/from16 v6, p4

    .line 124
    .line 125
    move/from16 v7, p6

    .line 126
    .line 127
    invoke-interface/range {v1 .. v7}, Lx0/u;->c(Landroid/view/View;IIIII)V

    .line 128
    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_7
    if-nez v7, :cond_9

    .line 132
    .line 133
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 134
    .line 135
    const/16 v2, 0x15

    .line 136
    .line 137
    if-lt v1, v2, :cond_8

    .line 138
    .line 139
    move-object v1, v8

    .line 140
    move-object v2, v12

    .line 141
    move/from16 v3, p1

    .line 142
    .line 143
    move/from16 v4, p2

    .line 144
    .line 145
    move/from16 v5, p3

    .line 146
    .line 147
    move/from16 v6, p4

    .line 148
    .line 149
    :try_start_0
    invoke-static/range {v1 .. v6}, Lx0/i1;->d(Landroid/view/ViewParent;Landroid/view/View;IIII)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .line 151
    .line 152
    goto :goto_3

    .line 153
    :catch_0
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    goto :goto_3

    .line 157
    :cond_8
    instance-of v1, v8, Lx0/w;

    .line 158
    .line 159
    if-eqz v1, :cond_9

    .line 160
    .line 161
    move-object v1, v8

    .line 162
    check-cast v1, Lx0/w;

    .line 163
    .line 164
    move-object v2, v12

    .line 165
    move/from16 v3, p1

    .line 166
    .line 167
    move/from16 v4, p2

    .line 168
    .line 169
    move/from16 v5, p3

    .line 170
    .line 171
    move/from16 v6, p4

    .line 172
    .line 173
    invoke-interface/range {v1 .. v6}, Lx0/w;->onNestedScroll(Landroid/view/View;IIII)V

    .line 174
    .line 175
    .line 176
    :cond_9
    :goto_3
    if-eqz v9, :cond_a

    .line 177
    .line 178
    invoke-virtual {v12, v9}, Landroid/view/View;->getLocationInWindow([I)V

    .line 179
    .line 180
    .line 181
    aget v1, v9, v10

    .line 182
    .line 183
    sub-int/2addr v1, v13

    .line 184
    aput v1, v9, v10

    .line 185
    .line 186
    aget v1, v9, v11

    .line 187
    .line 188
    sub-int/2addr v1, v14

    .line 189
    aput v1, v9, v11

    .line 190
    .line 191
    :cond_a
    return v11

    .line 192
    :cond_b
    :goto_4
    return v10
.end method

.method public final e(I)Landroid/view/ViewParent;
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return-object p1

    .line 8
    :cond_0
    iget-object p1, p0, Lx0/t;->b:Landroid/view/ViewParent;

    .line 9
    .line 10
    return-object p1

    .line 11
    :cond_1
    iget-object p1, p0, Lx0/t;->a:Landroid/view/ViewParent;

    .line 12
    .line 13
    return-object p1
.end method

.method public final f(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lx0/t;->e(I)Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    return p1
.end method

.method public final g(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lx0/t;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lx0/b1;->a:Ljava/util/WeakHashMap;

    .line 6
    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    .line 9
    iget-object v1, p0, Lx0/t;->c:Landroid/view/ViewGroup;

    .line 10
    .line 11
    const/16 v2, 0x15

    .line 12
    .line 13
    if-lt v0, v2, :cond_0

    .line 14
    .line 15
    invoke-static {v1}, Lx0/p0;->z(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    check-cast v1, Lx0/s;

    .line 20
    .line 21
    invoke-interface {v1}, Lx0/s;->stopNestedScroll()V

    .line 22
    .line 23
    .line 24
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lx0/t;->d:Z

    .line 25
    .line 26
    return-void
.end method

.method public final h(II)Z
    .locals 8

    .line 1
    invoke-virtual {p0, p2}, Lx0/t;->f(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-boolean v0, p0, Lx0/t;->d:Z

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v0, :cond_b

    .line 13
    .line 14
    iget-object v0, p0, Lx0/t;->c:Landroid/view/ViewGroup;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    move-object v4, v0

    .line 21
    :goto_0
    if-eqz v3, :cond_b

    .line 22
    .line 23
    instance-of v5, v3, Lx0/u;

    .line 24
    .line 25
    const/16 v6, 0x15

    .line 26
    .line 27
    if-eqz v5, :cond_1

    .line 28
    .line 29
    move-object v7, v3

    .line 30
    check-cast v7, Lx0/u;

    .line 31
    .line 32
    invoke-interface {v7, v4, v0, p1, p2}, Lx0/u;->d(Landroid/view/View;Landroid/view/View;II)Z

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    goto :goto_2

    .line 37
    :cond_1
    if-nez p2, :cond_3

    .line 38
    .line 39
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 40
    .line 41
    if-lt v7, v6, :cond_2

    .line 42
    .line 43
    :try_start_0
    invoke-static {v3, v4, v0, p1}, Lx0/i1;->f(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z

    .line 44
    .line 45
    .line 46
    move-result v7
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    goto :goto_2

    .line 48
    :catch_0
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    instance-of v7, v3, Lx0/w;

    .line 53
    .line 54
    if-eqz v7, :cond_3

    .line 55
    .line 56
    move-object v7, v3

    .line 57
    check-cast v7, Lx0/w;

    .line 58
    .line 59
    invoke-interface {v7, v4, v0, p1}, Lx0/w;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    goto :goto_2

    .line 64
    :cond_3
    :goto_1
    const/4 v7, 0x0

    .line 65
    :goto_2
    if-eqz v7, :cond_9

    .line 66
    .line 67
    if-eqz p2, :cond_5

    .line 68
    .line 69
    if-eq p2, v1, :cond_4

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_4
    iput-object v3, p0, Lx0/t;->b:Landroid/view/ViewParent;

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_5
    iput-object v3, p0, Lx0/t;->a:Landroid/view/ViewParent;

    .line 76
    .line 77
    :goto_3
    if-eqz v5, :cond_6

    .line 78
    .line 79
    check-cast v3, Lx0/u;

    .line 80
    .line 81
    invoke-interface {v3, v4, v0, p1, p2}, Lx0/u;->e(Landroid/view/View;Landroid/view/View;II)V

    .line 82
    .line 83
    .line 84
    goto :goto_4

    .line 85
    :cond_6
    if-nez p2, :cond_8

    .line 86
    .line 87
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 88
    .line 89
    if-lt p2, v6, :cond_7

    .line 90
    .line 91
    :try_start_1
    invoke-static {v3, v4, v0, p1}, Lx0/i1;->e(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_1

    .line 92
    .line 93
    .line 94
    goto :goto_4

    .line 95
    :catch_1
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    goto :goto_4

    .line 99
    :cond_7
    instance-of p2, v3, Lx0/w;

    .line 100
    .line 101
    if-eqz p2, :cond_8

    .line 102
    .line 103
    check-cast v3, Lx0/w;

    .line 104
    .line 105
    invoke-interface {v3, v4, v0, p1}, Lx0/w;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 106
    .line 107
    .line 108
    :cond_8
    :goto_4
    return v1

    .line 109
    :cond_9
    instance-of v5, v3, Landroid/view/View;

    .line 110
    .line 111
    if-eqz v5, :cond_a

    .line 112
    .line 113
    move-object v4, v3

    .line 114
    check-cast v4, Landroid/view/View;

    .line 115
    .line 116
    :cond_a
    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    goto :goto_0

    .line 121
    :cond_b
    return v2
.end method

.method public final i(I)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lx0/t;->e(I)Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    instance-of v1, v0, Lx0/u;

    .line 8
    .line 9
    iget-object v2, p0, Lx0/t;->c:Landroid/view/ViewGroup;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    check-cast v0, Lx0/u;

    .line 14
    .line 15
    invoke-interface {v0, p1, v2}, Lx0/u;->a(ILandroid/view/View;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    if-nez p1, :cond_2

    .line 20
    .line 21
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 22
    .line 23
    const/16 v3, 0x15

    .line 24
    .line 25
    if-lt v1, v3, :cond_1

    .line 26
    .line 27
    :try_start_0
    invoke-static {v0, v2}, Lx0/i1;->g(Landroid/view/ViewParent;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    instance-of v1, v0, Lx0/w;

    .line 36
    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    check-cast v0, Lx0/w;

    .line 40
    .line 41
    invoke-interface {v0, v2}, Lx0/w;->onStopNestedScroll(Landroid/view/View;)V

    .line 42
    .line 43
    .line 44
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 45
    if-eqz p1, :cond_4

    .line 46
    .line 47
    const/4 v1, 0x1

    .line 48
    if-eq p1, v1, :cond_3

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_3
    iput-object v0, p0, Lx0/t;->b:Landroid/view/ViewParent;

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_4
    iput-object v0, p0, Lx0/t;->a:Landroid/view/ViewParent;

    .line 55
    .line 56
    :cond_5
    :goto_1
    return-void
.end method
