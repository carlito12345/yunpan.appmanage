.class public final Ltb/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/github/rosemoe/sora/widget/CodeEditor;

.field public b:Ljava/lang/String;

.field public c:Ltb/p;

.field public final d:Ltb/o;

.field public e:Ljava/lang/Thread;

.field public f:Lsb/e;


# direct methods
.method public constructor <init>(Lio/github/rosemoe/sora/widget/CodeEditor;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ltb/r;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 5
    .line 6
    new-instance v0, Ldb/m;

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    invoke-direct {v0, v1, p0}, Ldb/m;-><init>(ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    const-class v1, Ldb/d;

    .line 13
    .line 14
    invoke-virtual {p1, v1, v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->l0(Ljava/lang/Class;Ldb/q;)V

    .line 15
    .line 16
    .line 17
    sget-object p1, Ltb/o;->a:Ltb/o;

    .line 18
    .line 19
    iput-object p1, p0, Ltb/r;->d:Ltb/o;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Ltb/r;->b:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v1, "pattern not set"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public final b()V
    .locals 4

    .line 1
    iget-object v0, p0, Ltb/r;->e:Ljava/lang/Thread;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Ltb/r;->e:Ljava/lang/Thread;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 14
    .line 15
    .line 16
    :cond_0
    new-instance v0, Ltb/q;

    .line 17
    .line 18
    iget-object v1, p0, Ltb/r;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 19
    .line 20
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget-object v2, p0, Ltb/r;->c:Ltb/p;

    .line 25
    .line 26
    iget-object v3, p0, Ltb/r;->b:Ljava/lang/String;

    .line 27
    .line 28
    invoke-direct {v0, p0, v1, v2, v3}, Ltb/q;-><init>(Ltb/r;Lmb/g;Ltb/p;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance v1, Ljava/lang/Thread;

    .line 32
    .line 33
    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Ltb/r;->e:Ljava/lang/Thread;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final c()I
    .locals 10

    .line 1
    invoke-virtual {p0}, Ltb/r;->a()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ltb/r;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 5
    .line 6
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lmb/j;->a()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, -0x1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    return v2

    .line 18
    :cond_0
    iget-object v1, v0, Lmb/j;->c:Lmb/b;

    .line 19
    .line 20
    iget v1, v1, Lmb/b;->a:I

    .line 21
    .line 22
    iget-object v0, v0, Lmb/j;->d:Lmb/b;

    .line 23
    .line 24
    iget v0, v0, Lmb/b;->a:I

    .line 25
    .line 26
    invoke-virtual {p0}, Ltb/r;->f()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_5

    .line 31
    .line 32
    iget-object v3, p0, Ltb/r;->f:Lsb/e;

    .line 33
    .line 34
    if-nez v3, :cond_1

    .line 35
    .line 36
    return v2

    .line 37
    :cond_1
    invoke-static {v1, v0}, Lsb/h;->g(II)J

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    iget v4, v3, Lsb/e;->b:I

    .line 42
    .line 43
    add-int/lit8 v4, v4, -0x1

    .line 44
    .line 45
    const/4 v5, 0x0

    .line 46
    :goto_0
    if-gt v5, v4, :cond_4

    .line 47
    .line 48
    add-int v6, v5, v4

    .line 49
    .line 50
    ushr-int/lit8 v6, v6, 0x1

    .line 51
    .line 52
    iget-object v7, v3, Lsb/e;->c:[J

    .line 53
    .line 54
    aget-wide v8, v7, v6

    .line 55
    .line 56
    cmp-long v7, v8, v0

    .line 57
    .line 58
    if-gez v7, :cond_2

    .line 59
    .line 60
    add-int/lit8 v6, v6, 0x1

    .line 61
    .line 62
    move v5, v6

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    cmp-long v4, v8, v0

    .line 65
    .line 66
    if-lez v4, :cond_3

    .line 67
    .line 68
    add-int/lit8 v6, v6, -0x1

    .line 69
    .line 70
    move v4, v6

    .line 71
    goto :goto_0

    .line 72
    :cond_3
    move v5, v6

    .line 73
    :cond_4
    iget v4, v3, Lsb/e;->b:I

    .line 74
    .line 75
    if-ge v5, v4, :cond_5

    .line 76
    .line 77
    invoke-virtual {v3, v5}, Lsb/e;->c(I)J

    .line 78
    .line 79
    .line 80
    move-result-wide v3

    .line 81
    cmp-long v6, v3, v0

    .line 82
    .line 83
    if-nez v6, :cond_5

    .line 84
    .line 85
    return v5

    .line 86
    :cond_5
    return v2
.end method

.method public final d()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Ltb/r;->a()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ltb/r;->f()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Ltb/r;->f:Lsb/e;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v1, p0, Ltb/r;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 16
    .line 17
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iget-object v2, v2, Lmb/j;->d:Lmb/b;

    .line 22
    .line 23
    iget v2, v2, Lmb/b;->a:I

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Lsb/e;->d(I)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    iget v3, v0, Lsb/e;->b:I

    .line 30
    .line 31
    if-ne v2, v3, :cond_1

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    :cond_1
    if-ge v2, v3, :cond_2

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Lsb/e;->c(I)J

    .line 37
    .line 38
    .line 39
    move-result-wide v2

    .line 40
    const/16 v0, 0x20

    .line 41
    .line 42
    shr-long v4, v2, v0

    .line 43
    .line 44
    long-to-int v0, v4

    .line 45
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v4}, Lmb/g;->n()Lmb/a;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {v4, v0}, Lmb/a;->z(I)Lmb/b;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1}, Lmb/g;->n()Lmb/a;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    const-wide v4, 0xffffffffL

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    and-long/2addr v2, v4

    .line 71
    long-to-int v3, v2

    .line 72
    invoke-virtual {v1, v3}, Lmb/a;->z(I)Lmb/b;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    iget v3, v0, Lmb/b;->b:I

    .line 77
    .line 78
    iget v4, v0, Lmb/b;->c:I

    .line 79
    .line 80
    iget v5, v1, Lmb/b;->b:I

    .line 81
    .line 82
    iget v6, v1, Lmb/b;->c:I

    .line 83
    .line 84
    iget-object v2, p0, Ltb/r;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 85
    .line 86
    const/4 v7, 0x6

    .line 87
    const/4 v8, 0x1

    .line 88
    invoke-virtual/range {v2 .. v8}, Lio/github/rosemoe/sora/widget/CodeEditor;->j0(IIIIIZ)V

    .line 89
    .line 90
    .line 91
    :cond_2
    return-void
.end method

.method public final e()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Ltb/r;->a()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ltb/r;->f()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_4

    .line 9
    .line 10
    iget-object v0, p0, Ltb/r;->f:Lsb/e;

    .line 11
    .line 12
    if-eqz v0, :cond_4

    .line 13
    .line 14
    iget v1, v0, Lsb/e;->b:I

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v1, p0, Ltb/r;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 20
    .line 21
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iget-object v2, v2, Lmb/j;->c:Lmb/b;

    .line 26
    .line 27
    iget v2, v2, Lmb/b;->a:I

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Lsb/e;->d(I)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    iget v3, v0, Lsb/e;->b:I

    .line 34
    .line 35
    const/16 v4, 0x20

    .line 36
    .line 37
    if-eq v2, v3, :cond_1

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Lsb/e;->c(I)J

    .line 40
    .line 41
    .line 42
    move-result-wide v5

    .line 43
    shr-long/2addr v5, v4

    .line 44
    long-to-int v3, v5

    .line 45
    if-lt v3, v2, :cond_2

    .line 46
    .line 47
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 48
    .line 49
    :cond_2
    if-gez v2, :cond_3

    .line 50
    .line 51
    iget v2, v0, Lsb/e;->b:I

    .line 52
    .line 53
    add-int/lit8 v2, v2, -0x1

    .line 54
    .line 55
    :cond_3
    if-ltz v2, :cond_4

    .line 56
    .line 57
    iget v3, v0, Lsb/e;->b:I

    .line 58
    .line 59
    if-ge v2, v3, :cond_4

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Lsb/e;->c(I)J

    .line 62
    .line 63
    .line 64
    move-result-wide v2

    .line 65
    const-wide v5, 0xffffffffL

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    and-long/2addr v5, v2

    .line 71
    long-to-int v0, v5

    .line 72
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    invoke-virtual {v5}, Lmb/g;->n()Lmb/a;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    shr-long/2addr v2, v4

    .line 81
    long-to-int v3, v2

    .line 82
    invoke-virtual {v5, v3}, Lmb/a;->z(I)Lmb/b;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v1}, Lmb/g;->n()Lmb/a;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v1, v0}, Lmb/a;->z(I)Lmb/b;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iget v4, v2, Lmb/b;->b:I

    .line 99
    .line 100
    iget v5, v2, Lmb/b;->c:I

    .line 101
    .line 102
    iget v6, v0, Lmb/b;->b:I

    .line 103
    .line 104
    iget v7, v0, Lmb/b;->c:I

    .line 105
    .line 106
    iget-object v3, p0, Ltb/r;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 107
    .line 108
    const/4 v8, 0x6

    .line 109
    const/4 v9, 0x1

    .line 110
    invoke-virtual/range {v3 .. v9}, Lio/github/rosemoe/sora/widget/CodeEditor;->j0(IIIIIZ)V

    .line 111
    .line 112
    .line 113
    :cond_4
    :goto_0
    return-void
.end method

.method public final f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ltb/r;->e:Ljava/lang/Thread;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    :goto_1
    return v0
.end method

.method public final g(Ljava/lang/String;)V
    .locals 12

    .line 1
    iget-object v0, p0, Ltb/r;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->N()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_3

    .line 10
    :cond_0
    invoke-virtual {p0}, Ltb/r;->a()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Ltb/r;->f()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    if-nez v1, :cond_2

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    sget-object v0, Lcb/a;->a:Landroid/util/SparseIntArray;

    .line 25
    .line 26
    const v1, 0x7f130164

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move v1, v0

    .line 37
    :goto_0
    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 42
    .line 43
    .line 44
    goto :goto_3

    .line 45
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sget-object v1, Lcb/a;->a:Landroid/util/SparseIntArray;

    .line 50
    .line 51
    const v3, 0x7f13016b

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v3}, Landroid/util/SparseIntArray;->get(I)I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-nez v4, :cond_3

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    move v3, v4

    .line 62
    :goto_1
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    const v4, 0x7f130165

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v4}, Landroid/util/SparseIntArray;->get(I)I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-nez v1, :cond_4

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_4
    move v4, v1

    .line 77
    :goto_2
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    const/4 v4, 0x1

    .line 82
    invoke-static {v0, v3, v1, v4, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    .line 83
    .line 84
    .line 85
    move-result-object v11

    .line 86
    iget-object v9, p0, Ltb/r;->f:Lsb/e;

    .line 87
    .line 88
    iget-object v7, p0, Ltb/r;->c:Ltb/p;

    .line 89
    .line 90
    iget-object v8, p0, Ltb/r;->b:Ljava/lang/String;

    .line 91
    .line 92
    new-instance v0, Ljava/lang/Thread;

    .line 93
    .line 94
    new-instance v1, Ltb/n;

    .line 95
    .line 96
    move-object v5, v1

    .line 97
    move-object v6, p0

    .line 98
    move-object v10, p1

    .line 99
    invoke-direct/range {v5 .. v11}, Ltb/n;-><init>(Ltb/r;Ltb/p;Ljava/lang/String;Lsb/e;Ljava/lang/String;Landroid/app/ProgressDialog;)V

    .line 100
    .line 101
    .line 102
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 106
    .line 107
    .line 108
    :goto_3
    return-void
.end method

.method public final h()V
    .locals 2

    .line 1
    iget-object v0, p0, Ltb/r;->e:Ljava/lang/Thread;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Ltb/r;->e:Ljava/lang/Thread;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 14
    .line 15
    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Ltb/r;->e:Ljava/lang/Thread;

    .line 18
    .line 19
    iput-object v0, p0, Ltb/r;->f:Lsb/e;

    .line 20
    .line 21
    iput-object v0, p0, Ltb/r;->b:Ljava/lang/String;

    .line 22
    .line 23
    iput-object v0, p0, Ltb/r;->c:Ltb/p;

    .line 24
    .line 25
    new-instance v0, Ldb/v;

    .line 26
    .line 27
    iget-object v1, p0, Ltb/r;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 28
    .line 29
    invoke-direct {v0, v1}, Ldb/v;-><init>(Lio/github/rosemoe/sora/widget/CodeEditor;)V

    .line 30
    .line 31
    .line 32
    iget-object v1, v1, Lio/github/rosemoe/sora/widget/CodeEditor;->i:Ldb/p;

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Ldb/p;->a(Lbi/a;)I

    .line 35
    .line 36
    .line 37
    return-void
.end method
