.class public final Lha/u3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/wd;


# instance fields
.field public a:I

.field public final b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lha/u3;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lha/u3;->c:Ljava/lang/Object;

    .line 7
    iput-object v0, p0, Lha/u3;->d:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lha/u3;->a:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lha/u3;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lha/u3;->a:I

    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lha/u3;->c:Ljava/lang/Object;

    .line 14
    iput-object p1, p0, Lha/u3;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lha/u3;->a:I

    .line 3
    iput-object p1, p0, Lha/u3;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lha/v3;Lcom/yunpan/appmanage/bean/NameContentSelectBean;Lc6/g;I)V
    .locals 0

    .line 9
    iput-object p1, p0, Lha/u3;->d:Ljava/lang/Object;

    iput-object p2, p0, Lha/u3;->b:Ljava/lang/Object;

    iput-object p3, p0, Lha/u3;->c:Ljava/lang/Object;

    iput p4, p0, Lha/u3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Lw4/k;)Lw4/k;
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lw4/k;->b:Ly4/c;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sget-object v1, Ly4/c;->q:Ly4/c;

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    sget-object v0, Ly4/c;->v:Ly4/c;

    .line 13
    .line 14
    iget p0, p0, Lw4/k;->a:I

    .line 15
    .line 16
    invoke-static {p0, v0}, Lw4/k;->d(ILy4/c;)Lw4/k;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :cond_0
    return-object p0
.end method


