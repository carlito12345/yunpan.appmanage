.class public final Lh4/i;
.super Lh4/t;
.source "SourceFile"


# static fields
.field public static final A:[Ljava/lang/String;


# instance fields
.field public final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/String;

    .line 3
    .line 4
    const-string v1, "android:visibility:visibility"

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    const-string v1, "android:visibility:parent"

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sput-object v0, Lh4/i;->A:[Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lh4/t;-><init>()V

    const/4 v0, 0x3

    .line 4
    iput v0, p0, Lh4/i;->z:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lh4/i;-><init>()V

    .line 2
    iput p1, p0, Lh4/i;->z:I

    return-void
.end method

.method public static H(Lh4/a0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lh4/a0;->b:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lh4/a0;->a:Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v2, "android:visibility:visibility"

    .line 14
    .line 15
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lh4/a0;->b:Landroid/view/View;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v2, "android:visibility:parent"

    .line 25
    .line 26
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x2

    .line 30
    new-array v0, v0, [I

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 33
    .line 34
    .line 35
    const-string p0, "android:visibility:screenLocation"

    .line 36
    .line 37
    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public static J(Lh4/a0;Lh4/a0;)Lh4/m0;
    .locals 8

    .line 1
    new-instance v0, Lh4/m0;

    .line 2
    .line 3
    invoke-direct {v0}, Lh4/m0;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-boolean v1, v0, Lh4/m0;->c:Z

    .line 8
    .line 9
    iput-boolean v1, v0, Lh4/m0;->d:Z

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, -0x1

    .line 13
    const-string v4, "android:visibility:parent"

    .line 14
    .line 15
    const-string v5, "android:visibility:visibility"

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    iget-object v6, p0, Lh4/a0;->a:Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v7

    .line 25
    if-eqz v7, :cond_0

    .line 26
    .line 27
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    check-cast v7, Ljava/lang/Integer;

    .line 32
    .line 33
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    iput v7, v0, Lh4/m0;->a:I

    .line 38
    .line 39
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    check-cast v6, Landroid/view/ViewGroup;

    .line 44
    .line 45
    iput-object v6, v0, Lh4/m0;->e:Ljava/lang/Object;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    iput v3, v0, Lh4/m0;->a:I

    .line 49
    .line 50
    iput-object v2, v0, Lh4/m0;->e:Ljava/lang/Object;

    .line 51
    .line 52
    :goto_0
    if-eqz p1, :cond_1

    .line 53
    .line 54
    iget-object v6, p1, Lh4/a0;->a:Ljava/util/HashMap;

    .line 55
    .line 56
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    if-eqz v7, :cond_1

    .line 61
    .line 62
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Ljava/lang/Integer;

    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    iput v2, v0, Lh4/m0;->b:I

    .line 73
    .line 74
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    check-cast v2, Landroid/view/ViewGroup;

    .line 79
    .line 80
    iput-object v2, v0, Lh4/m0;->f:Ljava/lang/Object;

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_1
    iput v3, v0, Lh4/m0;->b:I

    .line 84
    .line 85
    iput-object v2, v0, Lh4/m0;->f:Ljava/lang/Object;

    .line 86
    .line 87
    :goto_1
    const/4 v2, 0x1

    .line 88
    if-eqz p0, :cond_6

    .line 89
    .line 90
    if-eqz p1, :cond_6

    .line 91
    .line 92
    iget p0, v0, Lh4/m0;->a:I

    .line 93
    .line 94
    iget p1, v0, Lh4/m0;->b:I

    .line 95
    .line 96
    if-ne p0, p1, :cond_2

    .line 97
    .line 98
    iget-object v3, v0, Lh4/m0;->e:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v3, Landroid/view/ViewGroup;

    .line 101
    .line 102
    iget-object v4, v0, Lh4/m0;->f:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v4, Landroid/view/ViewGroup;

    .line 105
    .line 106
    if-ne v3, v4, :cond_2

    .line 107
    .line 108
    return-object v0

    .line 109
    :cond_2
    if-eq p0, p1, :cond_4

    .line 110
    .line 111
    if-nez p0, :cond_3

    .line 112
    .line 113
    iput-boolean v1, v0, Lh4/m0;->d:Z

    .line 114
    .line 115
    iput-boolean v2, v0, Lh4/m0;->c:Z

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_3
    if-nez p1, :cond_8

    .line 119
    .line 120
    iput-boolean v2, v0, Lh4/m0;->d:Z

    .line 121
    .line 122
    iput-boolean v2, v0, Lh4/m0;->c:Z

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_4
    iget-object p0, v0, Lh4/m0;->f:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast p0, Landroid/view/ViewGroup;

    .line 128
    .line 129
    if-nez p0, :cond_5

    .line 130
    .line 131
    iput-boolean v1, v0, Lh4/m0;->d:Z

    .line 132
    .line 133
    iput-boolean v2, v0, Lh4/m0;->c:Z

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_5
    iget-object p0, v0, Lh4/m0;->e:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast p0, Landroid/view/ViewGroup;

    .line 139
    .line 140
    if-nez p0, :cond_8

    .line 141
    .line 142
    iput-boolean v2, v0, Lh4/m0;->d:Z

    .line 143
    .line 144
    iput-boolean v2, v0, Lh4/m0;->c:Z

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_6
    if-nez p0, :cond_7

    .line 148
    .line 149
    iget p0, v0, Lh4/m0;->b:I

    .line 150
    .line 151
    if-nez p0, :cond_7

    .line 152
    .line 153
    iput-boolean v2, v0, Lh4/m0;->d:Z

    .line 154
    .line 155
    iput-boolean v2, v0, Lh4/m0;->c:Z

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_7
    if-nez p1, :cond_8

    .line 159
    .line 160
    iget p0, v0, Lh4/m0;->a:I

    .line 161
    .line 162
    if-nez p0, :cond_8

    .line 163
    .line 164
    iput-boolean v1, v0, Lh4/m0;->d:Z

    .line 165
    .line 166
    iput-boolean v2, v0, Lh4/m0;->c:Z

    .line 167
    .line 168
    :cond_8
    :goto_2
    return-object v0
.end method


# virtual methods
.method public final I(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v1, p2, p3

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return-object p1

    .line 8
    :cond_0
    sget-object v1, Lh4/d0;->a:Lgf/g;

    .line 9
    .line 10
    invoke-virtual {v1, p1, p2}, Lgf/g;->H(Landroid/view/View;F)V

    .line 11
    .line 12
    .line 13
    sget-object p2, Lh4/d0;->b:Landroidx/leanback/widget/a0;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    new-array v1, v1, [F

    .line 17
    .line 18
    aput p3, v1, v0

    .line 19
    .line 20
    invoke-static {p1, p2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    new-instance p3, Landroidx/recyclerview/widget/b0;

    .line 25
    .line 26
    invoke-direct {p3, p1}, Landroidx/recyclerview/widget/b0;-><init>(Landroid/view/View;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 30
    .line 31
    .line 32
    new-instance p3, Lh4/h;

    .line 33
    .line 34
    invoke-direct {p3, v0, p1}, Lh4/h;-><init>(ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p3}, Lh4/t;->a(Lh4/s;)V

    .line 38
    .line 39
    .line 40
    return-object p2
.end method

.method public final d(Lh4/a0;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lh4/i;->H(Lh4/a0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final g(Lh4/a0;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lh4/i;->H(Lh4/a0;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lh4/a0;->a:Ljava/util/HashMap;

    .line 5
    .line 6
    sget-object v1, Lh4/d0;->a:Lgf/g;

    .line 7
    .line 8
    iget-object p1, p1, Lh4/a0;->b:Landroid/view/View;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Lgf/g;->C(Landroid/view/View;)F

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v1, "android:fade:transitionAlpha"

    .line 19
    .line 20
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final k(Landroid/view/ViewGroup;Lh4/a0;Lh4/a0;)Landroid/animation/Animator;
    .locals 22

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
    move-object/from16 v3, p3

    .line 8
    .line 9
    iget v4, v0, Lh4/i;->z:I

    .line 10
    .line 11
    invoke-static/range {p2 .. p3}, Lh4/i;->J(Lh4/a0;Lh4/a0;)Lh4/m0;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    iget-boolean v6, v5, Lh4/m0;->c:Z

    .line 16
    .line 17
    if-eqz v6, :cond_0

    .line 18
    .line 19
    iget-object v6, v5, Lh4/m0;->e:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v6, Landroid/view/ViewGroup;

    .line 22
    .line 23
    if-nez v6, :cond_1

    .line 24
    .line 25
    iget-object v6, v5, Lh4/m0;->f:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v6, Landroid/view/ViewGroup;

    .line 28
    .line 29
    if-eqz v6, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move-object v5, v0

    .line 33
    const/4 v0, 0x0

    .line 34
    goto/16 :goto_18

    .line 35
    .line 36
    :cond_1
    :goto_0
    iget-boolean v6, v5, Lh4/m0;->d:Z

    .line 37
    .line 38
    const-string v8, "android:fade:transitionAlpha"

    .line 39
    .line 40
    const/4 v9, 0x0

    .line 41
    const/high16 v10, 0x3f800000    # 1.0f

    .line 42
    .line 43
    const/4 v11, 0x0

    .line 44
    const/4 v12, 0x1

    .line 45
    if-eqz v6, :cond_7

    .line 46
    .line 47
    and-int/lit8 v1, v4, 0x1

    .line 48
    .line 49
    if-ne v1, v12, :cond_3

    .line 50
    .line 51
    if-nez v3, :cond_2

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    iget-object v1, v3, Lh4/a0;->b:Landroid/view/View;

    .line 55
    .line 56
    if-nez v2, :cond_4

    .line 57
    .line 58
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    check-cast v3, Landroid/view/View;

    .line 63
    .line 64
    invoke-virtual {v0, v3, v11}, Lh4/t;->n(Landroid/view/View;Z)Lh4/a0;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-virtual {v0, v3, v11}, Lh4/t;->q(Landroid/view/View;Z)Lh4/a0;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-static {v4, v3}, Lh4/i;->J(Lh4/a0;Lh4/a0;)Lh4/m0;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    iget-boolean v3, v3, Lh4/m0;->c:Z

    .line 77
    .line 78
    if-eqz v3, :cond_4

    .line 79
    .line 80
    :cond_3
    :goto_1
    const/4 v7, 0x0

    .line 81
    goto :goto_4

    .line 82
    :cond_4
    if-eqz v2, :cond_5

    .line 83
    .line 84
    iget-object v2, v2, Lh4/a0;->a:Ljava/util/HashMap;

    .line 85
    .line 86
    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    check-cast v2, Ljava/lang/Float;

    .line 91
    .line 92
    if-eqz v2, :cond_5

    .line 93
    .line 94
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    goto :goto_2

    .line 99
    :cond_5
    const/4 v2, 0x0

    .line 100
    :goto_2
    cmpl-float v3, v2, v10

    .line 101
    .line 102
    if-nez v3, :cond_6

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_6
    move v9, v2

    .line 106
    :goto_3
    invoke-virtual {v0, v1, v9, v10}, Lh4/i;->I(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    :goto_4
    return-object v7

    .line 111
    :cond_7
    iget v5, v5, Lh4/m0;->b:I

    .line 112
    .line 113
    const/4 v6, 0x2

    .line 114
    and-int/2addr v4, v6

    .line 115
    if-eq v4, v6, :cond_9

    .line 116
    .line 117
    :goto_5
    move-object v5, v0

    .line 118
    :cond_8
    const/4 v7, 0x0

    .line 119
    goto/16 :goto_17

    .line 120
    .line 121
    :cond_9
    if-nez v2, :cond_a

    .line 122
    .line 123
    goto :goto_5

    .line 124
    :cond_a
    if-eqz v3, :cond_b

    .line 125
    .line 126
    iget-object v3, v3, Lh4/a0;->b:Landroid/view/View;

    .line 127
    .line 128
    goto :goto_6

    .line 129
    :cond_b
    const/4 v3, 0x0

    .line 130
    :goto_6
    iget-object v4, v2, Lh4/a0;->b:Landroid/view/View;

    .line 131
    .line 132
    const v13, 0x7f0b0291

    .line 133
    .line 134
    .line 135
    invoke-virtual {v4, v13}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v14

    .line 139
    check-cast v14, Landroid/view/View;

    .line 140
    .line 141
    if-eqz v14, :cond_c

    .line 142
    .line 143
    move-object v0, v2

    .line 144
    move/from16 v19, v5

    .line 145
    .line 146
    move-object/from16 v18, v8

    .line 147
    .line 148
    const/high16 v2, 0x3f800000    # 1.0f

    .line 149
    .line 150
    const/4 v7, 0x0

    .line 151
    goto/16 :goto_12

    .line 152
    .line 153
    :cond_c
    if-eqz v3, :cond_10

    .line 154
    .line 155
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 156
    .line 157
    .line 158
    move-result-object v14

    .line 159
    if-nez v14, :cond_d

    .line 160
    .line 161
    goto :goto_9

    .line 162
    :cond_d
    const/4 v14, 0x4

    .line 163
    if-ne v5, v14, :cond_e

    .line 164
    .line 165
    goto :goto_7

    .line 166
    :cond_e
    if-ne v4, v3, :cond_f

    .line 167
    .line 168
    :goto_7
    move-object v14, v3

    .line 169
    const/4 v3, 0x0

    .line 170
    :goto_8
    const/4 v15, 0x0

    .line 171
    goto :goto_a

    .line 172
    :cond_f
    const/4 v3, 0x0

    .line 173
    const/4 v14, 0x0

    .line 174
    const/4 v15, 0x1

    .line 175
    goto :goto_a

    .line 176
    :cond_10
    :goto_9
    if-eqz v3, :cond_f

    .line 177
    .line 178
    const/4 v14, 0x0

    .line 179
    goto :goto_8

    .line 180
    :goto_a
    if-eqz v15, :cond_1b

    .line 181
    .line 182
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 183
    .line 184
    .line 185
    move-result-object v15

    .line 186
    if-nez v15, :cond_11

    .line 187
    .line 188
    move-object v0, v2

    .line 189
    move/from16 v19, v5

    .line 190
    .line 191
    move-object/from16 v18, v8

    .line 192
    .line 193
    move-object v7, v14

    .line 194
    const/high16 v2, 0x3f800000    # 1.0f

    .line 195
    .line 196
    const/4 v12, 0x0

    .line 197
    move-object v14, v4

    .line 198
    goto/16 :goto_12

    .line 199
    .line 200
    :cond_11
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 201
    .line 202
    .line 203
    move-result-object v15

    .line 204
    instance-of v15, v15, Landroid/view/View;

    .line 205
    .line 206
    if-eqz v15, :cond_1b

    .line 207
    .line 208
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 209
    .line 210
    .line 211
    move-result-object v15

    .line 212
    check-cast v15, Landroid/view/View;

    .line 213
    .line 214
    invoke-virtual {v0, v15, v12}, Lh4/t;->q(Landroid/view/View;Z)Lh4/a0;

    .line 215
    .line 216
    .line 217
    move-result-object v7

    .line 218
    invoke-virtual {v0, v15, v12}, Lh4/t;->n(Landroid/view/View;Z)Lh4/a0;

    .line 219
    .line 220
    .line 221
    move-result-object v13

    .line 222
    invoke-static {v7, v13}, Lh4/i;->J(Lh4/a0;Lh4/a0;)Lh4/m0;

    .line 223
    .line 224
    .line 225
    move-result-object v7

    .line 226
    iget-boolean v7, v7, Lh4/m0;->c:Z

    .line 227
    .line 228
    if-nez v7, :cond_1a

    .line 229
    .line 230
    sget-boolean v3, Lh4/z;->a:Z

    .line 231
    .line 232
    new-instance v3, Landroid/graphics/Matrix;

    .line 233
    .line 234
    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v15}, Landroid/view/View;->getScrollX()I

    .line 238
    .line 239
    .line 240
    move-result v7

    .line 241
    neg-int v7, v7

    .line 242
    int-to-float v7, v7

    .line 243
    invoke-virtual {v15}, Landroid/view/View;->getScrollY()I

    .line 244
    .line 245
    .line 246
    move-result v13

    .line 247
    neg-int v13, v13

    .line 248
    int-to-float v13, v13

    .line 249
    invoke-virtual {v3, v7, v13}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 250
    .line 251
    .line 252
    sget-object v7, Lh4/d0;->a:Lgf/g;

    .line 253
    .line 254
    invoke-virtual {v7, v4, v3}, Lgf/g;->J(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v7, v1, v3}, Lgf/g;->K(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 258
    .line 259
    .line 260
    new-instance v7, Landroid/graphics/RectF;

    .line 261
    .line 262
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 263
    .line 264
    .line 265
    move-result v13

    .line 266
    int-to-float v13, v13

    .line 267
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 268
    .line 269
    .line 270
    move-result v15

    .line 271
    int-to-float v15, v15

    .line 272
    invoke-direct {v7, v9, v9, v13, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v3, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 276
    .line 277
    .line 278
    iget v13, v7, Landroid/graphics/RectF;->left:F

    .line 279
    .line 280
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    .line 281
    .line 282
    .line 283
    move-result v13

    .line 284
    iget v15, v7, Landroid/graphics/RectF;->top:F

    .line 285
    .line 286
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    .line 287
    .line 288
    .line 289
    move-result v15

    .line 290
    iget v9, v7, Landroid/graphics/RectF;->right:F

    .line 291
    .line 292
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    .line 293
    .line 294
    .line 295
    move-result v9

    .line 296
    iget v6, v7, Landroid/graphics/RectF;->bottom:F

    .line 297
    .line 298
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 299
    .line 300
    .line 301
    move-result v6

    .line 302
    new-instance v11, Landroid/widget/ImageView;

    .line 303
    .line 304
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 305
    .line 306
    .line 307
    move-result-object v10

    .line 308
    invoke-direct {v11, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 309
    .line 310
    .line 311
    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 312
    .line 313
    invoke-virtual {v11, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 314
    .line 315
    .line 316
    sget-boolean v10, Lh4/z;->a:Z

    .line 317
    .line 318
    if-eqz v10, :cond_13

    .line 319
    .line 320
    invoke-static {v4}, La2/p0;->v(Landroid/view/View;)Z

    .line 321
    .line 322
    .line 323
    move-result v10

    .line 324
    xor-int/2addr v10, v12

    .line 325
    if-nez v1, :cond_12

    .line 326
    .line 327
    goto :goto_b

    .line 328
    :cond_12
    invoke-static/range {p1 .. p1}, Lcom/hierynomus/security/jce/a;->w(Landroid/view/ViewGroup;)Z

    .line 329
    .line 330
    .line 331
    move-result v16

    .line 332
    goto :goto_c

    .line 333
    :cond_13
    const/4 v10, 0x0

    .line 334
    :goto_b
    const/16 v16, 0x0

    .line 335
    .line 336
    :goto_c
    sget-boolean v17, Lh4/z;->b:Z

    .line 337
    .line 338
    if-eqz v17, :cond_15

    .line 339
    .line 340
    if-eqz v10, :cond_15

    .line 341
    .line 342
    if-nez v16, :cond_14

    .line 343
    .line 344
    move/from16 v19, v5

    .line 345
    .line 346
    move-object/from16 v18, v8

    .line 347
    .line 348
    move-object/from16 v16, v14

    .line 349
    .line 350
    const/4 v0, 0x0

    .line 351
    goto/16 :goto_f

    .line 352
    .line 353
    :cond_14
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 354
    .line 355
    .line 356
    move-result-object v16

    .line 357
    move-object/from16 v12, v16

    .line 358
    .line 359
    check-cast v12, Landroid/view/ViewGroup;

    .line 360
    .line 361
    invoke-virtual {v12, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 362
    .line 363
    .line 364
    move-result v16

    .line 365
    move-object/from16 v18, v12

    .line 366
    .line 367
    invoke-static/range {p1 .. p1}, Lb1/o;->f(Landroid/view/ViewGroup;)Landroid/view/ViewGroupOverlay;

    .line 368
    .line 369
    .line 370
    move-result-object v12

    .line 371
    invoke-static {v12, v4}, Lb1/o;->o(Landroid/view/ViewGroupOverlay;Landroid/view/View;)V

    .line 372
    .line 373
    .line 374
    move-object/from16 v12, v18

    .line 375
    .line 376
    move/from16 v21, v16

    .line 377
    .line 378
    move-object/from16 v16, v14

    .line 379
    .line 380
    move/from16 v14, v21

    .line 381
    .line 382
    goto :goto_d

    .line 383
    :cond_15
    move-object/from16 v16, v14

    .line 384
    .line 385
    const/4 v12, 0x0

    .line 386
    const/4 v14, 0x0

    .line 387
    :goto_d
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    .line 388
    .line 389
    .line 390
    move-result v18

    .line 391
    move/from16 v19, v5

    .line 392
    .line 393
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    .line 394
    .line 395
    .line 396
    move-result v5

    .line 397
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    .line 398
    .line 399
    .line 400
    move-result v18

    .line 401
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    .line 402
    .line 403
    .line 404
    move-result v0

    .line 405
    if-lez v5, :cond_17

    .line 406
    .line 407
    if-lez v0, :cond_17

    .line 408
    .line 409
    move-object/from16 v18, v8

    .line 410
    .line 411
    mul-int v8, v5, v0

    .line 412
    .line 413
    int-to-float v8, v8

    .line 414
    const/high16 v20, 0x49800000    # 1048576.0f

    .line 415
    .line 416
    div-float v8, v20, v8

    .line 417
    .line 418
    const/high16 v2, 0x3f800000    # 1.0f

    .line 419
    .line 420
    invoke-static {v2, v8}, Ljava/lang/Math;->min(FF)F

    .line 421
    .line 422
    .line 423
    move-result v8

    .line 424
    int-to-float v5, v5

    .line 425
    mul-float v5, v5, v8

    .line 426
    .line 427
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 428
    .line 429
    .line 430
    move-result v5

    .line 431
    int-to-float v0, v0

    .line 432
    mul-float v0, v0, v8

    .line 433
    .line 434
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 435
    .line 436
    .line 437
    move-result v0

    .line 438
    iget v2, v7, Landroid/graphics/RectF;->left:F

    .line 439
    .line 440
    neg-float v2, v2

    .line 441
    iget v7, v7, Landroid/graphics/RectF;->top:F

    .line 442
    .line 443
    neg-float v7, v7

    .line 444
    invoke-virtual {v3, v2, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 445
    .line 446
    .line 447
    invoke-virtual {v3, v8, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 448
    .line 449
    .line 450
    sget-boolean v2, Lh4/z;->c:Z

    .line 451
    .line 452
    if-eqz v2, :cond_16

    .line 453
    .line 454
    new-instance v2, Landroid/graphics/Picture;

    .line 455
    .line 456
    invoke-direct {v2}, Landroid/graphics/Picture;-><init>()V

    .line 457
    .line 458
    .line 459
    invoke-virtual {v2, v5, v0}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    .line 460
    .line 461
    .line 462
    move-result-object v0

    .line 463
    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v4, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 467
    .line 468
    .line 469
    invoke-virtual {v2}, Landroid/graphics/Picture;->endRecording()V

    .line 470
    .line 471
    .line 472
    invoke-static {v2}, Landroidx/emoji2/text/b;->e(Landroid/graphics/Picture;)Landroid/graphics/Bitmap;

    .line 473
    .line 474
    .line 475
    move-result-object v0

    .line 476
    goto :goto_e

    .line 477
    :cond_16
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 478
    .line 479
    invoke-static {v5, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 480
    .line 481
    .line 482
    move-result-object v0

    .line 483
    new-instance v2, Landroid/graphics/Canvas;

    .line 484
    .line 485
    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 486
    .line 487
    .line 488
    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 489
    .line 490
    .line 491
    invoke-virtual {v4, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 492
    .line 493
    .line 494
    goto :goto_e

    .line 495
    :cond_17
    move-object/from16 v18, v8

    .line 496
    .line 497
    const/4 v0, 0x0

    .line 498
    :goto_e
    if-eqz v17, :cond_18

    .line 499
    .line 500
    if-eqz v10, :cond_18

    .line 501
    .line 502
    invoke-static/range {p1 .. p1}, Lb1/o;->f(Landroid/view/ViewGroup;)Landroid/view/ViewGroupOverlay;

    .line 503
    .line 504
    .line 505
    move-result-object v2

    .line 506
    invoke-static {v2, v4}, Lb1/o;->w(Landroid/view/ViewGroupOverlay;Landroid/view/View;)V

    .line 507
    .line 508
    .line 509
    invoke-virtual {v12, v4, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 510
    .line 511
    .line 512
    :cond_18
    :goto_f
    if-eqz v0, :cond_19

    .line 513
    .line 514
    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 515
    .line 516
    .line 517
    :cond_19
    sub-int v0, v9, v13

    .line 518
    .line 519
    const/high16 v2, 0x40000000    # 2.0f

    .line 520
    .line 521
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 522
    .line 523
    .line 524
    move-result v0

    .line 525
    sub-int v3, v6, v15

    .line 526
    .line 527
    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 528
    .line 529
    .line 530
    move-result v2

    .line 531
    invoke-virtual {v11, v0, v2}, Landroid/view/View;->measure(II)V

    .line 532
    .line 533
    .line 534
    invoke-virtual {v11, v13, v15, v9, v6}, Landroid/view/View;->layout(IIII)V

    .line 535
    .line 536
    .line 537
    move-object/from16 v0, p2

    .line 538
    .line 539
    move-object v14, v11

    .line 540
    :goto_10
    move-object/from16 v7, v16

    .line 541
    .line 542
    const/high16 v2, 0x3f800000    # 1.0f

    .line 543
    .line 544
    const/4 v12, 0x0

    .line 545
    goto :goto_12

    .line 546
    :cond_1a
    move/from16 v19, v5

    .line 547
    .line 548
    move-object/from16 v18, v8

    .line 549
    .line 550
    move-object/from16 v16, v14

    .line 551
    .line 552
    invoke-virtual {v15}, Landroid/view/View;->getId()I

    .line 553
    .line 554
    .line 555
    move-result v0

    .line 556
    invoke-virtual {v15}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 557
    .line 558
    .line 559
    move-result-object v2

    .line 560
    if-nez v2, :cond_1c

    .line 561
    .line 562
    const/4 v2, -0x1

    .line 563
    if-eq v0, v2, :cond_1c

    .line 564
    .line 565
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 566
    .line 567
    .line 568
    goto :goto_11

    .line 569
    :cond_1b
    move/from16 v19, v5

    .line 570
    .line 571
    move-object/from16 v18, v8

    .line 572
    .line 573
    move-object/from16 v16, v14

    .line 574
    .line 575
    :cond_1c
    :goto_11
    move-object/from16 v0, p2

    .line 576
    .line 577
    move-object v14, v3

    .line 578
    goto :goto_10

    .line 579
    :goto_12
    iget-object v0, v0, Lh4/a0;->a:Ljava/util/HashMap;

    .line 580
    .line 581
    if-eqz v14, :cond_20

    .line 582
    .line 583
    if-nez v12, :cond_1d

    .line 584
    .line 585
    const-string v3, "android:visibility:screenLocation"

    .line 586
    .line 587
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    .line 589
    .line 590
    move-result-object v3

    .line 591
    check-cast v3, [I

    .line 592
    .line 593
    const/4 v5, 0x0

    .line 594
    aget v6, v3, v5

    .line 595
    .line 596
    const/4 v7, 0x1

    .line 597
    aget v3, v3, v7

    .line 598
    .line 599
    const/4 v8, 0x2

    .line 600
    new-array v8, v8, [I

    .line 601
    .line 602
    invoke-virtual {v1, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 603
    .line 604
    .line 605
    aget v5, v8, v5

    .line 606
    .line 607
    sub-int/2addr v6, v5

    .line 608
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    .line 609
    .line 610
    .line 611
    move-result v5

    .line 612
    sub-int/2addr v6, v5

    .line 613
    invoke-virtual {v14, v6}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 614
    .line 615
    .line 616
    aget v5, v8, v7

    .line 617
    .line 618
    sub-int/2addr v3, v5

    .line 619
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    .line 620
    .line 621
    .line 622
    move-result v5

    .line 623
    sub-int/2addr v3, v5

    .line 624
    invoke-virtual {v14, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 625
    .line 626
    .line 627
    invoke-static/range {p1 .. p1}, Landroid/support/v4/media/session/b;->m(Landroid/view/ViewGroup;)La1/i;

    .line 628
    .line 629
    .line 630
    move-result-object v3

    .line 631
    invoke-virtual {v3, v14}, La1/i;->k(Landroid/view/View;)V

    .line 632
    .line 633
    .line 634
    :cond_1d
    sget-object v3, Lh4/d0;->a:Lgf/g;

    .line 635
    .line 636
    invoke-virtual {v3, v14}, Lgf/g;->F(Landroid/view/View;)V

    .line 637
    .line 638
    .line 639
    move-object/from16 v3, v18

    .line 640
    .line 641
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    .line 643
    .line 644
    move-result-object v0

    .line 645
    check-cast v0, Ljava/lang/Float;

    .line 646
    .line 647
    if-eqz v0, :cond_1e

    .line 648
    .line 649
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 650
    .line 651
    .line 652
    move-result v10

    .line 653
    const/4 v0, 0x0

    .line 654
    :goto_13
    move-object/from16 v5, p0

    .line 655
    .line 656
    goto :goto_14

    .line 657
    :cond_1e
    const/4 v0, 0x0

    .line 658
    const/high16 v10, 0x3f800000    # 1.0f

    .line 659
    .line 660
    goto :goto_13

    .line 661
    :goto_14
    invoke-virtual {v5, v14, v10, v0}, Lh4/i;->I(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    .line 662
    .line 663
    .line 664
    move-result-object v7

    .line 665
    if-nez v12, :cond_24

    .line 666
    .line 667
    if-nez v7, :cond_1f

    .line 668
    .line 669
    invoke-static/range {p1 .. p1}, Landroid/support/v4/media/session/b;->m(Landroid/view/ViewGroup;)La1/i;

    .line 670
    .line 671
    .line 672
    move-result-object v0

    .line 673
    invoke-virtual {v0, v14}, La1/i;->D(Landroid/view/View;)V

    .line 674
    .line 675
    .line 676
    goto :goto_17

    .line 677
    :cond_1f
    const v0, 0x7f0b0291

    .line 678
    .line 679
    .line 680
    invoke-virtual {v4, v0, v14}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 681
    .line 682
    .line 683
    new-instance v0, Lh4/k0;

    .line 684
    .line 685
    invoke-direct {v0, v5, v1, v14, v4}, Lh4/k0;-><init>(Lh4/i;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)V

    .line 686
    .line 687
    .line 688
    invoke-virtual {v5, v0}, Lh4/t;->a(Lh4/s;)V

    .line 689
    .line 690
    .line 691
    goto :goto_17

    .line 692
    :cond_20
    move-object/from16 v5, p0

    .line 693
    .line 694
    move-object/from16 v3, v18

    .line 695
    .line 696
    if-eqz v7, :cond_8

    .line 697
    .line 698
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    .line 699
    .line 700
    .line 701
    move-result v1

    .line 702
    sget-object v4, Lh4/d0;->a:Lgf/g;

    .line 703
    .line 704
    const/4 v6, 0x0

    .line 705
    invoke-virtual {v4, v6, v7}, Lgf/g;->I(ILandroid/view/View;)V

    .line 706
    .line 707
    .line 708
    invoke-virtual {v4, v7}, Lgf/g;->F(Landroid/view/View;)V

    .line 709
    .line 710
    .line 711
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    .line 713
    .line 714
    move-result-object v0

    .line 715
    check-cast v0, Ljava/lang/Float;

    .line 716
    .line 717
    if-eqz v0, :cond_21

    .line 718
    .line 719
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 720
    .line 721
    .line 722
    move-result v10

    .line 723
    const/4 v0, 0x0

    .line 724
    goto :goto_15

    .line 725
    :cond_21
    const/4 v0, 0x0

    .line 726
    const/high16 v10, 0x3f800000    # 1.0f

    .line 727
    .line 728
    :goto_15
    invoke-virtual {v5, v7, v10, v0}, Lh4/i;->I(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    .line 729
    .line 730
    .line 731
    move-result-object v0

    .line 732
    if-eqz v0, :cond_23

    .line 733
    .line 734
    new-instance v1, Lh4/l0;

    .line 735
    .line 736
    move/from16 v2, v19

    .line 737
    .line 738
    invoke-direct {v1, v2, v7}, Lh4/l0;-><init>(ILandroid/view/View;)V

    .line 739
    .line 740
    .line 741
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 742
    .line 743
    .line 744
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 745
    .line 746
    const/16 v3, 0x13

    .line 747
    .line 748
    if-lt v2, v3, :cond_22

    .line 749
    .line 750
    invoke-static {v0, v1}, Lcom/hierynomus/security/jce/a;->l(Landroid/animation/ObjectAnimator;Lh4/l0;)V

    .line 751
    .line 752
    .line 753
    :cond_22
    invoke-virtual {v5, v1}, Lh4/t;->a(Lh4/s;)V

    .line 754
    .line 755
    .line 756
    goto :goto_16

    .line 757
    :cond_23
    invoke-virtual {v4, v1, v7}, Lgf/g;->I(ILandroid/view/View;)V

    .line 758
    .line 759
    .line 760
    :goto_16
    move-object v7, v0

    .line 761
    :cond_24
    :goto_17
    return-object v7

    .line 762
    :goto_18
    return-object v0
.end method

.method public final p()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lh4/i;->A:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final r(Lh4/a0;Lh4/a0;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    if-eqz p1, :cond_1

    .line 8
    .line 9
    if-eqz p2, :cond_1

    .line 10
    .line 11
    iget-object v1, p2, Lh4/a0;->a:Ljava/util/HashMap;

    .line 12
    .line 13
    const-string v2, "android:visibility:visibility"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iget-object v3, p1, Lh4/a0;->a:Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eq v1, v2, :cond_1

    .line 26
    .line 27
    return v0

    .line 28
    :cond_1
    invoke-static {p1, p2}, Lh4/i;->J(Lh4/a0;Lh4/a0;)Lh4/m0;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-boolean p2, p1, Lh4/m0;->c:Z

    .line 33
    .line 34
    if-eqz p2, :cond_3

    .line 35
    .line 36
    iget p2, p1, Lh4/m0;->a:I

    .line 37
    .line 38
    if-eqz p2, :cond_2

    .line 39
    .line 40
    iget p1, p1, Lh4/m0;->b:I

    .line 41
    .line 42
    if-nez p1, :cond_3

    .line 43
    .line 44
    :cond_2
    const/4 v0, 0x1

    .line 45
    :cond_3
    return v0
.end method
