.class public final Lba/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    const/4 v0, 0x7

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string p1, ""

    iput-object p1, p0, Lba/i;->a:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lba/i;->b:Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lba/i;->c:Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Lba/i;->d:Ljava/lang/Object;

    .line 6
    iput-object p1, p0, Lba/i;->e:Ljava/lang/Object;

    .line 7
    iput-object p1, p0, Lba/i;->f:Ljava/lang/Object;

    return-void

    .line 8
    :pswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x7f080087

    const v1, 0x7f08003d

    const v2, 0x7f080089

    .line 9
    filled-new-array {v2, p1, v1}, [I

    move-result-object p1

    iput-object p1, p0, Lba/i;->a:Ljava/lang/Object;

    .line 10
    new-array p1, v0, [I

    fill-array-data p1, :array_0

    iput-object p1, p0, Lba/i;->b:Ljava/lang/Object;

    .line 11
    new-array p1, v0, [I

    fill-array-data p1, :array_1

    iput-object p1, p0, Lba/i;->c:Ljava/lang/Object;

    const p1, 0x7f08004c

    const v0, 0x7f08006d

    const v1, 0x7f08006e

    .line 12
    filled-new-array {v1, p1, v0}, [I

    move-result-object p1

    iput-object p1, p0, Lba/i;->d:Ljava/lang/Object;

    const p1, 0x7f080080

    const v0, 0x7f08008a

    .line 13
    filled-new-array {p1, v0}, [I

    move-result-object p1

    iput-object p1, p0, Lba/i;->e:Ljava/lang/Object;

    const p1, 0x7f080041

    const v0, 0x7f080047

    const v1, 0x7f080040

    const v2, 0x7f080046

    .line 14
    filled-new-array {v1, v2, p1, v0}, [I

    move-result-object p1

    iput-object p1, p0, Lba/i;->f:Ljava/lang/Object;

    return-void

    .line 15
    :pswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lba/i;->b:Ljava/lang/Object;

    const/4 p1, 0x5

    .line 17
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lba/i;->c:Ljava/lang/Object;

    .line 18
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lba/i;->d:Ljava/lang/Object;

    .line 19
    new-instance p1, Lcom/yunpan/appmanage/carsdk/u;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p1, p0, v0, v1}, Lcom/yunpan/appmanage/carsdk/u;-><init>(Ljava/lang/Object;Landroid/os/Looper;I)V

    iput-object p1, p0, Lba/i;->f:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 4
        0x7f080055
        0x7f080078
        0x7f08005c
        0x7f080057
        0x7f080058
        0x7f08005b
        0x7f08005a
    .end array-data

    :array_1
    .array-data 4
        0x7f080086
        0x7f080088
        0x7f08004e
        0x7f080082
        0x7f080083
        0x7f080084
        0x7f080085
    .end array-data
.end method

.method public constructor <init>(Ld2/q;Landroid/media/MediaFormat;Lr1/p;Landroid/view/Surface;Landroid/media/MediaCrypto;Lv3/f;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lba/i;->a:Ljava/lang/Object;

    .line 22
    iput-object p2, p0, Lba/i;->b:Ljava/lang/Object;

    .line 23
    iput-object p3, p0, Lba/i;->c:Ljava/lang/Object;

    .line 24
    iput-object p4, p0, Lba/i;->d:Ljava/lang/Object;

    .line 25
    iput-object p5, p0, Lba/i;->e:Ljava/lang/Object;

    .line 26
    iput-object p6, p0, Lba/i;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lr1/o0;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lba/i;->a:Ljava/lang/Object;

    .line 29
    sget-object p1, Lu7/g0;->b:Lu7/e0;

    .line 30
    sget-object p1, Lu7/y0;->e:Lu7/y0;

    .line 31
    iput-object p1, p0, Lba/i;->b:Ljava/lang/Object;

    .line 32
    sget-object p1, Lu7/d1;->g:Lu7/d1;

    iput-object p1, p0, Lba/i;->c:Ljava/lang/Object;

    return-void
.end method

.method public static b(I[I)Z
    .locals 4

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    if-ge v2, v0, :cond_1

    .line 5
    .line 6
    aget v3, p1, v2

    .line 7
    .line 8
    if-ne v3, p0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    return p0

    .line 12
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    return v1
.end method

.method public static d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 5

    .line 1
    const v0, 0x7f04011d

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Lw/b3;->c(Landroid/content/Context;I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const v1, 0x7f04011a

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v1}, Lw/b3;->b(Landroid/content/Context;I)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    invoke-static {v0, p1}, Lp0/a;->b(II)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-static {v0, p1}, Lp0/a;->b(II)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v2, 0x4

    .line 24
    new-array v2, v2, [[I

    .line 25
    .line 26
    sget-object v3, Lw/b3;->b:[I

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    aput-object v3, v2, v4

    .line 30
    .line 31
    sget-object v3, Lw/b3;->d:[I

    .line 32
    .line 33
    const/4 v4, 0x1

    .line 34
    aput-object v3, v2, v4

    .line 35
    .line 36
    sget-object v3, Lw/b3;->c:[I

    .line 37
    .line 38
    const/4 v4, 0x2

    .line 39
    aput-object v3, v2, v4

    .line 40
    .line 41
    sget-object v3, Lw/b3;->f:[I

    .line 42
    .line 43
    const/4 v4, 0x3

    .line 44
    aput-object v3, v2, v4

    .line 45
    .line 46
    filled-new-array {p0, v1, v0, p1}, [I

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    new-instance p1, Landroid/content/res/ColorStateList;

    .line 51
    .line 52
    invoke-direct {p1, v2, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 53
    .line 54
    .line 55
    return-object p1
.end method

.method public static e(Lr1/m0;Lu7/g0;Lf2/c0;Lr1/o0;)Lf2/c0;
    .locals 10

    .line 1
    check-cast p0, Ly1/x;

    .line 2
    .line 3
    invoke-virtual {p0}, Ly1/x;->E()Lr1/q0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Ly1/x;->B()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {v0}, Lr1/q0;->p()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    move-object v2, v3

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {v0, v1}, Lr1/q0;->l(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    :goto_0
    invoke-virtual {p0}, Ly1/x;->N()Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-nez v4, :cond_2

    .line 29
    .line 30
    invoke-virtual {v0}, Lr1/q0;->p()Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    const/4 v4, 0x0

    .line 38
    invoke-virtual {v0, v1, p3, v4}, Lr1/q0;->f(ILr1/o0;Z)Lr1/o0;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p0}, Ly1/x;->C()J

    .line 43
    .line 44
    .line 45
    move-result-wide v4

    .line 46
    invoke-static {v4, v5}, Lu1/f0;->G(J)J

    .line 47
    .line 48
    .line 49
    move-result-wide v4

    .line 50
    iget-wide v6, p3, Lr1/o0;->e:J

    .line 51
    .line 52
    sub-long/2addr v4, v6

    .line 53
    invoke-virtual {v0, v4, v5}, Lr1/o0;->b(J)I

    .line 54
    .line 55
    .line 56
    move-result p3

    .line 57
    goto :goto_2

    .line 58
    :cond_2
    :goto_1
    const/4 p3, -0x1

    .line 59
    :goto_2
    const/4 v0, 0x0

    .line 60
    :goto_3
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-ge v0, v1, :cond_4

    .line 65
    .line 66
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Lf2/c0;

    .line 71
    .line 72
    invoke-virtual {p0}, Ly1/x;->N()Z

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    invoke-virtual {p0}, Ly1/x;->y()I

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    invoke-virtual {p0}, Ly1/x;->z()I

    .line 81
    .line 82
    .line 83
    move-result v8

    .line 84
    move-object v4, v1

    .line 85
    move-object v5, v2

    .line 86
    move v9, p3

    .line 87
    invoke-static/range {v4 .. v9}, Lba/i;->h(Lf2/c0;Ljava/lang/Object;ZIII)Z

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-eqz v4, :cond_3

    .line 92
    .line 93
    return-object v1

    .line 94
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_4
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-eqz p1, :cond_5

    .line 102
    .line 103
    if-eqz p2, :cond_5

    .line 104
    .line 105
    invoke-virtual {p0}, Ly1/x;->N()Z

    .line 106
    .line 107
    .line 108
    move-result v6

    .line 109
    invoke-virtual {p0}, Ly1/x;->y()I

    .line 110
    .line 111
    .line 112
    move-result v7

    .line 113
    invoke-virtual {p0}, Ly1/x;->z()I

    .line 114
    .line 115
    .line 116
    move-result v8

    .line 117
    move-object v4, p2

    .line 118
    move-object v5, v2

    .line 119
    move v9, p3

    .line 120
    invoke-static/range {v4 .. v9}, Lba/i;->h(Lf2/c0;Ljava/lang/Object;ZIII)Z

    .line 121
    .line 122
    .line 123
    move-result p0

    .line 124
    if-eqz p0, :cond_5

    .line 125
    .line 126
    return-object p2

    .line 127
    :cond_5
    return-object v3
.end method

.method public static f(Lw/p2;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    const v2, 0x7f08007c

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1, v2}, Lw/p2;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const v3, 0x7f08007d

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1, v3}, Lw/p2;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    instance-of p1, v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-ne p1, p2, :cond_0

    .line 35
    .line 36
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-ne p1, p2, :cond_0

    .line 41
    .line 42
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 43
    .line 44
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 45
    .line 46
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-direct {p1, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 55
    .line 56
    invoke-static {p2, p2, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    new-instance v4, Landroid/graphics/Canvas;

    .line 61
    .line 62
    invoke-direct {v4, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v3, v3, p2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 69
    .line 70
    .line 71
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 72
    .line 73
    invoke-direct {v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 74
    .line 75
    .line 76
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    .line 77
    .line 78
    invoke-direct {v4, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 79
    .line 80
    .line 81
    move-object p1, v4

    .line 82
    :goto_0
    sget-object v4, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 83
    .line 84
    invoke-virtual {p1, v4}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    .line 85
    .line 86
    .line 87
    instance-of v4, p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 88
    .line 89
    if-eqz v4, :cond_1

    .line 90
    .line 91
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    if-ne v4, p2, :cond_1

    .line 96
    .line 97
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    if-ne v4, p2, :cond_1

    .line 102
    .line 103
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_1
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 107
    .line 108
    invoke-static {p2, p2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    new-instance v5, Landroid/graphics/Canvas;

    .line 113
    .line 114
    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, v3, v3, p2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 121
    .line 122
    .line 123
    new-instance p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 124
    .line 125
    invoke-direct {p0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 126
    .line 127
    .line 128
    :goto_1
    new-instance p2, Landroid/graphics/drawable/LayerDrawable;

    .line 129
    .line 130
    const/4 v4, 0x3

    .line 131
    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    .line 132
    .line 133
    aput-object v2, v4, v3

    .line 134
    .line 135
    aput-object p0, v4, v1

    .line 136
    .line 137
    aput-object p1, v4, v0

    .line 138
    .line 139
    invoke-direct {p2, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 140
    .line 141
    .line 142
    const/high16 p0, 0x1020000

    .line 143
    .line 144
    invoke-virtual {p2, v3, p0}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 145
    .line 146
    .line 147
    const p0, 0x102000f

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2, v1, p0}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 151
    .line 152
    .line 153
    const p0, 0x102000d

    .line 154
    .line 155
    .line 156
    invoke-virtual {p2, v0, p0}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 157
    .line 158
    .line 159
    return-object p2
.end method

.method public static h(Lf2/c0;Ljava/lang/Object;ZIII)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf2/c0;->a:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x0

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    iget p1, p0, Lf2/c0;->b:I

    .line 12
    .line 13
    if-eqz p2, :cond_1

    .line 14
    .line 15
    if-ne p1, p3, :cond_1

    .line 16
    .line 17
    iget p3, p0, Lf2/c0;->c:I

    .line 18
    .line 19
    if-eq p3, p4, :cond_2

    .line 20
    .line 21
    :cond_1
    if-nez p2, :cond_3

    .line 22
    .line 23
    const/4 p2, -0x1

    .line 24
    if-ne p1, p2, :cond_3

    .line 25
    .line 26
    iget p0, p0, Lf2/c0;->e:I

    .line 27
    .line 28
    if-ne p0, p5, :cond_3

    .line 29
    .line 30
    :cond_2
    const/4 v0, 0x1

    .line 31
    :cond_3
    return v0
.end method

.method public static i(Landroid/graphics/drawable/Drawable;I)V
    .locals 2

    .line 1
    sget-object v0, Lw/s;->b:Landroid/graphics/PorterDuff$Mode;

    .line 2
    .line 3
    sget-object v1, Lw/n1;->a:[I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p1, v0}, Lw/s;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public a(Landroidx/room/s;Lf2/c0;Lr1/q0;)V
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p2, Lf2/c0;->a:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {p3, v0}, Lr1/q0;->b(Ljava/lang/Object;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, -0x1

    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1, p2, p3}, Landroidx/room/s;->A(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iget-object p3, p0, Lba/i;->c:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p3, Lu7/d1;

    .line 20
    .line 21
    invoke-virtual {p3, p2}, Lu7/d1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    check-cast p3, Lr1/q0;

    .line 26
    .line 27
    if-eqz p3, :cond_2

    .line 28
    .line 29
    invoke-virtual {p1, p2, p3}, Landroidx/room/s;->A(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :cond_2
    :goto_0
    return-void
.end method

.method public c(J)V
    .locals 8

    .line 1
    const-string v0, "\u5747\u901f:"

    .line 2
    .line 3
    iget-object v1, p0, Lba/i;->e:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lja/b;

    .line 6
    .line 7
    iget-object v1, v1, Lja/b;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 10
    .line 11
    .line 12
    const-wide/16 v1, 0x0

    .line 13
    .line 14
    cmp-long v3, p1, v1

    .line 15
    .line 16
    if-lez v3, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Lba/i;->e:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Lja/b;

    .line 21
    .line 22
    iget-object v1, v1, Lja/b;->i:Ljava/util/concurrent/atomic/AtomicLong;

    .line 23
    .line 24
    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object p1, p0, Lba/i;->e:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p1, Lja/b;

    .line 30
    .line 31
    monitor-enter p1

    .line 32
    :try_start_0
    iget-object p2, p0, Lba/i;->e:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p2, Lja/b;

    .line 35
    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 37
    .line 38
    .line 39
    move-result-wide v1

    .line 40
    iget-object v3, p0, Lba/i;->e:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v3, Lja/b;

    .line 43
    .line 44
    iget-wide v3, v3, Lja/b;->j:J

    .line 45
    .line 46
    sub-long/2addr v1, v3

    .line 47
    invoke-static {v1, v2}, Lha/v9;->b(J)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iput-object v1, p2, Lja/b;->k:Ljava/lang/String;

    .line 52
    .line 53
    iget-object p2, p0, Lba/i;->e:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast p2, Lja/b;

    .line 56
    .line 57
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 58
    .line 59
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 60
    .line 61
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 62
    .line 63
    iget-object v2, p2, Lja/b;->i:Ljava/util/concurrent/atomic/AtomicLong;

    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 66
    .line 67
    .line 68
    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    long-to-double v2, v2

    .line 70
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    .line 71
    .line 72
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    .line 73
    .line 74
    .line 75
    mul-double v2, v2, v4

    .line 76
    .line 77
    :try_start_1
    iget-object v4, p0, Lba/i;->e:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v4, Lja/b;

    .line 80
    .line 81
    iget-object v4, v4, Lja/b;->h:Ljava/util/concurrent/atomic/AtomicLong;

    .line 82
    .line 83
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 84
    .line 85
    .line 86
    move-result-wide v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    long-to-double v4, v4

    .line 88
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    .line 89
    .line 90
    .line 91
    div-double/2addr v2, v4

    .line 92
    :try_start_2
    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    iput-object v1, p2, Lja/b;->e:Ljava/lang/String;

    .line 97
    .line 98
    iget-object p2, p0, Lba/i;->e:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast p2, Lja/b;

    .line 101
    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lba/i;->e:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast v0, Lja/b;

    .line 110
    .line 111
    iget-object v0, v0, Lja/b;->i:Ljava/util/concurrent/atomic/AtomicLong;

    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 114
    .line 115
    .line 116
    move-result-wide v4

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 118
    .line 119
    .line 120
    move-result-wide v2

    .line 121
    iget-object v0, p0, Lba/i;->e:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast v0, Lja/b;

    .line 124
    .line 125
    iget-wide v6, v0, Lja/b;->j:J

    .line 126
    .line 127
    sub-long v6, v2, v6

    .line 128
    .line 129
    const-wide/16 v2, 0x0

    .line 130
    .line 131
    invoke-static/range {v2 .. v7}, Lha/v9;->a(JJJ)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string v0, " MB/s"

    .line 139
    .line 140
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    iput-object v0, p2, Lja/b;->d:Ljava/lang/String;

    .line 148
    .line 149
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 150
    iget-object p1, p0, Lba/i;->f:Ljava/lang/Object;

    .line 151
    .line 152
    check-cast p1, Lcom/yunpan/appmanage/carsdk/u;

    .line 153
    .line 154
    const/16 p2, 0x12d

    .line 155
    .line 156
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 157
    .line 158
    .line 159
    return-void

    .line 160
    :catchall_0
    move-exception p2

    .line 161
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 162
    throw p2
.end method

.method public g(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 8

    .line 1
    const v0, 0x7f080051

    .line 2
    .line 3
    .line 4
    if-ne p2, v0, :cond_0

    .line 5
    .line 6
    const p2, 0x7f060015

    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2}, Ln0/g;->d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    const v0, 0x7f08007f

    .line 15
    .line 16
    .line 17
    if-ne p2, v0, :cond_1

    .line 18
    .line 19
    const p2, 0x7f060018

    .line 20
    .line 21
    .line 22
    invoke-static {p1, p2}, Ln0/g;->d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1

    .line 27
    :cond_1
    const v0, 0x7f08007e

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    if-ne p2, v0, :cond_3

    .line 32
    .line 33
    const/4 p2, 0x3

    .line 34
    new-array v0, p2, [[I

    .line 35
    .line 36
    new-array p2, p2, [I

    .line 37
    .line 38
    const v2, 0x7f04014f

    .line 39
    .line 40
    .line 41
    invoke-static {p1, v2}, Lw/b3;->d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    const/4 v4, 0x2

    .line 46
    const v5, 0x7f04011c

    .line 47
    .line 48
    .line 49
    const/4 v6, 0x1

    .line 50
    if-eqz v3, :cond_2

    .line 51
    .line 52
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    if-eqz v7, :cond_2

    .line 57
    .line 58
    sget-object v2, Lw/b3;->b:[I

    .line 59
    .line 60
    aput-object v2, v0, v1

    .line 61
    .line 62
    invoke-virtual {v3, v2, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    aput v2, p2, v1

    .line 67
    .line 68
    sget-object v1, Lw/b3;->e:[I

    .line 69
    .line 70
    aput-object v1, v0, v6

    .line 71
    .line 72
    invoke-static {p1, v5}, Lw/b3;->c(Landroid/content/Context;I)I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    aput p1, p2, v6

    .line 77
    .line 78
    sget-object p1, Lw/b3;->f:[I

    .line 79
    .line 80
    aput-object p1, v0, v4

    .line 81
    .line 82
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    aput p1, p2, v4

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_2
    sget-object v3, Lw/b3;->b:[I

    .line 90
    .line 91
    aput-object v3, v0, v1

    .line 92
    .line 93
    invoke-static {p1, v2}, Lw/b3;->b(Landroid/content/Context;I)I

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    aput v3, p2, v1

    .line 98
    .line 99
    sget-object v1, Lw/b3;->e:[I

    .line 100
    .line 101
    aput-object v1, v0, v6

    .line 102
    .line 103
    invoke-static {p1, v5}, Lw/b3;->c(Landroid/content/Context;I)I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    aput v1, p2, v6

    .line 108
    .line 109
    sget-object v1, Lw/b3;->f:[I

    .line 110
    .line 111
    aput-object v1, v0, v4

    .line 112
    .line 113
    invoke-static {p1, v2}, Lw/b3;->c(Landroid/content/Context;I)I

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    aput p1, p2, v4

    .line 118
    .line 119
    :goto_0
    new-instance p1, Landroid/content/res/ColorStateList;

    .line 120
    .line 121
    invoke-direct {p1, v0, p2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 122
    .line 123
    .line 124
    return-object p1

    .line 125
    :cond_3
    const v0, 0x7f080045

    .line 126
    .line 127
    .line 128
    if-ne p2, v0, :cond_4

    .line 129
    .line 130
    const p2, 0x7f04011a

    .line 131
    .line 132
    .line 133
    invoke-static {p1, p2}, Lw/b3;->c(Landroid/content/Context;I)I

    .line 134
    .line 135
    .line 136
    move-result p2

    .line 137
    invoke-static {p1, p2}, Lba/i;->d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    return-object p1

    .line 142
    :cond_4
    const v0, 0x7f08003f

    .line 143
    .line 144
    .line 145
    if-ne p2, v0, :cond_5

    .line 146
    .line 147
    invoke-static {p1, v1}, Lba/i;->d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    return-object p1

    .line 152
    :cond_5
    const v0, 0x7f080044

    .line 153
    .line 154
    .line 155
    if-ne p2, v0, :cond_6

    .line 156
    .line 157
    const p2, 0x7f040118

    .line 158
    .line 159
    .line 160
    invoke-static {p1, p2}, Lw/b3;->c(Landroid/content/Context;I)I

    .line 161
    .line 162
    .line 163
    move-result p2

    .line 164
    invoke-static {p1, p2}, Lba/i;->d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    return-object p1

    .line 169
    :cond_6
    const v0, 0x7f08007a

    .line 170
    .line 171
    .line 172
    if-eq p2, v0, :cond_c

    .line 173
    .line 174
    const v0, 0x7f08007b

    .line 175
    .line 176
    .line 177
    if-ne p2, v0, :cond_7

    .line 178
    .line 179
    goto :goto_1

    .line 180
    :cond_7
    iget-object v0, p0, Lba/i;->b:Ljava/lang/Object;

    .line 181
    .line 182
    check-cast v0, [I

    .line 183
    .line 184
    invoke-static {p2, v0}, Lba/i;->b(I[I)Z

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    if-eqz v0, :cond_8

    .line 189
    .line 190
    const p2, 0x7f04011e

    .line 191
    .line 192
    .line 193
    invoke-static {p1, p2}, Lw/b3;->d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    return-object p1

    .line 198
    :cond_8
    iget-object v0, p0, Lba/i;->e:Ljava/lang/Object;

    .line 199
    .line 200
    check-cast v0, [I

    .line 201
    .line 202
    invoke-static {p2, v0}, Lba/i;->b(I[I)Z

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    if-eqz v0, :cond_9

    .line 207
    .line 208
    const p2, 0x7f060014

    .line 209
    .line 210
    .line 211
    invoke-static {p1, p2}, Ln0/g;->d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    return-object p1

    .line 216
    :cond_9
    iget-object v0, p0, Lba/i;->f:Ljava/lang/Object;

    .line 217
    .line 218
    check-cast v0, [I

    .line 219
    .line 220
    invoke-static {p2, v0}, Lba/i;->b(I[I)Z

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    if-eqz v0, :cond_a

    .line 225
    .line 226
    const p2, 0x7f060013

    .line 227
    .line 228
    .line 229
    invoke-static {p1, p2}, Ln0/g;->d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    return-object p1

    .line 234
    :cond_a
    const v0, 0x7f080077

    .line 235
    .line 236
    .line 237
    if-ne p2, v0, :cond_b

    .line 238
    .line 239
    const p2, 0x7f060016

    .line 240
    .line 241
    .line 242
    invoke-static {p1, p2}, Ln0/g;->d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    return-object p1

    .line 247
    :cond_b
    const/4 p1, 0x0

    .line 248
    return-object p1

    .line 249
    :cond_c
    :goto_1
    const p2, 0x7f060017

    .line 250
    .line 251
    .line 252
    invoke-static {p1, p2}, Ln0/g;->d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    return-object p1
.end method

.method public j(Lr1/q0;)V
    .locals 3

    .line 1
    invoke-static {}, Lu7/d1;->a()Landroidx/room/s;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lba/i;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lu7/g0;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Lba/i;->e:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v1, Lf2/c0;

    .line 18
    .line 19
    invoke-virtual {p0, v0, v1, p1}, Lba/i;->a(Landroidx/room/s;Lf2/c0;Lr1/q0;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lba/i;->f:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v1, Lf2/c0;

    .line 25
    .line 26
    iget-object v2, p0, Lba/i;->e:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v2, Lf2/c0;

    .line 29
    .line 30
    invoke-static {v1, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_0

    .line 35
    .line 36
    iget-object v1, p0, Lba/i;->f:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v1, Lf2/c0;

    .line 39
    .line 40
    invoke-virtual {p0, v0, v1, p1}, Lba/i;->a(Landroidx/room/s;Lf2/c0;Lr1/q0;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    iget-object v1, p0, Lba/i;->d:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v1, Lf2/c0;

    .line 46
    .line 47
    iget-object v2, p0, Lba/i;->e:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v2, Lf2/c0;

    .line 50
    .line 51
    invoke-static {v1, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-nez v1, :cond_3

    .line 56
    .line 57
    iget-object v1, p0, Lba/i;->d:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v1, Lf2/c0;

    .line 60
    .line 61
    iget-object v2, p0, Lba/i;->f:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v2, Lf2/c0;

    .line 64
    .line 65
    invoke-static {v1, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-nez v1, :cond_3

    .line 70
    .line 71
    iget-object v1, p0, Lba/i;->d:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v1, Lf2/c0;

    .line 74
    .line 75
    invoke-virtual {p0, v0, v1, p1}, Lba/i;->a(Landroidx/room/s;Lf2/c0;Lr1/q0;)V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_1
    const/4 v1, 0x0

    .line 80
    :goto_0
    iget-object v2, p0, Lba/i;->b:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v2, Lu7/g0;

    .line 83
    .line 84
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-ge v1, v2, :cond_2

    .line 89
    .line 90
    iget-object v2, p0, Lba/i;->b:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v2, Lu7/g0;

    .line 93
    .line 94
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    check-cast v2, Lf2/c0;

    .line 99
    .line 100
    invoke-virtual {p0, v0, v2, p1}, Lba/i;->a(Landroidx/room/s;Lf2/c0;Lr1/q0;)V

    .line 101
    .line 102
    .line 103
    add-int/lit8 v1, v1, 0x1

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_2
    iget-object v1, p0, Lba/i;->b:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v1, Lu7/g0;

    .line 109
    .line 110
    iget-object v2, p0, Lba/i;->d:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast v2, Lf2/c0;

    .line 113
    .line 114
    invoke-virtual {v1, v2}, Lu7/g0;->contains(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-nez v1, :cond_3

    .line 119
    .line 120
    iget-object v1, p0, Lba/i;->d:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast v1, Lf2/c0;

    .line 123
    .line 124
    invoke-virtual {p0, v0, v1, p1}, Lba/i;->a(Landroidx/room/s;Lf2/c0;Lr1/q0;)V

    .line 125
    .line 126
    .line 127
    :cond_3
    :goto_1
    const/4 p1, 0x1

    .line 128
    invoke-virtual {v0, p1}, Landroidx/room/s;->b(Z)Lu7/d1;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    iput-object p1, p0, Lba/i;->c:Ljava/lang/Object;

    .line 133
    .line 134
    return-void
.end method