# virtual methods
.method public D()V
    .locals 5

    .line 1
    sget-object v0, Lwa/t;->a:Lwa/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :try_start_0
    iput v1, v0, Lwa/u;->A:I

    .line 8
    .line 9
    iget-object v2, v0, Lwa/u;->b:Lz7/s;

    .line 10
    .line 11
    const-string v3, "FuseProtectionLogcatCount"

    .line 12
    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-virtual {v2, v3, v4}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    :catch_0
    invoke-virtual {v0}, Lwa/u;->i()V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lha/u3;->b:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Lcom/yunpan/appmanage/bean/NameContentSelectBean;

    .line 26
    .line 27
    iput-boolean v1, v0, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->isSelect:Z

    .line 28
    .line 29
    const-string v1, "\u7194\u65ad\u4fdd\u62a4\uff1a\u4e24\u5206\u949f\u5185\u8fde\u7eed\u89e6\u53d140\u6b21\u6620\u5c04\u4ee5\u4e0a\u65f6\uff0c\u9a6c\u4e0a\u505c\u6b62\u81ea\u52a8\u5316"

    .line 30
    .line 31
    iput-object v1, v0, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->name:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v0, p0, Lha/u3;->c:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v0, Lc6/g;

    .line 36
    .line 37
    iget v1, p0, Lha/u3;->a:I

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lha/u3;->d:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v0, Lha/v3;

    .line 45
    .line 46
    iget-object v0, v0, Lha/a4;->b:Landroid/content/Context;

    .line 47
    .line 48
    invoke-static {v0}, Lta/m;->e(Landroid/content/Context;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public a(II)V
    .locals 11

    .line 1
    iget-object v0, p0, Lha/u3;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [I

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v3, 0x0

    .line 12
    :goto_0
    if-nez p1, :cond_1

    .line 13
    .line 14
    if-nez v3, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    if-ltz p1, :cond_9

    .line 18
    .line 19
    if-nez v3, :cond_2

    .line 20
    .line 21
    array-length p1, v0

    .line 22
    if-lt p2, p1, :cond_8

    .line 23
    .line 24
    :cond_2
    add-int/2addr p2, v1

    .line 25
    new-instance p1, Lw4/m;

    .line 26
    .line 27
    invoke-direct {p1, p2}, Lw4/m;-><init>(I)V

    .line 28
    .line 29
    .line 30
    new-array p2, p2, [I

    .line 31
    .line 32
    const/4 v0, -0x1

    .line 33
    invoke-static {p2, v0}, Ljava/util/Arrays;->fill([II)V

    .line 34
    .line 35
    .line 36
    if-nez v3, :cond_7

    .line 37
    .line 38
    iget-object v0, p0, Lha/u3;->c:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, Lw4/m;

    .line 41
    .line 42
    iget-object v1, v0, Lw4/m;->b:[Lw4/k;

    .line 43
    .line 44
    array-length v1, v1

    .line 45
    const/4 v3, 0x0

    .line 46
    :goto_1
    if-ge v3, v1, :cond_6

    .line 47
    .line 48
    invoke-virtual {v0, v3}, Lw4/m;->d(I)Lw4/k;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    if-eqz v4, :cond_5

    .line 53
    .line 54
    iget-object v5, p1, Lw4/m;->b:[Lw4/k;

    .line 55
    .line 56
    invoke-virtual {p1}, Lb5/f;->c()V

    .line 57
    .line 58
    .line 59
    if-eqz v4, :cond_4

    .line 60
    .line 61
    const/4 v6, -0x1

    .line 62
    iput v6, p1, Lw4/m;->c:I

    .line 63
    .line 64
    :try_start_0
    iget v6, v4, Lw4/k;->a:I

    .line 65
    .line 66
    aput-object v4, v5, v6

    .line 67
    .line 68
    const/4 v7, 0x0

    .line 69
    const/4 v8, 0x2

    .line 70
    if-lez v6, :cond_3

    .line 71
    .line 72
    add-int/lit8 v9, v6, -0x1

    .line 73
    .line 74
    aget-object v10, v5, v9

    .line 75
    .line 76
    if-eqz v10, :cond_3

    .line 77
    .line 78
    invoke-virtual {v10}, Lw4/k;->c()I

    .line 79
    .line 80
    .line 81
    move-result v10

    .line 82
    if-ne v10, v8, :cond_3

    .line 83
    .line 84
    aput-object v7, v5, v9

    .line 85
    .line 86
    :cond_3
    invoke-virtual {v4}, Lw4/k;->c()I

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    if-ne v4, v8, :cond_5

    .line 91
    .line 92
    add-int/lit8 v6, v6, 0x1

    .line 93
    .line 94
    aput-object v7, v5, v6
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 98
    .line 99
    const-string p2, "spec.getReg() out of range"

    .line 100
    .line 101
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw p1

    .line 105
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    .line 106
    .line 107
    const-string p2, "spec == null"

    .line 108
    .line 109
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw p1

    .line 113
    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_6
    iget-object v0, p0, Lha/u3;->d:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast v0, [I

    .line 119
    .line 120
    array-length v1, v0

    .line 121
    invoke-static {v0, v2, p2, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    .line 123
    .line 124
    :cond_7
    iput-object p1, p0, Lha/u3;->c:Ljava/lang/Object;

    .line 125
    .line 126
    iput-object p2, p0, Lha/u3;->d:Ljava/lang/Object;

    .line 127
    .line 128
    :cond_8
    return-void

    .line 129
    :cond_9
    new-instance p1, Ljava/lang/RuntimeException;

    .line 130
    .line 131
    const-string p2, "shouldn\'t happen"

    .line 132
    .line 133
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    goto :goto_4

    .line 137
    :goto_3
    throw p1

    .line 138
    :goto_4
    goto :goto_3
.end method

.method public b(IILw4/k;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p2, v0, :cond_8

    .line 3
    .line 4
    iget-object v0, p0, Lha/u3;->d:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, [I

    .line 7
    .line 8
    iget v1, p3, Lw4/k;->a:I

    .line 9
    .line 10
    aget v0, v0, v1

    .line 11
    .line 12
    if-ltz v0, :cond_1

    .line 13
    .line 14
    iget-object v1, p0, Lha/u3;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v1, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Ls4/n;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p1, 0x0

    .line 31
    throw p1

    .line 32
    :cond_1
    :goto_0
    invoke-static {p3}, Lha/u3;->d(Lw4/k;)Lw4/k;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget p3, p3, Lw4/k;->a:I

    .line 37
    .line 38
    invoke-virtual {p0, p1, p3}, Lha/u3;->a(II)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lha/u3;->d:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v1, [I

    .line 44
    .line 45
    aget p3, v1, p3

    .line 46
    .line 47
    if-ltz p3, :cond_2

    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_2
    iget-object p3, p0, Lha/u3;->b:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast p3, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    add-int/lit8 v1, v1, -0x1

    .line 59
    .line 60
    :goto_1
    const/4 v2, 0x0

    .line 61
    if-ltz v1, :cond_5

    .line 62
    .line 63
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    check-cast v3, Ls4/n;

    .line 68
    .line 69
    if-nez v3, :cond_3

    .line 70
    .line 71
    add-int/lit8 v1, v1, -0x1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    if-eqz p1, :cond_4

    .line 75
    .line 76
    iget p3, v0, Lw4/k;->a:I

    .line 77
    .line 78
    new-instance p3, Ls4/n;

    .line 79
    .line 80
    invoke-direct {p3, p1, p2, v0}, Ls4/n;-><init>(IILw4/k;)V

    .line 81
    .line 82
    .line 83
    throw v2

    .line 84
    :cond_4
    throw v2

    .line 85
    :cond_5
    iget-object p1, p0, Lha/u3;->c:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast p1, Lw4/m;

    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    :try_start_0
    iget-object p2, p1, Lw4/m;->b:[Lw4/k;

    .line 93
    .line 94
    iget v0, v0, Lw4/k;->a:I

    .line 95
    .line 96
    aput-object v2, p2, v0

    .line 97
    .line 98
    const/4 p2, -0x1

    .line 99
    iput p2, p1, Lw4/m;->c:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .line 101
    invoke-virtual {p3, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    iget p1, p0, Lha/u3;->a:I

    .line 105
    .line 106
    add-int/lit8 p1, p1, 0x1

    .line 107
    .line 108
    iput p1, p0, Lha/u3;->a:I

    .line 109
    .line 110
    add-int/2addr v1, p2

    .line 111
    :goto_2
    if-ltz v1, :cond_7

    .line 112
    .line 113
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    check-cast p1, Ls4/n;

    .line 118
    .line 119
    if-nez p1, :cond_6

    .line 120
    .line 121
    add-int/lit8 v1, v1, -0x1

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_6
    throw v2

    .line 125
    :cond_7
    :goto_3
    return-void

    .line 126
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 127
    .line 128
    const-string p2, "bogus reg"

    .line 129
    .line 130
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw p1

    .line 134
    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    .line 135
    .line 136
    const-string p2, "shouldn\'t happen"

    .line 137
    .line 138
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    goto :goto_5

    .line 142
    :goto_4
    throw p1

    .line 143
    :goto_5
    goto :goto_4
.end method

.method public c()V
    .locals 7

    .line 1
    iget-object v0, p0, Lha/u3;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-static {v1}, Lw/n1;->a(Landroid/graphics/drawable/Drawable;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    if-eqz v1, :cond_9

    .line 15
    .line 16
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 17
    .line 18
    const/16 v3, 0x15

    .line 19
    .line 20
    if-le v2, v3, :cond_1

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_1
    if-ne v2, v3, :cond_8

    .line 24
    .line 25
    iget-object v4, p0, Lha/u3;->d:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v4, Lw/d3;

    .line 28
    .line 29
    if-nez v4, :cond_2

    .line 30
    .line 31
    new-instance v4, Lw/d3;

    .line 32
    .line 33
    invoke-direct {v4}, Lw/d3;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v4, p0, Lha/u3;->d:Ljava/lang/Object;

    .line 37
    .line 38
    :cond_2
    iget-object v4, p0, Lha/u3;->d:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v4, Lw/d3;

    .line 41
    .line 42
    const/4 v5, 0x0

    .line 43
    iput-object v5, v4, Lw/d3;->a:Landroid/content/res/ColorStateList;

    .line 44
    .line 45
    const/4 v6, 0x0

    .line 46
    iput-boolean v6, v4, Lw/d3;->d:Z

    .line 47
    .line 48
    iput-object v5, v4, Lw/d3;->b:Landroid/graphics/PorterDuff$Mode;

    .line 49
    .line 50
    iput-boolean v6, v4, Lw/d3;->c:Z

    .line 51
    .line 52
    if-lt v2, v3, :cond_3

    .line 53
    .line 54
    invoke-static {v0}, Lb1/f;->a(Landroid/widget/ImageView;)Landroid/content/res/ColorStateList;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    goto :goto_0

    .line 59
    :cond_3
    move-object v5, v0

    .line 60
    check-cast v5, Lb1/y;

    .line 61
    .line 62
    invoke-interface {v5}, Lb1/y;->getSupportImageTintList()Landroid/content/res/ColorStateList;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    :goto_0
    const/4 v6, 0x1

    .line 67
    if-eqz v5, :cond_4

    .line 68
    .line 69
    iput-boolean v6, v4, Lw/d3;->d:Z

    .line 70
    .line 71
    iput-object v5, v4, Lw/d3;->a:Landroid/content/res/ColorStateList;

    .line 72
    .line 73
    :cond_4
    if-lt v2, v3, :cond_5

    .line 74
    .line 75
    invoke-static {v0}, Lb1/f;->b(Landroid/widget/ImageView;)Landroid/graphics/PorterDuff$Mode;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    goto :goto_1

    .line 80
    :cond_5
    move-object v2, v0

    .line 81
    check-cast v2, Lb1/y;

    .line 82
    .line 83
    invoke-interface {v2}, Lb1/y;->getSupportImageTintMode()Landroid/graphics/PorterDuff$Mode;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    :goto_1
    if-eqz v2, :cond_6

    .line 88
    .line 89
    iput-boolean v6, v4, Lw/d3;->c:Z

    .line 90
    .line 91
    iput-object v2, v4, Lw/d3;->b:Landroid/graphics/PorterDuff$Mode;

    .line 92
    .line 93
    :cond_6
    iget-boolean v2, v4, Lw/d3;->d:Z

    .line 94
    .line 95
    if-nez v2, :cond_7

    .line 96
    .line 97
    iget-boolean v2, v4, Lw/d3;->c:Z

    .line 98
    .line 99
    if-eqz v2, :cond_8

    .line 100
    .line 101
    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-static {v1, v4, v0}, Lw/s;->e(Landroid/graphics/drawable/Drawable;Lw/d3;[I)V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :cond_8
    :goto_2
    iget-object v2, p0, Lha/u3;->c:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast v2, Lw/d3;

    .line 112
    .line 113
    if-eqz v2, :cond_9

    .line 114
    .line 115
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-static {v1, v2, v0}, Lw/s;->e(Landroid/graphics/drawable/Drawable;Lw/d3;[I)V

    .line 120
    .line 121
    .line 122
    :cond_9
    return-void
.end method

.method public e(Landroid/util/AttributeSet;I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lha/u3;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v3, Lp/a;->f:[I

    .line 10
    .line 11
    invoke-static {v1, p1, v3, p2}, Ls4/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ls4/a;

    .line 12
    .line 13
    .line 14
    move-result-object v7

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object v1, v7, Ls4/a;->c:Ljava/lang/Object;

    .line 20
    .line 21
    move-object v5, v1

    .line 22
    check-cast v5, Landroid/content/res/TypedArray;

    .line 23
    .line 24
    move-object v1, v0

    .line 25
    move-object v4, p1

    .line 26
    move v6, p2

    .line 27
    invoke-static/range {v1 .. v6}, Lx0/b1;->w(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    .line 28
    .line 29
    .line 30
    :try_start_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 31
    .line 32
    .line 33
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    const/4 p2, -0x1

    .line 35
    iget-object v1, v7, Ls4/a;->c:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v1, Landroid/content/res/TypedArray;

    .line 38
    .line 39
    if-nez p1, :cond_0

    .line 40
    .line 41
    const/4 v2, 0x1

    .line 42
    :try_start_1
    invoke-virtual {v1, v2, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eq v2, p2, :cond_0

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {p1, v2}, Lcom/bumptech/glide/d;->x(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-eqz p1, :cond_0

    .line 57
    .line 58
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception p1

    .line 63
    goto/16 :goto_3

    .line 64
    .line 65
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 66
    .line 67
    invoke-static {p1}, Lw/n1;->a(Landroid/graphics/drawable/Drawable;)V

    .line 68
    .line 69
    .line 70
    :cond_1
    const/4 p1, 0x2

    .line 71
    invoke-virtual {v1, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    const/16 v3, 0x15

    .line 76
    .line 77
    if-eqz v2, :cond_4

    .line 78
    .line 79
    invoke-virtual {v7, p1}, Ls4/a;->d(I)Landroid/content/res/ColorStateList;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 84
    .line 85
    if-lt v2, v3, :cond_3

    .line 86
    .line 87
    invoke-static {v0, p1}, Lb1/f;->c(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    .line 88
    .line 89
    .line 90
    if-ne v2, v3, :cond_4

    .line 91
    .line 92
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    if-eqz p1, :cond_4

    .line 97
    .line 98
    invoke-static {v0}, Lb1/f;->a(Landroid/widget/ImageView;)Landroid/content/res/ColorStateList;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    if-eqz v2, :cond_4

    .line 103
    .line 104
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-eqz v2, :cond_2

    .line 109
    .line 110
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 115
    .line 116
    .line 117
    :cond_2
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_3
    move-object v2, v0

    .line 122
    check-cast v2, Lb1/y;

    .line 123
    .line 124
    invoke-interface {v2, p1}, Lb1/y;->setSupportImageTintList(Landroid/content/res/ColorStateList;)V

    .line 125
    .line 126
    .line 127
    :cond_4
    :goto_1
    const/4 p1, 0x3

    .line 128
    invoke-virtual {v1, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    if-eqz v2, :cond_7

    .line 133
    .line 134
    invoke-virtual {v1, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    const/4 p2, 0x0

    .line 139
    invoke-static {p1, p2}, Lw/n1;->b(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 144
    .line 145
    if-lt p2, v3, :cond_6

    .line 146
    .line 147
    invoke-static {v0, p1}, Lb1/f;->d(Landroid/widget/ImageView;Landroid/graphics/PorterDuff$Mode;)V

    .line 148
    .line 149
    .line 150
    if-ne p2, v3, :cond_7

    .line 151
    .line 152
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    if-eqz p1, :cond_7

    .line 157
    .line 158
    invoke-static {v0}, Lb1/f;->a(Landroid/widget/ImageView;)Landroid/content/res/ColorStateList;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    if-eqz p2, :cond_7

    .line 163
    .line 164
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 165
    .line 166
    .line 167
    move-result p2

    .line 168
    if-eqz p2, :cond_5

    .line 169
    .line 170
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 175
    .line 176
    .line 177
    :cond_5
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 178
    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_6
    check-cast v0, Lb1/y;

    .line 182
    .line 183
    invoke-interface {v0, p1}, Lb1/y;->setSupportImageTintMode(Landroid/graphics/PorterDuff$Mode;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    .line 185
    .line 186
    :cond_7
    :goto_2
    invoke-virtual {v7}, Ls4/a;->r()V

    .line 187
    .line 188
    .line 189
    return-void

    .line 190
    :goto_3
    invoke-virtual {v7}, Ls4/a;->r()V

    .line 191
    .line 192
    .line 193
    throw p1
.end method

.method public f()Landroid/os/Looper;
    .locals 5

    .line 1
    iget-object v0, p0, Lha/u3;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lha/u3;->c:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v1, Landroid/os/Looper;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    iget v1, p0, Lha/u3;->a:I

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lha/u3;->d:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v1, Landroid/os/HandlerThread;

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    :goto_0
    invoke-static {v1}, La9/o;->t(Z)V

    .line 25
    .line 26
    .line 27
    new-instance v1, Landroid/os/HandlerThread;

    .line 28
    .line 29
    const-string v3, "ExoPlayer:Playback"

    .line 30
    .line 31
    const/16 v4, -0x10

    .line 32
    .line 33
    invoke-direct {v1, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lha/u3;->d:Ljava/lang/Object;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lha/u3;->d:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v1, Landroid/os/HandlerThread;

    .line 44
    .line 45
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iput-object v1, p0, Lha/u3;->c:Ljava/lang/Object;

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :catchall_0
    move-exception v1

    .line 53
    goto :goto_2

    .line 54
    :cond_1
    :goto_1
    iget v1, p0, Lha/u3;->a:I

    .line 55
    .line 56
    add-int/2addr v1, v2

    .line 57
    iput v1, p0, Lha/u3;->a:I

    .line 58
    .line 59
    iget-object v1, p0, Lha/u3;->c:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v1, Landroid/os/Looper;

    .line 62
    .line 63
    monitor-exit v0

    .line 64
    return-object v1

    .line 65
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    throw v1
.end method

.method public g()V
    .locals 3

    .line 1
    iget-object v0, p0, Lha/u3;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lha/u3;->a:I

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-lez v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    invoke-static {v1}, La9/o;->t(Z)V

    .line 13
    .line 14
    .line 15
    iget v1, p0, Lha/u3;->a:I

    .line 16
    .line 17
    sub-int/2addr v1, v2

    .line 18
    iput v1, p0, Lha/u3;->a:I

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    iget-object v1, p0, Lha/u3;->d:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v1, Landroid/os/HandlerThread;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 29
    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    iput-object v1, p0, Lha/u3;->d:Ljava/lang/Object;

    .line 33
    .line 34
    iput-object v1, p0, Lha/u3;->c:Ljava/lang/Object;

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :catchall_0
    move-exception v1

    .line 38
    goto :goto_2

    .line 39
    :cond_1
    :goto_1
    monitor-exit v0

    .line 40
    return-void

    .line 41
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw v1
.end method

.method public t()V
    .locals 0

    .line 1
    return-void
.end method
