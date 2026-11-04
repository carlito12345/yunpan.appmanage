.class public final Lwb/n;
.super Lwb/c;
.source "SourceFile"


# static fields
.field public static final h:Ljava/util/ArrayList;


# instance fields
.field public final d:I

.field public final e:F

.field public final f:Z

.field public g:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lwb/n;->h:Ljava/util/ArrayList;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    int-to-long v1, v1

    .line 10
    const/16 v3, 0x13

    .line 11
    .line 12
    shl-long v3, v1, v3

    .line 13
    .line 14
    add-long/2addr v1, v3

    .line 15
    const-wide v3, 0xc000000000L

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    or-long/2addr v1, v3

    .line 21
    invoke-static {v1, v2}, Lif/a;->q0(J)Llb/a;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public constructor <init>(Lio/github/rosemoe/sora/widget/CodeEditor;Lmb/g;ZLwb/n;Z)V
    .locals 7

    .line 1
    invoke-direct {p0, p1, p2}, Lwb/c;-><init>(Lio/github/rosemoe/sora/widget/CodeEditor;Lmb/g;)V

    .line 2
    .line 3
    .line 4
    iput-boolean p3, p0, Lwb/n;->f:Z

    .line 5
    .line 6
    if-eqz p4, :cond_0

    .line 7
    .line 8
    iget-object p2, p4, Lwb/n;->g:Ljava/util/List;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    :goto_0
    iput-object p2, p0, Lwb/n;->g:Ljava/util/List;

    .line 17
    .line 18
    if-eqz p5, :cond_1

    .line 19
    .line 20
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getNonPrintablePaintingFlags()I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    and-int/lit16 p2, p2, 0x80

    .line 28
    .line 29
    if-eqz p2, :cond_2

    .line 30
    .line 31
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRenderer()Ltb/l;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p2}, Ltb/l;->w()F

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    const/4 p2, 0x0

    .line 41
    :goto_1
    iput p2, p0, Lwb/n;->e:F

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 44
    .line 45
    .line 46
    move-result p3

    .line 47
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->S()F

    .line 48
    .line 49
    .line 50
    move-result p4

    .line 51
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getTextPaint()Leb/c;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    const-string p5, "a"

    .line 56
    .line 57
    invoke-virtual {p1, p5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    add-float/2addr p1, p4

    .line 62
    float-to-int p1, p1

    .line 63
    sub-int/2addr p3, p1

    .line 64
    float-to-int p1, p2

    .line 65
    mul-int/lit8 p1, p1, 0x2

    .line 66
    .line 67
    sub-int/2addr p3, p1

    .line 68
    iput p3, p0, Lwb/n;->d:I

    .line 69
    .line 70
    iget-object p1, p0, Lwb/c;->b:Lmb/g;

    .line 71
    .line 72
    iget-object p1, p1, Lmb/g;->a:Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    int-to-float p1, p1

    .line 79
    const p2, 0x453b8000    # 3000.0f

    .line 80
    .line 81
    .line 82
    div-float/2addr p1, p2

    .line 83
    float-to-double p1, p1

    .line 84
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    .line 85
    .line 86
    .line 87
    move-result-wide p1

    .line 88
    double-to-int p1, p1

    .line 89
    const/16 p2, 0x8

    .line 90
    .line 91
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    iget-object p2, p0, Lwb/c;->b:Lmb/g;

    .line 96
    .line 97
    iget-object p2, p2, Lmb/g;->a:Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 100
    .line 101
    .line 102
    move-result p2

    .line 103
    div-int/2addr p2, p1

    .line 104
    new-instance p3, Ls3/d0;

    .line 105
    .line 106
    new-instance p4, Lua/g5;

    .line 107
    .line 108
    const/16 p5, 0x13

    .line 109
    .line 110
    invoke-direct {p4, p5, p0}, Lua/g5;-><init>(ILjava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    invoke-direct {p3, p1, p4}, Ls3/d0;-><init>(ILwb/b;)V

    .line 114
    .line 115
    .line 116
    iget-object p4, p0, Lwb/c;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 117
    .line 118
    const/4 p5, 0x1

    .line 119
    invoke-virtual {p4, p5}, Lio/github/rosemoe/sora/widget/CodeEditor;->setLayoutBusy(Z)V

    .line 120
    .line 121
    .line 122
    const/4 p4, 0x0

    .line 123
    const/4 v3, 0x0

    .line 124
    :goto_2
    if-ge v3, p1, :cond_4

    .line 125
    .line 126
    mul-int v4, p2, v3

    .line 127
    .line 128
    add-int/lit8 p4, v3, 0x1

    .line 129
    .line 130
    if-ne p4, p1, :cond_3

    .line 131
    .line 132
    iget-object v0, p0, Lwb/c;->b:Lmb/g;

    .line 133
    .line 134
    iget-object v0, v0, Lmb/g;->a:Ljava/util/ArrayList;

    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    :goto_3
    sub-int/2addr v0, p5

    .line 141
    move v5, v0

    .line 142
    goto :goto_4

    .line 143
    :cond_3
    mul-int v0, p2, p4

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :goto_4
    new-instance v6, Lwb/l;

    .line 147
    .line 148
    move-object v0, v6

    .line 149
    move-object v1, p0

    .line 150
    move-object v2, p3

    .line 151
    invoke-direct/range {v0 .. v5}, Lwb/l;-><init>(Lwb/n;Ls3/d0;III)V

    .line 152
    .line 153
    .line 154
    sget-object v0, Lwb/c;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 155
    .line 156
    invoke-virtual {v0, v6}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 157
    .line 158
    .line 159
    move v3, p4

    .line 160
    goto :goto_2

    .line 161
    :cond_4
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lwb/n;->g:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lwb/c;->b:Lmb/g;

    .line 10
    .line 11
    iget-object v0, v0, Lmb/g;->a:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0

    .line 18
    :cond_0
    iget-object v0, p0, Lwb/n;->g:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    return v0
.end method

.method public final c(Lmb/g;IIIILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    sub-int p1, p4, p2

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    add-int/lit8 p3, p2, 0x1

    .line 6
    .line 7
    invoke-virtual {p0, p3}, Lwb/n;->w(I)I

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    :goto_0
    iget-object p5, p0, Lwb/n;->g:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {p5}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result p5

    .line 17
    if-ge p3, p5, :cond_0

    .line 18
    .line 19
    iget-object p5, p0, Lwb/n;->g:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {p5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p5

    .line 25
    check-cast p5, Lwb/k;

    .line 26
    .line 27
    iget p6, p5, Lwb/k;->d:I

    .line 28
    .line 29
    add-int/2addr p6, p1

    .line 30
    iput p6, p5, Lwb/k;->d:I

    .line 31
    .line 32
    add-int/lit8 p3, p3, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p0, p2, p4}, Lwb/n;->v(II)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final d()I
    .locals 2

    .line 1
    iget-object v0, p0, Lwb/n;->g:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lwb/c;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 10
    .line 11
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRowHeight()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lwb/c;->b:Lmb/g;

    .line 16
    .line 17
    iget-object v1, v1, Lmb/g;->a:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    mul-int v1, v1, v0

    .line 24
    .line 25
    return v1

    .line 26
    :cond_0
    iget-object v0, p0, Lwb/n;->g:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iget-object v1, p0, Lwb/c;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 33
    .line 34
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRowHeight()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    mul-int v1, v1, v0

    .line 39
    .line 40
    return v1
.end method

.method public final e(II[F)[F
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eqz p3, :cond_0

    .line 3
    .line 4
    array-length v1, p3

    .line 5
    if-ge v1, v0, :cond_1

    .line 6
    .line 7
    :cond_0
    new-array p3, v0, [F

    .line 8
    .line 9
    :cond_1
    iget-object v0, p0, Lwb/n;->g:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    const/4 v2, 0x1

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    iget-object v0, p0, Lwb/c;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->K(I)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    int-to-float v0, v0

    .line 26
    aput v0, p3, v1

    .line 27
    .line 28
    iget-object v0, p0, Lwb/c;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 29
    .line 30
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRenderer()Ltb/l;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0, p1}, Ltb/l;->d(I)Leb/o;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1, p2}, Leb/o;->f(I)F

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    aput p1, p3, v2

    .line 43
    .line 44
    return-object p3

    .line 45
    :cond_2
    invoke-virtual {p0, p1}, Lwb/n;->w(I)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    iget-object v3, p0, Lwb/n;->g:Ljava/util/List;

    .line 50
    .line 51
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    const/4 v4, 0x0

    .line 56
    if-ge v0, v3, :cond_8

    .line 57
    .line 58
    iget-object v3, p0, Lwb/n;->g:Ljava/util/List;

    .line 59
    .line 60
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    check-cast v3, Lwb/k;

    .line 65
    .line 66
    iget v5, v3, Lwb/k;->d:I

    .line 67
    .line 68
    if-eq v5, p1, :cond_3

    .line 69
    .line 70
    aput v4, p3, v2

    .line 71
    .line 72
    aput v4, p3, v1

    .line 73
    .line 74
    return-object p3

    .line 75
    :cond_3
    :goto_0
    iget v4, v3, Lwb/k;->a:I

    .line 76
    .line 77
    if-ge v4, p2, :cond_6

    .line 78
    .line 79
    add-int/lit8 v4, v0, 0x1

    .line 80
    .line 81
    iget-object v5, p0, Lwb/n;->g:Ljava/util/List;

    .line 82
    .line 83
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    if-ge v4, v5, :cond_6

    .line 88
    .line 89
    iget-object v3, p0, Lwb/n;->g:Ljava/util/List;

    .line 90
    .line 91
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    check-cast v3, Lwb/k;

    .line 96
    .line 97
    iget v5, v3, Lwb/k;->d:I

    .line 98
    .line 99
    if-ne v5, p1, :cond_5

    .line 100
    .line 101
    iget v5, v3, Lwb/k;->a:I

    .line 102
    .line 103
    if-le v5, p2, :cond_4

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_4
    move v0, v4

    .line 107
    goto :goto_0

    .line 108
    :cond_5
    :goto_1
    iget-object p1, p0, Lwb/n;->g:Ljava/util/List;

    .line 109
    .line 110
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    move-object v3, p1

    .line 115
    check-cast v3, Lwb/k;

    .line 116
    .line 117
    :cond_6
    iget-object p1, p0, Lwb/c;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 118
    .line 119
    invoke-virtual {p1, v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->K(I)I

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    int-to-float p1, p1

    .line 124
    aput p1, p3, v1

    .line 125
    .line 126
    iget-object p1, p0, Lwb/c;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 127
    .line 128
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRenderer()Ltb/l;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-virtual {p1, v0}, Ltb/l;->d(I)Leb/o;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-virtual {p1, p2}, Leb/o;->f(I)F

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    aput p1, p3, v2

    .line 141
    .line 142
    iget p2, v3, Lwb/k;->a:I

    .line 143
    .line 144
    if-eqz p2, :cond_7

    .line 145
    .line 146
    iget p2, p0, Lwb/n;->e:F

    .line 147
    .line 148
    add-float/2addr p1, p2

    .line 149
    aput p1, p3, v2

    .line 150
    .line 151
    :cond_7
    aget p1, p3, v2

    .line 152
    .line 153
    iget p2, p0, Lwb/n;->d:I

    .line 154
    .line 155
    int-to-float p2, p2

    .line 156
    invoke-virtual {v3, p2}, Lwb/k;->a(F)F

    .line 157
    .line 158
    .line 159
    move-result p2

    .line 160
    add-float/2addr p2, p1

    .line 161
    aput p2, p3, v2

    .line 162
    .line 163
    goto :goto_2

    .line 164
    :cond_8
    aput v4, p3, v2

    .line 165
    .line 166
    aput v4, p3, v1

    .line 167
    .line 168
    :goto_2
    return-object p3
.end method

.method public final f(ILandroid/util/SparseArray;)Lwb/j;
    .locals 2

    .line 1
    iget-object v0, p0, Lwb/n;->g:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, La2/k1;

    .line 10
    .line 11
    iget-object v1, p0, Lwb/c;->b:Lmb/g;

    .line 12
    .line 13
    invoke-direct {v0, p0, v1, p1, p2}, La2/k1;-><init>(Lwb/c;Lmb/g;ILandroid/util/SparseArray;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance v0, La9/a;

    .line 18
    .line 19
    invoke-direct {v0, p0, p1}, La9/a;-><init>(Lwb/n;I)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-object v0
.end method

.method public final g(II)J
    .locals 3

    .line 1
    iget-object v0, p0, Lwb/n;->g:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lwb/c;->b:Lmb/g;

    .line 10
    .line 11
    iget-object v0, v0, Lmb/g;->a:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    add-int/lit8 v1, p1, 0x1

    .line 18
    .line 19
    if-lt v1, v0, :cond_0

    .line 20
    .line 21
    iget-object p2, p0, Lwb/c;->b:Lmb/g;

    .line 22
    .line 23
    invoke-virtual {p2, p1}, Lmb/g;->o(I)Lmb/h;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    iget p2, p2, Lmb/h;->c:I

    .line 28
    .line 29
    invoke-static {p1, p2}, Lsb/h;->g(II)J

    .line 30
    .line 31
    .line 32
    move-result-wide p1

    .line 33
    return-wide p1

    .line 34
    :cond_0
    iget-object p1, p0, Lwb/c;->b:Lmb/g;

    .line 35
    .line 36
    invoke-virtual {p1, v1}, Lmb/g;->o(I)Lmb/h;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iget p1, p1, Lmb/h;->c:I

    .line 41
    .line 42
    if-le p2, p1, :cond_1

    .line 43
    .line 44
    move p2, p1

    .line 45
    :cond_1
    invoke-static {v1, p2}, Lsb/h;->g(II)J

    .line 46
    .line 47
    .line 48
    move-result-wide p1

    .line 49
    return-wide p1

    .line 50
    :cond_2
    invoke-virtual {p0, p1, p2}, Lwb/n;->x(II)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    add-int/lit8 v1, v0, 0x1

    .line 55
    .line 56
    iget-object v2, p0, Lwb/n;->g:Ljava/util/List;

    .line 57
    .line 58
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-ge v1, v2, :cond_3

    .line 63
    .line 64
    iget-object p1, p0, Lwb/n;->g:Ljava/util/List;

    .line 65
    .line 66
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    check-cast p1, Lwb/k;

    .line 71
    .line 72
    iget p1, p1, Lwb/k;->a:I

    .line 73
    .line 74
    sub-int/2addr p2, p1

    .line 75
    iget-object p1, p0, Lwb/n;->g:Ljava/util/List;

    .line 76
    .line 77
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    check-cast p1, Lwb/k;

    .line 82
    .line 83
    iget v0, p1, Lwb/k;->b:I

    .line 84
    .line 85
    iget v1, p1, Lwb/k;->a:I

    .line 86
    .line 87
    sub-int/2addr v0, v1

    .line 88
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    iget p1, p1, Lwb/k;->d:I

    .line 93
    .line 94
    add-int/2addr v1, p2

    .line 95
    invoke-static {p1, v1}, Lsb/h;->g(II)J

    .line 96
    .line 97
    .line 98
    move-result-wide p1

    .line 99
    return-wide p1

    .line 100
    :cond_3
    iget-object p2, p0, Lwb/c;->b:Lmb/g;

    .line 101
    .line 102
    invoke-virtual {p2, p1}, Lmb/g;->o(I)Lmb/h;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    iget p2, p2, Lmb/h;->c:I

    .line 107
    .line 108
    invoke-static {p1, p2}, Lsb/h;->g(II)J

    .line 109
    .line 110
    .line 111
    move-result-wide p1

    .line 112
    return-wide p1
.end method

.method public final h(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lwb/n;->g:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    return p1

    .line 11
    :cond_0
    invoke-virtual {p0, p1}, Lwb/n;->w(I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_0
    iget-object v2, p0, Lwb/n;->g:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-ge v0, v2, :cond_1

    .line 23
    .line 24
    iget-object v2, p0, Lwb/n;->g:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lwb/k;

    .line 31
    .line 32
    iget v2, v2, Lwb/k;->d:I

    .line 33
    .line 34
    if-ne v2, p1, :cond_1

    .line 35
    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    add-int/lit8 v0, v0, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    return v1
.end method

.method public final i(Lh5/m;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lwb/c;->b:Lmb/g;

    .line 2
    .line 3
    iget-object v0, v0, Lmb/g;->a:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    add-int/lit8 v0, v0, -0x1

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    iget-object v2, p1, Lh5/m;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v2, [I

    .line 15
    .line 16
    array-length v3, v2

    .line 17
    if-ge v1, v3, :cond_2

    .line 18
    .line 19
    array-length v3, v2

    .line 20
    if-ge v1, v3, :cond_0

    .line 21
    .line 22
    add-int/lit8 v3, v1, 0x1

    .line 23
    .line 24
    aget v1, v2, v1

    .line 25
    .line 26
    if-le v1, v0, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    move v3, v1

    .line 30
    :goto_1
    move v1, v0

    .line 31
    :cond_1
    invoke-virtual {p0, v1, v1}, Lwb/n;->v(II)V

    .line 32
    .line 33
    .line 34
    move v1, v3

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    return-void
.end method

.method public final j(Lmb/g;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final k(Lmb/g;IIIILjava/lang/StringBuilder;)V
    .locals 0

    .line 1
    sub-int p1, p4, p2

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0, p2}, Lwb/n;->w(I)I

    .line 6
    .line 7
    .line 8
    move-result p3

    .line 9
    :goto_0
    iget-object p5, p0, Lwb/n;->g:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {p5}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result p5

    .line 15
    if-ge p3, p5, :cond_0

    .line 16
    .line 17
    iget-object p5, p0, Lwb/n;->g:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {p5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p5

    .line 23
    check-cast p5, Lwb/k;

    .line 24
    .line 25
    iget p5, p5, Lwb/k;->d:I

    .line 26
    .line 27
    if-lt p5, p2, :cond_0

    .line 28
    .line 29
    if-gt p5, p4, :cond_0

    .line 30
    .line 31
    iget-object p5, p0, Lwb/n;->g:Ljava/util/List;

    .line 32
    .line 33
    invoke-interface {p5, p3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    add-int/lit8 p3, p4, 0x1

    .line 38
    .line 39
    invoke-virtual {p0, p3}, Lwb/n;->w(I)I

    .line 40
    .line 41
    .line 42
    move-result p3

    .line 43
    :goto_1
    iget-object p5, p0, Lwb/n;->g:Ljava/util/List;

    .line 44
    .line 45
    invoke-interface {p5}, Ljava/util/List;->size()I

    .line 46
    .line 47
    .line 48
    move-result p5

    .line 49
    if-ge p3, p5, :cond_2

    .line 50
    .line 51
    iget-object p5, p0, Lwb/n;->g:Ljava/util/List;

    .line 52
    .line 53
    invoke-interface {p5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p5

    .line 57
    check-cast p5, Lwb/k;

    .line 58
    .line 59
    iget p6, p5, Lwb/k;->d:I

    .line 60
    .line 61
    if-lt p6, p4, :cond_1

    .line 62
    .line 63
    sub-int/2addr p6, p1

    .line 64
    iput p6, p5, Lwb/k;->d:I

    .line 65
    .line 66
    :cond_1
    add-int/lit8 p3, p3, 0x1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    invoke-virtual {p0, p2, p2}, Lwb/n;->v(II)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public final l(I)I
    .locals 5

    .line 1
    iget-object v0, p0, Lwb/c;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lmb/g;->n()Lmb/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Lmb/a;->z(I)Lmb/b;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget v0, p1, Lmb/b;->b:I

    .line 16
    .line 17
    iget-object v1, p0, Lwb/n;->g:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    return v0

    .line 26
    :cond_0
    iget p1, p1, Lmb/b;->c:I

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lwb/n;->w(I)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    iget-object v2, p0, Lwb/n;->g:Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    const/4 v3, 0x0

    .line 39
    if-ge v1, v2, :cond_4

    .line 40
    .line 41
    iget-object v2, p0, Lwb/n;->g:Ljava/util/List;

    .line 42
    .line 43
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Lwb/k;

    .line 48
    .line 49
    iget v4, v2, Lwb/k;->d:I

    .line 50
    .line 51
    if-eq v4, v0, :cond_1

    .line 52
    .line 53
    return v3

    .line 54
    :cond_1
    :goto_0
    iget v2, v2, Lwb/k;->a:I

    .line 55
    .line 56
    if-ge v2, p1, :cond_3

    .line 57
    .line 58
    add-int/lit8 v2, v1, 0x1

    .line 59
    .line 60
    iget-object v3, p0, Lwb/n;->g:Ljava/util/List;

    .line 61
    .line 62
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-ge v2, v3, :cond_3

    .line 67
    .line 68
    iget-object v3, p0, Lwb/n;->g:Ljava/util/List;

    .line 69
    .line 70
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    check-cast v3, Lwb/k;

    .line 75
    .line 76
    iget v4, v3, Lwb/k;->d:I

    .line 77
    .line 78
    if-ne v4, v0, :cond_3

    .line 79
    .line 80
    iget v4, v3, Lwb/k;->a:I

    .line 81
    .line 82
    if-le v4, p1, :cond_2

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    move v1, v2

    .line 86
    move-object v2, v3

    .line 87
    goto :goto_0

    .line 88
    :cond_3
    :goto_1
    return v1

    .line 89
    :cond_4
    return v3
.end method

.method public final m()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lwb/c;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 3
    .line 4
    iput-object v0, p0, Lwb/c;->b:Lmb/g;

    .line 5
    .line 6
    iput-object v0, p0, Lwb/n;->g:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method

.method public final n(FF)Leb/j;
    .locals 3

    .line 1
    iget-object v0, p0, Lwb/n;->g:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lwb/c;->b:Lmb/g;

    .line 11
    .line 12
    iget-object v0, v0, Lmb/g;->a:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    add-int/lit8 v0, v0, -0x1

    .line 19
    .line 20
    iget-object v2, p0, Lwb/c;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 21
    .line 22
    invoke-virtual {v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRowHeight()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    int-to-float v2, v2

    .line 27
    div-float/2addr p2, v2

    .line 28
    float-to-int p2, p2

    .line 29
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    iget-object v0, p0, Lwb/c;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 38
    .line 39
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRenderer()Ltb/l;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0, p2}, Ltb/l;->d(I)Leb/o;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0, p1}, Leb/o;->g(F)Leb/h;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    new-instance v0, Leb/j;

    .line 52
    .line 53
    iget-object v1, p1, Leb/h;->c:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v1, Lwb/i;

    .line 56
    .line 57
    iget-boolean v2, p1, Leb/h;->b:Z

    .line 58
    .line 59
    iget p1, p1, Leb/h;->a:I

    .line 60
    .line 61
    invoke-direct {v0, p2, p1, v1, v2}, Leb/j;-><init>(IILwb/i;Z)V

    .line 62
    .line 63
    .line 64
    return-object v0

    .line 65
    :cond_0
    iget-object v0, p0, Lwb/c;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 66
    .line 67
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRowHeight()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    int-to-float v0, v0

    .line 72
    div-float/2addr p2, v0

    .line 73
    float-to-int p2, p2

    .line 74
    iget-object v0, p0, Lwb/n;->g:Ljava/util/List;

    .line 75
    .line 76
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    add-int/lit8 v0, v0, -0x1

    .line 81
    .line 82
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    iget-object v0, p0, Lwb/n;->g:Ljava/util/List;

    .line 91
    .line 92
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Lwb/k;

    .line 97
    .line 98
    iget v1, v0, Lwb/k;->a:I

    .line 99
    .line 100
    if-eqz v1, :cond_1

    .line 101
    .line 102
    iget v1, p0, Lwb/n;->e:F

    .line 103
    .line 104
    sub-float/2addr p1, v1

    .line 105
    :cond_1
    iget v1, p0, Lwb/n;->d:I

    .line 106
    .line 107
    int-to-float v1, v1

    .line 108
    invoke-virtual {v0, v1}, Lwb/k;->a(F)F

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    sub-float/2addr p1, v1

    .line 113
    iget-object v1, p0, Lwb/c;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 114
    .line 115
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRenderer()Ltb/l;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v1, p2}, Ltb/l;->d(I)Leb/o;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    invoke-virtual {p2, p1}, Leb/o;->g(F)Leb/h;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    new-instance p2, Leb/j;

    .line 128
    .line 129
    iget v0, v0, Lwb/k;->d:I

    .line 130
    .line 131
    iget-object v1, p1, Leb/h;->c:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast v1, Lwb/i;

    .line 134
    .line 135
    iget-boolean v2, p1, Leb/h;->b:Z

    .line 136
    .line 137
    iget p1, p1, Leb/h;->a:I

    .line 138
    .line 139
    invoke-direct {p2, v0, p1, v1, v2}, Leb/j;-><init>(IILwb/i;Z)V

    .line 140
    .line 141
    .line 142
    return-object p2
.end method

.method public final o(II)J
    .locals 3

    .line 1
    iget-object v0, p0, Lwb/n;->g:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {v1, v1}, Lsb/h;->g(II)J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    add-int/lit8 p1, p1, -0x1

    .line 15
    .line 16
    if-gez p1, :cond_0

    .line 17
    .line 18
    return-wide v1

    .line 19
    :cond_0
    iget-object v0, p0, Lwb/c;->b:Lmb/g;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lmb/g;->o(I)Lmb/h;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget v0, v0, Lmb/h;->c:I

    .line 26
    .line 27
    if-le p2, v0, :cond_1

    .line 28
    .line 29
    move p2, v0

    .line 30
    :cond_1
    invoke-static {p1, p2}, Lsb/h;->g(II)J

    .line 31
    .line 32
    .line 33
    move-result-wide p1

    .line 34
    return-wide p1

    .line 35
    :cond_2
    invoke-virtual {p0, p1, p2}, Lwb/n;->x(II)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-lez p1, :cond_3

    .line 40
    .line 41
    iget-object v0, p0, Lwb/n;->g:Ljava/util/List;

    .line 42
    .line 43
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lwb/k;

    .line 48
    .line 49
    iget v0, v0, Lwb/k;->a:I

    .line 50
    .line 51
    sub-int/2addr p2, v0

    .line 52
    iget-object v0, p0, Lwb/n;->g:Ljava/util/List;

    .line 53
    .line 54
    add-int/lit8 p1, p1, -0x1

    .line 55
    .line 56
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Lwb/k;

    .line 61
    .line 62
    iget v0, p1, Lwb/k;->b:I

    .line 63
    .line 64
    iget v1, p1, Lwb/k;->a:I

    .line 65
    .line 66
    sub-int/2addr v0, v1

    .line 67
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    iget p1, p1, Lwb/k;->d:I

    .line 72
    .line 73
    add-int/2addr v1, p2

    .line 74
    invoke-static {p1, v1}, Lsb/h;->g(II)J

    .line 75
    .line 76
    .line 77
    move-result-wide p1

    .line 78
    return-wide p1

    .line 79
    :cond_3
    return-wide v1
.end method

.method public final p(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lwb/n;->g:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lwb/c;->b:Lmb/g;

    .line 10
    .line 11
    iget-object v0, v0, Lmb/g;->a:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    add-int/lit8 v0, v0, -0x1

    .line 18
    .line 19
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    return p1

    .line 29
    :cond_0
    iget-object v0, p0, Lwb/n;->g:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-lt p1, v0, :cond_1

    .line 36
    .line 37
    iget-object p1, p0, Lwb/n;->g:Ljava/util/List;

    .line 38
    .line 39
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    add-int/lit8 v0, v0, -0x1

    .line 44
    .line 45
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    :goto_0
    check-cast p1, Lwb/k;

    .line 50
    .line 51
    iget p1, p1, Lwb/k;->d:I

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    iget-object v0, p0, Lwb/n;->g:Ljava/util/List;

    .line 55
    .line 56
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    goto :goto_0

    .line 61
    :goto_1
    return p1
.end method

.method public final q(I)Lwb/h;
    .locals 6

    .line 1
    iget-object v0, p0, Lwb/n;->g:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lwb/h;

    .line 12
    .line 13
    invoke-direct {v0}, Lwb/h;-><init>()V

    .line 14
    .line 15
    .line 16
    iput v1, v0, Lwb/h;->d:I

    .line 17
    .line 18
    iget-object v1, p0, Lwb/c;->b:Lmb/g;

    .line 19
    .line 20
    invoke-virtual {v1, p1}, Lmb/g;->o(I)Lmb/h;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget v1, v1, Lmb/h;->c:I

    .line 25
    .line 26
    iput v1, v0, Lwb/h;->e:I

    .line 27
    .line 28
    iput-boolean v2, v0, Lwb/h;->b:Z

    .line 29
    .line 30
    iput-boolean v2, v0, Lwb/h;->c:Z

    .line 31
    .line 32
    iput p1, v0, Lwb/h;->a:I

    .line 33
    .line 34
    invoke-virtual {p0}, Lwb/c;->t()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, v0, Lwb/h;->f:Ljava/util/List;

    .line 39
    .line 40
    return-object v0

    .line 41
    :cond_0
    iget-object v0, p0, Lwb/n;->g:Ljava/util/List;

    .line 42
    .line 43
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lwb/k;

    .line 48
    .line 49
    if-lez p1, :cond_2

    .line 50
    .line 51
    iget-object v3, p0, Lwb/n;->g:Ljava/util/List;

    .line 52
    .line 53
    add-int/lit8 v4, p1, -0x1

    .line 54
    .line 55
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    check-cast v3, Lwb/k;

    .line 60
    .line 61
    iget v3, v3, Lwb/k;->d:I

    .line 62
    .line 63
    iget v4, v0, Lwb/k;->d:I

    .line 64
    .line 65
    if-eq v3, v4, :cond_1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    const/4 v3, 0x0

    .line 69
    goto :goto_1

    .line 70
    :cond_2
    :goto_0
    const/4 v3, 0x1

    .line 71
    :goto_1
    add-int/lit8 v4, p1, 0x1

    .line 72
    .line 73
    iget-object v5, p0, Lwb/n;->g:Ljava/util/List;

    .line 74
    .line 75
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    if-ge v4, v5, :cond_3

    .line 80
    .line 81
    iget-object v5, p0, Lwb/n;->g:Ljava/util/List;

    .line 82
    .line 83
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    check-cast v4, Lwb/k;

    .line 88
    .line 89
    iget v4, v4, Lwb/k;->d:I

    .line 90
    .line 91
    iget v0, v0, Lwb/k;->d:I

    .line 92
    .line 93
    if-eq v4, v0, :cond_4

    .line 94
    .line 95
    :cond_3
    const/4 v1, 0x1

    .line 96
    :cond_4
    iget-object v0, p0, Lwb/n;->g:Ljava/util/List;

    .line 97
    .line 98
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    check-cast p1, Lwb/k;

    .line 103
    .line 104
    iget v0, p0, Lwb/n;->d:I

    .line 105
    .line 106
    int-to-float v0, v0

    .line 107
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    new-instance v2, Lwb/h;

    .line 111
    .line 112
    invoke-direct {v2}, Lwb/h;-><init>()V

    .line 113
    .line 114
    .line 115
    iput-boolean v3, v2, Lwb/h;->b:Z

    .line 116
    .line 117
    iput-boolean v1, v2, Lwb/h;->c:Z

    .line 118
    .line 119
    iget v1, p1, Lwb/k;->a:I

    .line 120
    .line 121
    iput v1, v2, Lwb/h;->d:I

    .line 122
    .line 123
    iget v1, p1, Lwb/k;->b:I

    .line 124
    .line 125
    iput v1, v2, Lwb/h;->e:I

    .line 126
    .line 127
    iget v1, p1, Lwb/k;->d:I

    .line 128
    .line 129
    iput v1, v2, Lwb/h;->a:I

    .line 130
    .line 131
    iget-object v1, p1, Lwb/k;->c:Ljava/util/ArrayList;

    .line 132
    .line 133
    if-nez v1, :cond_5

    .line 134
    .line 135
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    :cond_5
    iput-object v1, v2, Lwb/h;->f:Ljava/util/List;

    .line 140
    .line 141
    invoke-virtual {p1, v0}, Lwb/k;->a(F)F

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    iput p1, v2, Lwb/h;->g:F

    .line 146
    .line 147
    return-object v2
.end method

.method public final r()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final u(ILmb/h;Leb/c;)Ljava/util/ArrayList;
    .locals 11

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    new-instance p3, Leb/c;

    .line 4
    .line 5
    iget-object v0, p0, Lwb/c;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 6
    .line 7
    iget-boolean v0, v0, Lio/github/rosemoe/sora/widget/CodeEditor;->Y0:Z

    .line 8
    .line 9
    invoke-direct {p3, v0}, Leb/c;-><init>(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lwb/c;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 13
    .line 14
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getTextPaint()Leb/c;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    move-object v8, p3

    .line 22
    new-instance p3, Leb/o;

    .line 23
    .line 24
    invoke-direct {p3}, Leb/o;-><init>()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lwb/c;->b:Lmb/g;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Lmb/g;->p(I)Lnb/b;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    iget v4, p2, Lmb/h;->c:I

    .line 34
    .line 35
    invoke-virtual {p0}, Lwb/c;->t()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    iget-object v0, p0, Lwb/c;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 40
    .line 41
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRenderer()Ltb/l;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Ltb/l;->e()Leb/p;

    .line 46
    .line 47
    .line 48
    move-result-object v10

    .line 49
    sget-object v5, Lwb/n;->h:Ljava/util/ArrayList;

    .line 50
    .line 51
    const/4 v9, 0x0

    .line 52
    const/4 v3, 0x0

    .line 53
    move-object v1, p3

    .line 54
    move-object v2, p2

    .line 55
    invoke-virtual/range {v1 .. v10}, Leb/o;->m(Lmb/h;IILjava/util/ArrayList;Ljava/util/List;Lnb/b;Leb/c;Ld3/g;Leb/p;)V

    .line 56
    .line 57
    .line 58
    new-instance p2, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .line 62
    .line 63
    iget-boolean v0, p0, Lwb/n;->f:Z

    .line 64
    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    iget-object v0, p3, Leb/o;->d:Lmb/h;

    .line 68
    .line 69
    new-instance v1, Landroidx/room/s;

    .line 70
    .line 71
    invoke-direct {v1, v0}, Landroidx/room/s;-><init>(Lmb/h;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    sget-object v1, Lob/b;->a:Lob/b;

    .line 76
    .line 77
    :goto_0
    new-instance v0, Leb/f;

    .line 78
    .line 79
    iget v2, p0, Lwb/n;->d:I

    .line 80
    .line 81
    invoke-direct {v0, p3, p2, v2, v1}, Leb/f;-><init>(Leb/o;Ljava/util/ArrayList;ILob/a;)V

    .line 82
    .line 83
    .line 84
    const/4 v1, 0x0

    .line 85
    invoke-virtual {p3, v0, v1}, Leb/o;->k(Leb/m;Z)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-eqz v2, :cond_2

    .line 93
    .line 94
    iget-object v2, v0, Leb/f;->a:Leb/n;

    .line 95
    .line 96
    iget-boolean v3, v2, Leb/n;->a:Z

    .line 97
    .line 98
    if-eqz v3, :cond_2

    .line 99
    .line 100
    iput-boolean v1, v2, Leb/n;->a:Z

    .line 101
    .line 102
    iget v1, p3, Leb/o;->f:I

    .line 103
    .line 104
    iput v1, v2, Leb/n;->b:I

    .line 105
    .line 106
    iget p3, p3, Leb/o;->g:I

    .line 107
    .line 108
    iput p3, v2, Leb/n;->c:I

    .line 109
    .line 110
    :cond_2
    iget-object p3, v0, Leb/f;->a:Leb/n;

    .line 111
    .line 112
    iget-boolean p3, p3, Leb/n;->a:Z

    .line 113
    .line 114
    if-nez p3, :cond_3

    .line 115
    .line 116
    invoke-virtual {v0}, Leb/f;->b()V

    .line 117
    .line 118
    .line 119
    :cond_3
    new-instance p3, Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-eqz v0, :cond_4

    .line 133
    .line 134
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    check-cast v0, Leb/n;

    .line 139
    .line 140
    new-instance v8, Lwb/k;

    .line 141
    .line 142
    iget v3, v0, Leb/n;->b:I

    .line 143
    .line 144
    iget v4, v0, Leb/n;->c:I

    .line 145
    .line 146
    const/4 v5, 0x0

    .line 147
    iget v6, v0, Leb/n;->d:F

    .line 148
    .line 149
    const/4 v7, 0x0

    .line 150
    move-object v1, v8

    .line 151
    move v2, p1

    .line 152
    invoke-direct/range {v1 .. v7}, Lwb/k;-><init>(IIILjava/util/ArrayList;FZ)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_4
    return-object p3
.end method

.method public final v(II)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lwb/n;->g:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lwb/n;->g:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lwb/k;

    .line 17
    .line 18
    iget v1, v1, Lwb/k;->d:I

    .line 19
    .line 20
    if-ge v1, p1, :cond_0

    .line 21
    .line 22
    add-int/lit8 v0, v0, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    :goto_1
    iget-object v1, p0, Lwb/n;->g:Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-ge v0, v1, :cond_1

    .line 32
    .line 33
    iget-object v1, p0, Lwb/n;->g:Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Lwb/k;

    .line 40
    .line 41
    iget v1, v1, Lwb/k;->d:I

    .line 42
    .line 43
    if-lt v1, p1, :cond_1

    .line 44
    .line 45
    if-gt v1, p2, :cond_1

    .line 46
    .line 47
    iget-object v1, p0, Lwb/n;->g:Ljava/util/List;

    .line 48
    .line 49
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    .line 58
    :goto_2
    if-gt p1, p2, :cond_2

    .line 59
    .line 60
    iget-object v2, p0, Lwb/c;->b:Lmb/g;

    .line 61
    .line 62
    invoke-virtual {v2, p1}, Lmb/g;->o(I)Lmb/h;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    const/4 v3, 0x0

    .line 67
    invoke-virtual {p0, p1, v2, v3}, Lwb/n;->u(ILmb/h;Leb/c;)Ljava/util/ArrayList;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 72
    .line 73
    .line 74
    add-int/lit8 p1, p1, 0x1

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_2
    iget-object p1, p0, Lwb/n;->g:Ljava/util/List;

    .line 78
    .line 79
    invoke-interface {p1, v0, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public final w(I)I
    .locals 5

    .line 1
    iget-object v0, p0, Lwb/n;->g:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-gt v2, v0, :cond_4

    .line 10
    .line 11
    add-int v3, v2, v0

    .line 12
    .line 13
    div-int/lit8 v3, v3, 0x2

    .line 14
    .line 15
    if-ltz v3, :cond_3

    .line 16
    .line 17
    iget-object v4, p0, Lwb/n;->g:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-lt v3, v4, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    iget-object v4, p0, Lwb/n;->g:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    check-cast v4, Lwb/k;

    .line 33
    .line 34
    iget v4, v4, Lwb/k;->d:I

    .line 35
    .line 36
    if-ge v4, p1, :cond_1

    .line 37
    .line 38
    add-int/lit8 v2, v3, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    if-le v4, p1, :cond_2

    .line 42
    .line 43
    add-int/lit8 v3, v3, -0x1

    .line 44
    .line 45
    move v0, v3

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    move v2, v3

    .line 48
    goto :goto_2

    .line 49
    :cond_3
    :goto_1
    iget-object p1, p0, Lwb/n;->g:Ljava/util/List;

    .line 50
    .line 51
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    add-int/lit8 p1, p1, -0x1

    .line 56
    .line 57
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    :cond_4
    :goto_2
    if-lez v2, :cond_5

    .line 66
    .line 67
    iget-object p1, p0, Lwb/n;->g:Ljava/util/List;

    .line 68
    .line 69
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    check-cast p1, Lwb/k;

    .line 74
    .line 75
    iget p1, p1, Lwb/k;->a:I

    .line 76
    .line 77
    if-lez p1, :cond_5

    .line 78
    .line 79
    add-int/lit8 v2, v2, -0x1

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_5
    return v2
.end method

.method public final x(II)I
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lwb/n;->w(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    :goto_0
    iget-object v1, p0, Lwb/n;->g:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lwb/k;

    .line 12
    .line 13
    iget v1, v1, Lwb/k;->b:I

    .line 14
    .line 15
    if-gt v1, p2, :cond_0

    .line 16
    .line 17
    add-int/lit8 v1, v0, 0x1

    .line 18
    .line 19
    iget-object v2, p0, Lwb/n;->g:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-ge v1, v2, :cond_0

    .line 26
    .line 27
    iget-object v2, p0, Lwb/n;->g:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lwb/k;

    .line 34
    .line 35
    iget v2, v2, Lwb/k;->d:I

    .line 36
    .line 37
    if-ne v2, p1, :cond_0

    .line 38
    .line 39
    move v0, v1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    return v0
.end method
