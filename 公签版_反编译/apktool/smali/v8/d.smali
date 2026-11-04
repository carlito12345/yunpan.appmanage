.class public final Lv8/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# instance fields
.field public a:I

.field public b:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lv8/d;->a:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lv8/d;->a:I

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    .line 8
    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iput v2, v0, Lv8/d;->a:I

    .line 13
    .line 14
    iget-object v1, v0, Lv8/d;->b:Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lv8/a;

    .line 24
    .line 25
    if-nez v1, :cond_2

    .line 26
    .line 27
    return-void

    .line 28
    :cond_2
    iget v2, v0, Lv8/d;->a:I

    .line 29
    .line 30
    iget-boolean v3, v1, Lv8/a;->f:Z

    .line 31
    .line 32
    if-nez v3, :cond_3

    .line 33
    .line 34
    goto/16 :goto_7

    .line 35
    .line 36
    :cond_3
    iget-object v5, v1, Lv8/a;->j:Lw8/b;

    .line 37
    .line 38
    if-eqz v5, :cond_e

    .line 39
    .line 40
    iget-object v3, v5, Lw8/b;->b:Lv8/h;

    .line 41
    .line 42
    if-nez v3, :cond_4

    .line 43
    .line 44
    goto/16 :goto_6

    .line 45
    .line 46
    :cond_4
    iget-object v10, v5, Lw8/b;->a:Lv8/a;

    .line 47
    .line 48
    if-nez v10, :cond_5

    .line 49
    .line 50
    goto/16 :goto_6

    .line 51
    .line 52
    :cond_5
    iget-object v4, v10, Lv8/a;->e:Landroid/view/WindowManager$LayoutParams;

    .line 53
    .line 54
    iget v6, v5, Lw8/b;->e:I

    .line 55
    .line 56
    iget v7, v5, Lw8/b;->f:I

    .line 57
    .line 58
    iget v8, v5, Lw8/b;->g:I

    .line 59
    .line 60
    iget v9, v5, Lw8/b;->h:I

    .line 61
    .line 62
    if-nez v10, :cond_6

    .line 63
    .line 64
    :goto_0
    const/4 v12, 0x0

    .line 65
    goto :goto_1

    .line 66
    :cond_6
    iget-object v12, v10, Lv8/a;->c:Lv8/h;

    .line 67
    .line 68
    if-nez v12, :cond_7

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_7
    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    .line 72
    .line 73
    .line 74
    move-result v12

    .line 75
    :goto_1
    iget-object v13, v5, Lw8/b;->a:Lv8/a;

    .line 76
    .line 77
    if-nez v13, :cond_8

    .line 78
    .line 79
    :goto_2
    const/4 v13, 0x0

    .line 80
    goto :goto_3

    .line 81
    :cond_8
    iget-object v13, v13, Lv8/a;->c:Lv8/h;

    .line 82
    .line 83
    if-nez v13, :cond_9

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_9
    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    .line 87
    .line 88
    .line 89
    move-result v13

    .line 90
    :goto_3
    iget v14, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 91
    .line 92
    invoke-virtual {v3}, Landroid/view/View;->getLayoutDirection()I

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    invoke-static {v14, v3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    iget v14, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 101
    .line 102
    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 103
    .line 104
    and-int/lit8 v15, v3, 0x7

    .line 105
    .line 106
    const/4 v11, 0x3

    .line 107
    if-ne v15, v11, :cond_a

    .line 108
    .line 109
    goto :goto_4

    .line 110
    :cond_a
    const/4 v11, 0x5

    .line 111
    if-ne v15, v11, :cond_b

    .line 112
    .line 113
    sub-int v8, v6, v8

    .line 114
    .line 115
    sub-int v14, v8, v14

    .line 116
    .line 117
    goto :goto_4

    .line 118
    :cond_b
    sub-int v8, v6, v8

    .line 119
    .line 120
    sub-int/2addr v8, v12

    .line 121
    div-int/lit8 v8, v8, 0x2

    .line 122
    .line 123
    add-int/2addr v14, v8

    .line 124
    :goto_4
    and-int/lit8 v3, v3, 0x70

    .line 125
    .line 126
    const/16 v8, 0x30

    .line 127
    .line 128
    if-ne v3, v8, :cond_c

    .line 129
    .line 130
    goto :goto_5

    .line 131
    :cond_c
    const/16 v8, 0x50

    .line 132
    .line 133
    if-ne v3, v8, :cond_d

    .line 134
    .line 135
    sub-int v3, v7, v9

    .line 136
    .line 137
    sub-int v4, v3, v4

    .line 138
    .line 139
    goto :goto_5

    .line 140
    :cond_d
    sub-int v3, v7, v9

    .line 141
    .line 142
    sub-int/2addr v3, v13

    .line 143
    div-int/lit8 v3, v3, 0x2

    .line 144
    .line 145
    add-int/2addr v4, v3

    .line 146
    :goto_5
    sub-int/2addr v6, v12

    .line 147
    const/4 v3, 0x0

    .line 148
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    .line 149
    .line 150
    .line 151
    move-result v6

    .line 152
    int-to-float v8, v14

    .line 153
    int-to-float v6, v6

    .line 154
    invoke-virtual {v5, v8, v6}, Lw8/b;->a(FF)F

    .line 155
    .line 156
    .line 157
    move-result v8

    .line 158
    sub-int/2addr v7, v13

    .line 159
    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    int-to-float v4, v4

    .line 164
    int-to-float v3, v3

    .line 165
    invoke-virtual {v5, v4, v3}, Lw8/b;->a(FF)F

    .line 166
    .line 167
    .line 168
    move-result v9

    .line 169
    new-instance v3, Lw8/a;

    .line 170
    .line 171
    move-object v4, v3

    .line 172
    move v6, v12

    .line 173
    move v7, v13

    .line 174
    invoke-direct/range {v4 .. v9}, Lw8/a;-><init>(Lw8/b;IIFF)V

    .line 175
    .line 176
    .line 177
    const-wide/16 v4, 0x64

    .line 178
    .line 179
    invoke-virtual {v10, v3, v4, v5}, Lv8/a;->i(Ljava/lang/Runnable;J)V

    .line 180
    .line 181
    .line 182
    :cond_e
    :goto_6
    new-instance v3, Lha/if;

    .line 183
    .line 184
    invoke-direct {v3, v1, v2}, Lha/if;-><init>(Lv8/a;I)V

    .line 185
    .line 186
    .line 187
    const-wide/16 v4, 0x6e

    .line 188
    .line 189
    invoke-virtual {v1, v3, v4, v5}, Lv8/a;->i(Ljava/lang/Runnable;J)V

    .line 190
    .line 191
    .line 192
    :goto_7
    return-void
.end method

.method public final onLowMemory()V
    .locals 0

    .line 1
    return-void
.end method
