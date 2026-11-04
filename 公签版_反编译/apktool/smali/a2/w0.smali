.class public La2/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li3/j;
.implements Lw4/e;
.implements Lha/wd;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    iput p1, p0, La2/w0;->a:I

    packed-switch p1, :pswitch_data_0

    .line 3
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance p1, Landroidx/leanback/widget/x0;

    invoke-direct {p1}, Landroidx/leanback/widget/x0;-><init>()V

    iput-object p1, p0, La2/w0;->b:Ljava/lang/Object;

    .line 5
    new-instance v0, Landroidx/leanback/widget/x0;

    invoke-direct {v0}, Landroidx/leanback/widget/x0;-><init>()V

    iput-object v0, p0, La2/w0;->c:Ljava/lang/Object;

    .line 6
    iput-object v0, p0, La2/w0;->d:Ljava/lang/Object;

    .line 7
    iput-object p1, p0, La2/w0;->e:Ljava/lang/Object;

    return-void

    .line 8
    :pswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance p1, Lu1/q;

    invoke-direct {p1}, Lu1/q;-><init>()V

    iput-object p1, p0, La2/w0;->b:Ljava/lang/Object;

    .line 10
    new-instance p1, Lu1/q;

    invoke-direct {p1}, Lu1/q;-><init>()V

    iput-object p1, p0, La2/w0;->c:Ljava/lang/Object;

    .line 11
    new-instance p1, Ll3/a;

    invoke-direct {p1}, Ll3/a;-><init>()V

    iput-object p1, p0, La2/w0;->d:Ljava/lang/Object;

    return-void

    .line 12
    :pswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance p1, Ld0/d;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Ld0/d;-><init>(I)V

    iput-object p1, p0, La2/w0;->b:Ljava/lang/Object;

    .line 14
    new-instance p1, La0/t;

    const/4 v0, 0x0

    .line 15
    invoke-direct {p1, v0}, La0/t;-><init>(I)V

    .line 16
    iput-object p1, p0, La2/w0;->c:Ljava/lang/Object;

    .line 17
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, La2/w0;->d:Ljava/lang/Object;

    .line 18
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, La2/w0;->e:Ljava/lang/Object;

    return-void

    .line 19
    :pswitch_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance p1, La0/e;

    invoke-direct {p1}, La0/e;-><init>()V

    iput-object p1, p0, La2/w0;->b:Ljava/lang/Object;

    .line 21
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, La2/w0;->c:Ljava/lang/Object;

    .line 22
    new-instance p1, La0/k;

    invoke-direct {p1}, La0/k;-><init>()V

    iput-object p1, p0, La2/w0;->d:Ljava/lang/Object;

    .line 23
    new-instance p1, La0/e;

    invoke-direct {p1}, La0/e;-><init>()V

    iput-object p1, p0, La2/w0;->e:Ljava/lang/Object;

    return-void

    .line 24
    :pswitch_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance p1, Lcom/yunpan/appmanage/carsdk/u;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x5

    invoke-direct {p1, p0, v0, v1}, Lcom/yunpan/appmanage/carsdk/u;-><init>(Ljava/lang/Object;Landroid/os/Looper;I)V

    iput-object p1, p0, La2/w0;->b:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public synthetic constructor <init>(IZ)V
    .locals 0

    .line 1
    iput p1, p0, La2/w0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V
    .locals 1

    const/16 v0, 0xd

    iput v0, p0, La2/w0;->a:I

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, La2/w0;->c:Ljava/lang/Object;

    .line 53
    iput-object p2, p0, La2/w0;->b:Ljava/lang/Object;

    .line 54
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, La2/w0;->d:Ljava/lang/Object;

    .line 55
    new-instance p1, La0/t;

    const/4 p2, 0x0

    .line 56
    invoke-direct {p1, p2}, La0/t;-><init>(I)V

    .line 57
    iput-object p1, p0, La2/w0;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Typeface;Lh1/b;)V
    .locals 5

    const/4 v0, 0x2

    iput v0, p0, La2/w0;->a:I

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, La2/w0;->e:Ljava/lang/Object;

    .line 28
    iput-object p2, p0, La2/w0;->b:Ljava/lang/Object;

    .line 29
    new-instance p1, Landroidx/emoji2/text/t;

    const/16 v0, 0x400

    invoke-direct {p1, v0}, Landroidx/emoji2/text/t;-><init>(I)V

    iput-object p1, p0, La2/w0;->d:Ljava/lang/Object;

    const/4 p1, 0x6

    .line 30
    invoke-virtual {p2, p1}, Lh1/c;->a(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 31
    iget v2, p2, Lh1/c;->a:I

    add-int/2addr v0, v2

    .line 32
    iget-object v2, p2, Lh1/c;->d:Ljava/lang/Object;

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    add-int/2addr v2, v0

    .line 33
    iget-object v0, p2, Lh1/c;->d:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x2

    .line 34
    new-array v0, v0, [C

    iput-object v0, p0, La2/w0;->c:Ljava/lang/Object;

    .line 35
    invoke-virtual {p2, p1}, Lh1/c;->a(I)I

    move-result p1

    if-eqz p1, :cond_1

    .line 36
    iget v0, p2, Lh1/c;->a:I

    add-int/2addr p1, v0

    .line 37
    iget-object v0, p2, Lh1/c;->d:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    add-int/2addr v0, p1

    .line 38
    iget-object p1, p2, Lh1/c;->d:Ljava/lang/Object;

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    const/4 p2, 0x0

    :goto_2
    if-ge p2, p1, :cond_4

    .line 39
    new-instance v0, Landroidx/emoji2/text/p;

    invoke-direct {v0, p0, p2}, Landroidx/emoji2/text/p;-><init>(La2/w0;I)V

    .line 40
    invoke-virtual {v0}, Landroidx/emoji2/text/p;->c()Lh1/a;

    move-result-object v2

    const/4 v3, 0x4

    .line 41
    invoke-virtual {v2, v3}, Lh1/c;->a(I)I

    move-result v3

    if-eqz v3, :cond_2

    iget-object v4, v2, Lh1/c;->d:Ljava/lang/Object;

    check-cast v4, Ljava/nio/ByteBuffer;

    iget v2, v2, Lh1/c;->a:I

    add-int/2addr v3, v2

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    goto :goto_3

    :cond_2
    const/4 v2, 0x0

    :goto_3
    mul-int/lit8 v3, p2, 0x2

    .line 42
    iget-object v4, p0, La2/w0;->c:Ljava/lang/Object;

    check-cast v4, [C

    invoke-static {v2, v4, v3}, Ljava/lang/Character;->toChars(I[CI)I

    .line 43
    invoke-virtual {v0}, Landroidx/emoji2/text/p;->b()I

    move-result v2

    const/4 v3, 0x1

    if-lez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_4

    :cond_3
    const/4 v2, 0x0

    :goto_4
    const-string v4, "invalid metadata codepoint length"

    invoke-static {v4, v2}, Ls1/g;->j(Ljava/lang/String;Z)V

    .line 44
    invoke-virtual {v0}, Landroidx/emoji2/text/p;->b()I

    move-result v2

    sub-int/2addr v2, v3

    iget-object v3, p0, La2/w0;->d:Ljava/lang/Object;

    check-cast v3, Landroidx/emoji2/text/t;

    invoke-virtual {v3, v0, v1, v2}, Landroidx/emoji2/text/t;->a(Landroidx/emoji2/text/p;II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public constructor <init>(Landroid/media/AudioTrack;La1/i;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, La2/w0;->a:I

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, La2/w0;->b:Ljava/lang/Object;

    .line 69
    iput-object p2, p0, La2/w0;->c:Ljava/lang/Object;

    const/4 p2, 0x0

    .line 70
    invoke-static {p2}, Lu1/f0;->k(Landroidx/media3/exoplayer/video/l;)Landroid/os/Handler;

    move-result-object p2

    .line 71
    iput-object p2, p0, La2/w0;->d:Ljava/lang/Object;

    .line 72
    new-instance v0, La2/v0;

    invoke-direct {v0, p0}, La2/v0;-><init>(La2/w0;)V

    iput-object v0, p0, La2/w0;->e:Ljava/lang/Object;

    .line 73
    invoke-static {p1, v0, p2}, La2/s0;->q(Landroid/media/AudioTrack;La2/v0;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 1

    const/16 v0, 0xa

    iput v0, p0, La2/w0;->a:I

    .line 80
    iput-object p1, p0, La2/w0;->e:Ljava/lang/Object;

    const/16 p1, 0xa

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, La2/w0;-><init>(IZ)V

    .line 81
    new-instance p1, Lm4/j;

    invoke-direct {p1, p0, v0}, Lm4/j;-><init>(La2/w0;I)V

    iput-object p1, p0, La2/w0;->b:Ljava/lang/Object;

    .line 82
    new-instance p1, Lm4/j;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lm4/j;-><init>(La2/w0;I)V

    iput-object p1, p0, La2/w0;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/yunpan/appmanage/ui/ActivityAdb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0xe

    iput v0, p0, La2/w0;->a:I

    .line 74
    iput-object p1, p0, La2/w0;->e:Ljava/lang/Object;

    iput-object p2, p0, La2/w0;->b:Ljava/lang/Object;

    iput-object p3, p0, La2/w0;->c:Ljava/lang/Object;

    iput-object p4, p0, La2/w0;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lf2/j1;[Z)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, La2/w0;->a:I

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, La2/w0;->b:Ljava/lang/Object;

    .line 77
    iput-object p2, p0, La2/w0;->c:Ljava/lang/Object;

    .line 78
    iget p1, p1, Lf2/j1;->a:I

    new-array p2, p1, [Z

    iput-object p2, p0, La2/w0;->d:Ljava/lang/Object;

    .line 79
    new-array p1, p1, [Z

    iput-object p1, p0, La2/w0;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p5, p0, La2/w0;->a:I

    iput-object p1, p0, La2/w0;->b:Ljava/lang/Object;

    iput-object p2, p0, La2/w0;->c:Ljava/lang/Object;

    iput-object p3, p0, La2/w0;->d:Ljava/lang/Object;

    iput-object p4, p0, La2/w0;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ll6/f;Lkf/d;)V
    .locals 1

    const/16 v0, 0xc

    iput v0, p0, La2/w0;->a:I

    .line 65
    iput-object p1, p0, La2/w0;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p2, p0, La2/w0;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ls4/r;Ls4/a;)V
    .locals 1

    const/16 v0, 0xb

    iput v0, p0, La2/w0;->a:I

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 46
    iput-object p1, p0, La2/w0;->b:Ljava/lang/Object;

    .line 47
    iput-object p2, p0, La2/w0;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 48
    iput-object p1, p0, La2/w0;->d:Ljava/lang/Object;

    .line 49
    iput-object p1, p0, La2/w0;->e:Ljava/lang/Object;

    return-void

    .line 50
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "unprocessedInsns == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lu7/y0;Lv1/i;Lv1/i;Lv1/i;)V
    .locals 1

    const/16 v0, 0xf

    iput v0, p0, La2/w0;->a:I

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 59
    invoke-static {p1}, Lu7/g0;->m(Ljava/util/Collection;)Lu7/g0;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Lu7/g0;->b:Lu7/e0;

    .line 60
    sget-object p1, Lu7/y0;->e:Lu7/y0;

    .line 61
    :goto_0
    iput-object p1, p0, La2/w0;->b:Ljava/lang/Object;

    .line 62
    iput-object p2, p0, La2/w0;->c:Ljava/lang/Object;

    .line 63
    iput-object p3, p0, La2/w0;->d:Ljava/lang/Object;

    .line 64
    iput-object p4, p0, La2/w0;->e:Ljava/lang/Object;

    return-void
.end method

.method public static A(Ljava/io/File;)Ljava/lang/String;
    .locals 13

    .line 1
    invoke-static {p0}, Lcom/yunpan/appmanage/util/a0;->f(Ljava/io/File;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "not empty"

    .line 6
    .line 7
    const-string v2, "\u65e0\u6743\u9650\u5220\u9664"

    .line 8
    .line 9
    const-string v3, "ermission denied"

    .line 10
    .line 11
    const-string v4, "such file or directory"

    .line 12
    .line 13
    const-wide/16 v5, 0x3a98

    .line 14
    .line 15
    const-string v7, "\u5220\u9664\u5931\u8d25"

    .line 16
    .line 17
    const-string v8, "\""

    .line 18
    .line 19
    const-string v9, "\u5220\u9664\u6210\u529f"

    .line 20
    .line 21
    const-string v10, "rm -rf \""

    .line 22
    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    invoke-static {p0}, Lcom/yunpan/appmanage/util/a0;->c(Ljava/io/File;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v11

    .line 40
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    :try_start_0
    sget-object v11, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 51
    .line 52
    sget-object v11, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 53
    .line 54
    iget v11, v11, Lcom/yunpan/appmanage/util/k;->n:I

    .line 55
    .line 56
    if-lez v11, :cond_0

    .line 57
    .line 58
    invoke-static {v0}, La2/w0;->w(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    const/4 v11, 0x1

    .line 63
    new-array v11, v11, [Ljava/lang/String;

    .line 64
    .line 65
    const/4 v12, 0x0

    .line 66
    aput-object v0, v11, v12

    .line 67
    .line 68
    invoke-static {v11}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lv9/e;->l0()Landroidx/room/s;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catch_0
    nop

    .line 77
    :goto_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 78
    .line 79
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    invoke-static {p0}, La2/w0;->s(Ljava/io/File;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_1

    .line 90
    .line 91
    invoke-static {p0}, Lcom/yunpan/appmanage/util/a0;->f(Ljava/io/File;)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-nez v0, :cond_1

    .line 96
    .line 97
    return-object v9

    .line 98
    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/File;

    .line 99
    .line 100
    new-instance v11, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v12

    .line 109
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v12, "/delete.tem"

    .line 113
    .line 114
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v11

    .line 121
    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 125
    .line 126
    .line 127
    invoke-static {p0}, Lcom/yunpan/appmanage/util/a0;->f(Ljava/io/File;)Z

    .line 128
    .line 129
    .line 130
    move-result p0

    .line 131
    if-nez p0, :cond_2

    .line 132
    .line 133
    invoke-static {v0}, La2/w0;->s(Ljava/io/File;)Z

    .line 134
    .line 135
    .line 136
    new-instance p0, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {p0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    invoke-static {v5, v6, p0}, La2/w0;->n(JLjava/lang/String;)Lfa/a0;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 156
    .line 157
    .line 158
    return-object v9

    .line 159
    :catch_1
    nop

    .line 160
    :cond_2
    move-object v10, v7

    .line 161
    goto :goto_1

    .line 162
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v10

    .line 171
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-static {v5, v6, v0}, La2/w0;->n(JLjava/lang/String;)Lfa/a0;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-virtual {v0}, Lfa/a0;->a()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v10

    .line 189
    iget v0, v0, Lfa/a0;->a:I

    .line 190
    .line 191
    if-eqz v0, :cond_10

    .line 192
    .line 193
    invoke-virtual {v10, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    if-eqz v0, :cond_4

    .line 198
    .line 199
    goto/16 :goto_5

    .line 200
    .line 201
    :cond_4
    invoke-virtual {v10, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    if-eqz v0, :cond_5

    .line 206
    .line 207
    return-object v2

    .line 208
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 209
    .line 210
    const-string v11, "rmdir \""

    .line 211
    .line 212
    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object p0

    .line 229
    invoke-static {v5, v6, p0}, La2/w0;->n(JLjava/lang/String;)Lfa/a0;

    .line 230
    .line 231
    .line 232
    move-result-object p0

    .line 233
    invoke-virtual {p0}, Lfa/a0;->a()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    iget p0, p0, Lfa/a0;->a:I

    .line 238
    .line 239
    if-eqz p0, :cond_10

    .line 240
    .line 241
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 242
    .line 243
    .line 244
    move-result p0

    .line 245
    if-eqz p0, :cond_6

    .line 246
    .line 247
    goto :goto_5

    .line 248
    :cond_6
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 249
    .line 250
    .line 251
    move-result p0

    .line 252
    if-eqz p0, :cond_7

    .line 253
    .line 254
    const-string p0, "\u65e0\u6743\u9650\u5220\u9664\u6b64\u6587\u4ef6"

    .line 255
    .line 256
    return-object p0

    .line 257
    :cond_7
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 258
    .line 259
    .line 260
    :goto_1
    const-string p0, "Text file busy"

    .line 261
    .line 262
    invoke-virtual {v10, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 263
    .line 264
    .line 265
    move-result p0

    .line 266
    if-eqz p0, :cond_8

    .line 267
    .line 268
    :goto_2
    move-object v2, v7

    .line 269
    goto :goto_4

    .line 270
    :cond_8
    const-string p0, "Read-only"

    .line 271
    .line 272
    invoke-virtual {v10, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 273
    .line 274
    .line 275
    move-result p0

    .line 276
    const-string v0, "\u7cfb\u7edf\u7981\u6b62\u5220\u9664\u6b64\u6587\u4ef6"

    .line 277
    .line 278
    if-eqz p0, :cond_9

    .line 279
    .line 280
    :goto_3
    move-object v2, v0

    .line 281
    goto :goto_4

    .line 282
    :cond_9
    invoke-virtual {v10, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 283
    .line 284
    .line 285
    move-result p0

    .line 286
    if-eqz p0, :cond_a

    .line 287
    .line 288
    goto :goto_2

    .line 289
    :cond_a
    invoke-virtual {v10, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 290
    .line 291
    .line 292
    move-result p0

    .line 293
    if-eqz p0, :cond_b

    .line 294
    .line 295
    goto :goto_4

    .line 296
    :cond_b
    invoke-virtual {v10, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 297
    .line 298
    .line 299
    move-result p0

    .line 300
    if-eqz p0, :cond_c

    .line 301
    .line 302
    move-object v2, v9

    .line 303
    goto :goto_4

    .line 304
    :cond_c
    const-string p0, "if you mean it"

    .line 305
    .line 306
    invoke-virtual {v10, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 307
    .line 308
    .line 309
    move-result p0

    .line 310
    if-eqz p0, :cond_d

    .line 311
    .line 312
    const-string v2, "\u4f60\u662f\u8ba4\u771f\u7684\u5417"

    .line 313
    .line 314
    goto :goto_4

    .line 315
    :cond_d
    const-string p0, "Device or resource busy"

    .line 316
    .line 317
    invoke-virtual {v10, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 318
    .line 319
    .line 320
    move-result p0

    .line 321
    if-eqz p0, :cond_e

    .line 322
    .line 323
    goto :goto_3

    .line 324
    :cond_e
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object p0

    .line 328
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 329
    .line 330
    .line 331
    move-result p0

    .line 332
    if-eqz p0, :cond_f

    .line 333
    .line 334
    goto :goto_2

    .line 335
    :cond_f
    move-object v2, v10

    .line 336
    :goto_4
    return-object v2

    .line 337
    :cond_10
    :goto_5
    return-object v9
.end method

.method public static B(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, La2/w0;->A(Ljava/io/File;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static C(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-static {p0}, Lcom/yunpan/appmanage/util/a0;->d(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 33
    .line 34
    .line 35
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    return-void

    .line 39
    :catch_0
    :cond_1
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 40
    .line 41
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 42
    .line 43
    iget v1, v0, Lcom/yunpan/appmanage/util/k;->n:I

    .line 44
    .line 45
    const-string v2, "\""

    .line 46
    .line 47
    const-string v3, "/"

    .line 48
    .line 49
    const-string v4, "\" \""

    .line 50
    .line 51
    const-string v5, "mv \""

    .line 52
    .line 53
    if-lez v1, :cond_2

    .line 54
    .line 55
    sget-object v1, Lfa/b0;->a:La2/w0;

    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    invoke-static {}, La2/w0;->K()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_2

    .line 65
    .line 66
    sget-object v1, Lfa/g0;->a:Lfa/h0;

    .line 67
    .line 68
    invoke-virtual {v1}, Lfa/h0;->d()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    if-eqz v6, :cond_2

    .line 77
    .line 78
    new-instance v6, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    iget-object v7, v0, Lcom/yunpan/appmanage/util/k;->o:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Lfa/h0;->d()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-static {v5, v1, v4}, Lda/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    new-instance v7, Ljava/io/File;

    .line 112
    .line 113
    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v7}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-static {v1}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {v1}, Lfa/a0;->b()Z

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    if-eqz v1, :cond_2

    .line 145
    .line 146
    return-void

    .line 147
    :cond_2
    iget-object v1, v0, Lcom/yunpan/appmanage/util/k;->O:Ljava/lang/String;

    .line 148
    .line 149
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-nez v1, :cond_4

    .line 154
    .line 155
    sget-object v1, Lfa/g0;->a:Lfa/h0;

    .line 156
    .line 157
    invoke-virtual {v1}, Lfa/h0;->d()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 162
    .line 163
    .line 164
    move-result v6

    .line 165
    if-eqz v6, :cond_3

    .line 166
    .line 167
    new-instance v6, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .line 171
    .line 172
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->O:Ljava/lang/String;

    .line 173
    .line 174
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1}, Lfa/h0;->d()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    goto :goto_0

    .line 197
    :cond_3
    iget-object v1, v0, Lcom/yunpan/appmanage/util/k;->M:Ljava/lang/String;

    .line 198
    .line 199
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    if-eqz v1, :cond_4

    .line 204
    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .line 209
    .line 210
    iget-object v6, v0, Lcom/yunpan/appmanage/util/k;->O:Ljava/lang/String;

    .line 211
    .line 212
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->M:Ljava/lang/String;

    .line 216
    .line 217
    invoke-static {v0, p0, v1}, Lta/q;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object p0

    .line 221
    :cond_4
    :goto_0
    invoke-static {v5, p0, v4}, Lda/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    new-instance v1, Ljava/io/File;

    .line 226
    .line 227
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-static {p0}, Lcom/yunpan/appmanage/util/a0;->d(Ljava/lang/String;)Z

    .line 247
    .line 248
    .line 249
    move-result p0

    .line 250
    if-eqz p0, :cond_5

    .line 251
    .line 252
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object p0

    .line 256
    new-instance p1, Lfa/a0;

    .line 257
    .line 258
    invoke-direct {p1}, Lfa/a0;-><init>()V

    .line 259
    .line 260
    .line 261
    const/4 v0, 0x1

    .line 262
    new-array v0, v0, [Ljava/lang/String;

    .line 263
    .line 264
    const/4 v1, 0x0

    .line 265
    aput-object p0, v0, v1

    .line 266
    .line 267
    invoke-static {v0}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 268
    .line 269
    .line 270
    move-result-object p0

    .line 271
    invoke-virtual {p0}, Lv9/e;->l0()Landroidx/room/s;

    .line 272
    .line 273
    .line 274
    move-result-object p0

    .line 275
    invoke-virtual {p0}, Landroidx/room/s;->k()Ljava/util/List;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    invoke-virtual {p0}, Landroidx/room/s;->j()Ljava/util/List;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 284
    .line 285
    .line 286
    iget v0, p0, Landroidx/room/s;->b:I

    .line 287
    .line 288
    iput v0, p1, Lfa/a0;->a:I

    .line 289
    .line 290
    invoke-virtual {p0}, Landroidx/room/s;->k()Ljava/util/List;

    .line 291
    .line 292
    .line 293
    move-result-object p0

    .line 294
    iput-object p0, p1, Lfa/a0;->b:Ljava/util/List;

    .line 295
    .line 296
    goto :goto_1

    .line 297
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object p0

    .line 301
    invoke-static {p0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 302
    .line 303
    .line 304
    move-result-object p1

    .line 305
    :goto_1
    invoke-virtual {p1}, Lfa/a0;->b()Z

    .line 306
    .line 307
    .line 308
    move-result p0

    .line 309
    if-eqz p0, :cond_6

    .line 310
    .line 311
    return-void

    .line 312
    :cond_6
    invoke-virtual {p1}, Lfa/a0;->a()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object p0

    .line 316
    const-string p1, "Read-only"

    .line 317
    .line 318
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 319
    .line 320
    .line 321
    move-result p1

    .line 322
    if-eqz p1, :cond_7

    .line 323
    .line 324
    const-string p0, "\u65e0\u6743\u9650"

    .line 325
    .line 326
    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 327
    .line 328
    .line 329
    move-result p1

    .line 330
    if-eqz p1, :cond_8

    .line 331
    .line 332
    const-string p0, "\u66f4\u6539\u5931\u8d25"

    .line 333
    .line 334
    :cond_8
    new-instance p1, Ljava/io/IOException;

    .line 335
    .line 336
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    throw p1
.end method

.method public static F()La2/w0;
    .locals 1

    .line 1
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 2
    .line 3
    return-object v0
.end method

.method public static I(Ljava/lang/String;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const-string v3, "addSuppressed"

    .line 6
    .line 7
    const-class v4, Ljava/lang/Throwable;

    .line 8
    .line 9
    const-string v5, "am force-stop \""

    .line 10
    .line 11
    new-instance v6, Lef/b;

    .line 12
    .line 13
    new-instance v7, Ljava/io/File;

    .line 14
    .line 15
    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v6, v7}, Lef/b;-><init>(Ljava/io/File;)V

    .line 19
    .line 20
    .line 21
    :try_start_0
    invoke-virtual {v6}, Lef/b;->M()V

    .line 22
    .line 23
    .line 24
    iget-object v7, v6, Lef/b;->e:Lff/c;

    .line 25
    .line 26
    iget-object v8, v7, Lff/c;->a:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v9, v7, Lff/c;->g:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 31
    .line 32
    .line 33
    move-result-object v9

    .line 34
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 35
    .line 36
    .line 37
    move-result-wide v9

    .line 38
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 39
    .line 40
    int-to-long v11, v11

    .line 41
    cmp-long v13, v9, v11

    .line 42
    .line 43
    if-gtz v13, :cond_27

    .line 44
    .line 45
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 46
    .line 47
    .line 48
    move-result-object v9

    .line 49
    invoke-virtual {v9}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 50
    .line 51
    .line 52
    move-result-object v9

    .line 53
    invoke-interface {v9, v8}, Lcom/yunpan/appmanage/db/AppDao;->get_appBean(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 54
    .line 55
    .line 56
    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    const-string v10, "\""

    .line 58
    .line 59
    if-eqz v9, :cond_1

    .line 60
    .line 61
    :try_start_1
    sget-object v11, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 62
    .line 63
    sget-object v11, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 64
    .line 65
    iget-object v11, v11, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v11

    .line 71
    if-nez v11, :cond_1

    .line 72
    .line 73
    iget-boolean v11, v9, Lcom/yunpan/appmanage/db/AppBean;->isSystem:Z

    .line 74
    .line 75
    if-nez v11, :cond_0

    .line 76
    .line 77
    new-instance v11, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v11, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-object v5, v9, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    invoke-static {v5}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    .line 96
    .line 97
    :try_start_2
    sget-object v5, Lfa/b0;->a:La2/w0;

    .line 98
    .line 99
    iget-object v9, v9, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    invoke-static {v9, v2, v1}, La2/w0;->Z(Ljava/lang/String;ZZ)V

    .line 105
    .line 106
    .line 107
    const-wide/16 v11, 0x29a

    .line 108
    .line 109
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :catchall_0
    move-exception v0

    .line 114
    move-object v5, v0

    .line 115
    goto/16 :goto_16

    .line 116
    .line 117
    :cond_0
    :try_start_3
    new-instance v0, Ljava/lang/Exception;

    .line 118
    .line 119
    const-string v5, "\u907f\u514d\u7248\u672c\u51b2\u7a81\uff0c\u8bf7\u5148\u5378\u8f7d\u65e7\u7248"

    .line 120
    .line 121
    invoke-direct {v0, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw v0

    .line 125
    :catch_0
    :cond_1
    :goto_0
    iget-object v5, v7, Lff/c;->f:Ljava/lang/String;

    .line 126
    .line 127
    if-eqz v5, :cond_d

    .line 128
    .line 129
    const-string v7, "android.uid.system"

    .line 130
    .line 131
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v5

    .line 135
    if-eqz v5, :cond_d

    .line 136
    .line 137
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    invoke-virtual {v5}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    const-string v7, "com.android.settings"

    .line 146
    .line 147
    invoke-interface {v5, v7}, Lcom/yunpan/appmanage/db/AppDao;->get_appBean(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    if-nez v5, :cond_2

    .line 152
    .line 153
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 154
    .line 155
    .line 156
    move-result-object v7

    .line 157
    invoke-virtual {v7}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 158
    .line 159
    .line 160
    move-result-object v7

    .line 161
    const/16 v9, 0x3e8

    .line 162
    .line 163
    invoke-interface {v7, v9}, Lcom/yunpan/appmanage/db/AppDao;->get_appBean(I)Ljava/util/List;

    .line 164
    .line 165
    .line 166
    move-result-object v7

    .line 167
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 168
    .line 169
    .line 170
    move-result v9

    .line 171
    if-lez v9, :cond_2

    .line 172
    .line 173
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v5

    .line 177
    check-cast v5, Lcom/yunpan/appmanage/db/AppBean;

    .line 178
    .line 179
    :cond_2
    if-eqz v5, :cond_d

    .line 180
    .line 181
    new-instance v7, Lef/b;

    .line 182
    .line 183
    new-instance v9, Ljava/io/File;

    .line 184
    .line 185
    iget-object v5, v5, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 186
    .line 187
    invoke-direct {v9, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-direct {v7, v9}, Lef/b;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 191
    .line 192
    .line 193
    const/4 v5, 0x0

    .line 194
    :try_start_4
    invoke-virtual {v6}, Lef/b;->J()Ljava/util/ArrayList;

    .line 195
    .line 196
    .line 197
    move-result-object v9
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 198
    goto :goto_1

    .line 199
    :catchall_1
    move-exception v0

    .line 200
    move-object v5, v0

    .line 201
    goto/16 :goto_7

    .line 202
    .line 203
    :catch_1
    move-object v9, v5

    .line 204
    :goto_1
    :try_start_5
    invoke-virtual {v7}, Lef/b;->J()Ljava/util/ArrayList;

    .line 205
    .line 206
    .line 207
    move-result-object v11
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 208
    goto :goto_2

    .line 209
    :catch_2
    nop

    .line 210
    move-object v11, v5

    .line 211
    :goto_2
    const-string v12, "\u6b64\u5e94\u7528\u4f7f\u7528\u7684\u7b7e\u540d\u4e0d\u9002\u5408\u60a8\u7684\u7cfb\u7edf"

    .line 212
    .line 213
    if-eqz v9, :cond_6

    .line 214
    .line 215
    if-eqz v11, :cond_5

    .line 216
    .line 217
    :try_start_6
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 218
    .line 219
    .line 220
    move-result v13

    .line 221
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 222
    .line 223
    .line 224
    move-result v11

    .line 225
    if-ne v13, v11, :cond_5

    .line 226
    .line 227
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 228
    .line 229
    .line 230
    move-result v11

    .line 231
    if-gtz v11, :cond_3

    .line 232
    .line 233
    goto :goto_3

    .line 234
    :cond_3
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    if-nez v0, :cond_4

    .line 239
    .line 240
    throw v5

    .line 241
    :cond_4
    new-instance v0, Ljava/lang/ClassCastException;

    .line 242
    .line 243
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 244
    .line 245
    .line 246
    throw v0

    .line 247
    :cond_5
    new-instance v0, Ljava/lang/Exception;

    .line 248
    .line 249
    invoke-direct {v0, v12}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 253
    :cond_6
    if-nez v11, :cond_c

    .line 254
    .line 255
    :goto_3
    :try_start_7
    invoke-virtual {v6}, Lef/b;->K()Ljava/util/ArrayList;

    .line 256
    .line 257
    .line 258
    move-result-object v9
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 259
    goto :goto_4

    .line 260
    :catch_3
    move-object v9, v5

    .line 261
    :goto_4
    :try_start_8
    invoke-virtual {v7}, Lef/b;->K()Ljava/util/ArrayList;

    .line 262
    .line 263
    .line 264
    move-result-object v5
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 265
    goto :goto_5

    .line 266
    :catch_4
    nop

    .line 267
    :goto_5
    if-eqz v9, :cond_9

    .line 268
    .line 269
    if-eqz v5, :cond_8

    .line 270
    .line 271
    :try_start_9
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 272
    .line 273
    .line 274
    move-result v11

    .line 275
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 276
    .line 277
    .line 278
    move-result v13

    .line 279
    if-ne v11, v13, :cond_8

    .line 280
    .line 281
    const/4 v11, 0x0

    .line 282
    :goto_6
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 283
    .line 284
    .line 285
    move-result v13

    .line 286
    if-ge v11, v13, :cond_a

    .line 287
    .line 288
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v13

    .line 292
    check-cast v13, Lff/d;

    .line 293
    .line 294
    iget-object v13, v13, Lff/d;->a:Ljava/util/ArrayList;

    .line 295
    .line 296
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v13

    .line 300
    check-cast v13, Lff/e;

    .line 301
    .line 302
    iget-object v13, v13, Lff/e;->e:Ljava/lang/String;

    .line 303
    .line 304
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v14

    .line 308
    check-cast v14, Lff/d;

    .line 309
    .line 310
    iget-object v14, v14, Lff/d;->a:Ljava/util/ArrayList;

    .line 311
    .line 312
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v14

    .line 316
    check-cast v14, Lff/e;

    .line 317
    .line 318
    iget-object v14, v14, Lff/e;->e:Ljava/lang/String;

    .line 319
    .line 320
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 321
    .line 322
    .line 323
    move-result v13

    .line 324
    if-eqz v13, :cond_7

    .line 325
    .line 326
    add-int/2addr v11, v2

    .line 327
    goto :goto_6

    .line 328
    :cond_7
    new-instance v0, Ljava/lang/Exception;

    .line 329
    .line 330
    invoke-direct {v0, v12}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    throw v0

    .line 334
    :cond_8
    new-instance v0, Ljava/lang/Exception;

    .line 335
    .line 336
    invoke-direct {v0, v12}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 340
    :cond_9
    if-nez v5, :cond_b

    .line 341
    .line 342
    :cond_a
    :try_start_a
    invoke-virtual {v7}, Lef/b;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 343
    .line 344
    .line 345
    goto :goto_9

    .line 346
    :cond_b
    :try_start_b
    new-instance v0, Ljava/lang/Exception;

    .line 347
    .line 348
    invoke-direct {v0, v12}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    throw v0

    .line 352
    :cond_c
    new-instance v0, Ljava/lang/Exception;

    .line 353
    .line 354
    invoke-direct {v0, v12}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 358
    :goto_7
    :try_start_c
    invoke-virtual {v7}, Lef/b;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 359
    .line 360
    .line 361
    goto :goto_8

    .line 362
    :catchall_2
    move-exception v0

    .line 363
    move-object v7, v0

    .line 364
    :try_start_d
    new-array v0, v2, [Ljava/lang/Class;

    .line 365
    .line 366
    aput-object v4, v0, v1

    .line 367
    .line 368
    invoke-virtual {v4, v3, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    new-array v8, v2, [Ljava/lang/Object;

    .line 373
    .line 374
    aput-object v7, v8, v1

    .line 375
    .line 376
    invoke-virtual {v0, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 377
    .line 378
    .line 379
    :catch_5
    :goto_8
    :try_start_e
    throw v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 380
    :cond_d
    :goto_9
    invoke-virtual {v6}, Lef/b;->close()V

    .line 381
    .line 382
    .line 383
    new-instance v3, Ljava/io/File;

    .line 384
    .line 385
    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    const-string v4, ","

    .line 389
    .line 390
    :try_start_f
    invoke-static {v3}, Lq4/a;->A(Ljava/io/File;)Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v3

    .line 394
    const-string v5, "all"

    .line 395
    .line 396
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 397
    .line 398
    .line 399
    move-result v5

    .line 400
    const/16 v6, 0x15

    .line 401
    .line 402
    if-eqz v5, :cond_e

    .line 403
    .line 404
    goto :goto_e

    .line 405
    :cond_e
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 406
    .line 407
    .line 408
    move-result v5

    .line 409
    if-nez v5, :cond_f

    .line 410
    .line 411
    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v3

    .line 415
    :cond_f
    const-string v5, "v7a"

    .line 416
    .line 417
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 418
    .line 419
    .line 420
    move-result v5

    .line 421
    if-eqz v5, :cond_10

    .line 422
    .line 423
    const-string v5, "x86,"

    .line 424
    .line 425
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 426
    .line 427
    .line 428
    move-result v5

    .line 429
    if-eqz v5, :cond_10

    .line 430
    .line 431
    goto :goto_e

    .line 432
    :cond_10
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 433
    .line 434
    if-lt v5, v6, :cond_12

    .line 435
    .line 436
    invoke-static {}, Lg7/d;->w()[Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v5

    .line 440
    array-length v7, v5

    .line 441
    const-string v9, ""

    .line 442
    .line 443
    const/4 v11, 0x0

    .line 444
    :goto_a
    if-ge v11, v7, :cond_13

    .line 445
    .line 446
    aget-object v12, v5, v11

    .line 447
    .line 448
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 449
    .line 450
    .line 451
    move-result v13

    .line 452
    if-nez v13, :cond_11

    .line 453
    .line 454
    new-instance v13, Ljava/lang/StringBuilder;

    .line 455
    .line 456
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 457
    .line 458
    .line 459
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    .line 467
    .line 468
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v9

    .line 472
    goto :goto_b

    .line 473
    :cond_11
    move-object v9, v12

    .line 474
    :goto_b
    add-int/2addr v11, v2

    .line 475
    goto :goto_a

    .line 476
    :cond_12
    sget-object v9, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 477
    .line 478
    :cond_13
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v3

    .line 482
    invoke-virtual {v9, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v4

    .line 486
    array-length v5, v3

    .line 487
    const/4 v7, 0x0

    .line 488
    :goto_c
    if-ge v7, v5, :cond_26

    .line 489
    .line 490
    aget-object v9, v3, v7

    .line 491
    .line 492
    array-length v11, v4

    .line 493
    const/4 v12, 0x0

    .line 494
    :goto_d
    if-ge v12, v11, :cond_25

    .line 495
    .line 496
    aget-object v13, v4, v12

    .line 497
    .line 498
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 499
    .line 500
    .line 501
    move-result v13
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6

    .line 502
    if-eqz v13, :cond_24

    .line 503
    .line 504
    :goto_e
    invoke-static/range {p0 .. p0}, Landroid/support/v4/media/session/a;->k(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 505
    .line 506
    .line 507
    move-result-object v3

    .line 508
    const-string v4, "/data/app/"

    .line 509
    .line 510
    const-string v5, "pm uninstall -k --user 0 \'"

    .line 511
    .line 512
    const-string v7, "pm uninstall -k \'"

    .line 513
    .line 514
    const-string v9, "rm -rf \""

    .line 515
    .line 516
    const-string v11, "/"

    .line 517
    .line 518
    const-string v12, "\'"

    .line 519
    .line 520
    if-eqz v3, :cond_19

    .line 521
    .line 522
    sget-object v13, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 523
    .line 524
    sget-object v13, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 525
    .line 526
    iget-object v13, v13, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 527
    .line 528
    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 529
    .line 530
    .line 531
    move-result v13

    .line 532
    if-nez v13, :cond_19

    .line 533
    .line 534
    iget-object v13, v3, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 535
    .line 536
    invoke-static {v13}, La2/w0;->f0(Ljava/lang/String;)V

    .line 537
    .line 538
    .line 539
    iget-object v13, v3, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 540
    .line 541
    invoke-virtual {v13, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 542
    .line 543
    .line 544
    move-result v13

    .line 545
    if-eqz v13, :cond_16

    .line 546
    .line 547
    new-instance v13, Ljava/lang/StringBuilder;

    .line 548
    .line 549
    invoke-direct {v13, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 550
    .line 551
    .line 552
    iget-object v14, v3, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 553
    .line 554
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    .line 556
    .line 557
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    .line 559
    .line 560
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v13

    .line 564
    invoke-static {v13}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 565
    .line 566
    .line 567
    move-result-object v13

    .line 568
    iget v13, v13, Lfa/a0;->a:I

    .line 569
    .line 570
    if-nez v13, :cond_14

    .line 571
    .line 572
    const/4 v13, 0x1

    .line 573
    goto :goto_f

    .line 574
    :cond_14
    const/4 v13, 0x0

    .line 575
    :goto_f
    if-nez v13, :cond_17

    .line 576
    .line 577
    new-instance v13, Ljava/lang/StringBuilder;

    .line 578
    .line 579
    invoke-direct {v13, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 580
    .line 581
    .line 582
    iget-object v14, v3, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 583
    .line 584
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    .line 586
    .line 587
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    .line 589
    .line 590
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object v13

    .line 594
    invoke-static {v13}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 595
    .line 596
    .line 597
    move-result-object v13

    .line 598
    iget v13, v13, Lfa/a0;->a:I

    .line 599
    .line 600
    if-nez v13, :cond_15

    .line 601
    .line 602
    goto :goto_10

    .line 603
    :cond_15
    const/4 v2, 0x0

    .line 604
    :goto_10
    move v13, v2

    .line 605
    goto :goto_11

    .line 606
    :cond_16
    const/4 v13, 0x0

    .line 607
    :cond_17
    :goto_11
    if-nez v13, :cond_19

    .line 608
    .line 609
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 610
    .line 611
    if-lt v2, v6, :cond_18

    .line 612
    .line 613
    iget-object v2, v3, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 614
    .line 615
    invoke-virtual {v2, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object v2

    .line 619
    array-length v2, v2

    .line 620
    const/4 v13, 0x4

    .line 621
    if-le v2, v13, :cond_18

    .line 622
    .line 623
    iget-object v2, v3, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 624
    .line 625
    invoke-virtual {v2, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 626
    .line 627
    .line 628
    move-result v13

    .line 629
    invoke-virtual {v2, v1, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 630
    .line 631
    .line 632
    move-result-object v1

    .line 633
    new-instance v2, Ljava/lang/StringBuilder;

    .line 634
    .line 635
    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 636
    .line 637
    .line 638
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    .line 640
    .line 641
    const-string v13, "/oat\""

    .line 642
    .line 643
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    .line 645
    .line 646
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 647
    .line 648
    .line 649
    move-result-object v2

    .line 650
    invoke-static {v2}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 651
    .line 652
    .line 653
    new-instance v2, Ljava/lang/StringBuilder;

    .line 654
    .line 655
    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 656
    .line 657
    .line 658
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    .line 660
    .line 661
    const-string v1, "/lib\""

    .line 662
    .line 663
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    .line 665
    .line 666
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 667
    .line 668
    .line 669
    move-result-object v1

    .line 670
    invoke-static {v1}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 671
    .line 672
    .line 673
    :cond_18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 674
    .line 675
    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 676
    .line 677
    .line 678
    iget-object v2, v3, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 679
    .line 680
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    .line 682
    .line 683
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    .line 685
    .line 686
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 687
    .line 688
    .line 689
    move-result-object v1

    .line 690
    invoke-static {v1}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 691
    .line 692
    .line 693
    :cond_19
    const-string v1, "/data/"

    .line 694
    .line 695
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->j(Ljava/lang/String;)J

    .line 696
    .line 697
    .line 698
    move-result-wide v13

    .line 699
    new-instance v2, Ljava/io/File;

    .line 700
    .line 701
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 702
    .line 703
    .line 704
    invoke-virtual {v2}, Ljava/io/File;->length()J

    .line 705
    .line 706
    .line 707
    move-result-wide v15

    .line 708
    const-wide/16 v17, 0x2

    .line 709
    .line 710
    mul-long v15, v15, v17

    .line 711
    .line 712
    cmp-long v2, v13, v15

    .line 713
    .line 714
    if-ltz v2, :cond_23

    .line 715
    .line 716
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 717
    .line 718
    const-string v13, "chown system:system \""

    .line 719
    .line 720
    if-lt v2, v6, :cond_1b

    .line 721
    .line 722
    invoke-static {v4, v8}, Lda/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 723
    .line 724
    .line 725
    move-result-object v2

    .line 726
    new-instance v4, Ljava/lang/StringBuilder;

    .line 727
    .line 728
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 729
    .line 730
    .line 731
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    .line 733
    .line 734
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    .line 736
    .line 737
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 738
    .line 739
    .line 740
    move-result-object v4

    .line 741
    invoke-static {v4}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 742
    .line 743
    .line 744
    move-result v4

    .line 745
    if-eqz v4, :cond_1a

    .line 746
    .line 747
    const-string v4, ".gj"

    .line 748
    .line 749
    invoke-static {v2, v4}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 750
    .line 751
    .line 752
    move-result-object v2

    .line 753
    :cond_1a
    invoke-static {v2, v11}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 754
    .line 755
    .line 756
    move-result-object v2

    .line 757
    new-instance v4, Ljava/lang/StringBuilder;

    .line 758
    .line 759
    const-string v6, "mkdir \""

    .line 760
    .line 761
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 762
    .line 763
    .line 764
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    .line 766
    .line 767
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    .line 769
    .line 770
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 771
    .line 772
    .line 773
    move-result-object v4

    .line 774
    invoke-static {v4}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 775
    .line 776
    .line 777
    new-instance v4, Ljava/lang/StringBuilder;

    .line 778
    .line 779
    const-string v6, "chmod 755 \""

    .line 780
    .line 781
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 782
    .line 783
    .line 784
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 785
    .line 786
    .line 787
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    .line 789
    .line 790
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 791
    .line 792
    .line 793
    move-result-object v4

    .line 794
    invoke-static {v4}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 795
    .line 796
    .line 797
    new-instance v4, Ljava/lang/StringBuilder;

    .line 798
    .line 799
    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 800
    .line 801
    .line 802
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    .line 804
    .line 805
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    .line 807
    .line 808
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 809
    .line 810
    .line 811
    move-result-object v4

    .line 812
    invoke-static {v4}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 813
    .line 814
    .line 815
    new-instance v4, Ljava/lang/StringBuilder;

    .line 816
    .line 817
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 818
    .line 819
    .line 820
    const-string v6, "base"

    .line 821
    .line 822
    invoke-static {v2, v6, v4}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 823
    .line 824
    .line 825
    move-result-object v2

    .line 826
    goto :goto_12

    .line 827
    :cond_1b
    invoke-static {v4, v8}, Lda/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 828
    .line 829
    .line 830
    move-result-object v2

    .line 831
    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 832
    .line 833
    .line 834
    move-result v4

    .line 835
    if-eqz v4, :cond_1c

    .line 836
    .line 837
    const-string v4, "123"

    .line 838
    .line 839
    invoke-static {v2, v4}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 840
    .line 841
    .line 842
    move-result-object v2

    .line 843
    :cond_1c
    :goto_12
    new-instance v4, Ljava/lang/StringBuilder;

    .line 844
    .line 845
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 846
    .line 847
    .line 848
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    .line 850
    .line 851
    const-string v6, ".apk"

    .line 852
    .line 853
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    .line 855
    .line 856
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 857
    .line 858
    .line 859
    move-result-object v4

    .line 860
    invoke-static {v4}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 861
    .line 862
    .line 863
    move-result v4

    .line 864
    if-eqz v4, :cond_1d

    .line 865
    .line 866
    const-string v4, "123.apk"

    .line 867
    .line 868
    invoke-static {v2, v4}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 869
    .line 870
    .line 871
    move-result-object v2

    .line 872
    goto :goto_13

    .line 873
    :cond_1d
    invoke-static {v2, v6}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 874
    .line 875
    .line 876
    move-result-object v2

    .line 877
    :goto_13
    new-instance v4, Ljava/lang/StringBuilder;

    .line 878
    .line 879
    const-string v6, "\\cp -R \""

    .line 880
    .line 881
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 882
    .line 883
    .line 884
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    .line 886
    .line 887
    const-string v0, "\" \""

    .line 888
    .line 889
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    .line 891
    .line 892
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    .line 894
    .line 895
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 896
    .line 897
    .line 898
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 899
    .line 900
    .line 901
    move-result-object v0

    .line 902
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 903
    .line 904
    .line 905
    move-result-object v0

    .line 906
    iget v0, v0, Lfa/a0;->a:I

    .line 907
    .line 908
    if-nez v0, :cond_22

    .line 909
    .line 910
    new-instance v0, Ljava/lang/StringBuilder;

    .line 911
    .line 912
    const-string v4, "chmod 644 \""

    .line 913
    .line 914
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 915
    .line 916
    .line 917
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 918
    .line 919
    .line 920
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 921
    .line 922
    .line 923
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 924
    .line 925
    .line 926
    move-result-object v0

    .line 927
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 928
    .line 929
    .line 930
    move-result-object v0

    .line 931
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 932
    .line 933
    .line 934
    move-result v1

    .line 935
    if-eqz v1, :cond_1e

    .line 936
    .line 937
    new-instance v1, Ljava/lang/StringBuilder;

    .line 938
    .line 939
    invoke-direct {v1, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 940
    .line 941
    .line 942
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 943
    .line 944
    .line 945
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 946
    .line 947
    .line 948
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 949
    .line 950
    .line 951
    move-result-object v1

    .line 952
    invoke-static {v1}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 953
    .line 954
    .line 955
    goto :goto_14

    .line 956
    :cond_1e
    new-instance v1, Ljava/lang/StringBuilder;

    .line 957
    .line 958
    const-string v4, "chown root:root \""

    .line 959
    .line 960
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 961
    .line 962
    .line 963
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 964
    .line 965
    .line 966
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 967
    .line 968
    .line 969
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 970
    .line 971
    .line 972
    move-result-object v1

    .line 973
    invoke-static {v1}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 974
    .line 975
    .line 976
    :goto_14
    iget v0, v0, Lfa/a0;->a:I

    .line 977
    .line 978
    if-nez v0, :cond_21

    .line 979
    .line 980
    if-eqz v3, :cond_20

    .line 981
    .line 982
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 983
    .line 984
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 985
    .line 986
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 987
    .line 988
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 989
    .line 990
    .line 991
    move-result v0

    .line 992
    if-eqz v0, :cond_20

    .line 993
    .line 994
    iget-boolean v0, v3, Lcom/yunpan/appmanage/db/AppBean;->isSystem:Z

    .line 995
    .line 996
    if-eqz v0, :cond_1f

    .line 997
    .line 998
    new-instance v0, Ljava/lang/StringBuilder;

    .line 999
    .line 1000
    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1001
    .line 1002
    .line 1003
    iget-object v1, v3, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 1004
    .line 1005
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1006
    .line 1007
    .line 1008
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1009
    .line 1010
    .line 1011
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1012
    .line 1013
    .line 1014
    move-result-object v0

    .line 1015
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 1016
    .line 1017
    .line 1018
    goto :goto_15

    .line 1019
    :cond_1f
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1020
    .line 1021
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1022
    .line 1023
    .line 1024
    iget-object v1, v3, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 1025
    .line 1026
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1027
    .line 1028
    .line 1029
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1030
    .line 1031
    .line 1032
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v0

    .line 1036
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 1037
    .line 1038
    .line 1039
    move-result-object v0

    .line 1040
    iget v0, v0, Lfa/a0;->a:I

    .line 1041
    .line 1042
    if-eqz v0, :cond_20

    .line 1043
    .line 1044
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1045
    .line 1046
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1047
    .line 1048
    .line 1049
    iget-object v1, v3, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 1050
    .line 1051
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1052
    .line 1053
    .line 1054
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1055
    .line 1056
    .line 1057
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1058
    .line 1059
    .line 1060
    move-result-object v0

    .line 1061
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 1062
    .line 1063
    .line 1064
    :cond_20
    :goto_15
    return-void

    .line 1065
    :cond_21
    new-instance v0, Ljava/lang/Exception;

    .line 1066
    .line 1067
    const-string v1, "\u4fee\u6539apk\u6743\u9650\u5931\u8d25"

    .line 1068
    .line 1069
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1070
    .line 1071
    .line 1072
    throw v0

    .line 1073
    :cond_22
    new-instance v0, Ljava/lang/Exception;

    .line 1074
    .line 1075
    const-string v1, "\u5199\u5165apk\u6587\u4ef6\u51fa\u9519"

    .line 1076
    .line 1077
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1078
    .line 1079
    .line 1080
    throw v0

    .line 1081
    :cond_23
    new-instance v0, Ljava/lang/Exception;

    .line 1082
    .line 1083
    const-string v1, "\u5b89\u88c5\u5206\u533a\u5b58\u50a8\u7a7a\u95f4\u4e0d\u8db3"

    .line 1084
    .line 1085
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1086
    .line 1087
    .line 1088
    throw v0

    .line 1089
    :cond_24
    add-int/2addr v12, v2

    .line 1090
    goto/16 :goto_d

    .line 1091
    .line 1092
    :cond_25
    add-int/2addr v7, v2

    .line 1093
    goto/16 :goto_c

    .line 1094
    .line 1095
    :catch_6
    :cond_26
    new-instance v0, Ljava/lang/Exception;

    .line 1096
    .line 1097
    const-string v1, "\u60a8\u7684\u7cfb\u7edf\u4e0d\u517c\u5bb9\u6b64\u5e94\u7528\u67b6\u6784"

    .line 1098
    .line 1099
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1100
    .line 1101
    .line 1102
    throw v0

    .line 1103
    :cond_27
    :try_start_10
    new-instance v0, Ljava/lang/Exception;

    .line 1104
    .line 1105
    const-string v5, "\u6b64\u5e94\u7528\u4e0d\u652f\u6301\u60a8\u7684\u7cfb\u7edf\uff0c\u7cfb\u7edf\u7248\u672c\u8fc7\u4f4e"

    .line 1106
    .line 1107
    invoke-direct {v0, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1108
    .line 1109
    .line 1110
    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 1111
    :goto_16
    :try_start_11
    invoke-virtual {v6}, Lef/b;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 1112
    .line 1113
    .line 1114
    goto :goto_17

    .line 1115
    :catchall_3
    move-exception v0

    .line 1116
    move-object v6, v0

    .line 1117
    :try_start_12
    new-array v0, v2, [Ljava/lang/Class;

    .line 1118
    .line 1119
    aput-object v4, v0, v1

    .line 1120
    .line 1121
    invoke-virtual {v4, v3, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1122
    .line 1123
    .line 1124
    move-result-object v0

    .line 1125
    new-array v2, v2, [Ljava/lang/Object;

    .line 1126
    .line 1127
    aput-object v6, v2, v1

    .line 1128
    .line 1129
    invoke-virtual {v0, v5, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_7

    .line 1130
    .line 1131
    .line 1132
    :catch_7
    :goto_17
    goto :goto_19

    .line 1133
    :goto_18
    throw v5

    .line 1134
    :goto_19
    goto :goto_18
.end method

.method public static J()Z
    .locals 1

    .line 1
    sget-object v0, Lfa/h;->a:Lfa/j;

    .line 2
    .line 3
    invoke-virtual {v0}, Lfa/j;->i()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    sget-object v0, Lfa/l;->a:Lfa/m;

    .line 10
    .line 11
    invoke-virtual {v0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    return v0

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    return v0
.end method

.method public static K()Z
    .locals 2

    .line 1
    sget-object v0, Lfa/g0;->a:Lfa/h0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lfa/h0;->f()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_0
    sget-object v0, Lfa/h;->a:Lfa/j;

    .line 12
    .line 13
    invoke-virtual {v0}, Lfa/j;->i()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    iget-boolean v0, v0, Lfa/j;->g:Z

    .line 20
    .line 21
    return v0

    .line 22
    :cond_1
    sget-object v0, Lfa/l;->a:Lfa/m;

    .line 23
    .line 24
    invoke-virtual {v0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    iget-boolean v0, v0, Lfa/m;->c:Z

    .line 31
    .line 32
    return v0

    .line 33
    :cond_2
    const/4 v0, 0x0

    .line 34
    return v0
.end method

.method public static L()Z
    .locals 3

    .line 1
    invoke-static {}, La2/w0;->P()Z

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
    sget-object v0, Lfa/n0;->a:Lfa/o0;

    .line 10
    .line 11
    iget-boolean v2, v0, Lfa/o0;->a:Z

    .line 12
    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    iget-object v0, v0, Lfa/o0;->e:Lcom/yunpan/appmanage/shizuku/IUserService;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    return v1

    .line 20
    :cond_1
    const/4 v0, 0x0

    .line 21
    return v0
.end method

.method public static M()Z
    .locals 1

    .line 1
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, La2/w0;->P()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 13
    .line 14
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 15
    .line 16
    iget-boolean v0, v0, Lcom/yunpan/appmanage/util/k;->j:Z

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    return v0

    .line 23
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 24
    return v0
.end method

.method public static N()Z
    .locals 2

    .line 1
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, La2/w0;->M()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    sget-object v0, Lfa/n0;->a:Lfa/o0;

    .line 13
    .line 14
    iget-boolean v1, v0, Lfa/o0;->a:Z

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object v0, v0, Lfa/o0;->e:Lcom/yunpan/appmanage/shizuku/IUserService;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    return v0

    .line 25
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 26
    return v0
.end method

.method public static O()Z
    .locals 2

    .line 1
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, La2/w0;->M()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_2

    .line 11
    .line 12
    sget-object v0, Lfa/n0;->a:Lfa/o0;

    .line 13
    .line 14
    iget-boolean v1, v0, Lfa/o0;->a:Z

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object v0, v0, Lfa/o0;->e:Lcom/yunpan/appmanage/shizuku/IUserService;

    .line 19
    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    :cond_0
    sget-object v0, Lfa/a;->a:Lfa/b;

    .line 23
    .line 24
    invoke-virtual {v0}, Lfa/b;->f()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v0, 0x0

    .line 32
    return v0

    .line 33
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 34
    return v0
.end method

.method public static P()Z
    .locals 5

    .line 1
    sget-object v0, Lfa/g0;->a:Lfa/h0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lfa/h0;->f()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_5

    .line 8
    .line 9
    sget-object v0, Lfa/h;->a:Lfa/j;

    .line 10
    .line 11
    invoke-virtual {v0}, Lfa/j;->i()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_5

    .line 16
    .line 17
    sget-object v1, Lfa/l;->a:Lfa/m;

    .line 18
    .line 19
    invoke-virtual {v1}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    sget-object v2, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 27
    .line 28
    sget-object v2, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 29
    .line 30
    iget-boolean v3, v2, Lcom/yunpan/appmanage/util/k;->m:Z

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    iput-boolean v4, v2, Lcom/yunpan/appmanage/util/k;->m:Z

    .line 36
    .line 37
    :cond_1
    iget-boolean v3, v2, Lcom/yunpan/appmanage/util/k;->l:Z

    .line 38
    .line 39
    if-eqz v3, :cond_2

    .line 40
    .line 41
    iput-boolean v4, v2, Lcom/yunpan/appmanage/util/k;->l:Z

    .line 42
    .line 43
    :cond_2
    iget-boolean v2, v0, Lfa/j;->g:Z

    .line 44
    .line 45
    if-eqz v2, :cond_3

    .line 46
    .line 47
    iput-boolean v4, v0, Lfa/j;->g:Z

    .line 48
    .line 49
    :cond_3
    iget-boolean v0, v1, Lfa/m;->c:Z

    .line 50
    .line 51
    if-eqz v0, :cond_4

    .line 52
    .line 53
    iput-boolean v4, v1, Lfa/m;->c:Z

    .line 54
    .line 55
    :cond_4
    return v4

    .line 56
    :cond_5
    :goto_0
    const/4 v0, 0x1

    .line 57
    return v0
.end method

.method public static Q()Z
    .locals 3

    .line 1
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, La2/w0;->P()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    sget-object v0, Lfa/a;->a:Lfa/b;

    .line 14
    .line 15
    invoke-virtual {v0}, Lfa/b;->f()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    sget-object v0, Lfa/n0;->a:Lfa/o0;

    .line 22
    .line 23
    iget-boolean v2, v0, Lfa/o0;->a:Z

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    iget-object v0, v0, Lfa/o0;->e:Lcom/yunpan/appmanage/shizuku/IUserService;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 33
    .line 34
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 35
    .line 36
    iget-boolean v0, v0, Lcom/yunpan/appmanage/util/k;->j:Z

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 41
    .line 42
    const/16 v2, 0x17

    .line 43
    .line 44
    if-ge v0, v2, :cond_1

    .line 45
    .line 46
    return v1

    .line 47
    :cond_1
    const/4 v0, 0x0

    .line 48
    return v0

    .line 49
    :cond_2
    :goto_0
    return v1
.end method

.method public static U(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "pm clear \'"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "\'"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-wide/16 v2, 0x15b3

    .line 21
    .line 22
    invoke-static {v2, v3, v0}, La2/w0;->q(JLjava/lang/String;)Lfa/a0;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lfa/a0;->a()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    iget v5, v0, Lfa/a0;->a:I

    .line 31
    .line 32
    const-string v6, "Error:"

    .line 33
    .line 34
    if-nez v5, :cond_0

    .line 35
    .line 36
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-nez v5, :cond_0

    .line 41
    .line 42
    sget-object v5, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 43
    .line 44
    iget v5, v5, Lcom/yunpan/appmanage/util/k;->n:I

    .line 45
    .line 46
    if-eqz v5, :cond_1

    .line 47
    .line 48
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v4, "pm clear --user "

    .line 51
    .line 52
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    sget-object v4, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 56
    .line 57
    iget v4, v4, Lcom/yunpan/appmanage/util/k;->n:I

    .line 58
    .line 59
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v4, " \'"

    .line 63
    .line 64
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-static {v2, v3, p0}, La2/w0;->q(JLjava/lang/String;)Lfa/a0;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lfa/a0;->a()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    :cond_1
    const-string p0, "ailure"

    .line 86
    .line 87
    invoke-virtual {v4, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    if-nez p0, :cond_4

    .line 92
    .line 93
    const-string p0, "rror:"

    .line 94
    .line 95
    invoke-virtual {v4, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    if-eqz p0, :cond_2

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_2
    iget p0, v0, Lfa/a0;->a:I

    .line 103
    .line 104
    if-eqz p0, :cond_3

    .line 105
    .line 106
    const-string p0, "Success"

    .line 107
    .line 108
    invoke-virtual {v4, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 109
    .line 110
    .line 111
    move-result p0

    .line 112
    if-eqz p0, :cond_4

    .line 113
    .line 114
    :cond_3
    const-string p0, "\u6e05\u7406\u6210\u529f"

    .line 115
    .line 116
    return-object p0

    .line 117
    :cond_4
    :goto_0
    const-string p0, "known package"

    .line 118
    .line 119
    invoke-virtual {v4, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 120
    .line 121
    .line 122
    move-result p0

    .line 123
    if-eqz p0, :cond_5

    .line 124
    .line 125
    const-string v4, "\u6b64\u5e94\u7528\u4e0d\u5b58\u5728"

    .line 126
    .line 127
    goto/16 :goto_3

    .line 128
    .line 129
    :cond_5
    const-string p0, "not found"

    .line 130
    .line 131
    invoke-virtual {v4, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 132
    .line 133
    .line 134
    move-result p0

    .line 135
    if-nez p0, :cond_d

    .line 136
    .line 137
    const-string p0, "known command"

    .line 138
    .line 139
    invoke-virtual {v4, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 140
    .line 141
    .line 142
    move-result p0

    .line 143
    if-eqz p0, :cond_6

    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_6
    const-string p0, "android.permission.MANAGE_USERS"

    .line 147
    .line 148
    invoke-virtual {v4, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 149
    .line 150
    .line 151
    move-result p0

    .line 152
    const-string v1, "\u65e0\u6743\u9650\uff0c\u6b64\u529f\u80fd\u9700\u8981root\u6743\u9650"

    .line 153
    .line 154
    if-eqz p0, :cond_7

    .line 155
    .line 156
    :goto_1
    move-object v4, v1

    .line 157
    goto :goto_3

    .line 158
    :cond_7
    const-string p0, "Neither user 2000"

    .line 159
    .line 160
    invoke-virtual {v4, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 161
    .line 162
    .line 163
    move-result p0

    .line 164
    if-eqz p0, :cond_8

    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_8
    const-string p0, "Permission"

    .line 168
    .line 169
    invoke-virtual {v4, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 170
    .line 171
    .line 172
    move-result p0

    .line 173
    if-eqz p0, :cond_9

    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_9
    const-string p0, "Killed"

    .line 177
    .line 178
    invoke-virtual {v4, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 179
    .line 180
    .line 181
    move-result p0

    .line 182
    if-eqz p0, :cond_a

    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_a
    const-string p0, "Cannot clear data for a protected package"

    .line 186
    .line 187
    invoke-virtual {v4, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 188
    .line 189
    .line 190
    move-result p0

    .line 191
    if-eqz p0, :cond_b

    .line 192
    .line 193
    const-string v4, "\u6b64\u5e94\u7528\u662f\u8bbe\u5907\u7ba1\u7406\u5458\uff0c\u65e0\u6cd5\u8fdb\u884c\u6b64\u64cd\u4f5c"

    .line 194
    .line 195
    goto :goto_3

    .line 196
    :cond_b
    const-string p0, "pm by system default"

    .line 197
    .line 198
    invoke-virtual {v4, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 199
    .line 200
    .line 201
    move-result p0

    .line 202
    if-eqz p0, :cond_c

    .line 203
    .line 204
    const-string v4, "\u6b64\u7cfb\u7edf\u628apm\u547d\u4ee4\u7981\u7528\u4e86"

    .line 205
    .line 206
    goto :goto_3

    .line 207
    :cond_c
    const-string p0, "[][]"

    .line 208
    .line 209
    invoke-virtual {v4, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 210
    .line 211
    .line 212
    move-result p0

    .line 213
    if-eqz p0, :cond_e

    .line 214
    .line 215
    new-instance p0, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    invoke-direct {p0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    iget v0, v0, Lfa/a0;->a:I

    .line 221
    .line 222
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    const-string v0, " "

    .line 226
    .line 227
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    goto :goto_3

    .line 238
    :cond_d
    :goto_2
    const-string v4, "\u547d\u4ee4\u4e0d\u5b58\u5728\uff0c\u65e0\u6cd5\u4f7f\u7528\u6b64\u529f\u80fd"

    .line 239
    .line 240
    :cond_e
    :goto_3
    return-object v4
.end method

.method public static V(Ljava/lang/String;Z)V
    .locals 12

    .line 1
    const-string v0, "/"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "known command"

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    const-string v3, "pm enable \'"

    .line 11
    .line 12
    const-string v4, "pm enable --user "

    .line 13
    .line 14
    const/4 v5, 0x2

    .line 15
    const/4 v6, 0x0

    .line 16
    const-string v7, "rror:"

    .line 17
    .line 18
    const-string v8, " \'"

    .line 19
    .line 20
    const-string v9, "\'"

    .line 21
    .line 22
    if-eqz v0, :cond_7

    .line 23
    .line 24
    if-eqz p1, :cond_3

    .line 25
    .line 26
    sget-object p1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 27
    .line 28
    sget-object p1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 29
    .line 30
    iget v0, p1, Lcom/yunpan/appmanage/util/k;->n:I

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v2, "pm disable --user "

    .line 37
    .line 38
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget p1, p1, Lcom/yunpan/appmanage/util/k;->n:I

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    const-string p1, "pm disable \'"

    .line 61
    .line 62
    invoke-static {p1, p0, v9}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    :goto_0
    invoke-static {p1}, La2/w0;->l(Ljava/lang/String;)Lfa/a0;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lfa/a0;->a()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    iget v3, v0, Lfa/a0;->a:I

    .line 75
    .line 76
    if-eqz v3, :cond_1

    .line 77
    .line 78
    const-string v3, " disable "

    .line 79
    .line 80
    const-string v4, " disable-user "

    .line 81
    .line 82
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-static {p1}, La2/w0;->l(Ljava/lang/String;)Lfa/a0;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p1}, Lfa/a0;->b()Z

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    if-eqz v3, :cond_1

    .line 95
    .line 96
    invoke-virtual {p1}, Lfa/a0;->a()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    :cond_1
    iget p1, v0, Lfa/a0;->a:I

    .line 101
    .line 102
    if-nez p1, :cond_2

    .line 103
    .line 104
    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-eqz p1, :cond_e

    .line 109
    .line 110
    :cond_2
    :try_start_0
    sget-object p1, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 111
    .line 112
    iget-object p1, p1, Lcom/yunpan/appmanage/base/AppStart;->c:Landroid/content/pm/PackageManager;

    .line 113
    .line 114
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-virtual {p1, p0, v5, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :catch_0
    nop

    .line 123
    goto/16 :goto_5

    .line 124
    .line 125
    :cond_3
    sget-object p1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 126
    .line 127
    sget-object p1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 128
    .line 129
    iget v0, p1, Lcom/yunpan/appmanage/util/k;->n:I

    .line 130
    .line 131
    if-eqz v0, :cond_4

    .line 132
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    iget p1, p1, Lcom/yunpan/appmanage/util/k;->n:I

    .line 139
    .line 140
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    goto :goto_1

    .line 157
    :cond_4
    invoke-static {v3, p0, v9}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    :goto_1
    invoke-static {p1}, La2/w0;->l(Ljava/lang/String;)Lfa/a0;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-virtual {p1}, Lfa/a0;->a()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    iget p1, p1, Lfa/a0;->a:I

    .line 170
    .line 171
    if-nez p1, :cond_5

    .line 172
    .line 173
    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    if-eqz p1, :cond_6

    .line 178
    .line 179
    :cond_5
    :try_start_1
    sget-object p1, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 180
    .line 181
    iget-object p1, p1, Lcom/yunpan/appmanage/base/AppStart;->c:Landroid/content/pm/PackageManager;

    .line 182
    .line 183
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 184
    .line 185
    .line 186
    move-result-object p0

    .line 187
    invoke-virtual {p1, p0, v2, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 188
    .line 189
    .line 190
    return-void

    .line 191
    :catch_1
    nop

    .line 192
    :cond_6
    move-object v2, v0

    .line 193
    goto/16 :goto_5

    .line 194
    .line 195
    :cond_7
    if-eqz p1, :cond_b

    .line 196
    .line 197
    new-instance p1, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    const-string v0, "pm disable-user --user "

    .line 200
    .line 201
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 205
    .line 206
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 207
    .line 208
    iget v2, v0, Lcom/yunpan/appmanage/util/k;->n:I

    .line 209
    .line 210
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    const-wide/16 v2, 0xd05

    .line 227
    .line 228
    invoke-static {v2, v3, p1}, La2/w0;->n(JLjava/lang/String;)Lfa/a0;

    .line 229
    .line 230
    .line 231
    move-result-object v4

    .line 232
    invoke-virtual {v4}, Lfa/a0;->a()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v8

    .line 236
    iget v9, v4, Lfa/a0;->a:I

    .line 237
    .line 238
    if-nez v9, :cond_9

    .line 239
    .line 240
    invoke-virtual {v8, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 241
    .line 242
    .line 243
    move-result v9

    .line 244
    if-eqz v9, :cond_8

    .line 245
    .line 246
    goto :goto_2

    .line 247
    :cond_8
    move-object v2, v8

    .line 248
    goto :goto_3

    .line 249
    :cond_9
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 250
    .line 251
    const-string v9, " --user "

    .line 252
    .line 253
    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    iget v9, v0, Lcom/yunpan/appmanage/util/k;->n:I

    .line 257
    .line 258
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v4

    .line 265
    const-string v9, ""

    .line 266
    .line 267
    invoke-virtual {p1, v4, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    invoke-static {v2, v3, p1}, La2/w0;->n(JLjava/lang/String;)Lfa/a0;

    .line 272
    .line 273
    .line 274
    move-result-object v4

    .line 275
    invoke-virtual {v4}, Lfa/a0;->a()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v10

    .line 279
    iget v11, v4, Lfa/a0;->a:I

    .line 280
    .line 281
    if-eqz v11, :cond_a

    .line 282
    .line 283
    const-string v4, "-user"

    .line 284
    .line 285
    invoke-virtual {p1, v4, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    invoke-static {v2, v3, p1}, La2/w0;->n(JLjava/lang/String;)Lfa/a0;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    invoke-virtual {p1}, Lfa/a0;->a()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v10

    .line 297
    move-object v4, p1

    .line 298
    :cond_a
    invoke-virtual {v10, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 299
    .line 300
    .line 301
    move-result p1

    .line 302
    if-nez p1, :cond_8

    .line 303
    .line 304
    move-object v2, v10

    .line 305
    :goto_3
    iget p1, v4, Lfa/a0;->a:I

    .line 306
    .line 307
    if-eqz p1, :cond_e

    .line 308
    .line 309
    iget-boolean p1, v0, Lcom/yunpan/appmanage/util/k;->j:Z

    .line 310
    .line 311
    if-eqz p1, :cond_e

    .line 312
    .line 313
    :try_start_2
    sget-object p1, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 314
    .line 315
    iget-object p1, p1, Lcom/yunpan/appmanage/base/AppStart;->c:Landroid/content/pm/PackageManager;

    .line 316
    .line 317
    invoke-virtual {p1, p0, v5, v6}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 318
    .line 319
    .line 320
    return-void

    .line 321
    :cond_b
    sget-object p1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 322
    .line 323
    sget-object p1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 324
    .line 325
    iget v0, p1, Lcom/yunpan/appmanage/util/k;->n:I

    .line 326
    .line 327
    if-eqz v0, :cond_c

    .line 328
    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    .line 330
    .line 331
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    iget v3, p1, Lcom/yunpan/appmanage/util/k;->n:I

    .line 335
    .line 336
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    goto :goto_4

    .line 353
    :cond_c
    invoke-static {v3, p0, v9}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    :goto_4
    const-wide/16 v3, 0x7d0

    .line 358
    .line 359
    invoke-static {v3, v4, v0}, La2/w0;->n(JLjava/lang/String;)Lfa/a0;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    invoke-virtual {v0}, Lfa/a0;->a()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v3

    .line 367
    iget v0, v0, Lfa/a0;->a:I

    .line 368
    .line 369
    if-eqz v0, :cond_d

    .line 370
    .line 371
    iget-boolean p1, p1, Lcom/yunpan/appmanage/util/k;->j:Z

    .line 372
    .line 373
    if-eqz p1, :cond_d

    .line 374
    .line 375
    :try_start_3
    sget-object p1, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 376
    .line 377
    iget-object p1, p1, Lcom/yunpan/appmanage/base/AppStart;->c:Landroid/content/pm/PackageManager;

    .line 378
    .line 379
    invoke-virtual {p1, p0, v2, v6}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 380
    .line 381
    .line 382
    return-void

    .line 383
    :catch_2
    nop

    .line 384
    :cond_d
    move-object v2, v3

    .line 385
    :cond_e
    :goto_5
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 386
    .line 387
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 388
    .line 389
    .line 390
    const-string p0, "ailure"

    .line 391
    .line 392
    invoke-virtual {v2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 393
    .line 394
    .line 395
    move-result p0

    .line 396
    if-nez p0, :cond_10

    .line 397
    .line 398
    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 399
    .line 400
    .line 401
    move-result p0

    .line 402
    if-eqz p0, :cond_f

    .line 403
    .line 404
    goto :goto_6

    .line 405
    :cond_f
    const-string p0, "new state"

    .line 406
    .line 407
    invoke-virtual {v2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 408
    .line 409
    .line 410
    move-result p0

    .line 411
    if-eqz p0, :cond_10

    .line 412
    .line 413
    return-void

    .line 414
    :cond_10
    :goto_6
    const-string p0, "Unknown package"

    .line 415
    .line 416
    invoke-virtual {v2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 417
    .line 418
    .line 419
    move-result p0

    .line 420
    if-nez p0, :cond_18

    .line 421
    .line 422
    const-string p0, "not found"

    .line 423
    .line 424
    invoke-virtual {v2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 425
    .line 426
    .line 427
    move-result p0

    .line 428
    if-nez p0, :cond_17

    .line 429
    .line 430
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 431
    .line 432
    .line 433
    move-result p0

    .line 434
    if-nez p0, :cond_17

    .line 435
    .line 436
    const-string p0, "Could not access the Package Manager"

    .line 437
    .line 438
    invoke-virtual {v2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 439
    .line 440
    .line 441
    move-result p0

    .line 442
    if-nez p0, :cond_16

    .line 443
    .line 444
    const-string p0, "android.permission.MANAGE_USERS"

    .line 445
    .line 446
    invoke-virtual {v2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 447
    .line 448
    .line 449
    move-result p0

    .line 450
    const-string p1, "\u65e0\u6743\u9650\uff0c\u9700\u8981root\u6743\u9650"

    .line 451
    .line 452
    if-nez p0, :cond_13

    .line 453
    .line 454
    const-string p0, "Neither user 2000"

    .line 455
    .line 456
    invoke-virtual {v2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 457
    .line 458
    .line 459
    move-result p0

    .line 460
    if-nez p0, :cond_13

    .line 461
    .line 462
    const-string p0, "Permission"

    .line 463
    .line 464
    invoke-virtual {v2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 465
    .line 466
    .line 467
    move-result p0

    .line 468
    if-nez p0, :cond_13

    .line 469
    .line 470
    const-string p0, "Killed"

    .line 471
    .line 472
    invoke-virtual {v2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 473
    .line 474
    .line 475
    move-result p0

    .line 476
    if-nez p0, :cond_13

    .line 477
    .line 478
    const-string p0, "pm by system default"

    .line 479
    .line 480
    invoke-virtual {v2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 481
    .line 482
    .line 483
    move-result p0

    .line 484
    if-nez p0, :cond_15

    .line 485
    .line 486
    const-string p0, "cannot change component"

    .line 487
    .line 488
    invoke-virtual {v2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 489
    .line 490
    .line 491
    move-result p0

    .line 492
    if-eqz p0, :cond_12

    .line 493
    .line 494
    sget-object p0, Lfa/g0;->a:Lfa/h0;

    .line 495
    .line 496
    invoke-virtual {p0}, Lfa/h0;->f()Z

    .line 497
    .line 498
    .line 499
    move-result p0

    .line 500
    if-nez p0, :cond_11

    .line 501
    .line 502
    const-string v2, "\u65e0\u6cd5\u7981\u7528\u7ec4\u4ef6\uff0c\u9700\u8981root\u6743\u6216adb root"

    .line 503
    .line 504
    goto :goto_7

    .line 505
    :cond_11
    const-string v2, "\u6b64\u7cfb\u7edf\u65e0\u6cd5\u7981\u7528\u670d\u52a1\u7ec4\u4ef6"

    .line 506
    .line 507
    goto :goto_7

    .line 508
    :cond_12
    const-string p0, "Cannot disable a protected package"

    .line 509
    .line 510
    invoke-virtual {v2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 511
    .line 512
    .line 513
    move-result p0

    .line 514
    if-nez p0, :cond_14

    .line 515
    .line 516
    const-string p0, "SecurityException"

    .line 517
    .line 518
    invoke-virtual {v2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 519
    .line 520
    .line 521
    move-result p0

    .line 522
    if-eqz p0, :cond_19

    .line 523
    .line 524
    :cond_13
    move-object v2, p1

    .line 525
    goto :goto_7

    .line 526
    :cond_14
    const-string v2, "\u6b64\u5e94\u7528\u53d7\u8bbe\u5907\u7ba1\u7406\u5458\u4fdd\u62a4\uff0c\u65e0\u6cd5\u7981\u7528"

    .line 527
    .line 528
    goto :goto_7

    .line 529
    :cond_15
    const-string v2, "\u6b64\u7cfb\u7edf\u628apm\u547d\u4ee4\u7981\u7528\u4e86"

    .line 530
    .line 531
    goto :goto_7

    .line 532
    :cond_16
    const-string v2, "\u51b2\u7a81\uff0c\u9700\u5378\u8f7d\u5176\u5b83adb\u5e94\u7528"

    .line 533
    .line 534
    goto :goto_7

    .line 535
    :cond_17
    const-string v2, "\u6b64\u547d\u4ee4\u4e0d\u5b58\u5728"

    .line 536
    .line 537
    goto :goto_7

    .line 538
    :cond_18
    const-string v2, "\u6b64\u5e94\u7528\u4e0d\u5b58\u5728"

    .line 539
    .line 540
    :cond_19
    :goto_7
    new-instance p0, Ljava/lang/Exception;

    .line 541
    .line 542
    invoke-direct {p0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 543
    .line 544
    .line 545
    goto :goto_9

    .line 546
    :goto_8
    throw p0

    .line 547
    :goto_9
    goto :goto_8
.end method

.method public static W(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "pm "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const-string p1, "hide"

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string p1, "unhide"

    .line 14
    .line 15
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    sget-object p1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 19
    .line 20
    sget-object p1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 21
    .line 22
    iget v1, p1, Lcom/yunpan/appmanage/util/k;->n:I

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    const-string p1, ""

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v2, " --user "

    .line 32
    .line 33
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget p1, p1, Lcom/yunpan/appmanage/util/k;->n:I

    .line 37
    .line 38
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string p1, " \'"

    .line 49
    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string p0, "\'"

    .line 57
    .line 58
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    const-wide/16 v0, 0xd05

    .line 66
    .line 67
    invoke-static {v0, v1, p0}, La2/w0;->q(JLjava/lang/String;)Lfa/a0;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {p0}, Lfa/a0;->a()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    const-string p1, "Failure"

    .line 76
    .line 77
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-nez p1, :cond_3

    .line 82
    .line 83
    const-string p1, "Error:"

    .line 84
    .line 85
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-eqz p1, :cond_2

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_2
    const-string p1, "new hidden state"

    .line 93
    .line 94
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-eqz p1, :cond_3

    .line 99
    .line 100
    return-void

    .line 101
    :cond_3
    :goto_2
    const-string p1, "known package"

    .line 102
    .line 103
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-nez p1, :cond_7

    .line 108
    .line 109
    const-string p1, "not found"

    .line 110
    .line 111
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-nez p1, :cond_6

    .line 116
    .line 117
    const-string p1, "known command"

    .line 118
    .line 119
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    if-nez p1, :cond_6

    .line 124
    .line 125
    const-string p1, "android.permission.MANAGE_USERS"

    .line 126
    .line 127
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    const-string v0, "\u65e0\u6743\u9650\uff0c\u6b64\u529f\u80fd\u9700\u8981root\u6743\u9650"

    .line 132
    .line 133
    if-nez p1, :cond_5

    .line 134
    .line 135
    const-string p1, "Neither user 2000"

    .line 136
    .line 137
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    if-nez p1, :cond_5

    .line 142
    .line 143
    const-string p1, "Permission"

    .line 144
    .line 145
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    if-nez p1, :cond_5

    .line 150
    .line 151
    const-string p1, "Killed"

    .line 152
    .line 153
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    if-nez p1, :cond_5

    .line 158
    .line 159
    const-string p1, "pm by system default"

    .line 160
    .line 161
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    if-nez p1, :cond_4

    .line 166
    .line 167
    const-string p1, "Shell cannot change component"

    .line 168
    .line 169
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    if-eqz p1, :cond_8

    .line 174
    .line 175
    const-string p0, "\u6b64\u7cfb\u7edf\u65e0\u6cd5\u9690\u85cf\u5e94\u7528"

    .line 176
    .line 177
    goto :goto_3

    .line 178
    :cond_4
    const-string p0, "\u6b64\u7cfb\u7edf\u628apm\u547d\u4ee4\u7981\u7528\u4e86"

    .line 179
    .line 180
    goto :goto_3

    .line 181
    :cond_5
    move-object p0, v0

    .line 182
    goto :goto_3

    .line 183
    :cond_6
    const-string p0, "\u547d\u4ee4\u4e0d\u5b58\u5728\uff0c\u65e0\u6cd5\u4f7f\u7528\u6b64\u529f\u80fd"

    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_7
    const-string p0, "\u6b64\u5e94\u7528\u4e0d\u5b58\u5728"

    .line 187
    .line 188
    :cond_8
    :goto_3
    new-instance p1, Ljava/lang/Exception;

    .line 189
    .line 190
    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    throw p1
.end method

.method public static X(Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "cmd package install-existing"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 9
    .line 10
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 11
    .line 12
    iget v2, v1, Lcom/yunpan/appmanage/util/k;->n:I

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    const-string v1, ""

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v3, " --user "

    .line 22
    .line 23
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget v1, v1, Lcom/yunpan/appmanage/util/k;->n:I

    .line 27
    .line 28
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v1, " \'"

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p0, "\'"

    .line 47
    .line 48
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    const-wide/16 v0, 0xbb8

    .line 56
    .line 57
    invoke-static {v0, v1, p0}, La2/w0;->q(JLjava/lang/String;)Lfa/a0;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {p0}, Lfa/a0;->a()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    const-string v0, "known command"

    .line 66
    .line 67
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 74
    .line 75
    const/16 v0, 0x1a

    .line 76
    .line 77
    if-ge p0, v0, :cond_1

    .line 78
    .line 79
    const-string p0, "\u6b64\u7cfb\u7edf\u6ca1\u6709\u6062\u590d\u5e94\u7528\u7684\u547d\u4ee4,\u7cfb\u7edf\u7248\u672c\u8fc7\u4f4e"

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_1
    const-string p0, "\u6b64\u7cfb\u7edf\u6ca1\u6709\u6062\u590d\u5e94\u7528\u7684\u547d\u4ee4"

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    const-string v0, "installed for user"

    .line 86
    .line 87
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_3

    .line 92
    .line 93
    return-void

    .line 94
    :cond_3
    const-string v0, "doesn\'t exist"

    .line 95
    .line 96
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-nez v0, :cond_6

    .line 101
    .line 102
    const-string v0, "not found"

    .line 103
    .line 104
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-nez v0, :cond_5

    .line 109
    .line 110
    const-string v0, "android.permission.MANAGE_USERS"

    .line 111
    .line 112
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    const-string v1, "\u65e0\u6743\u9650\uff0c\u6b64\u529f\u80fd\u9700\u8981root\u6743\u9650"

    .line 117
    .line 118
    if-nez v0, :cond_4

    .line 119
    .line 120
    const-string v0, "Neither user 2000"

    .line 121
    .line 122
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-nez v0, :cond_4

    .line 127
    .line 128
    const-string v0, "ermission"

    .line 129
    .line 130
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-nez v0, :cond_4

    .line 135
    .line 136
    const-string v0, "Killed"

    .line 137
    .line 138
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-nez v0, :cond_4

    .line 143
    .line 144
    const-string v0, "pm by system default"

    .line 145
    .line 146
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    if-eqz v0, :cond_7

    .line 151
    .line 152
    const-string p0, "\u5931\u8d25\uff1a\u6b64\u7cfb\u7edf\u628apm\u547d\u4ee4\u7981\u7528\u4e86\uff01"

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_4
    move-object p0, v1

    .line 156
    goto :goto_1

    .line 157
    :cond_5
    const-string p0, "\u547d\u4ee4\u4e0d\u5b58\u5728\uff0c\u4f4e\u7248\u672c\u7cfb\u7edf\u65e0\u6cd5\u4f7f\u7528\u6b64\u529f\u80fd\uff0c\u5982\u9700\u6062\u590d\u8bf7\u6062\u590d\u51fa\u5382\u8bbe\u7f6e"

    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_6
    const-string p0, "\u4e0d\u5b58\u5728\u6b64\u5e94\u7528"

    .line 161
    .line 162
    :cond_7
    :goto_1
    new-instance v0, Ljava/lang/Exception;

    .line 163
    .line 164
    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw v0
.end method

.method public static Y(ILjava/lang/String;)Lfa/x;
    .locals 28

    move/from16 v1, p0

    move-object/from16 v2, p1

    .line 1
    const-string v3, "rm "

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    const-string v4, "/data/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v5, "\""

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    move-result-object v0

    iget-boolean v0, v0, Lcom/yunpan/appmanage/util/k;->m:Z

    if-eqz v0, :cond_0

    const-string v0, "/data/app/"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "chmod 777 \""

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 4
    :cond_0
    new-instance v6, Lfa/x;

    invoke-direct {v6}, Lfa/x;-><init>()V

    .line 5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v7, "shizuku"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    .line 6
    invoke-static/range {p1 .. p1}, Lif/a;->Y(Ljava/lang/String;)Z

    move-result v8

    const/4 v9, 0x0

    const/16 v10, 0x15

    const/16 v11, -0x6f

    if-eqz v8, :cond_1

    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v10, :cond_1

    .line 8
    iput-boolean v9, v6, Lfa/x;->a:Z

    .line 9
    const-string v0, "\u6b64\u7cfb\u7edf\u4e0d\u652f\u6301\u5b89\u88c5apks"

    iput-object v0, v6, Lfa/x;->c:Ljava/lang/String;

    .line 10
    iput v11, v6, Lfa/x;->b:I

    return-object v6

    .line 11
    :cond_1
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    move-result-object v0

    iget-boolean v0, v0, Lcom/yunpan/appmanage/util/k;->m:Z

    const/4 v12, 0x1

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/yunpan/appmanage/util/w;->b()Lcom/yunpan/appmanage/util/w;

    move-result-object v0

    .line 12
    iget-boolean v0, v0, Lcom/yunpan/appmanage/util/w;->J:Z

    if-eqz v0, :cond_2

    .line 13
    :try_start_0
    invoke-static {}, La2/w0;->F()La2/w0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p1 .. p1}, La2/w0;->I(Ljava/lang/String;)V

    .line 14
    iput-boolean v12, v6, Lfa/x;->a:Z

    .line 15
    const-string v0, "\u5b89\u88c5\u6210\u529f\uff0c\u8bf7\u91cd\u542f\u8f66\u673a"

    iput-object v0, v6, Lfa/x;->c:Ljava/lang/String;

    .line 16
    iput v9, v6, Lfa/x;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 17
    iput-boolean v9, v6, Lfa/x;->a:Z

    .line 18
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lfa/x;->c:Ljava/lang/String;

    .line 19
    iput v11, v6, Lfa/x;->b:I

    :goto_0
    return-object v6

    .line 20
    :cond_2
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 21
    const-string v14, "."

    const/4 v15, 0x0

    const/4 v11, -0x8

    const-string v10, ""

    if-eqz v8, :cond_e

    .line 22
    invoke-static {}, Lfa/h0;->c()Lfa/h0;

    move-result-object v0

    invoke-virtual {v0}, Lfa/h0;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 23
    iput-boolean v9, v6, Lfa/x;->a:Z

    .line 24
    iput v11, v6, Lfa/x;->b:I

    .line 25
    const-string v0, "\u89e3\u5305\u5931\u8d25\uff0c\u6ca1\u6709\u5185\u90e8\u5b58\u50a8"

    iput-object v0, v6, Lfa/x;->c:Ljava/lang/String;

    return-object v6

    .line 26
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lfa/h0;->c()Lfa/h0;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lfa/h0;->d()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    move-result-object v9

    iget-object v9, v9, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "cache"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v17, v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 27
    :try_start_1
    invoke-static {}, Lcom/yunpan/appmanage/util/w;->b()Lcom/yunpan/appmanage/util/w;

    move-result-object v11

    invoke-virtual {v11}, Lcom/yunpan/appmanage/util/w;->e()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 28
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v11, v0, v15, v15}, Lif/a;->w(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lmc/b;)V

    goto :goto_2

    :goto_1
    const/4 v1, 0x0

    goto/16 :goto_14

    :catch_1
    move-exception v0

    goto :goto_1

    .line 29
    :cond_4
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v11, v0, v15, v15}, Lza/g;->e(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lmc/b;)V

    .line 30
    :goto_2
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    .line 31
    array-length v12, v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v19, v10

    const/4 v13, 0x0

    const/16 v18, 0x0

    :goto_3
    const-string v9, ".obb"

    if-ge v13, v12, :cond_9

    :try_start_2
    aget-object v0, v11, v13

    .line 32
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    move/from16 v20, v12

    const-string v12, ".apk"

    invoke-virtual {v15, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 33
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v12, v17

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->isEmpty()Z

    move-result v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v9, :cond_6

    .line 35
    :try_start_3
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    move-result-object v9

    iget-object v9, v9, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-object/from16 v17, v10

    const/4 v10, 0x1

    :try_start_4
    invoke-virtual {v9, v15, v10}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 36
    iget-object v9, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 37
    :try_start_5
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-le v15, v10, :cond_5

    .line 38
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v15

    sub-int/2addr v15, v10

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 39
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v15, 0x0

    invoke-virtual {v12, v15, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v19, v9

    goto :goto_5

    :cond_5
    :goto_4
    move-object/from16 v19, v9

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    move-object/from16 v17, v10

    .line 40
    :goto_5
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    :cond_6
    move-object/from16 v17, v10

    goto :goto_6

    :cond_7
    move-object/from16 v12, v17

    move-object/from16 v17, v10

    .line 41
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v18, 0x1

    :cond_8
    :goto_6
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v10, v17

    const/4 v15, 0x0

    move-object/from16 v17, v12

    move/from16 v12, v20

    goto/16 :goto_3

    :cond_9
    move-object/from16 v12, v17

    move-object/from16 v17, v10

    .line 42
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    if-eqz v18, :cond_d

    .line 43
    array-length v13, v11

    const/4 v15, 0x0

    :goto_7
    if-ge v15, v13, :cond_d

    aget-object v0, v11, v15

    .line 44
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    if-eqz v10, :cond_c

    .line 45
    :try_start_7
    new-instance v10, Ljava/io/File;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9

    move-object/from16 v18, v9

    :try_start_8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    move-object/from16 v20, v11

    :try_start_9
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    move-result-object v11

    iget-object v11, v11, Lcom/yunpan/appmanage/util/k;->t:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    move/from16 v22, v13

    move-object/from16 v13, v19

    :try_start_a
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    .line 46
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    move/from16 v19, v7

    :try_start_b
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    move-result-object v7

    iget-object v7, v7, Lcom/yunpan/appmanage/util/k;->t:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v9, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 47
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    :try_start_c
    new-instance v9, Ljava/io/FileOutputStream;

    new-instance v10, Ljava/io/File;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    move-object/from16 v23, v3

    :try_start_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    move-object/from16 v24, v4

    :try_start_e
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    move-result-object v4

    iget-object v4, v4, Lcom/yunpan/appmanage/util/k;->t:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    const/high16 v0, 0x100000

    .line 48
    :try_start_f
    new-array v0, v0, [B

    .line 49
    :goto_8
    invoke-virtual {v7, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_a

    const/4 v4, 0x0

    .line 50
    invoke-virtual {v9, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_8

    .line 51
    :cond_a
    :try_start_10
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :try_start_11
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_a

    goto :goto_13

    :catchall_0
    move-exception v0

    :goto_9
    move-object v3, v0

    goto :goto_e

    :goto_a
    move-object v3, v0

    goto :goto_b

    :catchall_1
    move-exception v0

    goto :goto_a

    .line 52
    :goto_b
    :try_start_12
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    goto :goto_c

    :catchall_2
    move-exception v0

    move-object v4, v0

    :try_start_13
    invoke-static {v3, v4}, Lta/q;->u(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_c
    throw v3
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    :catchall_3
    move-exception v0

    :goto_d
    move-object/from16 v24, v4

    goto :goto_9

    :catchall_4
    move-exception v0

    move-object/from16 v23, v3

    goto :goto_d

    :goto_e
    :try_start_14
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    goto :goto_f

    :catchall_5
    move-exception v0

    move-object v4, v0

    :try_start_15
    invoke-static {v3, v4}, Lta/q;->u(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_f
    throw v3
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_a

    :catch_5
    :cond_b
    move-object/from16 v23, v3

    move-object/from16 v24, v4

    goto :goto_13

    :catch_6
    move-object/from16 v23, v3

    move-object/from16 v24, v4

    goto :goto_12

    :catch_7
    move-object/from16 v23, v3

    move-object/from16 v24, v4

    goto :goto_11

    :catch_8
    move-object/from16 v23, v3

    move-object/from16 v24, v4

    goto :goto_10

    :catch_9
    :cond_c
    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move-object/from16 v18, v9

    :goto_10
    move-object/from16 v20, v11

    :goto_11
    move/from16 v22, v13

    move-object/from16 v13, v19

    :goto_12
    move/from16 v19, v7

    :catch_a
    :goto_13
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v9, v18

    move/from16 v7, v19

    move-object/from16 v11, v20

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    move-object/from16 v19, v13

    move/from16 v13, v22

    goto/16 :goto_7

    :cond_d
    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move-object/from16 v13, v19

    move/from16 v19, v7

    goto :goto_15

    .line 53
    :goto_14
    iput-boolean v1, v6, Lfa/x;->a:Z

    const/4 v1, -0x8

    .line 54
    iput v1, v6, Lfa/x;->b:I

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u89e3\u5305\u5931\u8d25\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-static {v0, v1}, Lg/b;->z(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 57
    iput-object v0, v6, Lfa/x;->c:Ljava/lang/String;

    return-object v6

    :cond_e
    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move/from16 v19, v7

    move-object/from16 v17, v10

    move-object v12, v13

    move-object/from16 v13, v17

    .line 58
    :goto_15
    invoke-static {}, Lcom/yunpan/appmanage/util/w;->b()Lcom/yunpan/appmanage/util/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yunpan/appmanage/util/w;->g()Z

    move-result v0

    const-string v3, "/"

    if-eqz v0, :cond_17

    .line 59
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 60
    :try_start_16
    new-instance v4, Lef/b;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v0}, Lef/b;-><init>(Ljava/io/File;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_b

    .line 61
    :try_start_17
    invoke-virtual {v4}, Lef/b;->M()V

    .line 62
    iget-object v0, v4, Lef/b;->e:Lff/c;

    .line 63
    iget-object v13, v0, Lff/c;->a:Ljava/lang/String;

    .line 64
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    .line 65
    :try_start_18
    invoke-virtual {v4}, Lef/b;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_b

    goto :goto_17

    :catch_b
    nop

    goto :goto_17

    :catchall_6
    move-exception v0

    move-object v7, v0

    .line 66
    :try_start_19
    invoke-virtual {v4}, Lef/b;->close()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_7

    goto :goto_16

    :catchall_7
    move-exception v0

    move-object v4, v0

    :try_start_1a
    invoke-static {v7, v4}, Lta/q;->u(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_16
    throw v7
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_b

    .line 67
    :cond_f
    :goto_17
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 68
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    move-result-object v0

    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "OUSHANG_WHILTE_APP_LIST"

    invoke-static {v0, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 69
    const-string v7, "null"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    :cond_10
    move-object/from16 v0, v17

    .line 70
    :cond_11
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 71
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    const-string v10, ","

    if-nez v9, :cond_15

    .line 72
    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 73
    array-length v9, v0

    const/4 v11, 0x0

    :goto_18
    if-ge v11, v9, :cond_15

    aget-object v15, v0, v11

    .line 74
    invoke-virtual {v15, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_12

    goto :goto_19

    .line 75
    :cond_12
    invoke-virtual {v15, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_14

    invoke-virtual {v15, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_13

    goto :goto_19

    .line 76
    :cond_13
    invoke-virtual {v7, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_14
    :goto_19
    add-int/lit8 v11, v11, 0x1

    goto :goto_18

    .line 77
    :cond_15
    invoke-virtual {v7, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_16

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 80
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a

    .line 81
    :cond_16
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    :try_start_1b
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    move-result-object v7

    iget-object v7, v7, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v4, v9}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_c

    goto :goto_1b

    :catch_c
    nop

    const/4 v4, 0x0

    :goto_1b
    if-nez v4, :cond_17

    .line 83
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "settings put global OUSHANG_WHILTE_APP_LIST \""

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 84
    :cond_17
    invoke-static {}, Lcom/yunpan/appmanage/util/w;->b()Lcom/yunpan/appmanage/util/w;

    move-result-object v0

    .line 85
    iget v0, v0, Lcom/yunpan/appmanage/util/w;->T:I

    const-wide/16 v10, 0x7d0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_18

    .line 86
    const-string v0, "pm disable-user --user 0 com.android.packageinstaller"

    invoke-static {v10, v11, v0}, La2/w0;->o(JLjava/lang/String;)Lfa/a0;

    .line 87
    :cond_18
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v4, "pm enable --user 0 com.android.packageinstaller"

    const-string v7, "\u5b89\u88c5\u6210\u529f"

    const/16 v13, 0x15

    if-lt v0, v13, :cond_1c

    .line 88
    :try_start_1c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 89
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_19

    .line 90
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v13}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :catch_d
    move-exception v0

    goto :goto_1e

    .line 91
    :cond_19
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1c
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 92
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v15}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 93
    :cond_1a
    :goto_1d
    invoke-static {v1, v0}, La2/d;->g(ILjava/util/List;)V

    const/4 v9, 0x1

    .line 94
    iput-boolean v9, v6, Lfa/x;->a:Z

    const/4 v13, 0x0

    .line 95
    iput v13, v6, Lfa/x;->b:I

    .line 96
    iput-object v7, v6, Lfa/x;->c:Ljava/lang/String;

    .line 97
    invoke-static {}, Lcom/yunpan/appmanage/util/w;->b()Lcom/yunpan/appmanage/util/w;

    move-result-object v0

    .line 98
    iget v0, v0, Lcom/yunpan/appmanage/util/w;->T:I

    if-ne v0, v9, :cond_1b

    .line 99
    invoke-static {v10, v11, v4}, La2/w0;->o(JLjava/lang/String;)Lfa/a0;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_d

    :cond_1b
    return-object v6

    .line 100
    :goto_1e
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 101
    :cond_1c
    invoke-static {}, Lcom/yunpan/appmanage/util/w;->b()Lcom/yunpan/appmanage/util/w;

    move-result-object v0

    .line 102
    iget v0, v0, Lcom/yunpan/appmanage/util/w;->T:I

    const/4 v9, 0x1

    if-ne v0, v9, :cond_1d

    .line 103
    invoke-static {v10, v11, v4}, La2/w0;->o(JLjava/lang/String;)Lfa/a0;

    .line 104
    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "ls -ls \""

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lfa/a0;->b()Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-static/range {p1 .. p1}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    if-nez v8, :cond_2b

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v10, "data/"

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    move-result-object v10

    iget-object v10, v10, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 107
    invoke-static {v0, v10, v3, v2}, Landroid/support/v4/media/session/a;->D(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lfa/h0;->c()Lfa/h0;

    move-result-object v10

    invoke-virtual {v10}, Lfa/h0;->d()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    move-result-object v0

    iget v0, v0, Lfa/a0;->a:I

    if-nez v0, :cond_20

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/\u200bdata/"

    move-object/from16 v10, v24

    invoke-virtual {v2, v10, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    move-result-object v0

    iget v0, v0, Lfa/a0;->a:I

    if-nez v0, :cond_1e

    .line 110
    invoke-virtual {v2, v10, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_1f
    move-object v2, v0

    goto/16 :goto_27

    .line 111
    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lfa/h0;->c()Lfa/h0;

    move-result-object v3

    invoke-virtual {v3}, Lfa/h0;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    move-result-object v0

    iget v0, v0, Lfa/a0;->a:I

    if-nez v0, :cond_2b

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lfa/h0;->c()Lfa/h0;

    move-result-object v3

    invoke-virtual {v3}, Lfa/h0;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    move-result-object v3

    iget-object v3, v3, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/cache/.temp"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    :try_start_1d
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_e

    goto :goto_20

    :catch_e
    nop

    .line 114
    :goto_20
    invoke-static {v2, v0}, Lcom/yunpan/appmanage/util/a0;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    goto :goto_1f

    :cond_1f
    move-object v0, v2

    goto :goto_1f

    .line 115
    :cond_20
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    move-result-object v0

    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->O:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/16 v10, 0xe

    const-string v11, "/mnt/user/"

    const-string v13, "/mnt/media_rw/"

    if-nez v0, :cond_23

    .line 116
    invoke-static {}, Lfa/h0;->c()Lfa/h0;

    move-result-object v0

    invoke-virtual {v0}, Lfa/h0;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    move-result-object v3

    iget-object v3, v3, Lcom/yunpan/appmanage/util/k;->O:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lfa/h0;->c()Lfa/h0;

    move-result-object v3

    invoke-virtual {v3}, Lfa/h0;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_21
    move-object v2, v0

    goto/16 :goto_23

    .line 118
    :cond_21
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    move-result-object v0

    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->M:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    move-result-object v0

    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->M:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    move-result-object v3

    iget-object v3, v3, Lcom/yunpan/appmanage/util/k;->O:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    move-result-object v3

    iget-object v3, v3, Lcom/yunpan/appmanage/util/k;->M:Ljava/lang/String;

    .line 120
    invoke-static {v3, v2, v0}, Lta/q;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    .line 121
    :cond_22
    invoke-virtual {v2, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    move-result-object v11

    iget-object v11, v11, Lcom/yunpan/appmanage/util/k;->N:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    .line 123
    :cond_23
    invoke-virtual {v2, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    move-result-object v11

    iget-object v11, v11, Lcom/yunpan/appmanage/util/k;->N:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    goto :goto_21

    :cond_24
    move-object v0, v2

    goto/16 :goto_21

    .line 126
    :cond_25
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    move-result-object v0

    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->v:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    move-object/from16 v0, v17

    goto :goto_22

    :cond_26
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    move-result-object v0

    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->v:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 127
    :goto_22
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_27

    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    move-result-object v3

    iget v3, v3, Lfa/a0;->a:I

    if-nez v3, :cond_27

    .line 128
    const-string v3, "/.temp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-static {v2, v0}, Lcom/yunpan/appmanage/util/a0;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27

    goto/16 :goto_21

    .line 130
    :cond_27
    :goto_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    move-result-object v0

    iget v0, v0, Lfa/a0;->a:I

    if-eqz v0, :cond_2b

    .line 131
    const-string v0, "/data/local/tmp/.temp"

    .line 132
    :try_start_1e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_10

    move-object/from16 v4, v23

    :try_start_1f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 133
    sget-object v3, Lfa/h;->a:Lfa/j;

    .line 134
    invoke-virtual {v3}, Lfa/j;->i()Z

    move-result v3

    if-eqz v3, :cond_28

    const/4 v3, 0x0

    .line 135
    invoke-static {v2, v0, v3}, La2/w0;->a0(Ljava/lang/String;Ljava/lang/String;Lmc/b;)V

    goto/16 :goto_1f

    :cond_28
    const/4 v3, 0x0

    .line 136
    sget-object v10, Lfa/l;->a:Lfa/m;

    .line 137
    invoke-virtual {v10}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    move-result v10

    if-eqz v10, :cond_2b

    .line 138
    invoke-static {v2, v0, v3}, La2/w0;->b0(Ljava/lang/String;Ljava/lang/String;Lmc/b;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_f

    goto/16 :goto_1f

    :catch_f
    move-exception v0

    goto :goto_24

    :catch_10
    move-exception v0

    move-object/from16 v4, v23

    .line 139
    :goto_24
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    move-result-object v3

    iget v3, v3, Lcom/yunpan/appmanage/util/k;->n:I

    if-lez v3, :cond_2a

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/0/.temp"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 142
    :try_start_20
    sget-object v3, Lfa/h;->a:Lfa/j;

    .line 143
    invoke-virtual {v3}, Lfa/j;->i()Z

    move-result v3

    if-eqz v3, :cond_29

    const/4 v3, 0x0

    .line 144
    invoke-static {v2, v0, v3}, La2/w0;->a0(Ljava/lang/String;Ljava/lang/String;Lmc/b;)V

    goto/16 :goto_1f

    :goto_25
    const/4 v1, 0x0

    goto :goto_26

    :cond_29
    const/4 v3, 0x0

    .line 145
    sget-object v4, Lfa/l;->a:Lfa/m;

    .line 146
    invoke-virtual {v4}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 147
    invoke-static {v2, v0, v3}, La2/w0;->b0(Ljava/lang/String;Ljava/lang/String;Lmc/b;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_11

    goto/16 :goto_1f

    :catch_11
    move-exception v0

    goto :goto_25

    .line 148
    :goto_26
    iput-boolean v1, v6, Lfa/x;->a:Z

    .line 149
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lfa/x;->c:Ljava/lang/String;

    const/16 v2, -0x6f

    .line 150
    iput v2, v6, Lfa/x;->b:I

    return-object v6

    :cond_2a
    const/4 v1, 0x0

    const/16 v2, -0x6f

    .line 151
    iput-boolean v1, v6, Lfa/x;->a:Z

    .line 152
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lfa/x;->c:Ljava/lang/String;

    .line 153
    iput v2, v6, Lfa/x;->b:I

    return-object v6

    .line 154
    :cond_2b
    :goto_27
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    invoke-static {}, Lcom/yunpan/appmanage/util/a0;->o()Z

    move-result v0

    const-string v3, "pm install"

    if-eqz v0, :cond_2c

    .line 156
    const-string v0, "cmd package install"

    goto :goto_28

    :cond_2c
    move-object v0, v3

    .line 157
    :goto_28
    const-string v4, " -r -d -t"

    .line 158
    invoke-static {v0, v4}, Ld0/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, -0x1

    .line 159
    const-string v13, " --user "

    if-eq v1, v11, :cond_2e

    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x15

    if-ge v14, v15, :cond_2d

    goto :goto_29

    .line 160
    :cond_2d
    invoke-static {v1, v13}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto :goto_2a

    :cond_2e
    :goto_29
    move-object/from16 v14, v17

    .line 161
    :goto_2a
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " \""

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 162
    invoke-static {}, Lcom/yunpan/appmanage/util/w;->b()Lcom/yunpan/appmanage/util/w;

    move-result-object v15

    .line 163
    iget-boolean v15, v15, Lcom/yunpan/appmanage/util/w;->x:Z

    const/16 v9, 0x17

    if-eqz v15, :cond_30

    .line 164
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    move-result-object v15

    iget-boolean v15, v15, Lcom/yunpan/appmanage/util/k;->C:Z

    if-nez v15, :cond_30

    .line 165
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v15, v9, :cond_2f

    const/16 v11, 0x1d

    if-lt v15, v11, :cond_30

    .line 166
    :cond_2f
    const-string v11, " -r -d -t "

    const-string v15, " -r -d -t -g "

    invoke-virtual {v10, v11, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 167
    :cond_30
    const-string v11, "Can\'t open file"

    const-string v15, "--user "

    const-string v9, "["

    move-object/from16 v18, v3

    const-string v3, " -g "

    move-object/from16 v20, v7

    const-string v7, "input string: \"-g\""

    move-object/from16 v21, v12

    const-string v12, "ption -g"

    move-object/from16 v22, v6

    const-string v6, "ption: -g"

    move-object/from16 v23, v0

    const-string v0, "Unknown option"

    move-object/from16 v24, v14

    const-string v14, " "

    if-nez v8, :cond_47

    .line 168
    invoke-static {v10}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    move-result-object v8

    move-object/from16 v25, v9

    .line 169
    iget v9, v8, Lfa/a0;->a:I

    if-eqz v9, :cond_32

    const/4 v9, 0x1

    if-ge v1, v9, :cond_32

    invoke-virtual {v8}, Lfa/a0;->a()Ljava/lang/String;

    move-result-object v9

    move-object/from16 p1, v8

    const-string v8, "--user current"

    invoke-virtual {v9, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_31

    invoke-virtual {v10, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_31

    .line 170
    invoke-static {v5, v2, v5}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 171
    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v26, v13

    const-string v13, " --user current \""

    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 172
    invoke-static {v10}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    move-result-object v8

    goto :goto_2d

    :cond_31
    :goto_2b
    move-object/from16 v26, v13

    goto :goto_2c

    :cond_32
    move-object/from16 p1, v8

    goto :goto_2b

    :goto_2c
    move-object/from16 v8, p1

    .line 173
    :goto_2d
    iget v9, v8, Lfa/a0;->a:I

    if-eqz v9, :cond_35

    const-string v9, "/Android/data/"

    invoke-virtual {v2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_35

    invoke-virtual {v8}, Lfa/a0;->a()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v21, v8

    const-string v8, "ermission "

    invoke-virtual {v13, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_34

    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->b(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_34

    .line 174
    const-string v8, "/Android/\u200bdata/"

    invoke-virtual {v2, v9, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/yunpan/appmanage/util/a0;->b(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_34

    .line 175
    invoke-virtual {v10, v9, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 176
    invoke-static {v10}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    move-result-object v13

    move-object/from16 v27, v5

    .line 177
    iget v5, v13, Lfa/a0;->a:I

    if-eqz v5, :cond_33

    .line 178
    invoke-virtual {v10, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    :cond_33
    move-object v8, v13

    goto :goto_2f

    :cond_34
    move-object/from16 v27, v5

    goto :goto_2e

    :cond_35
    move-object/from16 v27, v5

    move-object/from16 v21, v8

    :goto_2e
    move-object/from16 v8, v21

    .line 179
    :goto_2f
    invoke-virtual {v8}, Lfa/a0;->a()Ljava/lang/String;

    move-result-object v5

    const-string v9, "must be streamed"

    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 180
    const-string v5, "cmd"

    invoke-virtual {v10, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 181
    const-string v5, "cmd package"

    const-string v8, "pm"

    invoke-virtual {v10, v5, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 182
    invoke-static {v10}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    move-result-object v8

    move-object/from16 v5, v18

    goto :goto_30

    :cond_36
    move-object/from16 v5, v23

    .line 183
    :goto_30
    iget v9, v8, Lfa/a0;->a:I

    if-eqz v9, :cond_38

    invoke-virtual {v8}, Lfa/a0;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_37

    invoke-virtual {v8}, Lfa/a0;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_37

    invoke-virtual {v8}, Lfa/a0;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_37

    invoke-virtual {v8}, Lfa/a0;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_38

    .line 184
    :cond_37
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    move-result-object v8

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/yunpan/appmanage/util/k;->C:Z

    .line 185
    invoke-virtual {v10, v3, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    move-result-object v8

    :cond_38
    if-lez v1, :cond_39

    .line 186
    iget v13, v8, Lfa/a0;->a:I

    if-nez v13, :cond_39

    if-eqz v19, :cond_39

    .line 187
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v15, "--user 0"

    invoke-virtual {v10, v13, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 188
    :cond_39
    invoke-virtual {v8}, Lfa/a0;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3e

    .line 189
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "cat \'"

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\' | "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " -r -d -t -S "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 190
    invoke-static {}, Lcom/yunpan/appmanage/util/w;->b()Lcom/yunpan/appmanage/util/w;

    move-result-object v9

    .line 191
    iget-boolean v9, v9, Lcom/yunpan/appmanage/util/w;->x:Z

    if-eqz v9, :cond_3a

    .line 192
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x17

    if-lt v9, v10, :cond_3a

    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    move-result-object v9

    iget-boolean v9, v9, Lcom/yunpan/appmanage/util/k;->C:Z

    if-nez v9, :cond_3a

    .line 193
    const-string v9, " -r -d -t -g"

    invoke-virtual {v8, v4, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    :cond_3a
    if-lez v1, :cond_3b

    .line 194
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, v26

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 195
    :cond_3b
    invoke-static {v8}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    move-result-object v9

    .line 196
    iget v10, v9, Lfa/a0;->a:I

    if-eqz v10, :cond_3d

    invoke-virtual {v9}, Lfa/a0;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3c

    invoke-virtual {v9}, Lfa/a0;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3c

    invoke-virtual {v9}, Lfa/a0;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3c

    invoke-virtual {v9}, Lfa/a0;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 197
    :cond_3c
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    move-result-object v0

    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/yunpan/appmanage/util/k;->C:Z

    .line 198
    invoke-virtual {v8, v3, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    move-result-object v8

    goto :goto_31

    :cond_3d
    move-object v8, v9

    .line 199
    :cond_3e
    :goto_31
    iget v0, v8, Lfa/a0;->a:I

    if-eqz v0, :cond_46

    invoke-virtual {v8}, Lfa/a0;->a()Ljava/lang/String;

    move-result-object v0

    const-string v3, "parse "

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 200
    :try_start_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-create -r -d -t --user "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    invoke-static {}, Lcom/yunpan/appmanage/util/w;->b()Lcom/yunpan/appmanage/util/w;

    move-result-object v1

    .line 202
    iget-boolean v1, v1, Lcom/yunpan/appmanage/util/w;->x:Z
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_14

    if-eqz v1, :cond_3f

    .line 203
    :try_start_22
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v1, v3, :cond_3f

    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    move-result-object v1

    iget-boolean v1, v1, Lcom/yunpan/appmanage/util/k;->C:Z

    if-nez v1, :cond_3f

    .line 204
    const-string v1, " -r -d -t -g"

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_12

    goto :goto_32

    :catch_12
    nop

    goto/16 :goto_35

    .line 205
    :cond_3f
    :goto_32
    :try_start_23
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    move-result-object v0

    .line 206
    iget v1, v0, Lfa/a0;->a:I

    if-nez v1, :cond_45

    .line 207
    invoke-virtual {v0}, Lfa/a0;->a()Ljava/lang/String;

    move-result-object v1

    const-string v3, "]"

    move-object/from16 v9, v25

    const/4 v4, 0x0

    invoke-static {v1, v9, v3, v4}, Lif/a;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 208
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_44

    .line 209
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->p(Ljava/io/File;)J

    move-result-wide v3
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_14

    const-wide/16 v6, 0x1

    cmp-long v0, v3, v6

    if-gez v0, :cond_40

    .line 210
    :try_start_24
    sget-object v0, Lfa/a;->a:Lfa/b;

    invoke-virtual {v0}, Lfa/b;->f()Z

    move-result v6

    if-eqz v6, :cond_40

    .line 211
    iget-object v0, v0, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    invoke-interface {v0, v2}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->file_length(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_12

    :cond_40
    const-wide/16 v6, 0x1

    cmp-long v0, v3, v6

    if-ltz v0, :cond_43

    .line 212
    :try_start_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "-write -S "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" \""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_14

    move-object/from16 v13, v27

    :try_start_26
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    move-result-object v0

    .line 213
    iget v3, v0, Lfa/a0;->a:I

    if-nez v3, :cond_42

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-commit "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    move-result-object v0

    .line 215
    iget v1, v0, Lfa/a0;->a:I

    if-nez v1, :cond_41

    move-object v8, v0

    :cond_41
    :goto_33
    move-object/from16 v18, v2

    move-object/from16 v1, v22

    goto/16 :goto_3b

    :catch_13
    :goto_34
    nop

    goto :goto_33

    .line 216
    :cond_42
    new-instance v1, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, v17

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lfa/a0;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_14
    move-object/from16 v13, v27

    goto :goto_34

    :cond_43
    move-object/from16 v13, v27

    .line 217
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "\u6587\u4ef6\u4e0d\u5b58\u5728"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_44
    move-object/from16 v5, v17

    move-object/from16 v13, v27

    .line 218
    new-instance v1, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lfa/a0;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_45
    move-object/from16 v5, v17

    move-object/from16 v13, v27

    .line 219
    new-instance v1, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lfa/a0;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_13

    :cond_46
    :goto_35
    move-object/from16 v13, v27

    goto :goto_33

    :cond_47
    move-object v13, v5

    move-object/from16 v5, v17

    move-object/from16 v4, v24

    .line 220
    const-string v8, "-create -r -d -t "

    move-object/from16 v10, v23

    .line 221
    invoke-static {v10, v8}, Ld0/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 222
    invoke-static {}, Lcom/yunpan/appmanage/util/w;->b()Lcom/yunpan/appmanage/util/w;

    move-result-object v5

    .line 223
    iget-boolean v5, v5, Lcom/yunpan/appmanage/util/w;->x:Z

    if-eqz v5, :cond_48

    .line 224
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    move-object/from16 v18, v2

    const/16 v2, 0x17

    if-lt v5, v2, :cond_49

    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    move-result-object v2

    iget-boolean v2, v2, Lcom/yunpan/appmanage/util/k;->C:Z

    if-nez v2, :cond_49

    const-string v2, "-g "

    goto :goto_36

    :cond_48
    move-object/from16 v18, v2

    :cond_49
    move-object/from16 v2, v17

    :goto_36
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4a

    move-object/from16 v1, v17

    goto :goto_37

    .line 225
    :cond_4a
    invoke-static {v15, v1, v14}, Lg/b;->i(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 226
    :goto_37
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 227
    invoke-static {v1}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    move-result-object v2

    .line 228
    iget v5, v2, Lfa/a0;->a:I

    if-eqz v5, :cond_4c

    invoke-virtual {v2}, Lfa/a0;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4b

    invoke-virtual {v2}, Lfa/a0;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4b

    invoke-virtual {v2}, Lfa/a0;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4b

    invoke-virtual {v2}, Lfa/a0;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 229
    :cond_4b
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    move-result-object v0

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/yunpan/appmanage/util/k;->C:Z

    .line 230
    invoke-virtual {v1, v3, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    move-result-object v2

    .line 231
    :cond_4c
    iget v0, v2, Lfa/a0;->a:I

    if-eqz v0, :cond_4d

    move-object/from16 v1, v22

    const/4 v3, 0x0

    .line 232
    iput-boolean v3, v1, Lfa/x;->a:Z

    .line 233
    iput v0, v1, Lfa/x;->b:I

    .line 234
    const-string v0, "\u65e0\u6cd5\u521b\u5efa\u5b89\u88c5\u4f1a\u8bdd"

    iput-object v0, v1, Lfa/x;->c:Ljava/lang/String;

    return-object v1

    :cond_4d
    move-object/from16 v1, v22

    .line 235
    invoke-virtual {v2}, Lfa/a0;->a()Ljava/lang/String;

    move-result-object v0

    .line 236
    :try_start_27
    const-string v3, "(\\d+)"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 237
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 238
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    const/4 v5, 0x1

    .line 239
    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_15

    goto :goto_38

    :catch_15
    nop

    move-object/from16 v3, v17

    .line 240
    :goto_38
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4e

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4e

    .line 241
    const-string v3, "]"

    const/4 v6, 0x0

    invoke-static {v0, v9, v3, v6}, Lif/a;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    goto :goto_39

    :cond_4e
    const/4 v6, 0x0

    .line 242
    :goto_39
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 243
    iput-boolean v6, v1, Lfa/x;->a:Z

    .line 244
    iget v0, v2, Lfa/a0;->a:I

    iput v0, v1, Lfa/x;->b:I

    .line 245
    const-string v0, "\u65e0\u6cd5\u83b7\u53d6\u5b89\u88c5\u4f1a\u8bddID"

    iput-object v0, v1, Lfa/x;->c:Ljava/lang/String;

    return-object v1

    .line 246
    :cond_4f
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_50
    :goto_3a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 247
    const-string v6, "-write -S "

    .line 248
    invoke-static {v10, v6}, Ld0/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 249
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\" \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    move-result-object v2

    .line 250
    iget v6, v2, Lfa/a0;->a:I

    if-eqz v6, :cond_50

    .line 251
    invoke-virtual {v2}, Lfa/a0;->a()Ljava/lang/String;

    goto :goto_3a

    .line 252
    :cond_51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-commit "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    move-result-object v8

    .line 253
    :goto_3b
    invoke-virtual {v8}, Lfa/a0;->a()Ljava/lang/String;

    move-result-object v0

    .line 254
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 255
    const-string v2, "ailure"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_54

    iget v2, v8, Lfa/a0;->a:I

    if-nez v2, :cond_54

    const-string v2, "rror:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_52

    goto :goto_3c

    .line 256
    :cond_52
    const-string v2, "Success"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_53

    const/4 v2, 0x0

    .line 257
    iput v2, v1, Lfa/x;->b:I

    const/4 v2, 0x1

    .line 258
    iput-boolean v2, v1, Lfa/x;->a:Z

    move-object/from16 v2, v20

    .line 259
    iput-object v2, v1, Lfa/x;->c:Ljava/lang/String;

    goto/16 :goto_57

    .line 260
    :cond_53
    const-string v0, "\u5b89\u88c5\u5931\u8d25"

    iput-object v0, v1, Lfa/x;->c:Ljava/lang/String;

    goto/16 :goto_57

    .line 261
    :cond_54
    :goto_3c
    const-string v2, "permission"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_96

    const-string v2, "ermission denied"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_55

    goto/16 :goto_55

    .line 262
    :cond_55
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "allowedtoinstall"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_56

    const/4 v2, -0x8

    .line 263
    iput v2, v1, Lfa/x;->b:I

    const-string v0, "\u7cfb\u7edf\u7981\u6b62\u547d\u4ee4\u5f0f\u5b89\u88c5"

    goto/16 :goto_56

    .line 264
    :cond_56
    const-string v2, "file or directory"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_95

    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_57

    goto/16 :goto_54

    .line 265
    :cond_57
    const-string v2, "not found"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 266
    const-string v0, "\u547d\u4ee4\u51fa\u9519"

    goto/16 :goto_56

    .line 267
    :cond_58
    const-string v2, "syntax error"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 268
    const-string v0, "\u547d\u4ee4\u51fa\u9519"

    goto/16 :goto_56

    .line 269
    :cond_59
    const-string v2, "Killed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 270
    const-string v0, "\u65e0\u6743\u9650\uff0c\u6b64\u64cd\u4f5c\u9700\u8981root\u6743\u9650"

    goto/16 :goto_56

    .line 271
    :cond_5a
    const-string v2, "INSTALL_FAILED_VERIF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 272
    const-string v0, "\u5b89\u88c5\u5931\u8d25\uff1a\u6b64\u7cfb\u7edf\u7981\u7528\u547d\u4ee4\u5b89\u88c5"

    goto/16 :goto_56

    .line 273
    :cond_5b
    const-string v2, "INSTALL_FAILED_VERSION_DOWNGRADE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "pm uninstall \""

    if-eqz v2, :cond_5c

    const/16 v2, -0x6f

    .line 274
    iput v2, v1, Lfa/x;->b:I

    .line 275
    :try_start_28
    new-instance v2, Lef/b;

    new-instance v0, Ljava/io/File;

    move-object/from16 v4, v18

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v0}, Lef/b;-><init>(Ljava/io/File;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_17

    .line 276
    :try_start_29
    invoke-virtual {v2}, Lef/b;->M()V

    .line 277
    iget-object v0, v2, Lef/b;->e:Lff/c;

    .line 278
    iget-object v0, v0, Lff/c;->a:Ljava/lang/String;
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_8

    .line 279
    :try_start_2a
    invoke-static {}, Lcom/yunpan/appmanage/base/AppStart;->b()Lcom/yunpan/appmanage/base/AppStart;

    move-result-object v4

    iget-object v4, v4, Lcom/yunpan/appmanage/base/AppStart;->c:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_16
    .catchall {:try_start_2a .. :try_end_2a} :catchall_8

    goto :goto_3d

    :catchall_8
    move-exception v0

    move-object v3, v0

    goto :goto_3e

    .line 280
    :catch_16
    :try_start_2b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_8

    .line 281
    :goto_3d
    :try_start_2c
    invoke-virtual {v2}, Lef/b;->close()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_17

    goto :goto_40

    .line 282
    :goto_3e
    :try_start_2d
    invoke-virtual {v2}, Lef/b;->close()V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_9

    goto :goto_3f

    :catchall_9
    move-exception v0

    move-object v2, v0

    :try_start_2e
    invoke-static {v3, v2}, Lta/q;->u(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_3f
    throw v3
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_17

    .line 283
    :catch_17
    :goto_40
    const-string v0, "\u5df2\u7ecf\u5b89\u88c5\u4e86\u8be5\u5e94\u7528\u66f4\u9ad8\u7248\u672c\uff0c\u5982\u679c\u9700\u8981\u964d\u7ea7\u8bf7\u5148\u5378\u8f7d"

    goto/16 :goto_56

    :cond_5c
    move-object/from16 v4, v18

    .line 284
    const-string v2, "INSTALL_FAILED_ALREADY_EXISTS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5d

    const-string v2, "INSTALL_FAILED_UPDATE_INCOMPATIBLE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5e

    :cond_5d
    const/16 v2, -0x6f

    goto/16 :goto_4f

    .line 285
    :cond_5e
    const-string v2, "INSTALL_FAILED_SHARED_USER_INCOMPATIBLE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5f

    const/16 v2, -0x6f

    .line 286
    iput v2, v1, Lfa/x;->b:I

    const-string v0, "\u4e0e\u7cfb\u7edf\u7b7e\u540d\u4e0d\u4e00\u81f4\uff1a\u6b64APK\u6307\u5b9a\u4e86android.uid.system\uff0c\u9700\u8981\u4e0e\u7cfb\u7edf\u7b7e\u540d\u4e00\u81f4\u624d\u80fd\u5b89\u88c5"

    goto/16 :goto_56

    :cond_5f
    const/16 v2, -0x6f

    .line 287
    const-string v5, "INSTALL_FAILED_OLDER_SDK"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_60

    .line 288
    iput v2, v1, Lfa/x;->b:I

    const-string v0, "\u4e0d\u517c\u5bb9\uff0c\u60a8\u7684\u7cfb\u7edf\u592a\u65e7\uff0c\u6b64\u5e94\u7528\u4e0d\u517c\u5bb9\u60a8\u7684\u7cfb\u7edf\uff01"

    goto/16 :goto_56

    .line 289
    :cond_60
    const-string v5, "INSTALL_FAILED_NEWER_SDK"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_61

    .line 290
    iput v2, v1, Lfa/x;->b:I

    const-string v0, "\u4e0d\u517c\u5bb9\uff0c\u6b64\u5e94\u7528\u4e0d\u652f\u6301\u60a8\u7684\u7cfb\u7edf"

    goto/16 :goto_56

    .line 291
    :cond_61
    const-string v5, "INSTALL_PARSE_FAILED_NO_CERTIFICATES"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_62

    .line 292
    iput v2, v1, Lfa/x;->b:I

    const-string v0, "\u6ca1\u6709\u7b7e\u540d\u8bc1\u4e66\uff0c\u9700\u8981\u5bf9apk\u7b7e\u540d\u624d\u80fd\u5b89\u88c5"

    goto/16 :goto_56

    .line 293
    :cond_62
    const-string v5, "is a persistent app"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_63

    .line 294
    iput v2, v1, Lfa/x;->b:I

    const-string v0, "\u65e0\u6cd5\u66f4\u65b0\uff0c\u6b64\u5e94\u7528\u8bbe\u7f6e\u6709\u6301\u7eed\u8fd0\u884c\u6807\u8bb0\uff1aandroid:persistent=true"

    goto/16 :goto_56

    .line 295
    :cond_63
    const-string v5, "INSTALL_FAILED_UID_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_64

    .line 296
    iput v2, v1, Lfa/x;->b:I

    .line 297
    :try_start_2f
    new-instance v2, Lef/b;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v0}, Lef/b;-><init>(Ljava/io/File;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_19

    .line 298
    :try_start_30
    invoke-virtual {v2}, Lef/b;->M()V

    .line 299
    iget-object v0, v2, Lef/b;->e:Lff/c;

    .line 300
    iget-object v0, v0, Lff/c;->a:Ljava/lang/String;
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_a

    .line 301
    :try_start_31
    invoke-static {}, Lcom/yunpan/appmanage/base/AppStart;->b()Lcom/yunpan/appmanage/base/AppStart;

    move-result-object v4

    iget-object v4, v4, Lcom/yunpan/appmanage/base/AppStart;->c:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_18
    .catchall {:try_start_31 .. :try_end_31} :catchall_a

    goto :goto_41

    :catchall_a
    move-exception v0

    move-object v3, v0

    goto :goto_42

    .line 302
    :catch_18
    :try_start_32
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_a

    .line 303
    :goto_41
    :try_start_33
    invoke-virtual {v2}, Lef/b;->close()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_19

    goto :goto_44

    .line 304
    :goto_42
    :try_start_34
    invoke-virtual {v2}, Lef/b;->close()V
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_b

    goto :goto_43

    :catchall_b
    move-exception v0

    move-object v2, v0

    :try_start_35
    invoke-static {v3, v2}, Lta/q;->u(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_43
    throw v3
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_19

    .line 305
    :catch_19
    :goto_44
    const-string v0, "\u65e7\u7248\u672c\u5378\u8f7d\u4e0d\u5e72\u51c0\uff0c\u6709\u6b8b\u7559\u6587\u4ef6\uff0c\u9700\u6e05\u7406\u5e72\u51c0\u624d\u80fd\u5b89\u88c5"

    goto/16 :goto_56

    .line 306
    :cond_64
    const-string v2, "INSTALL_FAILED_CPU_ABL_INCOMPATIBLE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_65

    const/16 v2, -0x6f

    .line 307
    iput v2, v1, Lfa/x;->b:I

    const-string v0, "\u4e0d\u517c\u5bb9\uff0cAPP\u67b6\u6784\u4e0d\u5339\u914d\u6b64\u7cfb\u7edf"

    goto/16 :goto_56

    .line 308
    :cond_65
    const-string v2, "INSTALL_FAILED_INVALID_APK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_66

    const-string v2, "instant app illegality"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_67

    :cond_66
    const/16 v2, -0x6f

    goto/16 :goto_4e

    .line 309
    :cond_67
    const-string v2, "verify failed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_68

    const-string v2, "is not auth"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_69

    :cond_68
    const/16 v2, -0x6f

    goto/16 :goto_4d

    .line 310
    :cond_69
    const-string v2, "INSTALL_FAILED_INVALID_URI"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 311
    const-string v0, "\u65e0\u6548\u7684APK\u5305\u540d"

    goto/16 :goto_56

    .line 312
    :cond_6a
    const-string v2, "INSTALL_FAILED_INSUFFICIENT_STORAGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6b

    const-string v2, "STATUS_FAILURE_STORAGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6b

    const-string v2, "Failed to allocate"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6c

    const-string v2, "allocatable"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6c

    :cond_6b
    const/16 v2, -0x6f

    goto/16 :goto_4c

    .line 313
    :cond_6c
    const-string v2, "INSTALL_FAILED_DUPLICATE_PACKAGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6d

    const/16 v2, -0x6f

    .line 314
    iput v2, v1, Lfa/x;->b:I

    const-string v0, "\u672c\u673a\u4e0a\u5df2\u7ecf\u5b58\u5728\u76f8\u540c\u5305\u540d\u7684APP"

    goto/16 :goto_56

    :cond_6d
    const/16 v2, -0x6f

    .line 315
    const-string v5, "INSTALL_FAILED_NO_SHARED_USER"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 316
    iput v2, v1, Lfa/x;->b:I

    const-string v0, "\u6b64\u5e94\u7528\u8bf7\u6c42\u7684\u5171\u4eab\u7528\u6237\u672c\u7cfb\u7edf\u4e0d\u5b58\u5728"

    goto/16 :goto_56

    .line 317
    :cond_6e
    const-string v5, "INSTALL_FAILED_MISSING_SHARED_LIBRARY"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 318
    iput v2, v1, Lfa/x;->b:I

    const-string v0, "\u4e0d\u517c\u5bb9\uff0c\u6b64\u5e94\u7528\u4f7f\u7528\u4e86\u8bbe\u5907\u4e0a\u4e0d\u53ef\u7528\u7684\u5171\u4eab\u5e93"

    goto/16 :goto_56

    .line 319
    :cond_6f
    const-string v2, "INSTALL_FAILED_REPLACE_COULDNT_DELETE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_70

    .line 320
    const-string v0, "\u66ff\u6362\u65f6\u65e0\u6cd5\u5220\u9664"

    goto/16 :goto_56

    .line 321
    :cond_70
    const-string v2, "INSTALL_FAILED_DEXOPT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_71

    .line 322
    const-string v0, "dex\u4f18\u5316\u9a8c\u8bc1\u5931\u8d25\u6216\u7a7a\u95f4\u4e0d\u8db3"

    goto/16 :goto_56

    .line 323
    :cond_71
    const-string v2, "INSTALL_FAILED_CONFLICTING_PROVIDER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 324
    const-string v0, "\u8bbe\u5907\u91cc\u5df2\u7ecf\u5b58\u5728\u4e0e\u5e94\u7528\u91cc\u540c\u540d\u7684 content provider"

    goto/16 :goto_56

    .line 325
    :cond_72
    const-string v2, "INSTALL_FAILED_CPU_ABI_INCOMPATIBLE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_73

    const/16 v2, -0x6f

    .line 326
    iput v2, v1, Lfa/x;->b:I

    const-string v0, "\u4e0d\u517c\u5bb9\uff0c\u6b64\u5e94\u7528\u542b\u6709\u4e0d\u517c\u5bb9\u672c\u673a CPU \u7684\u4ee3\u7801"

    goto/16 :goto_56

    :cond_73
    const/16 v2, -0x6f

    .line 327
    const-string v5, "INSTALL_FAILED_NO_MATCHING_ABIS"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_74

    .line 328
    iput v2, v1, Lfa/x;->b:I

    const-string v0, "\u4e0d\u517c\u5bb9\uff0c\u6b64\u5e94\u7528\u542b\u6709\u672c\u673a\u4e0d\u652f\u6301\u7684\u63a5\u53e3\u4ee3\u7801"

    goto/16 :goto_56

    .line 329
    :cond_74
    const-string v5, "INSTALL_FAILED_MISSING_FEATURE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_75

    .line 330
    iput v2, v1, Lfa/x;->b:I

    const-string v0, "\u4e0d\u517c\u5bb9\uff0c\u6b64\u5e94\u7528\u4f7f\u7528\u4e86\u672c\u673a\u4e0d\u53ef\u7528\u7684\u529f\u80fd"

    goto/16 :goto_56

    .line 331
    :cond_75
    const-string v5, "INSTALL_FAILED_ACWF_INCOMPATIBLE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_76

    .line 332
    iput v2, v1, Lfa/x;->b:I

    const-string v0, "\u4e0d\u517c\u5bb9\uff0c\u6b64\u5e94\u7528\u4e0e\u672c\u673a\u4e0d\u517c\u5bb9"

    goto/16 :goto_56

    .line 333
    :cond_76
    const-string v2, "INSTALL_CANCELED_BY_USER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_77

    .line 334
    const-string v0, "\u6b64\u5e94\u7528\u5b89\u88c5\u9700\u8981\u5728\u8bbe\u5907\u4e0a\u786e\u8ba4\uff0c\u4f46\u672a\u64cd\u4f5c\u8bbe\u5907\u6216\u70b9\u4e86\u53d6\u6d88\uff0c\u5728\u8bbe\u5907\u4e0a\u540c\u610f\u5b89\u88c5"

    goto/16 :goto_56

    .line 335
    :cond_77
    const-string v2, "INSTALL_FAILED_CONTAINER_ERROR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_78

    .line 336
    const-string v0, "sdcard \u8bbf\u95ee\u5931\u8d25\uff1b\u5e94\u7528\u7b7e\u540d\u4e0e ROM \u7b7e\u540d\u4e00\u81f4\uff0c\u88ab\u5f53\u4f5c\u5185\u7f6e\u5e94\u7528\uff0c\u786e\u8ba4 sdcard \u53ef\u7528\uff0c\u6216\u8005\u5b89\u88c5\u5230\u5185\u7f6e\u5b58\u50a8\uff1b\u6253\u5305\u65f6\u4e0d\u4e0e ROM \u4f7f\u7528\u76f8\u540c\u7b7e\u540d"

    goto/16 :goto_56

    .line 337
    :cond_78
    const-string v2, "INSTALL_FAILED_INVALID_INSTALL_LOCATION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_79

    .line 338
    const-string v0, "\u4e0d\u80fd\u5b89\u88c5\u5230\u6307\u5b9a\u4f4d\u7f6e\uff0c\u5e94\u7528\u7b7e\u540d\u4e0e ROM \u7b7e\u540d\u4e00\u81f4\uff0c\u88ab\u5f53\u4f5c\u5185\u7f6e\u5e94\u7528\u3002\u5207\u6362\u5b89\u88c5\u4f4d\u7f6e\uff0c\u6dfb\u52a0\u6216\u5220\u9664 -s \u53c2\u6570\uff1b\u6253\u5305\u65f6\u4e0d\u4e0e ROM \u4f7f\u7528\u76f8\u540c\u7b7e\u540d"

    goto/16 :goto_56

    .line 339
    :cond_79
    const-string v2, "INSTALL_FAILED_MEDIA_UNAVAILABLE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 340
    const-string v0, "\u5b89\u88c5\u4f4d\u7f6e\u4e0d\u53ef\u7528\uff0c\u4e00\u822c\u4e3a sdcard\uff0c\u786e\u8ba4 sdcard \u53ef\u7528\u6216\u5b89\u88c5\u5230\u5185\u7f6e\u5b58\u50a8"

    goto/16 :goto_56

    .line 341
    :cond_7a
    const-string v2, "INSTALL_FAILED_VERIFICATION_TIMEOUT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 342
    const-string v0, "\u9a8c\u8bc1\u5b89\u88c5\u5305\u8d85\u65f6"

    goto/16 :goto_56

    .line 343
    :cond_7b
    const-string v2, "INSTALL_FAILED_VERIFICATION_FAILURE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 344
    const-string v0, "\u9a8c\u8bc1\u5b89\u88c5\u5305\u5931\u8d25"

    goto/16 :goto_56

    .line 345
    :cond_7c
    const-string v2, "INSTALL_FAILED_INTERNAL_ERROR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 346
    const-string v0, "\u56e0\u7cfb\u7edf\u95ee\u9898\u5b89\u88c5\u5931\u8d25"

    goto/16 :goto_56

    .line 347
    :cond_7d
    const-string v2, "INSTALL_FAILED_USER_RESTRICTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 348
    const-string v0, "\u7528\u6237\u88ab\u9650\u5236\u5b89\u88c5\u5e94\u7528 \u5728\u5f00\u53d1\u8005\u9009\u9879\u91cc\u5c06\u300cUSB\u5b89\u88c5\u300d\u6253\u5f00\uff0c\u5982\u679c\u5df2\u7ecf\u6253\u5f00\u4e86\uff0c\u90a3\u5148\u5173\u95ed\u518d\u6253\u5f00"

    goto/16 :goto_56

    .line 349
    :cond_7e
    const-string v2, "INSTALL_FAILED_DUPLICATE_PERMISSION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7f

    const/16 v2, -0x6f

    .line 350
    iput v2, v1, Lfa/x;->b:I

    const-string v0, "\u6743\u9650\u51b2\u7a81\uff1a\u6b64\u5e94\u7528\u5c1d\u8bd5\u5b9a\u4e49\u4e00\u4e2a\u5df2\u7ecf\u5b58\u5728\u7684\u6743\u9650\u540d\u79f0"

    goto/16 :goto_56

    .line 351
    :cond_7f
    const-string v2, "INSTALL_FAILED_PACKAGE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_80

    .line 352
    const-string v0, "\u5e94\u7528\u4e0e\u8c03\u7528\u7a0b\u5e8f\u671f\u671b\u7684\u4e0d\u4e00\u81f4"

    goto/16 :goto_56

    .line 353
    :cond_80
    const-string v2, "INSTALL_PARSE_FAILED_NOT_APK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_81

    .line 354
    const-string v0, "\u6587\u4ef6\u89e3\u6790\u5931\u8d25"

    goto/16 :goto_56

    .line 355
    :cond_81
    const-string v2, "INSTALL_PARSE_FAILED_BAD_MANIFEST"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_82

    .line 356
    const-string v0, "\u65e0\u6cd5\u89e3\u6790\u7684AndroidManifest.xml\u6587\u4ef6"

    goto/16 :goto_56

    .line 357
    :cond_82
    const-string v2, "INSTALL_PARSE_FAILED_MANIFEST_MALFORMED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_83

    .line 358
    const-string v0, "\u89e3\u6790 manifest \u6587\u4ef6\u65f6\u9047\u5230\u7ed3\u6784\u6027\u9519\u8bef"

    goto/16 :goto_56

    .line 359
    :cond_83
    const-string v2, "INSTALL_PARSE_FAILED_MANIFEST_EMPTY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_84

    .line 360
    const-string v0, "\u5728 manifest \u6587\u4ef6\u91cc\u627e\u4e0d\u5230\u627e\u53ef\u64cd\u4f5c\u6807\u7b7e\uff08instrumentation \u6216 application\uff09"

    goto/16 :goto_56

    .line 361
    :cond_84
    const-string v2, "INSTALL_PARSE_FAILED_BAD_PACKAGE_NAME"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_85

    .line 362
    const-string v0, "manifest \u6587\u4ef6\u91cc\u6ca1\u6709\u6216\u8005\u4f7f\u7528\u4e86\u65e0\u6548\u7684\u5305\u540d"

    goto/16 :goto_56

    .line 363
    :cond_85
    const-string v2, "INSTALL_PARSE_FAILED_BAD_SHARED_USER_ID"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_86

    .line 364
    const-string v0, "manifest \u6587\u4ef6\u91cc\u6307\u5b9a\u4e86\u65e0\u6548\u7684\u5171\u4eab\u7528\u6237 ID"

    goto/16 :goto_56

    .line 365
    :cond_86
    const-string v2, "INSTALL_PARSE_FAILED_CERTIFICATE_ENCODING"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_87

    .line 366
    const-string v0, "\u89e3\u6790 APK \u6587\u4ef6\u65f6\u9047\u5230 CertificateEncodingException"

    goto/16 :goto_56

    .line 367
    :cond_87
    const-string v2, "INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_88

    .line 368
    const-string v0, "\u89e3\u6790\u5668\u9047\u5230\u5f02\u5e38"

    goto/16 :goto_56

    .line 369
    :cond_88
    const-string v2, "INSTALL_PARSE_FAILED_INCONSISTENT_CERTIFICATES"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_89

    const/16 v2, -0x6f

    .line 370
    iput v2, v1, Lfa/x;->b:I

    .line 371
    :try_start_36
    new-instance v2, Lef/b;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v0}, Lef/b;-><init>(Ljava/io/File;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_36} :catch_1b

    .line 372
    :try_start_37
    invoke-virtual {v2}, Lef/b;->M()V

    .line 373
    iget-object v0, v2, Lef/b;->e:Lff/c;

    .line 374
    iget-object v0, v0, Lff/c;->a:Ljava/lang/String;
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_c

    .line 375
    :try_start_38
    invoke-static {}, Lcom/yunpan/appmanage/base/AppStart;->b()Lcom/yunpan/appmanage/base/AppStart;

    move-result-object v4

    iget-object v4, v4, Lcom/yunpan/appmanage/base/AppStart;->c:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_38} :catch_1a
    .catchall {:try_start_38 .. :try_end_38} :catchall_c

    goto :goto_45

    :catchall_c
    move-exception v0

    move-object v3, v0

    goto :goto_46

    .line 376
    :catch_1a
    :try_start_39
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_c

    .line 377
    :goto_45
    :try_start_3a
    invoke-virtual {v2}, Lef/b;->close()V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3a} :catch_1b

    goto :goto_48

    .line 378
    :goto_46
    :try_start_3b
    invoke-virtual {v2}, Lef/b;->close()V
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_d

    goto :goto_47

    :catchall_d
    move-exception v0

    move-object v2, v0

    :try_start_3c
    invoke-static {v3, v2}, Lta/q;->u(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_47
    throw v3
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3c} :catch_1b

    .line 379
    :catch_1b
    :goto_48
    const-string v0, "\u60a8\u4e4b\u524d\u5df2\u5b89\u88c5\u8be5\u5e94\u7528\uff0c\u4e14\u7b7e\u540d\u4e0e APK \u6587\u4ef6\u4e0d\u4e00\u81f4\uff0c\u8bf7\u5148\u5378\u8f7d\u8bbe\u5907\u4e0a\u7684\u539f\u5e94\u7528\uff0c\u518d\u5b89\u88c5"

    goto/16 :goto_56

    .line 380
    :cond_89
    const-string v2, "INSTALL_FAILED_PERMISSION_MODEL_DOWNGRADE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8a

    const/16 v2, -0x6f

    .line 381
    iput v2, v1, Lfa/x;->b:I

    const-string v0, "\u5df2\u5b89\u88c5 target SDK \u652f\u6301\u8fd0\u884c\u65f6\u6743\u9650\u7684\u540c\u540d\u5e94\u7528\uff0c\u8981\u5b89\u88c5\u7684\u7248\u672c\u4e0d\u652f\u6301\u8fd0\u884c\u65f6\u6743\u9650"

    goto/16 :goto_56

    :cond_8a
    const/16 v2, -0x6f

    .line 382
    const-string v3, "code is missing"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8b

    .line 383
    iput v2, v1, Lfa/x;->b:I

    const-string v0, "\u6b64APK\u6587\u4ef6\u975e\u6b63\u5e38\u5e94\u7528\uff0c\u65e0\u6cd5\u5b89\u88c5"

    goto/16 :goto_56

    .line 384
    :cond_8b
    const-string v2, "does not contain AndroidManifest.xml"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8c

    const-string v2, "is not a valid zip file"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8d

    :cond_8c
    const/16 v2, -0x6f

    goto/16 :goto_4b

    .line 385
    :cond_8d
    const-string v2, "Offline"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8e

    .line 386
    const-string v0, "\u8bbe\u5907\u672a\u8fde\u63a5\u6210\u529f\uff0c\u5148\u5c06\u8bbe\u5907\u4e0e adb \u8fde\u63a5\u6210\u529f"

    goto/16 :goto_56

    .line 387
    :cond_8e
    const-string v2, "unauthorized"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 388
    const-string v0, "\u8bbe\u5907\u672a\u6388\u6743\u5141\u8bb8\u8c03\u8bd5,\u8bf7\u5728\u5f00\u53d1\u8005\u9009\u9879\u4e2d\u52fe\u9009USB\u8c03\u8bd5"

    goto/16 :goto_56

    .line 389
    :cond_8f
    const-string v2, "protocol failure"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_90

    .line 390
    const-string v0, "\u8bbe\u5907\u5df2\u65ad\u5f00\u8fde\u63a5 \uff0c\u5148\u5c06\u8bbe\u5907\u4e0e root \u6216 adb \u8fde\u63a5\u6210\u529f"

    goto/16 :goto_56

    .line 391
    :cond_90
    const-string v2, "Unknown option: -s"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_91

    .line 392
    const-string v0, "Android 2.2 \u4ee5\u4e0b\u4e0d\u652f\u6301\u5b89\u88c5\u5230 sdcard \u4e0d\u4f7f\u7528 -s \u53c2\u6570"

    goto/16 :goto_56

    .line 393
    :cond_91
    const-string v2, "install apk has be disabled"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_92

    .line 394
    const-string v0, "\u6b64\u7cfb\u7edf\u7981\u6b62\u4f7f\u7528adb\u5b89\u88c5\u5e94\u7528"

    goto/16 :goto_56

    .line 395
    :cond_92
    const-string v2, "Failed to parse APK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_93

    .line 396
    const-string v0, "\u89e3\u6790\u5931\u8d25\uff0c\u65e0\u6743\u9650\u8bfb\u53d6\u6587\u4ef6 \u6216 apk\u6587\u4ef6\u635f\u574f"

    goto/16 :goto_56

    .line 397
    :cond_93
    const-string v2, "is already used by"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_94

    .line 398
    :try_start_3d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6b64\u5e94\u7528\u4e0e\u3010"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "is already used by "

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x13

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u3011\u4ea7\u751f\u51b2\u7a81\uff0c\u65e0\u6cd5\u5b89\u88c5"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_3d} :catch_1c

    :goto_49
    const/16 v2, -0x6f

    goto :goto_4a

    .line 399
    :catch_1c
    const-string v0, "\u6b64\u5e94\u7528\u4e0e\u67d0\u4e2a\u5df2\u88c5\u5e94\u7528\u4ea7\u751f\u51b2\u7a81\uff0c\u65e0\u6cd5\u5b89\u88c5"

    goto :goto_49

    .line 400
    :goto_4a
    iput v2, v1, Lfa/x;->b:I

    goto/16 :goto_56

    .line 401
    :cond_94
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_97

    .line 402
    const-string v0, "\u5b89\u88c5\u5931\u8d25\uff1a\u539f\u56e0\u672a\u660e"

    goto :goto_56

    .line 403
    :goto_4b
    iput v2, v1, Lfa/x;->b:I

    const-string v0, "\u65e0\u6548\u7684 APK \u6587\u4ef6"

    goto :goto_56

    .line 404
    :goto_4c
    iput v2, v1, Lfa/x;->b:I

    const-string v0, "data\u5206\u533a,\u5b58\u50a8\u7a7a\u95f4\u4e0d\u8db3"

    goto :goto_56

    .line 405
    :goto_4d
    iput v2, v1, Lfa/x;->b:I

    const-string v0, "\u6b64\u7cfb\u7edf\u5b89\u88c5\u5e94\u7528\u9700\u8981\u767d\u540d\u5355"

    goto :goto_56

    .line 406
    :goto_4e
    iput v2, v1, Lfa/x;->b:I

    const-string v0, "APK\u65e0\u6548 \u6216 \u7cfb\u7edf\u6709\u9650\u5236\uff0c\u8bf7\u89e3\u9664"

    goto :goto_56

    .line 407
    :goto_4f
    iput v2, v1, Lfa/x;->b:I

    .line 408
    :try_start_3e
    new-instance v2, Lef/b;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v0}, Lef/b;-><init>(Ljava/io/File;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3e} :catch_1e

    .line 409
    :try_start_3f
    invoke-virtual {v2}, Lef/b;->M()V

    .line 410
    iget-object v0, v2, Lef/b;->e:Lff/c;

    .line 411
    iget-object v0, v0, Lff/c;->a:Ljava/lang/String;
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_e

    .line 412
    :try_start_40
    invoke-static {}, Lcom/yunpan/appmanage/base/AppStart;->b()Lcom/yunpan/appmanage/base/AppStart;

    move-result-object v4

    iget-object v4, v4, Lcom/yunpan/appmanage/base/AppStart;->c:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_40} :catch_1d
    .catchall {:try_start_40 .. :try_end_40} :catchall_e

    goto :goto_50

    :catchall_e
    move-exception v0

    move-object v3, v0

    goto :goto_51

    .line 413
    :catch_1d
    :try_start_41
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_e

    .line 414
    :goto_50
    :try_start_42
    invoke-virtual {v2}, Lef/b;->close()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_42} :catch_1e

    goto :goto_53

    .line 415
    :goto_51
    :try_start_43
    invoke-virtual {v2}, Lef/b;->close()V
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_f

    goto :goto_52

    :catchall_f
    move-exception v0

    move-object v2, v0

    :try_start_44
    invoke-static {v3, v2}, Lta/q;->u(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_52
    throw v3
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_44} :catch_1e

    .line 416
    :catch_1e
    :goto_53
    const-string v0, "\u4e0e\u4e4b\u524d\u5b89\u88c5\u7684\u7248\u672c\u51b2\u7a81\uff0c\u8bf7\u5378\u8f7d\u539f\u6765\u7684\u7248\u672c\u518d\u5b89\u88c5"

    goto :goto_56

    .line 417
    :cond_95
    :goto_54
    const-string v0, "\u4e0d\u5b58\u5728\uff08\u65e0\u6cd5\u8bc6\u522b\uff09"

    goto :goto_56

    .line 418
    :cond_96
    :goto_55
    const-string v0, "\u65e0\u6743\u9650\u8bbf\u95ee\u6b64\u76ee\u5f55\u4e0b\u6587\u4ef6"

    .line 419
    :cond_97
    :goto_56
    iput-object v0, v1, Lfa/x;->c:Ljava/lang/String;

    :goto_57
    return-object v1
.end method

.method public static Z(Ljava/lang/String;ZZ)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "pm uninstall"

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v3, " -k"

    .line 11
    .line 12
    const-string v4, ""

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    move-object v5, v3

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object v5, v4

    .line 19
    :goto_0
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v5, " --user "

    .line 23
    .line 24
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    sget-object v6, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 28
    .line 29
    sget-object v6, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 30
    .line 31
    iget v7, v6, Lcom/yunpan/appmanage/util/k;->n:I

    .line 32
    .line 33
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v7, " \'"

    .line 37
    .line 38
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v8, "\'"

    .line 45
    .line 46
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const-wide/16 v9, 0x8ae

    .line 54
    .line 55
    invoke-static {v9, v10, v1}, La2/w0;->o(JLjava/lang/String;)Lfa/a0;

    .line 56
    .line 57
    .line 58
    move-result-object v11

    .line 59
    invoke-virtual {v11}, Lfa/a0;->a()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v12

    .line 63
    iget-object v13, v6, Lcom/yunpan/appmanage/util/k;->u:Ljava/util/HashMap;

    .line 64
    .line 65
    invoke-virtual {v13}, Ljava/util/HashMap;->size()I

    .line 66
    .line 67
    .line 68
    move-result v13

    .line 69
    const/4 v14, 0x1

    .line 70
    const-string v15, "Error:"

    .line 71
    .line 72
    if-le v13, v14, :cond_3

    .line 73
    .line 74
    if-eqz p2, :cond_6

    .line 75
    .line 76
    iget-object v0, v6, Lcom/yunpan/appmanage/util/k;->u:Ljava/util/HashMap;

    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-eqz v2, :cond_2

    .line 91
    .line 92
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    check-cast v2, Ljava/lang/String;

    .line 97
    .line 98
    sget-object v3, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 99
    .line 100
    iget v6, v3, Lcom/yunpan/appmanage/util/k;->n:I

    .line 101
    .line 102
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    if-eqz v6, :cond_1

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    const-string v7, " "

    .line 116
    .line 117
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    iget v3, v3, Lcom/yunpan/appmanage/util/k;->n:I

    .line 121
    .line 122
    invoke-static {v6, v3, v7}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    new-instance v6, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-static {v9, v10, v2}, La2/w0;->o(JLjava/lang/String;)Lfa/a0;

    .line 146
    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    sget-object v2, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 155
    .line 156
    iget v2, v2, Lcom/yunpan/appmanage/util/k;->n:I

    .line 157
    .line 158
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {v1, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-static {v9, v10, v0}, La2/w0;->o(JLjava/lang/String;)Lfa/a0;

    .line 170
    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_3
    iget v1, v11, Lfa/a0;->a:I

    .line 174
    .line 175
    if-nez v1, :cond_4

    .line 176
    .line 177
    invoke-virtual {v12, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    if-eqz v1, :cond_6

    .line 182
    .line 183
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    if-eqz p1, :cond_5

    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_5
    move-object v3, v4

    .line 192
    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-static {v9, v10, v0}, La2/w0;->o(JLjava/lang/String;)Lfa/a0;

    .line 209
    .line 210
    .line 211
    move-result-object v11

    .line 212
    invoke-virtual {v11}, Lfa/a0;->a()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v12

    .line 216
    :cond_6
    :goto_3
    const-string v0, "Failure"

    .line 217
    .line 218
    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    if-nez v0, :cond_9

    .line 223
    .line 224
    invoke-virtual {v12, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    if-eqz v0, :cond_7

    .line 229
    .line 230
    goto :goto_4

    .line 231
    :cond_7
    iget v0, v11, Lfa/a0;->a:I

    .line 232
    .line 233
    if-eqz v0, :cond_8

    .line 234
    .line 235
    const-string v0, "Success"

    .line 236
    .line 237
    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    if-eqz v0, :cond_9

    .line 242
    .line 243
    :cond_8
    return-void

    .line 244
    :cond_9
    :goto_4
    const-string v0, "known package"

    .line 245
    .line 246
    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 247
    .line 248
    .line 249
    move-result v0

    .line 250
    if-nez v0, :cond_11

    .line 251
    .line 252
    const-string v0, "not found"

    .line 253
    .line 254
    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 255
    .line 256
    .line 257
    move-result v0

    .line 258
    if-nez v0, :cond_10

    .line 259
    .line 260
    const-string v0, "ermission"

    .line 261
    .line 262
    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 263
    .line 264
    .line 265
    move-result v0

    .line 266
    const-string v1, "\u65e0\u6743\u9650\uff0c\u6b64\u529f\u80fd\u9700\u8981root\u6743\u9650"

    .line 267
    .line 268
    if-nez v0, :cond_f

    .line 269
    .line 270
    const-string v0, "illed"

    .line 271
    .line 272
    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 273
    .line 274
    .line 275
    move-result v0

    .line 276
    if-nez v0, :cond_f

    .line 277
    .line 278
    const-string v0, "android.permission.MANAGE_USERS"

    .line 279
    .line 280
    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 281
    .line 282
    .line 283
    move-result v0

    .line 284
    if-nez v0, :cond_f

    .line 285
    .line 286
    const-string v0, "Neither user 2000"

    .line 287
    .line 288
    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 289
    .line 290
    .line 291
    move-result v0

    .line 292
    if-nez v0, :cond_f

    .line 293
    .line 294
    const-string v0, "pm by system default"

    .line 295
    .line 296
    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 297
    .line 298
    .line 299
    move-result v0

    .line 300
    if-nez v0, :cond_e

    .line 301
    .line 302
    const-string v0, "DELETE_FAILED_OWNER_BLOCKED"

    .line 303
    .line 304
    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 305
    .line 306
    .line 307
    move-result v0

    .line 308
    if-nez v0, :cond_d

    .line 309
    .line 310
    const-string v0, "DELETE_FAILED_DEVICE_POLICY_MANAGER"

    .line 311
    .line 312
    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 313
    .line 314
    .line 315
    move-result v0

    .line 316
    if-nez v0, :cond_c

    .line 317
    .line 318
    const-string v0, "DELETE_FAILED_INTERNAL_ERROR"

    .line 319
    .line 320
    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 321
    .line 322
    .line 323
    move-result v0

    .line 324
    if-nez v0, :cond_b

    .line 325
    .line 326
    const-string v0, "is auth app"

    .line 327
    .line 328
    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 329
    .line 330
    .line 331
    move-result v0

    .line 332
    if-nez v0, :cond_a

    .line 333
    .line 334
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 339
    .line 340
    .line 341
    move-result v0

    .line 342
    if-eqz v0, :cond_12

    .line 343
    .line 344
    const-string v12, "\u5931\u8d25\uff1a\u672a\u77e5\u9519\u8bef"

    .line 345
    .line 346
    goto :goto_5

    .line 347
    :cond_a
    const-string v12, "\u7cfb\u7edf\u7981\u6b62\u60a8\u5378\u8f7d\u6b64\u5e94\u7528"

    .line 348
    .line 349
    goto :goto_5

    .line 350
    :cond_b
    const-string v12, "\u7cfb\u7edf\u7981\u6b62\u5378\u8f7d\u6b64\u5e94\u7528"

    .line 351
    .line 352
    goto :goto_5

    .line 353
    :cond_c
    const-string v12, "\u6b64\u5e94\u7528\u662f\u8bbe\u5907\u7ba1\u7406\u5458\uff0c\u9700\u81ea\u8eab\u53d6\u6d88\u8bbe\u5907\u7ba1\u7406\u5668\u6743\u9650\u65b9\u53ef\u5378\u8f7d"

    .line 354
    .line 355
    goto :goto_5

    .line 356
    :cond_d
    const-string v12, "\u52a0\u9501\u4e86\uff0c\u8bf7\u5148\u89e3\u9501\u518d\u5378\u8f7d"

    .line 357
    .line 358
    goto :goto_5

    .line 359
    :cond_e
    const-string v12, "\u5378\u8f7d\u5931\u8d25\uff1a\u7cfb\u7edf\u628apm\u547d\u4ee4\u7981\u7528\u4e86\uff01"

    .line 360
    .line 361
    goto :goto_5

    .line 362
    :cond_f
    move-object v12, v1

    .line 363
    goto :goto_5

    .line 364
    :cond_10
    const-string v12, "\u6b64\u547d\u4ee4\u4e0d\u5b58\u5728"

    .line 365
    .line 366
    goto :goto_5

    .line 367
    :cond_11
    const-string v12, "\u6b64\u5e94\u7528\u4e0d\u5b58\u5728"

    .line 368
    .line 369
    :cond_12
    :goto_5
    new-instance v0, Ljava/lang/Exception;

    .line 370
    .line 371
    invoke-direct {v0, v12}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    goto :goto_7

    .line 375
    :goto_6
    throw v0

    .line 376
    :goto_7
    goto :goto_6
.end method

.method public static a0(Ljava/lang/String;Ljava/lang/String;Lmc/b;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x0

    .line 8
    const-string v5, "addSuppressed"

    .line 9
    .line 10
    const-class v6, Ljava/lang/Throwable;

    .line 11
    .line 12
    :try_start_0
    sget-object v7, Lfa/h;->a:Lfa/j;

    .line 13
    .line 14
    iget-object v7, v7, Lfa/j;->b:Ly9/b;

    .line 15
    .line 16
    const-string v8, "sync:"

    .line 17
    .line 18
    invoke-virtual {v7, v8}, Ly9/b;->J(Ljava/lang/String;)Ly9/f;

    .line 19
    .line 20
    .line 21
    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    :try_start_1
    new-instance v8, Ljava/io/FileInputStream;

    .line 23
    .line 24
    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 25
    .line 26
    .line 27
    :try_start_2
    const-string v9, "SEND"

    .line 28
    .line 29
    const-string v10, ",33206"

    .line 30
    .line 31
    new-instance v11, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    move-object/from16 v12, p1

    .line 37
    .line 38
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v11

    .line 48
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 49
    .line 50
    .line 51
    move-result v11

    .line 52
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    .line 53
    .line 54
    .line 55
    move-result-object v9

    .line 56
    invoke-static {v11}, Lif/a;->W(I)[B

    .line 57
    .line 58
    .line 59
    move-result-object v11

    .line 60
    new-array v13, v2, [[B

    .line 61
    .line 62
    aput-object v9, v13, v4

    .line 63
    .line 64
    aput-object v11, v13, v3

    .line 65
    .line 66
    invoke-static {v13}, Lif/a;->n([[B)[B

    .line 67
    .line 68
    .line 69
    move-result-object v9

    .line 70
    invoke-virtual {v7, v9}, Ly9/f;->J([B)V

    .line 71
    .line 72
    .line 73
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    .line 74
    .line 75
    .line 76
    move-result-object v9

    .line 77
    invoke-virtual {v7, v9}, Ly9/f;->J([B)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    .line 81
    .line 82
    .line 83
    move-result-object v9

    .line 84
    invoke-virtual {v7, v9}, Ly9/f;->J([B)V

    .line 85
    .line 86
    .line 87
    const/16 v9, 0xfa0

    .line 88
    .line 89
    new-array v10, v9, [B

    .line 90
    .line 91
    new-instance v11, Ljava/io/File;

    .line 92
    .line 93
    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-static {v11}, Lcom/yunpan/appmanage/util/a0;->p(Ljava/io/File;)J

    .line 97
    .line 98
    .line 99
    move-result-wide v11

    .line 100
    const-wide/16 v13, 0x0

    .line 101
    .line 102
    cmp-long v0, v11, v13

    .line 103
    .line 104
    if-eqz v0, :cond_5

    .line 105
    .line 106
    move-wide v15, v13

    .line 107
    const/4 v0, 0x0

    .line 108
    :goto_0
    invoke-virtual {v8, v10}, Ljava/io/InputStream;->read([B)I

    .line 109
    .line 110
    .line 111
    move-result v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 112
    const-wide/16 v17, 0x64

    .line 113
    .line 114
    if-gez v9, :cond_1

    .line 115
    .line 116
    if-eqz v1, :cond_0

    .line 117
    .line 118
    :try_start_3
    const-string v0, "\u4f20\u8f93\u5b8c\u6210"

    .line 119
    .line 120
    invoke-virtual {v1, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    goto :goto_2

    .line 124
    :goto_1
    move-object v1, v0

    .line 125
    move-object/from16 v19, v5

    .line 126
    .line 127
    goto/16 :goto_7

    .line 128
    .line 129
    :catchall_0
    move-exception v0

    .line 130
    goto :goto_1

    .line 131
    :cond_0
    :goto_2
    const-string v0, "DONE"

    .line 132
    .line 133
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 138
    .line 139
    .line 140
    move-result-wide v9

    .line 141
    long-to-int v1, v9

    .line 142
    invoke-static {v1}, Lif/a;->W(I)[B

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    new-array v9, v2, [[B

    .line 147
    .line 148
    aput-object v0, v9, v4

    .line 149
    .line 150
    aput-object v1, v9, v3

    .line 151
    .line 152
    invoke-static {v9}, Lif/a;->n([[B)[B

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {v7, v0}, Ly9/f;->J([B)V

    .line 157
    .line 158
    .line 159
    const-string v0, "QUIT"

    .line 160
    .line 161
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-static {v4}, Lif/a;->W(I)[B

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    new-array v2, v2, [[B

    .line 170
    .line 171
    aput-object v0, v2, v4

    .line 172
    .line 173
    aput-object v1, v2, v3

    .line 174
    .line 175
    invoke-static {v2}, Lif/a;->n([[B)[B

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-virtual {v7, v0}, Ly9/f;->J([B)V

    .line 180
    .line 181
    .line 182
    invoke-static/range {v17 .. v18}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 183
    .line 184
    .line 185
    :try_start_4
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 186
    .line 187
    .line 188
    :try_start_5
    invoke-virtual {v7}, Ly9/f;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 189
    .line 190
    .line 191
    return-void

    .line 192
    :catch_0
    move-exception v0

    .line 193
    goto/16 :goto_b

    .line 194
    .line 195
    :catchall_1
    move-exception v0

    .line 196
    :goto_3
    move-object v1, v0

    .line 197
    goto/16 :goto_9

    .line 198
    .line 199
    :cond_1
    int-to-long v3, v9

    .line 200
    add-long/2addr v13, v3

    .line 201
    if-eqz v1, :cond_2

    .line 202
    .line 203
    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 206
    .line 207
    .line 208
    move-object/from16 v19, v5

    .line 209
    .line 210
    :try_start_7
    const-string v5, "\u4f20\u8f93\u4e2d\uff1a"

    .line 211
    .line 212
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    invoke-virtual {v1, v2}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 223
    .line 224
    .line 225
    goto :goto_5

    .line 226
    :goto_4
    move-object v1, v0

    .line 227
    goto :goto_7

    .line 228
    :catchall_2
    move-exception v0

    .line 229
    goto :goto_4

    .line 230
    :catchall_3
    move-exception v0

    .line 231
    move-object/from16 v19, v5

    .line 232
    .line 233
    goto :goto_4

    .line 234
    :cond_2
    move-object/from16 v19, v5

    .line 235
    .line 236
    :goto_5
    const-string v2, "DATA"

    .line 237
    .line 238
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    invoke-static {v9}, Lif/a;->W(I)[B

    .line 243
    .line 244
    .line 245
    move-result-object v5

    .line 246
    move-wide/from16 v20, v13

    .line 247
    .line 248
    const/4 v1, 0x2

    .line 249
    new-array v13, v1, [[B

    .line 250
    .line 251
    const/4 v14, 0x0

    .line 252
    aput-object v2, v13, v14

    .line 253
    .line 254
    const/4 v2, 0x1

    .line 255
    aput-object v5, v13, v2

    .line 256
    .line 257
    invoke-static {v13}, Lif/a;->n([[B)[B

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    invoke-virtual {v7, v2}, Ly9/f;->J([B)V

    .line 262
    .line 263
    .line 264
    const/16 v2, 0xfa0

    .line 265
    .line 266
    if-ne v9, v2, :cond_3

    .line 267
    .line 268
    invoke-virtual {v7, v10}, Ly9/f;->J([B)V

    .line 269
    .line 270
    .line 271
    goto :goto_6

    .line 272
    :cond_3
    new-array v5, v9, [B

    .line 273
    .line 274
    const/4 v13, 0x0

    .line 275
    invoke-static {v10, v13, v5, v13, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v7, v5}, Ly9/f;->J([B)V

    .line 279
    .line 280
    .line 281
    :goto_6
    add-long/2addr v15, v3

    .line 282
    mul-long v17, v17, v15

    .line 283
    .line 284
    div-long v3, v17, v11

    .line 285
    .line 286
    long-to-int v4, v3

    .line 287
    if-eq v0, v4, :cond_4

    .line 288
    .line 289
    move v0, v4

    .line 290
    :cond_4
    move-object/from16 v1, p2

    .line 291
    .line 292
    move-object/from16 v5, v19

    .line 293
    .line 294
    move-wide/from16 v13, v20

    .line 295
    .line 296
    const/4 v2, 0x2

    .line 297
    const/4 v3, 0x1

    .line 298
    const/4 v4, 0x0

    .line 299
    goto/16 :goto_0

    .line 300
    .line 301
    :cond_5
    move-object/from16 v19, v5

    .line 302
    .line 303
    new-instance v0, Ljava/lang/Exception;

    .line 304
    .line 305
    const-string v1, "\u6b64\u6587\u4ef6\u7591\u662f\u635f\u574f"

    .line 306
    .line 307
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 311
    :goto_7
    :try_start_8
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 312
    .line 313
    .line 314
    :catch_1
    move-object/from16 v5, v19

    .line 315
    .line 316
    goto :goto_8

    .line 317
    :catchall_4
    move-exception v0

    .line 318
    move-object v2, v0

    .line 319
    const/4 v3, 0x1

    .line 320
    :try_start_9
    new-array v0, v3, [Ljava/lang/Class;

    .line 321
    .line 322
    const/4 v4, 0x0

    .line 323
    aput-object v6, v0, v4
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 324
    .line 325
    move-object/from16 v5, v19

    .line 326
    .line 327
    :try_start_a
    invoke-virtual {v6, v5, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    new-array v8, v3, [Ljava/lang/Object;

    .line 332
    .line 333
    aput-object v2, v8, v4

    .line 334
    .line 335
    invoke-virtual {v0, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 336
    .line 337
    .line 338
    goto :goto_8

    .line 339
    :catchall_5
    move-exception v0

    .line 340
    move-object/from16 v5, v19

    .line 341
    .line 342
    goto/16 :goto_3

    .line 343
    .line 344
    :catch_2
    :goto_8
    :try_start_b
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 345
    :goto_9
    :try_start_c
    invoke-virtual {v7}, Ly9/f;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 346
    .line 347
    .line 348
    goto :goto_a

    .line 349
    :catchall_6
    move-exception v0

    .line 350
    move-object v2, v0

    .line 351
    const/4 v3, 0x1

    .line 352
    :try_start_d
    new-array v0, v3, [Ljava/lang/Class;

    .line 353
    .line 354
    const/4 v4, 0x0

    .line 355
    aput-object v6, v0, v4

    .line 356
    .line 357
    invoke-virtual {v6, v5, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    new-array v3, v3, [Ljava/lang/Object;

    .line 362
    .line 363
    aput-object v2, v3, v4

    .line 364
    .line 365
    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    .line 366
    .line 367
    .line 368
    :catch_3
    :goto_a
    :try_start_e
    throw v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    .line 369
    :goto_b
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 370
    .line 371
    .line 372
    new-instance v1, Ljava/lang/Exception;

    .line 373
    .line 374
    new-instance v2, Ljava/lang/StringBuilder;

    .line 375
    .line 376
    const-string v3, "\u4f20\u8f93\u5931\u8d25\uff1a"

    .line 377
    .line 378
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    invoke-static {v0, v2}, Lg/b;->z(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    goto :goto_d

    .line 389
    :goto_c
    throw v1

    .line 390
    :goto_d
    goto :goto_c
.end method

.method public static b0(Ljava/lang/String;Ljava/lang/String;Lmc/b;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x0

    .line 8
    const-string v5, "addSuppressed"

    .line 9
    .line 10
    const-class v6, Ljava/lang/Throwable;

    .line 11
    .line 12
    :try_start_0
    sget-object v7, Lfa/l;->a:Lfa/m;

    .line 13
    .line 14
    invoke-virtual {v7}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->getAdbConnection()Lio/github/muntashirakon/adb/AdbConnection;

    .line 15
    .line 16
    .line 17
    move-result-object v7

    .line 18
    const-string v8, "sync:"

    .line 19
    .line 20
    invoke-virtual {v7, v8}, Lio/github/muntashirakon/adb/AdbConnection;->open(Ljava/lang/String;)Lio/github/muntashirakon/adb/AdbStream;

    .line 21
    .line 22
    .line 23
    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :try_start_1
    new-instance v8, Ljava/io/FileInputStream;

    .line 25
    .line 26
    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 27
    .line 28
    .line 29
    :try_start_2
    const-string v9, "SEND"

    .line 30
    .line 31
    const-string v10, ",33206"

    .line 32
    .line 33
    new-instance v11, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    move-object/from16 v12, p1

    .line 39
    .line 40
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v11

    .line 50
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 51
    .line 52
    .line 53
    move-result v11

    .line 54
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    .line 55
    .line 56
    .line 57
    move-result-object v9

    .line 58
    invoke-static {v11}, Lif/a;->W(I)[B

    .line 59
    .line 60
    .line 61
    move-result-object v11

    .line 62
    new-array v13, v2, [[B

    .line 63
    .line 64
    aput-object v9, v13, v4

    .line 65
    .line 66
    aput-object v11, v13, v3

    .line 67
    .line 68
    invoke-static {v13}, Lif/a;->n([[B)[B

    .line 69
    .line 70
    .line 71
    move-result-object v9

    .line 72
    array-length v11, v9

    .line 73
    invoke-virtual {v7, v9, v4, v11}, Lio/github/muntashirakon/adb/AdbStream;->write([BII)V

    .line 74
    .line 75
    .line 76
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    .line 77
    .line 78
    .line 79
    move-result-object v9

    .line 80
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    .line 81
    .line 82
    .line 83
    move-result-object v11

    .line 84
    array-length v11, v11

    .line 85
    invoke-virtual {v7, v9, v4, v11}, Lio/github/muntashirakon/adb/AdbStream;->write([BII)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    .line 89
    .line 90
    .line 91
    move-result-object v9

    .line 92
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    .line 93
    .line 94
    .line 95
    move-result-object v10

    .line 96
    array-length v10, v10

    .line 97
    invoke-virtual {v7, v9, v4, v10}, Lio/github/muntashirakon/adb/AdbStream;->write([BII)V

    .line 98
    .line 99
    .line 100
    const/16 v9, 0xfa0

    .line 101
    .line 102
    new-array v10, v9, [B

    .line 103
    .line 104
    new-instance v11, Ljava/io/File;

    .line 105
    .line 106
    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-static {v11}, Lcom/yunpan/appmanage/util/a0;->p(Ljava/io/File;)J

    .line 110
    .line 111
    .line 112
    move-result-wide v11

    .line 113
    const-wide/16 v13, 0x0

    .line 114
    .line 115
    cmp-long v0, v11, v13

    .line 116
    .line 117
    if-eqz v0, :cond_5

    .line 118
    .line 119
    move-wide v15, v13

    .line 120
    const/4 v0, 0x0

    .line 121
    :goto_0
    invoke-virtual {v8, v10}, Ljava/io/InputStream;->read([B)I

    .line 122
    .line 123
    .line 124
    move-result v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 125
    const-wide/16 v17, 0x64

    .line 126
    .line 127
    if-gez v9, :cond_1

    .line 128
    .line 129
    if-eqz v1, :cond_0

    .line 130
    .line 131
    :try_start_3
    const-string v0, "\u4f20\u8f93\u5b8c\u6210"

    .line 132
    .line 133
    invoke-virtual {v1, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    goto :goto_2

    .line 137
    :goto_1
    move-object v1, v0

    .line 138
    move-object/from16 v19, v5

    .line 139
    .line 140
    goto/16 :goto_7

    .line 141
    .line 142
    :catchall_0
    move-exception v0

    .line 143
    goto :goto_1

    .line 144
    :cond_0
    :goto_2
    const-string v0, "DONE"

    .line 145
    .line 146
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 151
    .line 152
    .line 153
    move-result-wide v9

    .line 154
    long-to-int v1, v9

    .line 155
    invoke-static {v1}, Lif/a;->W(I)[B

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    new-array v9, v2, [[B

    .line 160
    .line 161
    aput-object v0, v9, v4

    .line 162
    .line 163
    aput-object v1, v9, v3

    .line 164
    .line 165
    invoke-static {v9}, Lif/a;->n([[B)[B

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    array-length v1, v0

    .line 170
    invoke-virtual {v7, v0, v4, v1}, Lio/github/muntashirakon/adb/AdbStream;->write([BII)V

    .line 171
    .line 172
    .line 173
    const-string v0, "QUIT"

    .line 174
    .line 175
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-static {v4}, Lif/a;->W(I)[B

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    new-array v2, v2, [[B

    .line 184
    .line 185
    aput-object v0, v2, v4

    .line 186
    .line 187
    aput-object v1, v2, v3

    .line 188
    .line 189
    invoke-static {v2}, Lif/a;->n([[B)[B

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    array-length v1, v0

    .line 194
    invoke-virtual {v7, v0, v4, v1}, Lio/github/muntashirakon/adb/AdbStream;->write([BII)V

    .line 195
    .line 196
    .line 197
    invoke-static/range {v17 .. v18}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 198
    .line 199
    .line 200
    :try_start_4
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 201
    .line 202
    .line 203
    :try_start_5
    invoke-virtual {v7}, Lio/github/muntashirakon/adb/AdbStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 204
    .line 205
    .line 206
    return-void

    .line 207
    :catch_0
    move-exception v0

    .line 208
    goto/16 :goto_b

    .line 209
    .line 210
    :catchall_1
    move-exception v0

    .line 211
    :goto_3
    move-object v1, v0

    .line 212
    goto/16 :goto_9

    .line 213
    .line 214
    :cond_1
    int-to-long v3, v9

    .line 215
    add-long/2addr v13, v3

    .line 216
    if-eqz v1, :cond_2

    .line 217
    .line 218
    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 221
    .line 222
    .line 223
    move-object/from16 v19, v5

    .line 224
    .line 225
    :try_start_7
    const-string v5, "\u4f20\u8f93\u4e2d\uff1a"

    .line 226
    .line 227
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    invoke-virtual {v1, v2}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    goto :goto_5

    .line 241
    :goto_4
    move-object v1, v0

    .line 242
    goto :goto_7

    .line 243
    :catchall_2
    move-exception v0

    .line 244
    goto :goto_4

    .line 245
    :catchall_3
    move-exception v0

    .line 246
    move-object/from16 v19, v5

    .line 247
    .line 248
    goto :goto_4

    .line 249
    :cond_2
    move-object/from16 v19, v5

    .line 250
    .line 251
    :goto_5
    const-string v2, "DATA"

    .line 252
    .line 253
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    .line 254
    .line 255
    .line 256
    move-result-object v2

    .line 257
    invoke-static {v9}, Lif/a;->W(I)[B

    .line 258
    .line 259
    .line 260
    move-result-object v5

    .line 261
    move-wide/from16 v20, v13

    .line 262
    .line 263
    const/4 v1, 0x2

    .line 264
    new-array v13, v1, [[B

    .line 265
    .line 266
    const/4 v14, 0x0

    .line 267
    aput-object v2, v13, v14

    .line 268
    .line 269
    const/4 v2, 0x1

    .line 270
    aput-object v5, v13, v2

    .line 271
    .line 272
    invoke-static {v13}, Lif/a;->n([[B)[B

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    array-length v5, v2

    .line 277
    invoke-virtual {v7, v2, v14, v5}, Lio/github/muntashirakon/adb/AdbStream;->write([BII)V

    .line 278
    .line 279
    .line 280
    const/16 v2, 0xfa0

    .line 281
    .line 282
    if-ne v9, v2, :cond_3

    .line 283
    .line 284
    invoke-virtual {v7, v10, v14, v2}, Lio/github/muntashirakon/adb/AdbStream;->write([BII)V

    .line 285
    .line 286
    .line 287
    goto :goto_6

    .line 288
    :cond_3
    new-array v5, v9, [B

    .line 289
    .line 290
    invoke-static {v10, v14, v5, v14, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v7, v5, v14, v9}, Lio/github/muntashirakon/adb/AdbStream;->write([BII)V

    .line 294
    .line 295
    .line 296
    :goto_6
    add-long/2addr v15, v3

    .line 297
    mul-long v17, v17, v15

    .line 298
    .line 299
    div-long v3, v17, v11

    .line 300
    .line 301
    long-to-int v4, v3

    .line 302
    if-eq v0, v4, :cond_4

    .line 303
    .line 304
    move v0, v4

    .line 305
    :cond_4
    move-object/from16 v1, p2

    .line 306
    .line 307
    move-object/from16 v5, v19

    .line 308
    .line 309
    move-wide/from16 v13, v20

    .line 310
    .line 311
    const/4 v2, 0x2

    .line 312
    const/4 v3, 0x1

    .line 313
    const/4 v4, 0x0

    .line 314
    goto/16 :goto_0

    .line 315
    .line 316
    :cond_5
    move-object/from16 v19, v5

    .line 317
    .line 318
    new-instance v0, Ljava/lang/Exception;

    .line 319
    .line 320
    const-string v1, "\u6b64\u6587\u4ef6\u7591\u662f\u635f\u574f"

    .line 321
    .line 322
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 326
    :goto_7
    :try_start_8
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 327
    .line 328
    .line 329
    :catch_1
    move-object/from16 v5, v19

    .line 330
    .line 331
    goto :goto_8

    .line 332
    :catchall_4
    move-exception v0

    .line 333
    move-object v2, v0

    .line 334
    const/4 v3, 0x1

    .line 335
    :try_start_9
    new-array v0, v3, [Ljava/lang/Class;

    .line 336
    .line 337
    const/4 v4, 0x0

    .line 338
    aput-object v6, v0, v4
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 339
    .line 340
    move-object/from16 v5, v19

    .line 341
    .line 342
    :try_start_a
    invoke-virtual {v6, v5, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    new-array v8, v3, [Ljava/lang/Object;

    .line 347
    .line 348
    aput-object v2, v8, v4

    .line 349
    .line 350
    invoke-virtual {v0, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 351
    .line 352
    .line 353
    goto :goto_8

    .line 354
    :catchall_5
    move-exception v0

    .line 355
    move-object/from16 v5, v19

    .line 356
    .line 357
    goto/16 :goto_3

    .line 358
    .line 359
    :catch_2
    :goto_8
    :try_start_b
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 360
    :goto_9
    if-eqz v7, :cond_6

    .line 361
    .line 362
    :try_start_c
    invoke-virtual {v7}, Lio/github/muntashirakon/adb/AdbStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 363
    .line 364
    .line 365
    goto :goto_a

    .line 366
    :catchall_6
    move-exception v0

    .line 367
    move-object v2, v0

    .line 368
    const/4 v3, 0x1

    .line 369
    :try_start_d
    new-array v0, v3, [Ljava/lang/Class;

    .line 370
    .line 371
    const/4 v4, 0x0

    .line 372
    aput-object v6, v0, v4

    .line 373
    .line 374
    invoke-virtual {v6, v5, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    new-array v3, v3, [Ljava/lang/Object;

    .line 379
    .line 380
    aput-object v2, v3, v4

    .line 381
    .line 382
    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    .line 383
    .line 384
    .line 385
    :catch_3
    :cond_6
    :goto_a
    :try_start_e
    throw v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    .line 386
    :goto_b
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 387
    .line 388
    .line 389
    new-instance v1, Ljava/lang/Exception;

    .line 390
    .line 391
    new-instance v2, Ljava/lang/StringBuilder;

    .line 392
    .line 393
    const-string v3, "\u4f20\u8f93\u5931\u8d25\uff1a"

    .line 394
    .line 395
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    invoke-static {v0, v2}, Lg/b;->z(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    goto :goto_d

    .line 406
    :goto_c
    throw v1

    .line 407
    :goto_d
    goto :goto_c
.end method

.method public static c0(Lx9/w3;)Lcom/yunpan/appmanage/bean/FileAttributeBean;
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ls -ld \""

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lx9/w3;->b:Ljava/lang/String;

    .line 9
    .line 10
    const-string v3, "\""

    .line 11
    .line 12
    invoke-static {v2, v3, v0}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v2, Lfa/a0;

    .line 17
    .line 18
    const/4 v4, 0x1

    .line 19
    new-array v5, v4, [Ljava/lang/String;

    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    aput-object v0, v5, v6

    .line 23
    .line 24
    invoke-static {v5}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    invoke-virtual {v5}, Lv9/e;->l0()Landroidx/room/s;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    invoke-direct {v2, v5}, Lfa/a0;-><init>(Landroidx/room/s;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Lfa/a0;->b()Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-nez v5, :cond_0

    .line 40
    .line 41
    sget-object v5, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 42
    .line 43
    sget-object v5, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 44
    .line 45
    iget v7, v5, Lcom/yunpan/appmanage/util/k;->n:I

    .line 46
    .line 47
    if-lez v7, :cond_0

    .line 48
    .line 49
    sget-object v7, Lfa/g0;->a:Lfa/h0;

    .line 50
    .line 51
    invoke-virtual {v7}, Lfa/h0;->f()Z

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    if-eqz v8, :cond_0

    .line 56
    .line 57
    iget-object v8, p0, Lx9/w3;->b:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v7}, Lfa/h0;->d()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v9

    .line 63
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result v8

    .line 67
    if-eqz v8, :cond_0

    .line 68
    .line 69
    new-instance v2, Lfa/a0;

    .line 70
    .line 71
    new-instance v8, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object v1, v5, Lcom/yunpan/appmanage/util/k;->o:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-object v1, p0, Lx9/w3;->b:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v7}, Lfa/h0;->d()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    new-array v3, v4, [Ljava/lang/String;

    .line 106
    .line 107
    aput-object v1, v3, v6

    .line 108
    .line 109
    invoke-static {v3}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {v1}, Lv9/e;->l0()Landroidx/room/s;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-direct {v2, v1}, Lfa/a0;-><init>(Landroidx/room/s;)V

    .line 118
    .line 119
    .line 120
    :cond_0
    iget v1, v2, Lfa/a0;->a:I

    .line 121
    .line 122
    if-eqz v1, :cond_2

    .line 123
    .line 124
    sget-object v1, Lfa/h;->a:Lfa/j;

    .line 125
    .line 126
    invoke-virtual {v1}, Lfa/j;->i()Z

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    if-eqz v3, :cond_1

    .line 131
    .line 132
    new-instance v2, Lfa/a0;

    .line 133
    .line 134
    invoke-virtual {v1, v0}, Lfa/j;->c(Ljava/lang/String;)Lfa/i;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-direct {v2, v0}, Lfa/a0;-><init>(Lfa/i;)V

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_1
    sget-object v1, Lfa/l;->a:Lfa/m;

    .line 143
    .line 144
    invoke-virtual {v1}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    if-eqz v3, :cond_2

    .line 149
    .line 150
    new-instance v2, Lfa/a0;

    .line 151
    .line 152
    invoke-virtual {v1, v0}, Lfa/m;->L(Ljava/lang/String;)Lcom/yunpan/appmanage/bean/ShellResultData;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-direct {v2, v0}, Lfa/a0;-><init>(Lcom/yunpan/appmanage/bean/ShellResultData;)V

    .line 157
    .line 158
    .line 159
    :cond_2
    :goto_0
    invoke-virtual {v2}, Lfa/a0;->b()Z

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    const-string v1, "\u67e5\u8be2\u6587\u4ef6\u5c5e\u6027\u5931\u8d25"

    .line 164
    .line 165
    if-eqz v0, :cond_5

    .line 166
    .line 167
    invoke-virtual {v2}, Lfa/a0;->a()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    iget-object v0, v2, Lfa/a0;->b:Ljava/util/List;

    .line 171
    .line 172
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    if-eqz v2, :cond_5

    .line 181
    .line 182
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    check-cast v0, Ljava/lang/String;

    .line 187
    .line 188
    const-string v2, "([ld-])([rwxtTsS-]{9})\\s+\\d+\\s+(\\w+)\\s+(\\w+)\\s+"

    .line 189
    .line 190
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    .line 199
    .line 200
    .line 201
    move-result v3

    .line 202
    if-nez v3, :cond_4

    .line 203
    .line 204
    const-string v2, "([ld-])([rwxtTsS-]{9})\\s+(\\w+)\\s+(\\w+)\\s+"

    .line 205
    .line 206
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    if-eqz v0, :cond_3

    .line 219
    .line 220
    goto :goto_1

    .line 221
    :cond_3
    new-instance p0, Ljava/lang/Exception;

    .line 222
    .line 223
    invoke-direct {p0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    throw p0

    .line 227
    :cond_4
    :goto_1
    new-instance v0, Lcom/yunpan/appmanage/bean/FileAttributeBean;

    .line 228
    .line 229
    invoke-direct {v0}, Lcom/yunpan/appmanage/bean/FileAttributeBean;-><init>()V

    .line 230
    .line 231
    .line 232
    iget-object v1, p0, Lx9/w3;->b:Ljava/lang/String;

    .line 233
    .line 234
    iput-object v1, v0, Lcom/yunpan/appmanage/bean/FileAttributeBean;->filePath:Ljava/lang/String;

    .line 235
    .line 236
    iget-boolean p0, p0, Lx9/w3;->c:Z

    .line 237
    .line 238
    iput-boolean p0, v0, Lcom/yunpan/appmanage/bean/FileAttributeBean;->isDirectory:Z

    .line 239
    .line 240
    const/4 p0, 0x2

    .line 241
    invoke-virtual {v2, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object p0

    .line 245
    iput-object p0, v0, Lcom/yunpan/appmanage/bean/FileAttributeBean;->filePermissions:Ljava/lang/String;

    .line 246
    .line 247
    invoke-static {p0}, Lcom/yunpan/appmanage/util/a0;->h(Ljava/lang/String;)I

    .line 248
    .line 249
    .line 250
    move-result p0

    .line 251
    iput p0, v0, Lcom/yunpan/appmanage/bean/FileAttributeBean;->filePermission:I

    .line 252
    .line 253
    const/4 p0, 0x3

    .line 254
    invoke-virtual {v2, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object p0

    .line 258
    iput-object p0, v0, Lcom/yunpan/appmanage/bean/FileAttributeBean;->fileOwner:Ljava/lang/String;

    .line 259
    .line 260
    const/4 p0, 0x4

    .line 261
    invoke-virtual {v2, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object p0

    .line 265
    iput-object p0, v0, Lcom/yunpan/appmanage/bean/FileAttributeBean;->fileGroup:Ljava/lang/String;

    .line 266
    .line 267
    return-object v0

    .line 268
    :cond_5
    new-instance p0, Ljava/lang/Exception;

    .line 269
    .line 270
    invoke-direct {p0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    throw p0
.end method

.method public static d0()V
    .locals 3

    .line 1
    new-instance v0, La2/u0;

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    invoke-direct {v0, v1}, La2/u0;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lmc/c;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v1, v2, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v1, Lha/l2;

    .line 29
    .line 30
    const/16 v2, 0x1c

    .line 31
    .line 32
    invoke-direct {v1, v2}, Lha/l2;-><init>(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "/cache/"

    .line 2
    .line 3
    const-string v1, "/"

    .line 4
    .line 5
    :try_start_0
    sget-object v2, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 6
    .line 7
    sget-object v2, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 8
    .line 9
    iget-object v3, v2, Lcom/yunpan/appmanage/util/k;->s:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-nez v3, :cond_0

    .line 16
    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance v4, Ljava/io/File;

    .line 23
    .line 24
    iget-object v2, v2, Lcom/yunpan/appmanage/util/k;->s:Ljava/lang/String;

    .line 25
    .line 26
    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    sget-object v3, Lfa/b0;->a:La2/w0;

    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    invoke-static {v2}, La2/w0;->B(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    .line 61
    :catch_0
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    sget-object v3, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 67
    .line 68
    iget-object v3, v3, Lcom/yunpan/appmanage/util/w;->b:Landroid/content/ContextWrapper;

    .line 69
    .line 70
    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    invoke-static {p0}, La2/w0;->B(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 107
    .line 108
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 109
    .line 110
    iget-boolean v0, v0, Lcom/yunpan/appmanage/util/k;->m:Z

    .line 111
    .line 112
    if-nez v0, :cond_1

    .line 113
    .line 114
    const-string p0, "\u5df2\u7b80\u5355\u6e05\u7406\uff0c\u6df1\u5ea6\u6e05\u7406\u7684\u8bdd\u9700root\uff1a/data/data\u76ee\u5f55\u4e2d\u7684\u7f13\u5b58"

    .line 115
    .line 116
    return-object p0

    .line 117
    :cond_1
    const-string v0, "/cache"

    .line 118
    .line 119
    const-string v1, "/code_cache"

    .line 120
    .line 121
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    invoke-static {p0}, La2/w0;->B(Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    const-string p0, "\u6e05\u7406\u6210\u529f"

    .line 129
    .line 130
    return-object p0
.end method

.method public static f0(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "am force-stop \'"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string p0, "\'"

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-static {p0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public static h(Ljava/lang/String;)Lfa/a0;
    .locals 3

    .line 1
    new-instance v0, Lfa/a0;

    .line 2
    .line 3
    invoke-direct {v0}, Lfa/a0;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lfa/g0;->a:Lfa/h0;

    .line 7
    .line 8
    invoke-virtual {v1}, Lfa/h0;->f()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    iget-boolean v2, v1, Lfa/h0;->d:Z

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v1}, Lfa/h0;->f()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 26
    .line 27
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 28
    .line 29
    iget-boolean v1, v1, Lcom/yunpan/appmanage/util/k;->m:Z

    .line 30
    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    sget-object v1, Lfa/h;->a:Lfa/j;

    .line 35
    .line 36
    invoke-virtual {v1}, Lfa/j;->i()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    invoke-virtual {v1, p0}, Lfa/j;->c(Ljava/lang/String;)Lfa/i;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    iget v1, p0, Lfa/i;->a:I

    .line 47
    .line 48
    iput v1, v0, Lfa/a0;->a:I

    .line 49
    .line 50
    iget-object p0, p0, Lfa/i;->c:Ljava/util/ArrayList;

    .line 51
    .line 52
    iput-object p0, v0, Lfa/a0;->b:Ljava/util/List;

    .line 53
    .line 54
    return-object v0

    .line 55
    :cond_2
    sget-object v1, Lfa/l;->a:Lfa/m;

    .line 56
    .line 57
    invoke-virtual {v1}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_3

    .line 62
    .line 63
    invoke-virtual {v1, p0}, Lfa/m;->L(Ljava/lang/String;)Lcom/yunpan/appmanage/bean/ShellResultData;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    iget v1, p0, Lcom/yunpan/appmanage/bean/ShellResultData;->code:I

    .line 68
    .line 69
    iput v1, v0, Lfa/a0;->a:I

    .line 70
    .line 71
    iget-object p0, p0, Lcom/yunpan/appmanage/bean/ShellResultData;->lines:Ljava/util/List;

    .line 72
    .line 73
    iput-object p0, v0, Lfa/a0;->b:Ljava/util/List;

    .line 74
    .line 75
    return-object v0

    .line 76
    :cond_3
    :goto_0
    const/4 v1, 0x1

    .line 77
    new-array v1, v1, [Ljava/lang/String;

    .line 78
    .line 79
    const/4 v2, 0x0

    .line 80
    aput-object p0, v1, v2

    .line 81
    .line 82
    invoke-static {v1}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {p0}, Lv9/e;->l0()Landroidx/room/s;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-virtual {p0}, Landroidx/room/s;->k()Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {p0}, Landroidx/room/s;->j()Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 99
    .line 100
    .line 101
    iget v1, p0, Landroidx/room/s;->b:I

    .line 102
    .line 103
    iput v1, v0, Lfa/a0;->a:I

    .line 104
    .line 105
    invoke-virtual {p0}, Landroidx/room/s;->k()Ljava/util/List;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    iput-object p0, v0, Lfa/a0;->b:Ljava/util/List;

    .line 110
    .line 111
    return-object v0
.end method

.method public static k(Ljava/lang/String;)Lfa/a0;
    .locals 3

    .line 1
    new-instance v0, Lfa/a0;

    .line 2
    .line 3
    invoke-direct {v0}, Lfa/a0;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lfa/h;->a:Lfa/j;

    .line 7
    .line 8
    invoke-virtual {v1}, Lfa/j;->i()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1, p0}, Lfa/j;->c(Ljava/lang/String;)Lfa/i;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    iget v1, p0, Lfa/i;->a:I

    .line 19
    .line 20
    iput v1, v0, Lfa/a0;->a:I

    .line 21
    .line 22
    iget-object p0, p0, Lfa/i;->c:Ljava/util/ArrayList;

    .line 23
    .line 24
    iput-object p0, v0, Lfa/a0;->b:Ljava/util/List;

    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_0
    sget-object v1, Lfa/l;->a:Lfa/m;

    .line 28
    .line 29
    invoke-virtual {v1}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    invoke-virtual {v1, p0}, Lfa/m;->L(Ljava/lang/String;)Lcom/yunpan/appmanage/bean/ShellResultData;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    iget v1, p0, Lcom/yunpan/appmanage/bean/ShellResultData;->code:I

    .line 40
    .line 41
    iput v1, v0, Lfa/a0;->a:I

    .line 42
    .line 43
    iget-object p0, p0, Lcom/yunpan/appmanage/bean/ShellResultData;->lines:Ljava/util/List;

    .line 44
    .line 45
    iput-object p0, v0, Lfa/a0;->b:Ljava/util/List;

    .line 46
    .line 47
    return-object v0

    .line 48
    :cond_1
    const/16 p0, -0x6f

    .line 49
    .line 50
    iput p0, v0, Lfa/a0;->a:I

    .line 51
    .line 52
    iget-object p0, v0, Lfa/a0;->b:Ljava/util/List;

    .line 53
    .line 54
    const-string v1, "\u672a\u8fde\u63a5adb"

    .line 55
    .line 56
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    return-object v0
.end method

.method public static l(Ljava/lang/String;)Lfa/a0;
    .locals 7

    .line 1
    new-instance v0, Lfa/a0;

    .line 2
    .line 3
    invoke-direct {v0}, Lfa/a0;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lfa/h;->a:Lfa/j;

    .line 7
    .line 8
    invoke-virtual {v1}, Lfa/j;->i()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1, p0}, Lfa/j;->c(Ljava/lang/String;)Lfa/i;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    iget v1, p0, Lfa/i;->a:I

    .line 19
    .line 20
    iput v1, v0, Lfa/a0;->a:I

    .line 21
    .line 22
    iget-object p0, p0, Lfa/i;->c:Ljava/util/ArrayList;

    .line 23
    .line 24
    iput-object p0, v0, Lfa/a0;->b:Ljava/util/List;

    .line 25
    .line 26
    goto/16 :goto_0

    .line 27
    .line 28
    :cond_0
    sget-object v1, Lfa/l;->a:Lfa/m;

    .line 29
    .line 30
    invoke-virtual {v1}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    invoke-virtual {v1, p0}, Lfa/m;->L(Ljava/lang/String;)Lcom/yunpan/appmanage/bean/ShellResultData;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    iget v1, p0, Lcom/yunpan/appmanage/bean/ShellResultData;->code:I

    .line 41
    .line 42
    iput v1, v0, Lfa/a0;->a:I

    .line 43
    .line 44
    iget-object p0, p0, Lcom/yunpan/appmanage/bean/ShellResultData;->lines:Ljava/util/List;

    .line 45
    .line 46
    iput-object p0, v0, Lfa/a0;->b:Ljava/util/List;

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    sget-object v1, Lfa/n0;->a:Lfa/o0;

    .line 50
    .line 51
    iget-boolean v2, v1, Lfa/o0;->a:Z

    .line 52
    .line 53
    const-string v3, "\u51fa\u9519"

    .line 54
    .line 55
    const/4 v4, -0x1

    .line 56
    const-wide/16 v5, 0xd05

    .line 57
    .line 58
    if-eqz v2, :cond_2

    .line 59
    .line 60
    iget-object v1, v1, Lfa/o0;->e:Lcom/yunpan/appmanage/shizuku/IUserService;

    .line 61
    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    :try_start_0
    invoke-interface {v1, p0, v5, v6}, Lcom/yunpan/appmanage/shizuku/IUserService;->exec(Ljava/lang/String;J)Lcom/yunpan/appmanage/shizuku/CmdResult;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    iget v1, p0, Lcom/yunpan/appmanage/shizuku/CmdResult;->code:I

    .line 69
    .line 70
    iput v1, v0, Lfa/a0;->a:I

    .line 71
    .line 72
    iget-object p0, p0, Lcom/yunpan/appmanage/shizuku/CmdResult;->lists:Ljava/util/ArrayList;

    .line 73
    .line 74
    iput-object p0, v0, Lfa/a0;->b:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catch_0
    iput v4, v0, Lfa/a0;->a:I

    .line 78
    .line 79
    iget-object p0, v0, Lfa/a0;->b:Ljava/util/List;

    .line 80
    .line 81
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_2
    sget-object v1, Lfa/a;->a:Lfa/b;

    .line 86
    .line 87
    invoke-virtual {v1}, Lfa/b;->f()Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-eqz v2, :cond_3

    .line 92
    .line 93
    iget-object v1, v1, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 94
    .line 95
    if-eqz v1, :cond_3

    .line 96
    .line 97
    :try_start_1
    invoke-interface {v1, p0, v5, v6}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->exec(Ljava/lang/String;J)Lcom/yunpan/appmanage/shizuku/CmdResult;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    iget v1, p0, Lcom/yunpan/appmanage/shizuku/CmdResult;->code:I

    .line 102
    .line 103
    iput v1, v0, Lfa/a0;->a:I

    .line 104
    .line 105
    iget-object p0, p0, Lcom/yunpan/appmanage/shizuku/CmdResult;->lists:Ljava/util/ArrayList;

    .line 106
    .line 107
    iput-object p0, v0, Lfa/a0;->b:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :catch_1
    iput v4, v0, Lfa/a0;->a:I

    .line 111
    .line 112
    iget-object p0, v0, Lfa/a0;->b:Ljava/util/List;

    .line 113
    .line 114
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_3
    const/4 v1, 0x1

    .line 119
    new-array v1, v1, [Ljava/lang/String;

    .line 120
    .line 121
    const/4 v2, 0x0

    .line 122
    aput-object p0, v1, v2

    .line 123
    .line 124
    invoke-static {v1}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    invoke-virtual {p0}, Lv9/e;->l0()Landroidx/room/s;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    invoke-virtual {p0}, Landroidx/room/s;->k()Ljava/util/List;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {p0}, Landroidx/room/s;->j()Ljava/util/List;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 141
    .line 142
    .line 143
    iget v1, p0, Landroidx/room/s;->b:I

    .line 144
    .line 145
    iput v1, v0, Lfa/a0;->a:I

    .line 146
    .line 147
    invoke-virtual {p0}, Landroidx/room/s;->k()Ljava/util/List;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    iput-object p0, v0, Lfa/a0;->b:Ljava/util/List;

    .line 152
    .line 153
    :goto_0
    return-object v0
.end method

.method public static m(Ljava/lang/String;)Lfa/a0;
    .locals 4

    .line 1
    new-instance v0, Lfa/a0;

    .line 2
    .line 3
    invoke-direct {v0}, Lfa/a0;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 7
    .line 8
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 9
    .line 10
    iget-boolean v1, v1, Lcom/yunpan/appmanage/util/k;->j:Z

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    sget-object v1, Lfa/g0;->a:Lfa/h0;

    .line 15
    .line 16
    invoke-virtual {v1}, Lfa/h0;->f()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    :cond_0
    const/4 v1, 0x1

    .line 23
    new-array v1, v1, [Ljava/lang/String;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    aput-object p0, v1, v2

    .line 27
    .line 28
    invoke-static {v1}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Lv9/e;->l0()Landroidx/room/s;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Landroidx/room/s;->k()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v1}, Landroidx/room/s;->j()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 45
    .line 46
    .line 47
    iget v2, v1, Landroidx/room/s;->b:I

    .line 48
    .line 49
    iput v2, v0, Lfa/a0;->a:I

    .line 50
    .line 51
    invoke-virtual {v1}, Landroidx/room/s;->k()Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iput-object v1, v0, Lfa/a0;->b:Ljava/util/List;

    .line 56
    .line 57
    iget v1, v0, Lfa/a0;->a:I

    .line 58
    .line 59
    if-eqz v1, :cond_3

    .line 60
    .line 61
    sget-object v1, Lfa/g0;->a:Lfa/h0;

    .line 62
    .line 63
    invoke-virtual {v1}, Lfa/h0;->f()Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    sget-object v1, Lfa/h;->a:Lfa/j;

    .line 71
    .line 72
    invoke-virtual {v1}, Lfa/j;->i()Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_2

    .line 77
    .line 78
    invoke-virtual {v1, p0}, Lfa/j;->c(Ljava/lang/String;)Lfa/i;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    iget v1, p0, Lfa/i;->a:I

    .line 83
    .line 84
    iput v1, v0, Lfa/a0;->a:I

    .line 85
    .line 86
    iget-object p0, p0, Lfa/i;->c:Ljava/util/ArrayList;

    .line 87
    .line 88
    iput-object p0, v0, Lfa/a0;->b:Ljava/util/List;

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_2
    sget-object v1, Lfa/l;->a:Lfa/m;

    .line 92
    .line 93
    invoke-virtual {v1}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-eqz v2, :cond_3

    .line 98
    .line 99
    invoke-virtual {v1, p0}, Lfa/m;->L(Ljava/lang/String;)Lcom/yunpan/appmanage/bean/ShellResultData;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    iget v1, p0, Lcom/yunpan/appmanage/bean/ShellResultData;->code:I

    .line 104
    .line 105
    iput v1, v0, Lfa/a0;->a:I

    .line 106
    .line 107
    iget-object p0, p0, Lcom/yunpan/appmanage/bean/ShellResultData;->lines:Ljava/util/List;

    .line 108
    .line 109
    iput-object p0, v0, Lfa/a0;->b:Ljava/util/List;

    .line 110
    .line 111
    :cond_3
    :goto_0
    return-object v0
.end method

.method public static n(JLjava/lang/String;)Lfa/a0;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    new-instance v2, Lfa/a0;

    .line 4
    .line 5
    invoke-direct {v2}, Lfa/a0;-><init>()V

    .line 6
    .line 7
    .line 8
    sget-object v3, Lfa/g0;->a:Lfa/h0;

    .line 9
    .line 10
    invoke-virtual {v3}, Lfa/h0;->f()Z

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    if-eqz v4, :cond_1

    .line 15
    .line 16
    new-array v4, v1, [Ljava/lang/String;

    .line 17
    .line 18
    aput-object p2, v4, v0

    .line 19
    .line 20
    invoke-static {v4}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-virtual {v4}, Lv9/e;->l0()Landroidx/room/s;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v4}, Landroidx/room/s;->k()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    invoke-virtual {v4}, Landroidx/room/s;->j()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 37
    .line 38
    .line 39
    iget v5, v4, Landroidx/room/s;->b:I

    .line 40
    .line 41
    iput v5, v2, Lfa/a0;->a:I

    .line 42
    .line 43
    invoke-virtual {v4}, Landroidx/room/s;->k()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    iput-object v4, v2, Lfa/a0;->b:Ljava/util/List;

    .line 48
    .line 49
    iget v4, v2, Lfa/a0;->a:I

    .line 50
    .line 51
    if-eqz v4, :cond_0

    .line 52
    .line 53
    sget-object v4, Lfa/h;->a:Lfa/j;

    .line 54
    .line 55
    invoke-virtual {v4}, Lfa/j;->i()Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-nez v4, :cond_1

    .line 60
    .line 61
    sget-object v4, Lfa/l;->a:Lfa/m;

    .line 62
    .line 63
    invoke-virtual {v4}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-nez v4, :cond_1

    .line 68
    .line 69
    sget-object v4, Lfa/n0;->a:Lfa/o0;

    .line 70
    .line 71
    iget-boolean v4, v4, Lfa/o0;->a:Z

    .line 72
    .line 73
    if-nez v4, :cond_1

    .line 74
    .line 75
    :cond_0
    return-object v2

    .line 76
    :cond_1
    sget-object v4, Lfa/h;->a:Lfa/j;

    .line 77
    .line 78
    invoke-virtual {v4}, Lfa/j;->i()Z

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    if-eqz v5, :cond_2

    .line 83
    .line 84
    invoke-virtual {v3}, Lfa/h0;->f()Z

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    if-nez v5, :cond_2

    .line 89
    .line 90
    invoke-virtual {v4, p2}, Lfa/j;->c(Ljava/lang/String;)Lfa/i;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    iget p1, p0, Lfa/i;->a:I

    .line 95
    .line 96
    iput p1, v2, Lfa/a0;->a:I

    .line 97
    .line 98
    iget-object p0, p0, Lfa/i;->c:Ljava/util/ArrayList;

    .line 99
    .line 100
    iput-object p0, v2, Lfa/a0;->b:Ljava/util/List;

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_2
    sget-object v4, Lfa/l;->a:Lfa/m;

    .line 104
    .line 105
    invoke-virtual {v4}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    if-eqz v5, :cond_3

    .line 110
    .line 111
    invoke-virtual {v3}, Lfa/h0;->f()Z

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    if-nez v3, :cond_3

    .line 116
    .line 117
    invoke-virtual {v4, p2}, Lfa/m;->L(Ljava/lang/String;)Lcom/yunpan/appmanage/bean/ShellResultData;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    iget p1, p0, Lcom/yunpan/appmanage/bean/ShellResultData;->code:I

    .line 122
    .line 123
    iput p1, v2, Lfa/a0;->a:I

    .line 124
    .line 125
    iget-object p0, p0, Lcom/yunpan/appmanage/bean/ShellResultData;->lines:Ljava/util/List;

    .line 126
    .line 127
    iput-object p0, v2, Lfa/a0;->b:Ljava/util/List;

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_3
    sget-object v3, Lfa/n0;->a:Lfa/o0;

    .line 131
    .line 132
    iget-boolean v4, v3, Lfa/o0;->a:Z

    .line 133
    .line 134
    if-eqz v4, :cond_4

    .line 135
    .line 136
    iget-object v3, v3, Lfa/o0;->e:Lcom/yunpan/appmanage/shizuku/IUserService;

    .line 137
    .line 138
    if-eqz v3, :cond_4

    .line 139
    .line 140
    :try_start_0
    invoke-interface {v3, p2, p0, p1}, Lcom/yunpan/appmanage/shizuku/IUserService;->exec(Ljava/lang/String;J)Lcom/yunpan/appmanage/shizuku/CmdResult;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    iget p1, p0, Lcom/yunpan/appmanage/shizuku/CmdResult;->code:I

    .line 145
    .line 146
    iput p1, v2, Lfa/a0;->a:I

    .line 147
    .line 148
    iget-object p0, p0, Lcom/yunpan/appmanage/shizuku/CmdResult;->lists:Ljava/util/ArrayList;

    .line 149
    .line 150
    iput-object p0, v2, Lfa/a0;->b:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .line 152
    goto :goto_0

    .line 153
    :catch_0
    const/4 p0, -0x1

    .line 154
    iput p0, v2, Lfa/a0;->a:I

    .line 155
    .line 156
    iget-object p0, v2, Lfa/a0;->b:Ljava/util/List;

    .line 157
    .line 158
    const-string p1, "\u51fa\u9519"

    .line 159
    .line 160
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_4
    new-array p0, v1, [Ljava/lang/String;

    .line 165
    .line 166
    aput-object p2, p0, v0

    .line 167
    .line 168
    invoke-static {p0}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    invoke-virtual {p0}, Lv9/e;->l0()Landroidx/room/s;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    invoke-virtual {p0}, Landroidx/room/s;->k()Ljava/util/List;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-virtual {p0}, Landroidx/room/s;->j()Ljava/util/List;

    .line 181
    .line 182
    .line 183
    move-result-object p2

    .line 184
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 185
    .line 186
    .line 187
    iget p1, p0, Landroidx/room/s;->b:I

    .line 188
    .line 189
    iput p1, v2, Lfa/a0;->a:I

    .line 190
    .line 191
    invoke-virtual {p0}, Landroidx/room/s;->k()Ljava/util/List;

    .line 192
    .line 193
    .line 194
    move-result-object p0

    .line 195
    iput-object p0, v2, Lfa/a0;->b:Ljava/util/List;

    .line 196
    .line 197
    :goto_0
    return-object v2
.end method

.method public static o(JLjava/lang/String;)Lfa/a0;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    new-instance v2, Lfa/a0;

    .line 4
    .line 5
    invoke-direct {v2}, Lfa/a0;-><init>()V

    .line 6
    .line 7
    .line 8
    sget-object v3, Lfa/g0;->a:Lfa/h0;

    .line 9
    .line 10
    invoke-virtual {v3}, Lfa/h0;->f()Z

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    if-eqz v4, :cond_0

    .line 15
    .line 16
    new-array p0, v1, [Ljava/lang/String;

    .line 17
    .line 18
    aput-object p2, p0, v0

    .line 19
    .line 20
    invoke-static {p0}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Lv9/e;->l0()Landroidx/room/s;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Landroidx/room/s;->k()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p0}, Landroidx/room/s;->j()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 37
    .line 38
    .line 39
    iget p1, p0, Landroidx/room/s;->b:I

    .line 40
    .line 41
    iput p1, v2, Lfa/a0;->a:I

    .line 42
    .line 43
    invoke-virtual {p0}, Landroidx/room/s;->k()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    iput-object p0, v2, Lfa/a0;->b:Ljava/util/List;

    .line 48
    .line 49
    goto/16 :goto_0

    .line 50
    .line 51
    :cond_0
    sget-object v4, Lfa/h;->a:Lfa/j;

    .line 52
    .line 53
    invoke-virtual {v4}, Lfa/j;->i()Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-eqz v5, :cond_1

    .line 58
    .line 59
    invoke-virtual {v3}, Lfa/h0;->f()Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-nez v5, :cond_1

    .line 64
    .line 65
    invoke-virtual {v4, p2}, Lfa/j;->c(Ljava/lang/String;)Lfa/i;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    iget p1, p0, Lfa/i;->a:I

    .line 70
    .line 71
    iput p1, v2, Lfa/a0;->a:I

    .line 72
    .line 73
    iget-object p0, p0, Lfa/i;->c:Ljava/util/ArrayList;

    .line 74
    .line 75
    iput-object p0, v2, Lfa/a0;->b:Ljava/util/List;

    .line 76
    .line 77
    goto/16 :goto_0

    .line 78
    .line 79
    :cond_1
    sget-object v4, Lfa/l;->a:Lfa/m;

    .line 80
    .line 81
    invoke-virtual {v4}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    if-eqz v5, :cond_2

    .line 86
    .line 87
    invoke-virtual {v3}, Lfa/h0;->f()Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-nez v3, :cond_2

    .line 92
    .line 93
    invoke-virtual {v4, p2}, Lfa/m;->L(Ljava/lang/String;)Lcom/yunpan/appmanage/bean/ShellResultData;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    iget p1, p0, Lcom/yunpan/appmanage/bean/ShellResultData;->code:I

    .line 98
    .line 99
    iput p1, v2, Lfa/a0;->a:I

    .line 100
    .line 101
    iget-object p0, p0, Lcom/yunpan/appmanage/bean/ShellResultData;->lines:Ljava/util/List;

    .line 102
    .line 103
    iput-object p0, v2, Lfa/a0;->b:Ljava/util/List;

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_2
    sget-object v3, Lfa/n0;->a:Lfa/o0;

    .line 107
    .line 108
    iget-boolean v4, v3, Lfa/o0;->a:Z

    .line 109
    .line 110
    const-string v5, "\u51fa\u9519"

    .line 111
    .line 112
    const/4 v6, -0x1

    .line 113
    if-eqz v4, :cond_3

    .line 114
    .line 115
    iget-object v3, v3, Lfa/o0;->e:Lcom/yunpan/appmanage/shizuku/IUserService;

    .line 116
    .line 117
    if-eqz v3, :cond_3

    .line 118
    .line 119
    :try_start_0
    invoke-interface {v3, p2, p0, p1}, Lcom/yunpan/appmanage/shizuku/IUserService;->exec(Ljava/lang/String;J)Lcom/yunpan/appmanage/shizuku/CmdResult;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    iget p1, p0, Lcom/yunpan/appmanage/shizuku/CmdResult;->code:I

    .line 124
    .line 125
    iput p1, v2, Lfa/a0;->a:I

    .line 126
    .line 127
    iget-object p0, p0, Lcom/yunpan/appmanage/shizuku/CmdResult;->lists:Ljava/util/ArrayList;

    .line 128
    .line 129
    iput-object p0, v2, Lfa/a0;->b:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :catch_0
    iput v6, v2, Lfa/a0;->a:I

    .line 133
    .line 134
    iget-object p0, v2, Lfa/a0;->b:Ljava/util/List;

    .line 135
    .line 136
    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_3
    sget-object v3, Lfa/a;->a:Lfa/b;

    .line 141
    .line 142
    invoke-virtual {v3}, Lfa/b;->f()Z

    .line 143
    .line 144
    .line 145
    move-result v4

    .line 146
    if-eqz v4, :cond_4

    .line 147
    .line 148
    :try_start_1
    iget-object v0, v3, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 149
    .line 150
    invoke-interface {v0, p2, p0, p1}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->exec(Ljava/lang/String;J)Lcom/yunpan/appmanage/shizuku/CmdResult;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    iget p1, p0, Lcom/yunpan/appmanage/shizuku/CmdResult;->code:I

    .line 155
    .line 156
    iput p1, v2, Lfa/a0;->a:I

    .line 157
    .line 158
    iget-object p0, p0, Lcom/yunpan/appmanage/shizuku/CmdResult;->lists:Ljava/util/ArrayList;

    .line 159
    .line 160
    iput-object p0, v2, Lfa/a0;->b:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 161
    .line 162
    goto :goto_0

    .line 163
    :catch_1
    iput v6, v2, Lfa/a0;->a:I

    .line 164
    .line 165
    iget-object p0, v2, Lfa/a0;->b:Ljava/util/List;

    .line 166
    .line 167
    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    goto :goto_0

    .line 171
    :cond_4
    new-array p0, v1, [Ljava/lang/String;

    .line 172
    .line 173
    aput-object p2, p0, v0

    .line 174
    .line 175
    invoke-static {p0}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    invoke-virtual {p0}, Lv9/e;->l0()Landroidx/room/s;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    invoke-virtual {p0}, Landroidx/room/s;->k()Ljava/util/List;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-virtual {p0}, Landroidx/room/s;->j()Ljava/util/List;

    .line 188
    .line 189
    .line 190
    move-result-object p2

    .line 191
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 192
    .line 193
    .line 194
    iget p1, p0, Landroidx/room/s;->b:I

    .line 195
    .line 196
    iput p1, v2, Lfa/a0;->a:I

    .line 197
    .line 198
    invoke-virtual {p0}, Landroidx/room/s;->k()Ljava/util/List;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    iput-object p0, v2, Lfa/a0;->b:Ljava/util/List;

    .line 203
    .line 204
    :goto_0
    return-object v2
.end method

.method public static p(Ljava/lang/String;)Lfa/a0;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    new-instance v2, Lfa/a0;

    .line 4
    .line 5
    invoke-direct {v2}, Lfa/a0;-><init>()V

    .line 6
    .line 7
    .line 8
    sget-object v3, Lfa/g0;->a:Lfa/h0;

    .line 9
    .line 10
    invoke-virtual {v3}, Lfa/h0;->f()Z

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    if-nez v4, :cond_4

    .line 15
    .line 16
    sget-object v4, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 17
    .line 18
    sget-object v4, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 19
    .line 20
    iget-boolean v4, v4, Lcom/yunpan/appmanage/util/k;->j:Z

    .line 21
    .line 22
    if-eqz v4, :cond_0

    .line 23
    .line 24
    goto/16 :goto_0

    .line 25
    .line 26
    :cond_0
    sget-object v4, Lfa/h;->a:Lfa/j;

    .line 27
    .line 28
    invoke-virtual {v4}, Lfa/j;->i()Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-eqz v5, :cond_1

    .line 33
    .line 34
    invoke-virtual {v3}, Lfa/h0;->f()Z

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    if-nez v5, :cond_1

    .line 39
    .line 40
    invoke-virtual {v4, p0}, Lfa/j;->c(Ljava/lang/String;)Lfa/i;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    iget v0, p0, Lfa/i;->a:I

    .line 45
    .line 46
    iput v0, v2, Lfa/a0;->a:I

    .line 47
    .line 48
    iget-object p0, p0, Lfa/i;->c:Ljava/util/ArrayList;

    .line 49
    .line 50
    iput-object p0, v2, Lfa/a0;->b:Ljava/util/List;

    .line 51
    .line 52
    goto/16 :goto_1

    .line 53
    .line 54
    :cond_1
    sget-object v4, Lfa/l;->a:Lfa/m;

    .line 55
    .line 56
    invoke-virtual {v4}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-eqz v5, :cond_2

    .line 61
    .line 62
    invoke-virtual {v3}, Lfa/h0;->f()Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-nez v3, :cond_2

    .line 67
    .line 68
    invoke-virtual {v4, p0}, Lfa/m;->L(Ljava/lang/String;)Lcom/yunpan/appmanage/bean/ShellResultData;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    iget v0, p0, Lcom/yunpan/appmanage/bean/ShellResultData;->code:I

    .line 73
    .line 74
    iput v0, v2, Lfa/a0;->a:I

    .line 75
    .line 76
    iget-object p0, p0, Lcom/yunpan/appmanage/bean/ShellResultData;->lines:Ljava/util/List;

    .line 77
    .line 78
    iput-object p0, v2, Lfa/a0;->b:Ljava/util/List;

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_2
    sget-object v3, Lfa/n0;->a:Lfa/o0;

    .line 82
    .line 83
    iget-boolean v4, v3, Lfa/o0;->a:Z

    .line 84
    .line 85
    if-eqz v4, :cond_3

    .line 86
    .line 87
    iget-object v3, v3, Lfa/o0;->e:Lcom/yunpan/appmanage/shizuku/IUserService;

    .line 88
    .line 89
    if-eqz v3, :cond_3

    .line 90
    .line 91
    const-wide/16 v0, 0xd05

    .line 92
    .line 93
    :try_start_0
    invoke-interface {v3, p0, v0, v1}, Lcom/yunpan/appmanage/shizuku/IUserService;->exec(Ljava/lang/String;J)Lcom/yunpan/appmanage/shizuku/CmdResult;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    iget v0, p0, Lcom/yunpan/appmanage/shizuku/CmdResult;->code:I

    .line 98
    .line 99
    iput v0, v2, Lfa/a0;->a:I

    .line 100
    .line 101
    iget-object p0, p0, Lcom/yunpan/appmanage/shizuku/CmdResult;->lists:Ljava/util/ArrayList;

    .line 102
    .line 103
    iput-object p0, v2, Lfa/a0;->b:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :catch_0
    const/4 p0, -0x1

    .line 107
    iput p0, v2, Lfa/a0;->a:I

    .line 108
    .line 109
    iget-object p0, v2, Lfa/a0;->b:Ljava/util/List;

    .line 110
    .line 111
    const-string v0, "\u51fa\u9519"

    .line 112
    .line 113
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_3
    new-array v1, v1, [Ljava/lang/String;

    .line 118
    .line 119
    aput-object p0, v1, v0

    .line 120
    .line 121
    invoke-static {v1}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    invoke-virtual {p0}, Lv9/e;->l0()Landroidx/room/s;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    invoke-virtual {p0}, Landroidx/room/s;->k()Ljava/util/List;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {p0}, Landroidx/room/s;->j()Ljava/util/List;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 138
    .line 139
    .line 140
    iget v0, p0, Landroidx/room/s;->b:I

    .line 141
    .line 142
    iput v0, v2, Lfa/a0;->a:I

    .line 143
    .line 144
    invoke-virtual {p0}, Landroidx/room/s;->k()Ljava/util/List;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    iput-object p0, v2, Lfa/a0;->b:Ljava/util/List;

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_4
    :goto_0
    new-array v1, v1, [Ljava/lang/String;

    .line 152
    .line 153
    aput-object p0, v1, v0

    .line 154
    .line 155
    invoke-static {v1}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    invoke-virtual {p0}, Lv9/e;->l0()Landroidx/room/s;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    invoke-virtual {p0}, Landroidx/room/s;->k()Ljava/util/List;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {p0}, Landroidx/room/s;->j()Ljava/util/List;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 172
    .line 173
    .line 174
    iget v0, p0, Landroidx/room/s;->b:I

    .line 175
    .line 176
    iput v0, v2, Lfa/a0;->a:I

    .line 177
    .line 178
    invoke-virtual {p0}, Landroidx/room/s;->k()Ljava/util/List;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    iput-object p0, v2, Lfa/a0;->b:Ljava/util/List;

    .line 183
    .line 184
    :goto_1
    return-object v2
.end method

.method public static q(JLjava/lang/String;)Lfa/a0;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    new-instance v2, Lfa/a0;

    .line 4
    .line 5
    invoke-direct {v2}, Lfa/a0;-><init>()V

    .line 6
    .line 7
    .line 8
    sget-object v3, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 9
    .line 10
    sget-object v3, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 11
    .line 12
    iget-boolean v3, v3, Lcom/yunpan/appmanage/util/k;->j:Z

    .line 13
    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    sget-object v3, Lfa/g0;->a:Lfa/h0;

    .line 17
    .line 18
    invoke-virtual {v3}, Lfa/h0;->f()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    :cond_0
    new-array v3, v1, [Ljava/lang/String;

    .line 25
    .line 26
    aput-object p2, v3, v0

    .line 27
    .line 28
    invoke-static {v3}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v3}, Lv9/e;->l0()Landroidx/room/s;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v3}, Landroidx/room/s;->k()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {v3}, Landroidx/room/s;->j()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 45
    .line 46
    .line 47
    iget v4, v3, Landroidx/room/s;->b:I

    .line 48
    .line 49
    iput v4, v2, Lfa/a0;->a:I

    .line 50
    .line 51
    invoke-virtual {v3}, Landroidx/room/s;->k()Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    iput-object v3, v2, Lfa/a0;->b:Ljava/util/List;

    .line 56
    .line 57
    iget v3, v2, Lfa/a0;->a:I

    .line 58
    .line 59
    if-eqz v3, :cond_6

    .line 60
    .line 61
    sget-object v3, Lfa/g0;->a:Lfa/h0;

    .line 62
    .line 63
    invoke-virtual {v3}, Lfa/h0;->f()Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_1

    .line 68
    .line 69
    goto/16 :goto_0

    .line 70
    .line 71
    :cond_1
    sget-object v3, Lfa/h;->a:Lfa/j;

    .line 72
    .line 73
    invoke-virtual {v3}, Lfa/j;->i()Z

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-eqz v4, :cond_2

    .line 78
    .line 79
    invoke-virtual {v3, p2}, Lfa/j;->c(Ljava/lang/String;)Lfa/i;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    iget p1, p0, Lfa/i;->a:I

    .line 84
    .line 85
    iput p1, v2, Lfa/a0;->a:I

    .line 86
    .line 87
    iget-object p0, p0, Lfa/i;->c:Ljava/util/ArrayList;

    .line 88
    .line 89
    iput-object p0, v2, Lfa/a0;->b:Ljava/util/List;

    .line 90
    .line 91
    goto/16 :goto_0

    .line 92
    .line 93
    :cond_2
    sget-object v3, Lfa/l;->a:Lfa/m;

    .line 94
    .line 95
    invoke-virtual {v3}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    if-eqz v4, :cond_3

    .line 100
    .line 101
    invoke-virtual {v3, p2}, Lfa/m;->L(Ljava/lang/String;)Lcom/yunpan/appmanage/bean/ShellResultData;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    iget p1, p0, Lcom/yunpan/appmanage/bean/ShellResultData;->code:I

    .line 106
    .line 107
    iput p1, v2, Lfa/a0;->a:I

    .line 108
    .line 109
    iget-object p0, p0, Lcom/yunpan/appmanage/bean/ShellResultData;->lines:Ljava/util/List;

    .line 110
    .line 111
    iput-object p0, v2, Lfa/a0;->b:Ljava/util/List;

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_3
    sget-object v3, Lfa/n0;->a:Lfa/o0;

    .line 115
    .line 116
    iget-object v3, v3, Lfa/o0;->e:Lcom/yunpan/appmanage/shizuku/IUserService;

    .line 117
    .line 118
    const-string v4, "\u51fa\u9519"

    .line 119
    .line 120
    const/4 v5, -0x1

    .line 121
    if-eqz v3, :cond_4

    .line 122
    .line 123
    :try_start_0
    invoke-interface {v3, p2, p0, p1}, Lcom/yunpan/appmanage/shizuku/IUserService;->exec(Ljava/lang/String;J)Lcom/yunpan/appmanage/shizuku/CmdResult;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    iget p1, p0, Lcom/yunpan/appmanage/shizuku/CmdResult;->code:I

    .line 128
    .line 129
    iput p1, v2, Lfa/a0;->a:I

    .line 130
    .line 131
    iget-object p0, p0, Lcom/yunpan/appmanage/shizuku/CmdResult;->lists:Ljava/util/ArrayList;

    .line 132
    .line 133
    iput-object p0, v2, Lfa/a0;->b:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :catch_0
    iput v5, v2, Lfa/a0;->a:I

    .line 137
    .line 138
    iget-object p0, v2, Lfa/a0;->b:Ljava/util/List;

    .line 139
    .line 140
    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_4
    sget-object v3, Lfa/a;->a:Lfa/b;

    .line 145
    .line 146
    invoke-virtual {v3}, Lfa/b;->f()Z

    .line 147
    .line 148
    .line 149
    move-result v6

    .line 150
    if-eqz v6, :cond_5

    .line 151
    .line 152
    :try_start_1
    iget-object v0, v3, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 153
    .line 154
    invoke-interface {v0, p2, p0, p1}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->exec(Ljava/lang/String;J)Lcom/yunpan/appmanage/shizuku/CmdResult;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    iget p1, p0, Lcom/yunpan/appmanage/shizuku/CmdResult;->code:I

    .line 159
    .line 160
    iput p1, v2, Lfa/a0;->a:I

    .line 161
    .line 162
    iget-object p0, p0, Lcom/yunpan/appmanage/shizuku/CmdResult;->lists:Ljava/util/ArrayList;

    .line 163
    .line 164
    iput-object p0, v2, Lfa/a0;->b:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 165
    .line 166
    goto :goto_0

    .line 167
    :catch_1
    iput v5, v2, Lfa/a0;->a:I

    .line 168
    .line 169
    iget-object p0, v2, Lfa/a0;->b:Ljava/util/List;

    .line 170
    .line 171
    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    goto :goto_0

    .line 175
    :cond_5
    new-array p0, v1, [Ljava/lang/String;

    .line 176
    .line 177
    aput-object p2, p0, v0

    .line 178
    .line 179
    invoke-static {p0}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    invoke-virtual {p0}, Lv9/e;->l0()Landroidx/room/s;

    .line 184
    .line 185
    .line 186
    move-result-object p0

    .line 187
    invoke-virtual {p0}, Landroidx/room/s;->k()Ljava/util/List;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-virtual {p0}, Landroidx/room/s;->j()Ljava/util/List;

    .line 192
    .line 193
    .line 194
    move-result-object p2

    .line 195
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 196
    .line 197
    .line 198
    iget p1, p0, Landroidx/room/s;->b:I

    .line 199
    .line 200
    iput p1, v2, Lfa/a0;->a:I

    .line 201
    .line 202
    invoke-virtual {p0}, Landroidx/room/s;->k()Ljava/util/List;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    iput-object p0, v2, Lfa/a0;->b:Ljava/util/List;

    .line 207
    .line 208
    :cond_6
    :goto_0
    return-object v2
.end method

.method public static r(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "adb shell"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/16 v0, 0x9

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public static s(Ljava/io/File;)Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    array-length v2, v1

    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_0
    if-ge v3, v2, :cond_0

    .line 14
    .line 15
    aget-object v4, v1, v3

    .line 16
    .line 17
    invoke-static {v4}, La2/w0;->s(Ljava/io/File;)Z

    .line 18
    .line 19
    .line 20
    add-int/lit8 v3, v3, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    :goto_1
    const-wide/16 v2, 0xc8

    .line 25
    .line 26
    const/4 v4, 0x3

    .line 27
    const/4 v5, 0x1

    .line 28
    if-ge v1, v4, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 31
    .line 32
    .line 33
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 34
    .line 35
    .line 36
    invoke-static {p0}, Lcom/yunpan/appmanage/util/a0;->f(Ljava/io/File;)Z

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    if-nez v6, :cond_1

    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    goto :goto_2

    .line 44
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    const/4 v1, 0x0

    .line 48
    :goto_2
    if-eqz v1, :cond_3

    .line 49
    .line 50
    return v5

    .line 51
    :cond_3
    new-instance v1, Ljava/io/File;

    .line 52
    .line 53
    new-instance v6, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v7, ".tem"

    .line 66
    .line 67
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    if-eqz p0, :cond_5

    .line 82
    .line 83
    const/4 p0, 0x0

    .line 84
    :goto_3
    if-ge p0, v4, :cond_5

    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 87
    .line 88
    .line 89
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 90
    .line 91
    .line 92
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->f(Ljava/io/File;)Z

    .line 93
    .line 94
    .line 95
    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    if-nez v6, :cond_4

    .line 97
    .line 98
    const/4 v0, 0x1

    .line 99
    goto :goto_4

    .line 100
    :cond_4
    add-int/lit8 p0, p0, 0x1

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :catch_0
    :cond_5
    :goto_4
    return v0
.end method

.method public static u(Lcom/yunpan/appmanage/db/AppBean;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 2
    .line 3
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 4
    .line 5
    iget-boolean v0, v0, Lcom/yunpan/appmanage/util/k;->m:Z

    .line 6
    .line 7
    if-eqz v0, :cond_c

    .line 8
    .line 9
    iget-object v0, p0, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0}, La2/w0;->U(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v1, "am force-stop \'"

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, "\'"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 36
    .line 37
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v2, "rm -rf \""

    .line 41
    .line 42
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v3, p0, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v3, "\""

    .line 51
    .line 52
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iget v0, v0, Lfa/a0;->a:I

    .line 64
    .line 65
    if-nez v0, :cond_b

    .line 66
    .line 67
    iget-object v0, p0, Lcom/yunpan/appmanage/db/AppBean;->dataDir:Ljava/lang/String;

    .line 68
    .line 69
    if-eqz v0, :cond_0

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_0

    .line 76
    .line 77
    iget-object v0, p0, Lcom/yunpan/appmanage/db/AppBean;->dataDir:Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {v0}, La2/w0;->B(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    const-string v4, "rm -rf \'/data/data/"

    .line 85
    .line 86
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget-object v4, p0, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 102
    .line 103
    .line 104
    new-instance v0, Ljava/util/HashSet;

    .line 105
    .line 106
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 107
    .line 108
    .line 109
    const-string v4, "pm list users"

    .line 110
    .line 111
    invoke-static {v4}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    iget-object v4, v4, Lfa/a0;->b:Ljava/util/List;

    .line 116
    .line 117
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    const/4 v6, 0x0

    .line 126
    if-eqz v5, :cond_3

    .line 127
    .line 128
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    check-cast v5, Ljava/lang/String;

    .line 133
    .line 134
    const-string v7, "UserInfo{"

    .line 135
    .line 136
    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 137
    .line 138
    .line 139
    move-result v8

    .line 140
    if-nez v8, :cond_1

    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_1
    const-string v8, ":"

    .line 144
    .line 145
    invoke-static {v5, v7, v8, v6}, Lif/a;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 154
    .line 155
    .line 156
    move-result v6

    .line 157
    if-eqz v6, :cond_2

    .line 158
    .line 159
    goto :goto_0

    .line 160
    :cond_2
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_3
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 165
    .line 166
    .line 167
    move-result v4

    .line 168
    if-eqz v4, :cond_4

    .line 169
    .line 170
    const-string v4, "0"

    .line 171
    .line 172
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    :cond_4
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 180
    .line 181
    .line 182
    move-result v4

    .line 183
    const-string v5, "/"

    .line 184
    .line 185
    if-eqz v4, :cond_5

    .line 186
    .line 187
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    check-cast v4, Ljava/lang/String;

    .line 192
    .line 193
    const-string v7, "rm -rf \'/data/user/"

    .line 194
    .line 195
    invoke-static {v7, v4, v5}, Lda/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    move-result-object v7

    .line 199
    iget-object v8, p0, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 200
    .line 201
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v7

    .line 211
    invoke-static {v7}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 212
    .line 213
    .line 214
    new-instance v7, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    const-string v8, "rm -rf \'/data/user_de/"

    .line 217
    .line 218
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    iget-object v5, p0, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 228
    .line 229
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v5

    .line 239
    invoke-static {v5}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 240
    .line 241
    .line 242
    new-instance v5, Ljava/lang/StringBuilder;

    .line 243
    .line 244
    const-string v7, "rm -rf \'/data/media/"

    .line 245
    .line 246
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    const-string v8, "/Android/data/"

    .line 253
    .line 254
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    iget-object v8, p0, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 258
    .line 259
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v5

    .line 269
    invoke-static {v5}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 270
    .line 271
    .line 272
    new-instance v5, Ljava/lang/StringBuilder;

    .line 273
    .line 274
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    const-string v8, "/Android/obb/"

    .line 281
    .line 282
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    iget-object v8, p0, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 286
    .line 287
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v5

    .line 297
    invoke-static {v5}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 298
    .line 299
    .line 300
    new-instance v5, Ljava/lang/StringBuilder;

    .line 301
    .line 302
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    const-string v4, "/Android/media/"

    .line 309
    .line 310
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    iget-object v4, p0, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 314
    .line 315
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v4

    .line 325
    invoke-static {v4}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 326
    .line 327
    .line 328
    goto/16 :goto_1

    .line 329
    .line 330
    :cond_5
    sget-object v0, Lfa/g0;->a:Lfa/h0;

    .line 331
    .line 332
    invoke-virtual {v0}, Lfa/h0;->d()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 337
    .line 338
    .line 339
    move-result v0

    .line 340
    if-nez v0, :cond_6

    .line 341
    .line 342
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 343
    .line 344
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    new-instance v4, Ljava/io/File;

    .line 351
    .line 352
    sget-object v7, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 353
    .line 354
    iget-object v8, v7, Lcom/yunpan/appmanage/util/k;->s:Ljava/lang/String;

    .line 355
    .line 356
    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 360
    .line 361
    .line 362
    move-result-object v4

    .line 363
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 364
    .line 365
    .line 366
    move-result-object v4

    .line 367
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v4

    .line 371
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    iget-object v4, p0, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 378
    .line 379
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 390
    .line 391
    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    .line 393
    .line 394
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    new-instance v2, Ljava/io/File;

    .line 401
    .line 402
    iget-object v4, v7, Lcom/yunpan/appmanage/util/k;->t:Ljava/lang/String;

    .line 403
    .line 404
    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 408
    .line 409
    .line 410
    move-result-object v2

    .line 411
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v2

    .line 415
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    iget-object v2, p0, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 422
    .line 423
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    .line 435
    .line 436
    goto :goto_2

    .line 437
    :catch_0
    nop

    .line 438
    :cond_6
    :goto_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 439
    .line 440
    const/16 v2, 0x13

    .line 441
    .line 442
    if-lt v0, v2, :cond_a

    .line 443
    .line 444
    const/16 v2, 0x15

    .line 445
    .line 446
    if-lt v0, v2, :cond_7

    .line 447
    .line 448
    :try_start_1
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 449
    .line 450
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 451
    .line 452
    iget-object v2, p0, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 453
    .line 454
    invoke-virtual {v0, v2, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 455
    .line 456
    .line 457
    move-result-object v0

    .line 458
    invoke-static {v0}, Ld2/a;->B(Landroid/content/pm/ApplicationInfo;)[Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v2

    .line 462
    if-eqz v2, :cond_7

    .line 463
    .line 464
    invoke-static {v0}, Ld2/a;->B(Landroid/content/pm/ApplicationInfo;)[Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object v0

    .line 468
    array-length v2, v0

    .line 469
    :goto_3
    if-ge v6, v2, :cond_7

    .line 470
    .line 471
    aget-object v3, v0, v6

    .line 472
    .line 473
    new-instance v4, Ljava/lang/StringBuilder;

    .line 474
    .line 475
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 476
    .line 477
    .line 478
    const-string v7, "rm -rf \'"

    .line 479
    .line 480
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    .line 485
    .line 486
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    .line 488
    .line 489
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v3

    .line 493
    invoke-static {v3}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 494
    .line 495
    .line 496
    add-int/lit8 v6, v6, 0x1

    .line 497
    .line 498
    goto :goto_3

    .line 499
    :catch_1
    :cond_7
    :try_start_2
    new-instance v0, Ljava/io/File;

    .line 500
    .line 501
    iget-object v1, p0, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    .line 502
    .line 503
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 504
    .line 505
    .line 506
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 507
    .line 508
    .line 509
    move-result-object v0

    .line 510
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v0

    .line 514
    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v1

    .line 518
    array-length v1, v1

    .line 519
    const/4 v2, 0x3

    .line 520
    if-le v1, v2, :cond_a

    .line 521
    .line 522
    iget-object v1, p0, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 523
    .line 524
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 525
    .line 526
    .line 527
    move-result v1

    .line 528
    if-eqz v1, :cond_8

    .line 529
    .line 530
    invoke-static {v0}, La2/w0;->B(Ljava/lang/String;)Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    goto :goto_4

    .line 534
    :cond_8
    new-instance v1, Ljava/io/File;

    .line 535
    .line 536
    new-instance v2, Ljava/lang/StringBuilder;

    .line 537
    .line 538
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 539
    .line 540
    .line 541
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    .line 543
    .line 544
    const-string v3, "/oat/"

    .line 545
    .line 546
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    .line 548
    .line 549
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 550
    .line 551
    .line 552
    move-result-object v2

    .line 553
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 554
    .line 555
    .line 556
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 557
    .line 558
    .line 559
    move-result v1

    .line 560
    if-eqz v1, :cond_9

    .line 561
    .line 562
    new-instance v1, Ljava/lang/StringBuilder;

    .line 563
    .line 564
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 565
    .line 566
    .line 567
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    .line 569
    .line 570
    const-string v2, "/oat"

    .line 571
    .line 572
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    .line 574
    .line 575
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 576
    .line 577
    .line 578
    move-result-object v1

    .line 579
    invoke-static {v1}, La2/w0;->B(Ljava/lang/String;)Ljava/lang/String;

    .line 580
    .line 581
    .line 582
    :cond_9
    new-instance v1, Ljava/io/File;

    .line 583
    .line 584
    new-instance v2, Ljava/lang/StringBuilder;

    .line 585
    .line 586
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 587
    .line 588
    .line 589
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    .line 591
    .line 592
    const-string v3, "/lib/"

    .line 593
    .line 594
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    .line 596
    .line 597
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 598
    .line 599
    .line 600
    move-result-object v2

    .line 601
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 602
    .line 603
    .line 604
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 605
    .line 606
    .line 607
    move-result v1

    .line 608
    if-eqz v1, :cond_a

    .line 609
    .line 610
    new-instance v1, Ljava/lang/StringBuilder;

    .line 611
    .line 612
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 613
    .line 614
    .line 615
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    .line 617
    .line 618
    const-string v0, "/lib"

    .line 619
    .line 620
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    .line 622
    .line 623
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 624
    .line 625
    .line 626
    move-result-object v0

    .line 627
    invoke-static {v0}, La2/w0;->B(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 628
    .line 629
    .line 630
    :catch_2
    :cond_a
    :goto_4
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 631
    .line 632
    .line 633
    move-result-object v0

    .line 634
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 635
    .line 636
    .line 637
    move-result-object v0

    .line 638
    iget-object p0, p0, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 639
    .line 640
    invoke-interface {v0, p0}, Lcom/yunpan/appmanage/db/AppDao;->deletePackageName(Ljava/lang/String;)V

    .line 641
    .line 642
    .line 643
    return-void

    .line 644
    :cond_b
    new-instance p0, Ljava/lang/Exception;

    .line 645
    .line 646
    const-string v0, "\u5220\u9664\u5931\u8d25"

    .line 647
    .line 648
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 649
    .line 650
    .line 651
    throw p0

    .line 652
    :cond_c
    new-instance p0, Ljava/lang/Exception;

    .line 653
    .line 654
    const-string v0, "\u6ca1\u6709\u6743\u9650"

    .line 655
    .line 656
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 657
    .line 658
    .line 659
    goto :goto_6

    .line 660
    :goto_5
    throw p0

    .line 661
    :goto_6
    goto :goto_5
.end method

.method public static w(Ljava/lang/String;)V
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    new-instance v1, Lfa/a0;

    .line 3
    .line 4
    invoke-direct {v1}, Lfa/a0;-><init>()V

    .line 5
    .line 6
    .line 7
    :try_start_0
    new-instance v2, Ljava/lang/ProcessBuilder;

    .line 8
    .line 9
    const/4 v3, 0x3

    .line 10
    new-array v3, v3, [Ljava/lang/String;

    .line 11
    .line 12
    const-string v4, "/system/bin/sh"

    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    aput-object v4, v3, v5

    .line 16
    .line 17
    const-string v4, "-c"

    .line 18
    .line 19
    aput-object v4, v3, v0

    .line 20
    .line 21
    const/4 v4, 0x2

    .line 22
    aput-object p0, v3, v4

    .line 23
    .line 24
    invoke-direct {v2, v3}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v0}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    new-instance v2, Lfg/b;

    .line 35
    .line 36
    new-instance v3, La2/c0;

    .line 37
    .line 38
    const/16 v4, 0x16

    .line 39
    .line 40
    invoke-direct {v3, p0, v4, v1}, La2/c0;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {v2, v3, v0}, Lfg/b;-><init>(Ljava/lang/Runnable;I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 47
    .line 48
    .line 49
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    const/16 v3, 0x1a

    .line 52
    .line 53
    const-string v4, "\u6267\u884c\u547d\u4ee4\u8d85\u65f6"

    .line 54
    .line 55
    if-lt v0, v3, :cond_1

    .line 56
    .line 57
    :try_start_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 58
    .line 59
    invoke-static {p0, v0}, Leg/a;->t(Ljava/lang/Process;Ljava/util/concurrent/TimeUnit;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_0

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_0
    invoke-static {p0}, Landroidx/media3/exoplayer/video/i;->o(Ljava/lang/Process;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 70
    .line 71
    .line 72
    new-instance p0, Landroid/os/RemoteException;

    .line 73
    .line 74
    invoke-direct {p0, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p0

    .line 78
    :catch_0
    move-exception p0

    .line 79
    goto :goto_2

    .line 80
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 81
    .line 82
    .line 83
    move-result-wide v5

    .line 84
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_2

    .line 89
    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 91
    .line 92
    .line 93
    move-result-wide v7

    .line 94
    sub-long/2addr v7, v5

    .line 95
    const-wide/16 v9, 0x2710

    .line 96
    .line 97
    cmp-long v0, v7, v9

    .line 98
    .line 99
    if-gez v0, :cond_2

    .line 100
    .line 101
    const-wide/16 v7, 0x14d

    .line 102
    .line 103
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-nez v0, :cond_3

    .line 112
    .line 113
    :goto_1
    const-wide/16 v3, 0x3e8

    .line 114
    .line 115
    invoke-virtual {v2, v3, v4}, Ljava/lang/Thread;->join(J)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Ljava/lang/Process;->exitValue()I

    .line 119
    .line 120
    .line 121
    move-result p0

    .line 122
    iput p0, v1, Lfa/a0;->a:I

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V

    .line 129
    .line 130
    .line 131
    new-instance p0, Landroid/os/RemoteException;

    .line 132
    .line 133
    invoke-direct {p0, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 137
    :goto_2
    iget-object v0, v1, Lfa/a0;->b:Ljava/util/List;

    .line 138
    .line 139
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    :goto_3
    return-void
.end method

.method public static x(Ljava/lang/String;Z)V
    .locals 7

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x1

    .line 15
    if-le v1, v2, :cond_1

    .line 16
    .line 17
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->d(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 37
    .line 38
    .line 39
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    return-void

    .line 43
    :catch_0
    :cond_1
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 44
    .line 45
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 46
    .line 47
    iget v1, v0, Lcom/yunpan/appmanage/util/k;->n:I

    .line 48
    .line 49
    const-string v2, "touch \""

    .line 50
    .line 51
    const-string v3, "mkdir \""

    .line 52
    .line 53
    const-string v4, "\""

    .line 54
    .line 55
    if-lez v1, :cond_3

    .line 56
    .line 57
    sget-object v1, Lfa/b0;->a:La2/w0;

    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    invoke-static {}, La2/w0;->K()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_3

    .line 67
    .line 68
    sget-object v1, Lfa/g0;->a:Lfa/h0;

    .line 69
    .line 70
    invoke-virtual {v1}, Lfa/h0;->d()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    if-eqz v5, :cond_3

    .line 79
    .line 80
    new-instance v5, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    iget-object v6, v0, Lcom/yunpan/appmanage/util/k;->o:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Lfa/h0;->d()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    new-instance v5, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    if-eqz p1, :cond_2

    .line 115
    .line 116
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_2
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    :goto_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-static {v1}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-virtual {v1}, Lfa/a0;->b()Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-eqz v1, :cond_3

    .line 142
    .line 143
    return-void

    .line 144
    :cond_3
    iget-object v1, v0, Lcom/yunpan/appmanage/util/k;->O:Ljava/lang/String;

    .line 145
    .line 146
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    if-nez v1, :cond_5

    .line 151
    .line 152
    sget-object v1, Lfa/g0;->a:Lfa/h0;

    .line 153
    .line 154
    invoke-virtual {v1}, Lfa/h0;->d()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    if-eqz v5, :cond_4

    .line 163
    .line 164
    new-instance v5, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .line 168
    .line 169
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->O:Ljava/lang/String;

    .line 170
    .line 171
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1}, Lfa/h0;->d()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    goto :goto_1

    .line 194
    :cond_4
    iget-object v1, v0, Lcom/yunpan/appmanage/util/k;->M:Ljava/lang/String;

    .line 195
    .line 196
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    if-eqz v1, :cond_5

    .line 201
    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    .line 206
    .line 207
    iget-object v5, v0, Lcom/yunpan/appmanage/util/k;->O:Ljava/lang/String;

    .line 208
    .line 209
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->M:Ljava/lang/String;

    .line 213
    .line 214
    invoke-static {v0, p0, v1}, Lta/q;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p0

    .line 218
    :cond_5
    :goto_1
    if-eqz p1, :cond_6

    .line 219
    .line 220
    invoke-static {v3, p0, v4}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    goto :goto_2

    .line 225
    :cond_6
    invoke-static {v2, p0, v4}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    :goto_2
    invoke-static {p1}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    invoke-virtual {p1}, Lfa/a0;->b()Z

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    if-eqz v0, :cond_8

    .line 238
    .line 239
    const-string p1, "/data/data/"

    .line 240
    .line 241
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 242
    .line 243
    .line 244
    move-result p1

    .line 245
    if-eqz p1, :cond_7

    .line 246
    .line 247
    new-instance p1, Ljava/lang/StringBuilder;

    .line 248
    .line 249
    const-string v0, "chown sdcard_rw:sdcard_rw \""

    .line 250
    .line 251
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    invoke-static {p1}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 265
    .line 266
    .line 267
    new-instance p1, Ljava/lang/StringBuilder;

    .line 268
    .line 269
    const-string v0, "chmod -R 777 \""

    .line 270
    .line 271
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object p0

    .line 284
    invoke-static {p0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 285
    .line 286
    .line 287
    :cond_7
    return-void

    .line 288
    :cond_8
    invoke-virtual {p1}, Lfa/a0;->a()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object p0

    .line 292
    const-string p1, "No space left on device"

    .line 293
    .line 294
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 295
    .line 296
    .line 297
    move-result p1

    .line 298
    if-eqz p1, :cond_9

    .line 299
    .line 300
    const-string p0, "\u7a7a\u95f4\u5b58\u50a8\u4e0d\u8db3"

    .line 301
    .line 302
    goto :goto_4

    .line 303
    :cond_9
    const-string p1, "Read-only"

    .line 304
    .line 305
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 306
    .line 307
    .line 308
    move-result p1

    .line 309
    const-string v0, "\u65e0\u6743\u9650\u5728\u6b64\u76ee\u5f55\u65b0\u5efa"

    .line 310
    .line 311
    if-eqz p1, :cond_a

    .line 312
    .line 313
    :goto_3
    move-object p0, v0

    .line 314
    goto :goto_4

    .line 315
    :cond_a
    const-string p1, "File exists"

    .line 316
    .line 317
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 318
    .line 319
    .line 320
    move-result p1

    .line 321
    if-eqz p1, :cond_b

    .line 322
    .line 323
    const-string p0, "\u5df2\u5b58\u5728"

    .line 324
    .line 325
    goto :goto_4

    .line 326
    :cond_b
    const-string p1, "File name too long"

    .line 327
    .line 328
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 329
    .line 330
    .line 331
    move-result p1

    .line 332
    if-eqz p1, :cond_c

    .line 333
    .line 334
    const-string p0, "\u540d\u79f0\u8fc7\u957f"

    .line 335
    .line 336
    goto :goto_4

    .line 337
    :cond_c
    const-string p1, "Permission"

    .line 338
    .line 339
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 340
    .line 341
    .line 342
    move-result p1

    .line 343
    if-eqz p1, :cond_d

    .line 344
    .line 345
    goto :goto_3

    .line 346
    :cond_d
    :goto_4
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 347
    .line 348
    .line 349
    move-result p1

    .line 350
    if-eqz p1, :cond_e

    .line 351
    .line 352
    const-string p0, "\u521b\u5efa\u5931\u8d25"

    .line 353
    .line 354
    :cond_e
    new-instance p1, Ljava/lang/Exception;

    .line 355
    .line 356
    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    goto :goto_6

    .line 360
    :goto_5
    throw p1

    .line 361
    :goto_6
    goto :goto_5
.end method

.method public static y(Ljava/lang/String;Lx9/w3;)V
    .locals 10

    .line 1
    iget-object v0, p1, Lx9/w3;->b:Ljava/lang/String;

    .line 2
    .line 3
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 4
    .line 5
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 6
    .line 7
    iget-object v2, v1, Lcom/yunpan/appmanage/util/k;->O:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_3

    .line 14
    .line 15
    sget-object v2, Lfa/g0;->a:Lfa/h0;

    .line 16
    .line 17
    invoke-virtual {v2}, Lfa/h0;->d()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    iget-object v4, v1, Lcom/yunpan/appmanage/util/k;->O:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Lfa/h0;->d()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    iget-object v3, v1, Lcom/yunpan/appmanage/util/k;->M:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_1

    .line 64
    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    iget-object v4, v1, Lcom/yunpan/appmanage/util/k;->O:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget-object v4, v1, Lcom/yunpan/appmanage/util/k;->M:Ljava/lang/String;

    .line 76
    .line 77
    invoke-static {v4, v0, v3}, Lta/q;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    :cond_1
    :goto_0
    invoke-virtual {v2}, Lfa/h0;->d()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-eqz v3, :cond_2

    .line 90
    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    iget-object v4, v1, Lcom/yunpan/appmanage/util/k;->O:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2}, Lfa/h0;->d()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    goto :goto_1

    .line 121
    :cond_2
    iget-object v2, v1, Lcom/yunpan/appmanage/util/k;->M:Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    if-eqz v2, :cond_3

    .line 128
    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    iget-object v3, v1, Lcom/yunpan/appmanage/util/k;->O:Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    iget-object v3, v1, Lcom/yunpan/appmanage/util/k;->M:Ljava/lang/String;

    .line 140
    .line 141
    invoke-static {v3, p0, v2}, Lta/q;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    goto :goto_1

    .line 146
    :cond_3
    move-object v2, p0

    .line 147
    :goto_1
    const-string v3, "/"

    .line 148
    .line 149
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 150
    .line 151
    .line 152
    move-result v4

    .line 153
    if-nez v4, :cond_4

    .line 154
    .line 155
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    :cond_4
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 160
    .line 161
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    sget-object v3, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 165
    .line 166
    iget-object v3, v3, Lcom/yunpan/appmanage/base/AppStart;->a:Lv9/a;

    .line 167
    .line 168
    const-wide/16 v4, 0x29a

    .line 169
    .line 170
    invoke-virtual {v3, v4, v5}, Lv9/a;->g(J)Lv9/a;

    .line 171
    .line 172
    .line 173
    new-instance v3, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    const-string v4, "\\cp -R \""

    .line 176
    .line 177
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string v5, "\" \""

    .line 184
    .line 185
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    const-string v6, "\""

    .line 192
    .line 193
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    invoke-static {v3}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    invoke-virtual {v3}, Lfa/a0;->b()Z

    .line 205
    .line 206
    .line 207
    move-result v7

    .line 208
    if-nez v7, :cond_8

    .line 209
    .line 210
    invoke-static {}, La2/w0;->K()Z

    .line 211
    .line 212
    .line 213
    move-result v7

    .line 214
    if-eqz v7, :cond_8

    .line 215
    .line 216
    iget-object v7, p1, Lx9/w3;->b:Ljava/lang/String;

    .line 217
    .line 218
    sget-object v8, Lfa/g0;->a:Lfa/h0;

    .line 219
    .line 220
    invoke-virtual {v8}, Lfa/h0;->d()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v9

    .line 224
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 225
    .line 226
    .line 227
    move-result v7

    .line 228
    if-nez v7, :cond_5

    .line 229
    .line 230
    invoke-virtual {v8}, Lfa/h0;->d()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v7

    .line 234
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 235
    .line 236
    .line 237
    move-result v7

    .line 238
    if-eqz v7, :cond_8

    .line 239
    .line 240
    :cond_5
    iget-object v3, p1, Lx9/w3;->b:Ljava/lang/String;

    .line 241
    .line 242
    invoke-virtual {v8}, Lfa/h0;->d()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v7

    .line 246
    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 247
    .line 248
    .line 249
    move-result v3

    .line 250
    if-eqz v3, :cond_6

    .line 251
    .line 252
    new-instance v3, Ljava/lang/StringBuilder;

    .line 253
    .line 254
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    .line 256
    .line 257
    iget-object v7, v1, Lcom/yunpan/appmanage/util/k;->o:Ljava/lang/String;

    .line 258
    .line 259
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v8}, Lfa/h0;->d()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v7

    .line 266
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 267
    .line 268
    .line 269
    move-result v7

    .line 270
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    :cond_6
    invoke-virtual {v8}, Lfa/h0;->d()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v3

    .line 285
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 286
    .line 287
    .line 288
    move-result v3

    .line 289
    if-eqz v3, :cond_7

    .line 290
    .line 291
    new-instance v2, Ljava/lang/StringBuilder;

    .line 292
    .line 293
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 294
    .line 295
    .line 296
    iget-object v3, v1, Lcom/yunpan/appmanage/util/k;->o:Ljava/lang/String;

    .line 297
    .line 298
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v8}, Lfa/h0;->d()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v3

    .line 305
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 306
    .line 307
    .line 308
    move-result v3

    .line 309
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object p0

    .line 313
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v2

    .line 320
    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    .line 321
    .line 322
    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object p0

    .line 341
    invoke-static {p0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 342
    .line 343
    .line 344
    move-result-object v3

    .line 345
    :cond_8
    sget-object p0, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 346
    .line 347
    iget-object p0, p0, Lcom/yunpan/appmanage/base/AppStart;->a:Lv9/a;

    .line 348
    .line 349
    const-wide/16 v4, 0x28

    .line 350
    .line 351
    invoke-virtual {p0, v4, v5}, Lv9/a;->g(J)Lv9/a;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v3}, Lfa/a0;->b()Z

    .line 355
    .line 356
    .line 357
    move-result p0

    .line 358
    if-eqz p0, :cond_e

    .line 359
    .line 360
    iget-boolean p0, v1, Lcom/yunpan/appmanage/util/k;->m:Z

    .line 361
    .line 362
    if-eqz p0, :cond_d

    .line 363
    .line 364
    const-string p0, "/data/data/"

    .line 365
    .line 366
    invoke-virtual {v2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 367
    .line 368
    .line 369
    move-result p0

    .line 370
    if-nez p0, :cond_b

    .line 371
    .line 372
    const-string p0, "/data/user/"

    .line 373
    .line 374
    invoke-virtual {v2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 375
    .line 376
    .line 377
    move-result p0

    .line 378
    if-nez p0, :cond_b

    .line 379
    .line 380
    const-string p0, "/data/user_de/"

    .line 381
    .line 382
    invoke-virtual {v2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 383
    .line 384
    .line 385
    move-result p0

    .line 386
    if-eqz p0, :cond_9

    .line 387
    .line 388
    goto :goto_2

    .line 389
    :cond_9
    iget-boolean p0, p1, Lx9/w3;->c:Z

    .line 390
    .line 391
    if-nez p0, :cond_d

    .line 392
    .line 393
    iget-object p0, p1, Lx9/w3;->a:Ljava/lang/String;

    .line 394
    .line 395
    const-string v0, "/oat/"

    .line 396
    .line 397
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 398
    .line 399
    .line 400
    move-result p0

    .line 401
    if-eqz p0, :cond_a

    .line 402
    .line 403
    new-instance p0, Ljava/lang/StringBuilder;

    .line 404
    .line 405
    const-string v0, "chmod 644 \""

    .line 406
    .line 407
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    iget-object p1, p1, Lx9/w3;->a:Ljava/lang/String;

    .line 414
    .line 415
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object p0

    .line 425
    invoke-static {p0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 426
    .line 427
    .line 428
    goto :goto_3

    .line 429
    :cond_a
    new-instance p0, Ljava/lang/StringBuilder;

    .line 430
    .line 431
    const-string v0, "chmod 755 \""

    .line 432
    .line 433
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    .line 438
    .line 439
    iget-object p1, p1, Lx9/w3;->a:Ljava/lang/String;

    .line 440
    .line 441
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    .line 443
    .line 444
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    .line 446
    .line 447
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object p0

    .line 451
    invoke-static {p0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 452
    .line 453
    .line 454
    goto :goto_3

    .line 455
    :cond_b
    :goto_2
    iget-boolean p0, p1, Lx9/w3;->c:Z

    .line 456
    .line 457
    const-string v0, "chown -R sdcard_rw:sdcard_rw \""

    .line 458
    .line 459
    if-eqz p0, :cond_c

    .line 460
    .line 461
    new-instance p0, Ljava/lang/StringBuilder;

    .line 462
    .line 463
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    .line 468
    .line 469
    iget-object p1, p1, Lx9/w3;->a:Ljava/lang/String;

    .line 470
    .line 471
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    const-string p1, "/\""

    .line 475
    .line 476
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object p0

    .line 483
    invoke-static {p0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 484
    .line 485
    .line 486
    goto :goto_3

    .line 487
    :cond_c
    new-instance p0, Ljava/lang/StringBuilder;

    .line 488
    .line 489
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    .line 494
    .line 495
    iget-object p1, p1, Lx9/w3;->a:Ljava/lang/String;

    .line 496
    .line 497
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    .line 499
    .line 500
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    .line 502
    .line 503
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object p0

    .line 507
    invoke-static {p0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 508
    .line 509
    .line 510
    :cond_d
    :goto_3
    return-void

    .line 511
    :cond_e
    invoke-virtual {v3}, Lfa/a0;->a()Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object p0

    .line 515
    const-string p1, "No space left on device"

    .line 516
    .line 517
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 518
    .line 519
    .line 520
    move-result p1

    .line 521
    if-eqz p1, :cond_f

    .line 522
    .line 523
    const-string p0, "\u7a7a\u95f4\u5b58\u50a8\u4e0d\u8db3"

    .line 524
    .line 525
    goto :goto_5

    .line 526
    :cond_f
    const-string p1, "permission"

    .line 527
    .line 528
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 529
    .line 530
    .line 531
    move-result p1

    .line 532
    const-string v0, "\u65e0\u6743\u9650\u5199\u5165\u6587\u4ef6"

    .line 533
    .line 534
    if-nez p1, :cond_11

    .line 535
    .line 536
    const-string p1, "Permission denied"

    .line 537
    .line 538
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 539
    .line 540
    .line 541
    move-result p1

    .line 542
    if-eqz p1, :cond_10

    .line 543
    .line 544
    goto :goto_4

    .line 545
    :cond_10
    const-string p1, "Read-only file system"

    .line 546
    .line 547
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 548
    .line 549
    .line 550
    move-result p1

    .line 551
    if-eqz p1, :cond_12

    .line 552
    .line 553
    :cond_11
    :goto_4
    move-object p0, v0

    .line 554
    goto :goto_5

    .line 555
    :cond_12
    const-string p1, "such file or directory"

    .line 556
    .line 557
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 558
    .line 559
    .line 560
    move-result p1

    .line 561
    if-eqz p1, :cond_13

    .line 562
    .line 563
    const-string p0, "\u6587\u4ef6\u6216\u76ee\u5f55\u4e0d\u5b58\u5728"

    .line 564
    .line 565
    :cond_13
    :goto_5
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 566
    .line 567
    .line 568
    move-result p1

    .line 569
    if-eqz p1, :cond_14

    .line 570
    .line 571
    const-string p0, "\u62f7\u8d1d\u5931\u8d25"

    .line 572
    .line 573
    :cond_14
    new-instance p1, Ljava/lang/Exception;

    .line 574
    .line 575
    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 576
    .line 577
    .line 578
    throw p1
.end method

.method public static z(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 2
    .line 3
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/yunpan/appmanage/util/k;->O:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_4

    .line 12
    .line 13
    sget-object v1, Lfa/g0;->a:Lfa/h0;

    .line 14
    .line 15
    invoke-virtual {v1}, Lfa/h0;->d()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    iget-object v3, v0, Lcom/yunpan/appmanage/util/k;->O:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Lfa/h0;->d()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    iget-object v2, v0, Lcom/yunpan/appmanage/util/k;->M:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_1

    .line 62
    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    iget-object v3, v0, Lcom/yunpan/appmanage/util/k;->O:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget-object v3, v0, Lcom/yunpan/appmanage/util/k;->M:Ljava/lang/String;

    .line 74
    .line 75
    invoke-static {v3, p0, v2}, Lta/q;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    goto :goto_0

    .line 80
    :cond_1
    move-object v2, p0

    .line 81
    :goto_0
    invoke-virtual {v1}, Lfa/h0;->d()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-eqz v3, :cond_2

    .line 90
    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    iget-object v4, v0, Lcom/yunpan/appmanage/util/k;->O:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1}, Lfa/h0;->d()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    goto :goto_2

    .line 121
    :cond_2
    iget-object v1, v0, Lcom/yunpan/appmanage/util/k;->M:Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-eqz v1, :cond_3

    .line 128
    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    iget-object v3, v0, Lcom/yunpan/appmanage/util/k;->O:Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    iget-object v3, v0, Lcom/yunpan/appmanage/util/k;->M:Ljava/lang/String;

    .line 140
    .line 141
    invoke-static {v3, p1, v1}, Lta/q;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    goto :goto_2

    .line 146
    :cond_3
    :goto_1
    move-object v1, p1

    .line 147
    goto :goto_2

    .line 148
    :cond_4
    move-object v2, p0

    .line 149
    goto :goto_1

    .line 150
    :goto_2
    sget-object v3, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 151
    .line 152
    iget-object v3, v3, Lcom/yunpan/appmanage/base/AppStart;->a:Lv9/a;

    .line 153
    .line 154
    const-wide/16 v4, 0x29a

    .line 155
    .line 156
    invoke-virtual {v3, v4, v5}, Lv9/a;->g(J)Lv9/a;

    .line 157
    .line 158
    .line 159
    new-instance v3, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    const-string v4, "\\cp -R \""

    .line 162
    .line 163
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const-string v5, "\" \""

    .line 170
    .line 171
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const-string v6, "\""

    .line 178
    .line 179
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    invoke-static {v3}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    invoke-virtual {v3}, Lfa/a0;->b()Z

    .line 191
    .line 192
    .line 193
    move-result v7

    .line 194
    if-nez v7, :cond_8

    .line 195
    .line 196
    invoke-static {}, La2/w0;->K()Z

    .line 197
    .line 198
    .line 199
    move-result v7

    .line 200
    if-eqz v7, :cond_8

    .line 201
    .line 202
    sget-object v7, Lfa/g0;->a:Lfa/h0;

    .line 203
    .line 204
    invoke-virtual {v7}, Lfa/h0;->d()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v8

    .line 208
    invoke-virtual {p0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 209
    .line 210
    .line 211
    move-result v8

    .line 212
    if-nez v8, :cond_5

    .line 213
    .line 214
    invoke-virtual {v7}, Lfa/h0;->d()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v8

    .line 218
    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 219
    .line 220
    .line 221
    move-result v8

    .line 222
    if-eqz v8, :cond_8

    .line 223
    .line 224
    :cond_5
    invoke-virtual {v7}, Lfa/h0;->d()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v3

    .line 228
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 229
    .line 230
    .line 231
    move-result p0

    .line 232
    if-eqz p0, :cond_6

    .line 233
    .line 234
    new-instance p0, Ljava/lang/StringBuilder;

    .line 235
    .line 236
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    .line 238
    .line 239
    iget-object v3, v0, Lcom/yunpan/appmanage/util/k;->o:Ljava/lang/String;

    .line 240
    .line 241
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v7}, Lfa/h0;->d()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 249
    .line 250
    .line 251
    move-result v3

    .line 252
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    :cond_6
    invoke-virtual {v7}, Lfa/h0;->d()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object p0

    .line 267
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 268
    .line 269
    .line 270
    move-result p0

    .line 271
    if-eqz p0, :cond_7

    .line 272
    .line 273
    new-instance p0, Ljava/lang/StringBuilder;

    .line 274
    .line 275
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 276
    .line 277
    .line 278
    iget-object v3, v0, Lcom/yunpan/appmanage/util/k;->o:Ljava/lang/String;

    .line 279
    .line 280
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v7}, Lfa/h0;->d()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v3

    .line 287
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 288
    .line 289
    .line 290
    move-result v3

    .line 291
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object p1

    .line 302
    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    .line 303
    .line 304
    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object p0

    .line 323
    invoke-static {p0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 324
    .line 325
    .line 326
    move-result-object v3

    .line 327
    :cond_8
    sget-object p0, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 328
    .line 329
    iget-object p0, p0, Lcom/yunpan/appmanage/base/AppStart;->a:Lv9/a;

    .line 330
    .line 331
    const-wide/16 v4, 0x28

    .line 332
    .line 333
    invoke-virtual {p0, v4, v5}, Lv9/a;->g(J)Lv9/a;

    .line 334
    .line 335
    .line 336
    iget p0, v3, Lfa/a0;->a:I

    .line 337
    .line 338
    if-nez p0, :cond_c

    .line 339
    .line 340
    iget-boolean p0, v0, Lcom/yunpan/appmanage/util/k;->m:Z

    .line 341
    .line 342
    if-eqz p0, :cond_b

    .line 343
    .line 344
    const-string p0, "/data/data/"

    .line 345
    .line 346
    invoke-virtual {v1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 347
    .line 348
    .line 349
    move-result p0

    .line 350
    if-nez p0, :cond_a

    .line 351
    .line 352
    const-string p0, "/data/user/"

    .line 353
    .line 354
    invoke-virtual {v1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 355
    .line 356
    .line 357
    move-result p0

    .line 358
    if-nez p0, :cond_a

    .line 359
    .line 360
    const-string p0, "/data/user_de/"

    .line 361
    .line 362
    invoke-virtual {v1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 363
    .line 364
    .line 365
    move-result p0

    .line 366
    if-eqz p0, :cond_9

    .line 367
    .line 368
    goto :goto_3

    .line 369
    :cond_9
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object p0

    .line 373
    const-string p1, ".apk"

    .line 374
    .line 375
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 376
    .line 377
    .line 378
    move-result p0

    .line 379
    if-eqz p0, :cond_b

    .line 380
    .line 381
    new-instance p0, Ljava/lang/StringBuilder;

    .line 382
    .line 383
    const-string p1, "chmod 644 \""

    .line 384
    .line 385
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object p0

    .line 398
    invoke-static {p0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 399
    .line 400
    .line 401
    goto :goto_4

    .line 402
    :cond_a
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 403
    .line 404
    const-string p1, "chown sdcard_rw:sdcard_rw \""

    .line 405
    .line 406
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object p0

    .line 419
    invoke-static {p0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 420
    .line 421
    .line 422
    :cond_b
    :goto_4
    return-void

    .line 423
    :cond_c
    invoke-virtual {v3}, Lfa/a0;->a()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object p0

    .line 427
    const-string p1, "No space left on device"

    .line 428
    .line 429
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 430
    .line 431
    .line 432
    move-result p1

    .line 433
    if-eqz p1, :cond_d

    .line 434
    .line 435
    const-string p0, "\u7a7a\u95f4\u5b58\u50a8\u4e0d\u8db3"

    .line 436
    .line 437
    goto :goto_6

    .line 438
    :cond_d
    const-string p1, "permission"

    .line 439
    .line 440
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 441
    .line 442
    .line 443
    move-result p1

    .line 444
    if-nez p1, :cond_10

    .line 445
    .line 446
    const-string p1, "Permission denied"

    .line 447
    .line 448
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 449
    .line 450
    .line 451
    move-result p1

    .line 452
    if-eqz p1, :cond_e

    .line 453
    .line 454
    goto :goto_5

    .line 455
    :cond_e
    const-string p1, "Read-only file system"

    .line 456
    .line 457
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 458
    .line 459
    .line 460
    move-result p1

    .line 461
    if-eqz p1, :cond_f

    .line 462
    .line 463
    const-string p0, "\u6b64\u76ee\u5f55\u65e0\u6743\u9650\u5199\u5165\u6587\u4ef6"

    .line 464
    .line 465
    goto :goto_6

    .line 466
    :cond_f
    const-string p1, "such file or directory"

    .line 467
    .line 468
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 469
    .line 470
    .line 471
    move-result p1

    .line 472
    if-eqz p1, :cond_11

    .line 473
    .line 474
    const-string p0, "\u6587\u4ef6\u6216\u76ee\u5f55\u4e0d\u5b58\u5728"

    .line 475
    .line 476
    goto :goto_6

    .line 477
    :cond_10
    :goto_5
    const-string p0, "\u65e0\u6743\u9650\u5199\u5165\u6587\u4ef6\u5230\u6b64\u76ee\u5f55"

    .line 478
    .line 479
    :cond_11
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 480
    .line 481
    .line 482
    move-result p1

    .line 483
    if-eqz p1, :cond_12

    .line 484
    .line 485
    const-string p0, "\u62f7\u8d1d\u5931\u8d25"

    .line 486
    .line 487
    :cond_12
    new-instance p1, Ljava/lang/Exception;

    .line 488
    .line 489
    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    goto :goto_8

    .line 493
    :goto_7
    throw p1

    .line 494
    :goto_8
    goto :goto_7
.end method


# virtual methods
.method public D()V
    .locals 3

    .line 1
    iget-object v0, p0, La2/w0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, La2/w0;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/lang/String;

    .line 8
    .line 9
    iget-object v2, p0, La2/w0;->e:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Lcom/yunpan/appmanage/ui/ActivityAdb;

    .line 12
    .line 13
    invoke-static {v2, v0, v1}, Lcom/yunpan/appmanage/ui/ActivityAdb;->y(Lcom/yunpan/appmanage/ui/ActivityAdb;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public E()V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v3, 0x1

    .line 5
    iget-object v4, v0, La2/w0;->e:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v4, Ls4/i;

    .line 8
    .line 9
    if-eqz v4, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v4, v0, La2/w0;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v4, Ls4/r;

    .line 15
    .line 16
    iget v5, v4, Ls4/r;->d:I

    .line 17
    .line 18
    if-gez v5, :cond_51

    .line 19
    .line 20
    iget-object v5, v4, Ls4/r;->c:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    new-array v6, v5, [Ls4/j;

    .line 27
    .line 28
    const/4 v7, 0x0

    .line 29
    :goto_0
    if-ge v7, v5, :cond_1

    .line 30
    .line 31
    iget-object v8, v4, Ls4/r;->c:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v8

    .line 37
    check-cast v8, Ls4/h;

    .line 38
    .line 39
    iget-object v8, v8, Ls4/h;->b:Ls4/j;

    .line 40
    .line 41
    aput-object v8, v6, v7

    .line 42
    .line 43
    add-int/2addr v7, v3

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {v4, v6}, Ls4/r;->f([Ls4/j;)Z

    .line 46
    .line 47
    .line 48
    :cond_2
    iget v5, v4, Ls4/r;->d:I

    .line 49
    .line 50
    iget v7, v4, Ls4/r;->b:I

    .line 51
    .line 52
    add-int/2addr v5, v7

    .line 53
    iget v8, v4, Ls4/r;->e:I

    .line 54
    .line 55
    add-int/2addr v5, v8

    .line 56
    iget v8, v4, Ls4/r;->f:I

    .line 57
    .line 58
    sub-int/2addr v5, v8

    .line 59
    iget-object v9, v4, Ls4/r;->c:Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object v9

    .line 65
    const/4 v10, 0x0

    .line 66
    const/4 v11, 0x0

    .line 67
    const/4 v12, 0x0

    .line 68
    const/4 v13, 0x0

    .line 69
    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    .line 71
    .line 72
    move-result v14

    .line 73
    if-eqz v14, :cond_9

    .line 74
    .line 75
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v14

    .line 79
    check-cast v14, Ls4/h;

    .line 80
    .line 81
    iget-object v14, v14, Ls4/h;->d:Lw4/l;

    .line 82
    .line 83
    const/4 v15, 0x0

    .line 84
    :goto_1
    iget-object v2, v14, Lb5/c;->b:[Ljava/lang/Object;

    .line 85
    .line 86
    array-length v2, v2

    .line 87
    if-ge v15, v2, :cond_3

    .line 88
    .line 89
    invoke-virtual {v14, v15}, Lb5/c;->d(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    check-cast v2, Lw4/k;

    .line 94
    .line 95
    invoke-virtual {v2}, Lw4/k;->e()Z

    .line 96
    .line 97
    .line 98
    move-result v16

    .line 99
    if-eqz v16, :cond_8

    .line 100
    .line 101
    iget v2, v2, Lw4/k;->a:I

    .line 102
    .line 103
    if-lt v2, v5, :cond_4

    .line 104
    .line 105
    const/16 v16, 0x1

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_4
    const/16 v16, 0x0

    .line 109
    .line 110
    :goto_2
    and-int/2addr v2, v3

    .line 111
    if-nez v2, :cond_6

    .line 112
    .line 113
    if-eqz v16, :cond_5

    .line 114
    .line 115
    add-int/2addr v11, v3

    .line 116
    goto :goto_3

    .line 117
    :cond_5
    add-int/2addr v13, v3

    .line 118
    goto :goto_3

    .line 119
    :cond_6
    if-eqz v16, :cond_7

    .line 120
    .line 121
    add-int/2addr v10, v3

    .line 122
    goto :goto_3

    .line 123
    :cond_7
    add-int/2addr v12, v3

    .line 124
    :cond_8
    :goto_3
    add-int/2addr v15, v3

    .line 125
    goto :goto_1

    .line 126
    :cond_9
    if-le v10, v11, :cond_a

    .line 127
    .line 128
    if-le v12, v13, :cond_a

    .line 129
    .line 130
    invoke-virtual {v4}, Ls4/r;->c()V

    .line 131
    .line 132
    .line 133
    goto :goto_4

    .line 134
    :cond_a
    if-le v10, v11, :cond_b

    .line 135
    .line 136
    invoke-virtual {v4}, Ls4/r;->b()V

    .line 137
    .line 138
    .line 139
    goto :goto_4

    .line 140
    :cond_b
    if-le v12, v13, :cond_d

    .line 141
    .line 142
    invoke-virtual {v4}, Ls4/r;->c()V

    .line 143
    .line 144
    .line 145
    if-eqz v8, :cond_c

    .line 146
    .line 147
    if-le v11, v10, :cond_c

    .line 148
    .line 149
    invoke-virtual {v4}, Ls4/r;->b()V

    .line 150
    .line 151
    .line 152
    :cond_c
    :goto_4
    invoke-virtual {v4, v6}, Ls4/r;->f([Ls4/j;)Z

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    if-nez v2, :cond_2

    .line 157
    .line 158
    :cond_d
    iget v2, v4, Ls4/r;->d:I

    .line 159
    .line 160
    if-nez v2, :cond_f

    .line 161
    .line 162
    iget-object v2, v4, Ls4/r;->c:Ljava/util/ArrayList;

    .line 163
    .line 164
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    const/4 v5, 0x0

    .line 169
    :goto_5
    if-ge v5, v2, :cond_21

    .line 170
    .line 171
    iget-object v8, v4, Ls4/r;->c:Ljava/util/ArrayList;

    .line 172
    .line 173
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v8

    .line 177
    check-cast v8, Ls4/h;

    .line 178
    .line 179
    iget-object v9, v8, Ls4/h;->b:Ls4/j;

    .line 180
    .line 181
    aget-object v10, v6, v5

    .line 182
    .line 183
    if-eq v9, v10, :cond_e

    .line 184
    .line 185
    iget-object v9, v4, Ls4/r;->c:Ljava/util/ArrayList;

    .line 186
    .line 187
    invoke-virtual {v8, v10}, Ls4/h;->i(Ls4/j;)Ls4/h;

    .line 188
    .line 189
    .line 190
    move-result-object v8

    .line 191
    invoke-virtual {v9, v5, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    :cond_e
    add-int/2addr v5, v3

    .line 195
    goto :goto_5

    .line 196
    :cond_f
    iget-object v2, v4, Ls4/r;->c:Ljava/util/ArrayList;

    .line 197
    .line 198
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    new-instance v5, Ljava/util/ArrayList;

    .line 203
    .line 204
    mul-int/lit8 v8, v2, 0x2

    .line 205
    .line 206
    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 207
    .line 208
    .line 209
    new-instance v8, Ljava/util/ArrayList;

    .line 210
    .line 211
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .line 213
    .line 214
    const/4 v9, 0x0

    .line 215
    :goto_6
    if-ge v9, v2, :cond_20

    .line 216
    .line 217
    iget-object v10, v4, Ls4/r;->c:Ljava/util/ArrayList;

    .line 218
    .line 219
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v10

    .line 223
    check-cast v10, Ls4/h;

    .line 224
    .line 225
    iget-object v11, v10, Ls4/h;->b:Ls4/j;

    .line 226
    .line 227
    aget-object v12, v6, v9

    .line 228
    .line 229
    if-eqz v12, :cond_10

    .line 230
    .line 231
    move/from16 v17, v2

    .line 232
    .line 233
    move-object/from16 v18, v6

    .line 234
    .line 235
    const/4 v0, 0x0

    .line 236
    const/4 v1, 0x0

    .line 237
    goto/16 :goto_e

    .line 238
    .line 239
    :cond_10
    invoke-virtual {v4, v10}, Ls4/r;->d(Ls4/h;)Ls4/j;

    .line 240
    .line 241
    .line 242
    move-result-object v12

    .line 243
    iget-object v13, v12, Ls4/j;->d:Ld/b;

    .line 244
    .line 245
    invoke-virtual {v13, v10}, Ld/b;->k(Ls4/h;)Ljava/util/BitSet;

    .line 246
    .line 247
    .line 248
    move-result-object v13

    .line 249
    invoke-virtual {v13, v1}, Ljava/util/BitSet;->get(I)Z

    .line 250
    .line 251
    .line 252
    move-result v14

    .line 253
    iget-object v15, v10, Ls4/h;->b:Ls4/j;

    .line 254
    .line 255
    iget-boolean v3, v15, Ls4/j;->e:Z

    .line 256
    .line 257
    if-eqz v3, :cond_11

    .line 258
    .line 259
    invoke-virtual {v13, v1}, Ljava/util/BitSet;->set(I)V

    .line 260
    .line 261
    .line 262
    :cond_11
    iget-object v3, v10, Ls4/h;->d:Lw4/l;

    .line 263
    .line 264
    iget-object v1, v3, Lb5/c;->b:[Ljava/lang/Object;

    .line 265
    .line 266
    move/from16 v17, v2

    .line 267
    .line 268
    array-length v2, v1

    .line 269
    invoke-virtual {v13}, Ljava/util/BitSet;->cardinality()I

    .line 270
    .line 271
    .line 272
    move-result v18

    .line 273
    sub-int v2, v2, v18

    .line 274
    .line 275
    if-nez v2, :cond_12

    .line 276
    .line 277
    sget-object v1, Lw4/l;->c:Lw4/l;

    .line 278
    .line 279
    move-object/from16 v18, v6

    .line 280
    .line 281
    move-object/from16 v19, v12

    .line 282
    .line 283
    const/4 v0, 0x0

    .line 284
    goto :goto_a

    .line 285
    :cond_12
    move-object/from16 v18, v6

    .line 286
    .line 287
    new-instance v6, Lw4/l;

    .line 288
    .line 289
    invoke-direct {v6, v2}, Lw4/l;-><init>(I)V

    .line 290
    .line 291
    .line 292
    move-object/from16 v19, v12

    .line 293
    .line 294
    const/4 v2, 0x0

    .line 295
    const/4 v12, 0x0

    .line 296
    :goto_7
    array-length v0, v1

    .line 297
    if-ge v2, v0, :cond_14

    .line 298
    .line 299
    invoke-virtual {v13, v2}, Ljava/util/BitSet;->get(I)Z

    .line 300
    .line 301
    .line 302
    move-result v0

    .line 303
    if-nez v0, :cond_13

    .line 304
    .line 305
    invoke-virtual {v3, v2}, Lb5/c;->d(I)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    invoke-virtual {v6, v12, v0}, Lb5/c;->e(ILjava/lang/Object;)V

    .line 310
    .line 311
    .line 312
    const/4 v0, 0x1

    .line 313
    add-int/2addr v12, v0

    .line 314
    goto :goto_8

    .line 315
    :cond_13
    const/4 v0, 0x1

    .line 316
    :goto_8
    add-int/2addr v2, v0

    .line 317
    goto :goto_7

    .line 318
    :cond_14
    iget-boolean v0, v3, Lb5/f;->a:Z

    .line 319
    .line 320
    if-nez v0, :cond_15

    .line 321
    .line 322
    const/4 v0, 0x0

    .line 323
    iput-boolean v0, v6, Lb5/f;->a:Z

    .line 324
    .line 325
    goto :goto_9

    .line 326
    :cond_15
    const/4 v0, 0x0

    .line 327
    :goto_9
    move-object v1, v6

    .line 328
    :goto_a
    iget-boolean v2, v15, Ls4/j;->e:Z

    .line 329
    .line 330
    if-eqz v2, :cond_16

    .line 331
    .line 332
    invoke-virtual {v13, v0, v14}, Ljava/util/BitSet;->set(IZ)V

    .line 333
    .line 334
    .line 335
    :cond_16
    iget-object v0, v1, Lb5/c;->b:[Ljava/lang/Object;

    .line 336
    .line 337
    array-length v0, v0

    .line 338
    iget-object v6, v10, Ls4/h;->c:Lw4/p;

    .line 339
    .line 340
    if-nez v0, :cond_17

    .line 341
    .line 342
    const/4 v0, 0x0

    .line 343
    goto :goto_b

    .line 344
    :cond_17
    new-instance v0, Ls4/m;

    .line 345
    .line 346
    invoke-direct {v0, v6, v1}, Ls4/m;-><init>(Lw4/p;Lw4/l;)V

    .line 347
    .line 348
    .line 349
    :goto_b
    if-eqz v2, :cond_19

    .line 350
    .line 351
    const/4 v1, 0x0

    .line 352
    invoke-virtual {v13, v1}, Ljava/util/BitSet;->get(I)Z

    .line 353
    .line 354
    .line 355
    move-result v12

    .line 356
    if-nez v12, :cond_19

    .line 357
    .line 358
    invoke-virtual {v3, v1}, Lb5/c;->d(I)Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v12

    .line 362
    check-cast v12, Lw4/k;

    .line 363
    .line 364
    iget v14, v12, Lw4/k;->a:I

    .line 365
    .line 366
    if-nez v14, :cond_18

    .line 367
    .line 368
    move-object v14, v12

    .line 369
    goto :goto_c

    .line 370
    :cond_18
    iget-object v14, v12, Lw4/k;->b:Ly4/c;

    .line 371
    .line 372
    invoke-static {v1, v14}, Lw4/k;->d(ILy4/c;)Lw4/k;

    .line 373
    .line 374
    .line 375
    move-result-object v14

    .line 376
    :goto_c
    invoke-static {v6, v12, v14}, Ls4/h;->h(Lw4/p;Lw4/k;Lw4/k;)Ls4/u;

    .line 377
    .line 378
    .line 379
    move-result-object v1

    .line 380
    goto :goto_d

    .line 381
    :cond_19
    const/4 v1, 0x0

    .line 382
    :goto_d
    invoke-virtual {v3, v2, v13}, Lw4/l;->i(ZLjava/util/BitSet;)Lw4/l;

    .line 383
    .line 384
    .line 385
    move-result-object v2

    .line 386
    invoke-virtual {v10, v2}, Ls4/h;->k(Lw4/l;)Ls4/h;

    .line 387
    .line 388
    .line 389
    move-result-object v10

    .line 390
    move-object/from16 v12, v19

    .line 391
    .line 392
    :goto_e
    instance-of v2, v10, Ls4/f;

    .line 393
    .line 394
    if-eqz v2, :cond_1a

    .line 395
    .line 396
    move-object v2, v10

    .line 397
    check-cast v2, Ls4/f;

    .line 398
    .line 399
    :cond_1a
    if-eqz v0, :cond_1b

    .line 400
    .line 401
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    :cond_1b
    instance-of v0, v10, Ls4/w;

    .line 405
    .line 406
    if-nez v0, :cond_1d

    .line 407
    .line 408
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 409
    .line 410
    .line 411
    move-result v0

    .line 412
    if-lez v0, :cond_1d

    .line 413
    .line 414
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 419
    .line 420
    .line 421
    move-result v2

    .line 422
    if-eqz v2, :cond_1c

    .line 423
    .line 424
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object v2

    .line 428
    check-cast v2, Ls4/f;

    .line 429
    .line 430
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    .line 432
    .line 433
    goto :goto_f

    .line 434
    :cond_1c
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 435
    .line 436
    .line 437
    :cond_1d
    if-eq v12, v11, :cond_1e

    .line 438
    .line 439
    invoke-virtual {v10, v12}, Ls4/h;->i(Ls4/j;)Ls4/h;

    .line 440
    .line 441
    .line 442
    move-result-object v10

    .line 443
    :cond_1e
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    .line 445
    .line 446
    if-eqz v1, :cond_1f

    .line 447
    .line 448
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    .line 450
    .line 451
    :cond_1f
    const/4 v0, 0x1

    .line 452
    add-int/2addr v9, v0

    .line 453
    move/from16 v2, v17

    .line 454
    .line 455
    move-object/from16 v6, v18

    .line 456
    .line 457
    const/4 v1, 0x0

    .line 458
    const/4 v3, 0x1

    .line 459
    move-object/from16 v0, p0

    .line 460
    .line 461
    goto/16 :goto_6

    .line 462
    .line 463
    :cond_20
    iput-object v5, v4, Ls4/r;->c:Ljava/util/ArrayList;

    .line 464
    .line 465
    :cond_21
    :goto_10
    iget-object v0, v4, Ls4/r;->c:Ljava/util/ArrayList;

    .line 466
    .line 467
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 468
    .line 469
    .line 470
    move-result v0

    .line 471
    const/4 v1, 0x0

    .line 472
    const/4 v2, 0x0

    .line 473
    :goto_11
    if-ge v1, v0, :cond_23

    .line 474
    .line 475
    iget-object v3, v4, Ls4/r;->c:Ljava/util/ArrayList;

    .line 476
    .line 477
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 478
    .line 479
    .line 480
    move-result-object v3

    .line 481
    check-cast v3, Ls4/h;

    .line 482
    .line 483
    if-ltz v2, :cond_22

    .line 484
    .line 485
    iput v2, v3, Ls4/h;->a:I

    .line 486
    .line 487
    invoke-virtual {v3}, Ls4/h;->b()I

    .line 488
    .line 489
    .line 490
    move-result v3

    .line 491
    add-int/2addr v2, v3

    .line 492
    const/4 v3, 0x1

    .line 493
    add-int/2addr v1, v3

    .line 494
    goto :goto_11

    .line 495
    :cond_22
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 496
    .line 497
    .line 498
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 499
    .line 500
    const-string v1, "address < 0"

    .line 501
    .line 502
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 503
    .line 504
    .line 505
    throw v0

    .line 506
    :cond_23
    iget-object v0, v4, Ls4/r;->c:Ljava/util/ArrayList;

    .line 507
    .line 508
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 509
    .line 510
    .line 511
    move-result v0

    .line 512
    const/4 v1, 0x0

    .line 513
    const/4 v2, 0x0

    .line 514
    :goto_12
    if-ge v2, v0, :cond_28

    .line 515
    .line 516
    iget-object v3, v4, Ls4/r;->c:Ljava/util/ArrayList;

    .line 517
    .line 518
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 519
    .line 520
    .line 521
    move-result-object v3

    .line 522
    check-cast v3, Ls4/h;

    .line 523
    .line 524
    instance-of v5, v3, Ls4/v;

    .line 525
    .line 526
    if-nez v5, :cond_24

    .line 527
    .line 528
    goto :goto_13

    .line 529
    :cond_24
    iget-object v5, v3, Ls4/h;->b:Ls4/j;

    .line 530
    .line 531
    move-object v6, v3

    .line 532
    check-cast v6, Ls4/v;

    .line 533
    .line 534
    iget-object v8, v5, Ls4/j;->d:Ld/b;

    .line 535
    .line 536
    invoke-virtual {v8, v6}, Ld/b;->d(Ls4/v;)Z

    .line 537
    .line 538
    .line 539
    move-result v8

    .line 540
    if-eqz v8, :cond_25

    .line 541
    .line 542
    :goto_13
    const/16 v16, 0x1

    .line 543
    .line 544
    goto :goto_15

    .line 545
    :cond_25
    const/16 v1, 0x28

    .line 546
    .line 547
    iget v8, v5, Ls4/j;->b:I

    .line 548
    .line 549
    if-ne v8, v1, :cond_27

    .line 550
    .line 551
    invoke-virtual {v4, v3, v5}, Ls4/r;->e(Ls4/h;Ls4/j;)Ls4/j;

    .line 552
    .line 553
    .line 554
    move-result-object v1

    .line 555
    if-eqz v1, :cond_26

    .line 556
    .line 557
    iget-object v5, v4, Ls4/r;->c:Ljava/util/ArrayList;

    .line 558
    .line 559
    invoke-virtual {v3, v1}, Ls4/h;->i(Ls4/j;)Ls4/h;

    .line 560
    .line 561
    .line 562
    move-result-object v1

    .line 563
    invoke-virtual {v5, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 564
    .line 565
    .line 566
    const/16 v16, 0x1

    .line 567
    .line 568
    goto :goto_14

    .line 569
    :cond_26
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 570
    .line 571
    const-string v1, "method too long"

    .line 572
    .line 573
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 574
    .line 575
    .line 576
    throw v0

    .line 577
    :cond_27
    :try_start_0
    iget-object v1, v4, Ls4/r;->c:Ljava/util/ArrayList;

    .line 578
    .line 579
    const/4 v3, 0x1

    .line 580
    add-int/lit8 v5, v2, 0x1

    .line 581
    .line 582
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 583
    .line 584
    .line 585
    move-result-object v1

    .line 586
    check-cast v1, Ls4/f;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    .line 588
    new-instance v3, Ls4/v;

    .line 589
    .line 590
    sget-object v8, Ls4/k;->I:Ls4/j;

    .line 591
    .line 592
    sget-object v9, Lw4/l;->c:Lw4/l;

    .line 593
    .line 594
    iget-object v10, v6, Ls4/h;->c:Lw4/p;

    .line 595
    .line 596
    iget-object v11, v6, Ls4/v;->e:Ls4/f;

    .line 597
    .line 598
    invoke-direct {v3, v8, v10, v9, v11}, Ls4/v;-><init>(Ls4/j;Lw4/p;Lw4/l;Ls4/f;)V

    .line 599
    .line 600
    .line 601
    iget-object v8, v4, Ls4/r;->c:Ljava/util/ArrayList;

    .line 602
    .line 603
    invoke-virtual {v8, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 604
    .line 605
    .line 606
    iget-object v3, v4, Ls4/r;->c:Ljava/util/ArrayList;

    .line 607
    .line 608
    invoke-virtual {v6, v1}, Ls4/v;->o(Ls4/f;)Ls4/v;

    .line 609
    .line 610
    .line 611
    move-result-object v1

    .line 612
    invoke-virtual {v3, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 613
    .line 614
    .line 615
    const/16 v16, 0x1

    .line 616
    .line 617
    add-int/lit8 v0, v0, 0x1

    .line 618
    .line 619
    move v2, v5

    .line 620
    :goto_14
    const/4 v1, 0x1

    .line 621
    :goto_15
    add-int/lit8 v2, v2, 0x1

    .line 622
    .line 623
    goto :goto_12

    .line 624
    :catch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 625
    .line 626
    const-string v1, "unpaired TargetInsn"

    .line 627
    .line 628
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 629
    .line 630
    .line 631
    throw v0

    .line 632
    :catch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 633
    .line 634
    const-string v1, "unpaired TargetInsn (dangling)"

    .line 635
    .line 636
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 637
    .line 638
    .line 639
    throw v0

    .line 640
    :cond_28
    if-nez v1, :cond_50

    .line 641
    .line 642
    iget-object v0, v4, Ls4/r;->c:Ljava/util/ArrayList;

    .line 643
    .line 644
    iget v1, v4, Ls4/r;->d:I

    .line 645
    .line 646
    add-int/2addr v1, v7

    .line 647
    iget v2, v4, Ls4/r;->e:I

    .line 648
    .line 649
    add-int/2addr v1, v2

    .line 650
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 651
    .line 652
    .line 653
    move-result v2

    .line 654
    new-instance v3, Ls4/i;

    .line 655
    .line 656
    invoke-direct {v3, v2, v1}, Ls4/i;-><init>(II)V

    .line 657
    .line 658
    .line 659
    const/4 v1, 0x0

    .line 660
    :goto_16
    if-ge v1, v2, :cond_29

    .line 661
    .line 662
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 663
    .line 664
    .line 665
    move-result-object v4

    .line 666
    check-cast v4, Ls4/h;

    .line 667
    .line 668
    invoke-virtual {v3, v1, v4}, Lb5/c;->e(ILjava/lang/Object;)V

    .line 669
    .line 670
    .line 671
    const/4 v4, 0x1

    .line 672
    add-int/2addr v1, v4

    .line 673
    goto :goto_16

    .line 674
    :cond_29
    const/4 v1, 0x0

    .line 675
    iput-boolean v1, v3, Lb5/f;->a:Z

    .line 676
    .line 677
    move-object/from16 v0, p0

    .line 678
    .line 679
    iput-object v3, v0, La2/w0;->e:Ljava/lang/Object;

    .line 680
    .line 681
    sget v1, Ls4/s;->c:I

    .line 682
    .line 683
    sget v1, Ls4/o;->c:I

    .line 684
    .line 685
    iget-object v1, v3, Lb5/c;->b:[Ljava/lang/Object;

    .line 686
    .line 687
    array-length v1, v1

    .line 688
    new-instance v2, Lha/u3;

    .line 689
    .line 690
    invoke-direct {v2, v1}, Lha/u3;-><init>(I)V

    .line 691
    .line 692
    .line 693
    iget-object v4, v2, Lha/u3;->b:Ljava/lang/Object;

    .line 694
    .line 695
    const/4 v5, 0x0

    .line 696
    :goto_17
    if-ge v5, v1, :cond_3a

    .line 697
    .line 698
    invoke-virtual {v3, v5}, Lb5/c;->d(I)Ljava/lang/Object;

    .line 699
    .line 700
    .line 701
    move-result-object v6

    .line 702
    check-cast v6, Ls4/h;

    .line 703
    .line 704
    instance-of v7, v6, Ls4/p;

    .line 705
    .line 706
    if-nez v7, :cond_39

    .line 707
    .line 708
    instance-of v7, v6, Ls4/q;

    .line 709
    .line 710
    if-eqz v7, :cond_2d

    .line 711
    .line 712
    move-object v7, v6

    .line 713
    check-cast v7, Ls4/q;

    .line 714
    .line 715
    invoke-virtual {v6}, Ls4/h;->e()I

    .line 716
    .line 717
    .line 718
    move-result v6

    .line 719
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 720
    .line 721
    .line 722
    const/4 v7, 0x0

    .line 723
    iget v8, v7, Lw4/k;->a:I

    .line 724
    .line 725
    invoke-static {v7}, Lha/u3;->d(Lw4/k;)Lw4/k;

    .line 726
    .line 727
    .line 728
    move-result-object v9

    .line 729
    invoke-virtual {v2, v6, v8}, Lha/u3;->a(II)V

    .line 730
    .line 731
    .line 732
    iget-object v7, v2, Lha/u3;->c:Ljava/lang/Object;

    .line 733
    .line 734
    check-cast v7, Lw4/m;

    .line 735
    .line 736
    invoke-virtual {v7, v8}, Lw4/m;->d(I)Lw4/k;

    .line 737
    .line 738
    .line 739
    move-result-object v7

    .line 740
    if-nez v7, :cond_2a

    .line 741
    .line 742
    const/4 v10, 0x0

    .line 743
    goto :goto_18

    .line 744
    :cond_2a
    iget-object v10, v9, Lw4/k;->b:Ly4/c;

    .line 745
    .line 746
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 747
    .line 748
    .line 749
    iget-object v11, v7, Lw4/k;->b:Ly4/c;

    .line 750
    .line 751
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 752
    .line 753
    .line 754
    invoke-virtual {v10, v11}, Ly4/c;->equals(Ljava/lang/Object;)Z

    .line 755
    .line 756
    .line 757
    move-result v10

    .line 758
    :goto_18
    if-nez v10, :cond_2c

    .line 759
    .line 760
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 761
    .line 762
    .line 763
    :cond_2b
    const/4 v10, 0x0

    .line 764
    goto :goto_19

    .line 765
    :cond_2c
    iget v10, v9, Lw4/k;->a:I

    .line 766
    .line 767
    iget v11, v7, Lw4/k;->a:I

    .line 768
    .line 769
    if-ne v10, v11, :cond_2b

    .line 770
    .line 771
    const/4 v10, 0x1

    .line 772
    :goto_19
    if-eqz v10, :cond_2e

    .line 773
    .line 774
    :cond_2d
    const/4 v7, 0x1

    .line 775
    const/4 v8, 0x0

    .line 776
    goto/16 :goto_1f

    .line 777
    .line 778
    :cond_2e
    iget-object v1, v2, Lha/u3;->c:Ljava/lang/Object;

    .line 779
    .line 780
    check-cast v1, Lw4/m;

    .line 781
    .line 782
    iget-object v1, v1, Lw4/m;->b:[Lw4/k;

    .line 783
    .line 784
    array-length v3, v1

    .line 785
    const/4 v5, 0x0

    .line 786
    :goto_1a
    if-ge v5, v3, :cond_31

    .line 787
    .line 788
    aget-object v10, v1, v5

    .line 789
    .line 790
    if-nez v10, :cond_30

    .line 791
    .line 792
    :cond_2f
    const/4 v10, 0x1

    .line 793
    goto :goto_1b

    .line 794
    :cond_30
    iget-object v11, v9, Lw4/k;->b:Ly4/c;

    .line 795
    .line 796
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 797
    .line 798
    .line 799
    iget-object v12, v10, Lw4/k;->b:Ly4/c;

    .line 800
    .line 801
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 802
    .line 803
    .line 804
    invoke-virtual {v11, v12}, Ly4/c;->equals(Ljava/lang/Object;)Z

    .line 805
    .line 806
    .line 807
    move-result v11

    .line 808
    if-eqz v11, :cond_2f

    .line 809
    .line 810
    goto :goto_1c

    .line 811
    :goto_1b
    add-int/2addr v5, v10

    .line 812
    goto :goto_1a

    .line 813
    :cond_31
    const/4 v10, 0x0

    .line 814
    :goto_1c
    if-eqz v10, :cond_32

    .line 815
    .line 816
    const/4 v1, 0x4

    .line 817
    invoke-virtual {v2, v6, v1, v10}, Lha/u3;->b(IILw4/k;)V

    .line 818
    .line 819
    .line 820
    :cond_32
    iget-object v1, v2, Lha/u3;->d:Ljava/lang/Object;

    .line 821
    .line 822
    check-cast v1, [I

    .line 823
    .line 824
    aget v1, v1, v8

    .line 825
    .line 826
    if-nez v7, :cond_38

    .line 827
    .line 828
    if-ltz v1, :cond_34

    .line 829
    .line 830
    check-cast v4, Ljava/util/ArrayList;

    .line 831
    .line 832
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 833
    .line 834
    .line 835
    move-result-object v1

    .line 836
    check-cast v1, Ls4/n;

    .line 837
    .line 838
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 839
    .line 840
    .line 841
    if-eqz v6, :cond_33

    .line 842
    .line 843
    goto :goto_1d

    .line 844
    :cond_33
    const/4 v1, 0x0

    .line 845
    throw v1

    .line 846
    :cond_34
    :goto_1d
    if-lez v8, :cond_35

    .line 847
    .line 848
    iget-object v1, v2, Lha/u3;->c:Ljava/lang/Object;

    .line 849
    .line 850
    check-cast v1, Lw4/m;

    .line 851
    .line 852
    const/4 v3, 0x1

    .line 853
    add-int/lit8 v4, v8, -0x1

    .line 854
    .line 855
    invoke-virtual {v1, v4}, Lw4/m;->d(I)Lw4/k;

    .line 856
    .line 857
    .line 858
    move-result-object v1

    .line 859
    if-eqz v1, :cond_35

    .line 860
    .line 861
    invoke-virtual {v1}, Lw4/k;->e()Z

    .line 862
    .line 863
    .line 864
    move-result v3

    .line 865
    if-eqz v3, :cond_35

    .line 866
    .line 867
    const/4 v3, 0x6

    .line 868
    invoke-virtual {v2, v6, v3, v1}, Lha/u3;->b(IILw4/k;)V

    .line 869
    .line 870
    .line 871
    :cond_35
    invoke-virtual {v9}, Lw4/k;->e()Z

    .line 872
    .line 873
    .line 874
    move-result v1

    .line 875
    if-eqz v1, :cond_36

    .line 876
    .line 877
    iget-object v1, v2, Lha/u3;->c:Ljava/lang/Object;

    .line 878
    .line 879
    check-cast v1, Lw4/m;

    .line 880
    .line 881
    const/4 v7, 0x1

    .line 882
    add-int/2addr v8, v7

    .line 883
    invoke-virtual {v1, v8}, Lw4/m;->d(I)Lw4/k;

    .line 884
    .line 885
    .line 886
    move-result-object v1

    .line 887
    if-eqz v1, :cond_37

    .line 888
    .line 889
    const/4 v3, 0x5

    .line 890
    invoke-virtual {v2, v6, v3, v1}, Lha/u3;->b(IILw4/k;)V

    .line 891
    .line 892
    .line 893
    goto :goto_1e

    .line 894
    :cond_36
    const/4 v7, 0x1

    .line 895
    :cond_37
    :goto_1e
    new-instance v1, Ls4/n;

    .line 896
    .line 897
    invoke-direct {v1, v6, v7, v9}, Ls4/n;-><init>(IILw4/k;)V

    .line 898
    .line 899
    .line 900
    const/4 v8, 0x0

    .line 901
    throw v8

    .line 902
    :cond_38
    const/4 v8, 0x0

    .line 903
    new-instance v1, Ls4/n;

    .line 904
    .line 905
    const/4 v2, 0x3

    .line 906
    invoke-direct {v1, v6, v2, v7}, Ls4/n;-><init>(IILw4/k;)V

    .line 907
    .line 908
    .line 909
    throw v8

    .line 910
    :goto_1f
    add-int/2addr v5, v7

    .line 911
    goto/16 :goto_17

    .line 912
    .line 913
    :cond_39
    const/4 v8, 0x0

    .line 914
    move-object v1, v6

    .line 915
    check-cast v1, Ls4/p;

    .line 916
    .line 917
    invoke-virtual {v6}, Ls4/h;->e()I

    .line 918
    .line 919
    .line 920
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 921
    .line 922
    .line 923
    throw v8

    .line 924
    :cond_3a
    const v1, 0x7fffffff

    .line 925
    .line 926
    .line 927
    const/4 v3, 0x0

    .line 928
    invoke-virtual {v2, v1, v3}, Lha/u3;->a(II)V

    .line 929
    .line 930
    .line 931
    check-cast v4, Ljava/util/ArrayList;

    .line 932
    .line 933
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 934
    .line 935
    .line 936
    move-result v1

    .line 937
    iget v2, v2, Lha/u3;->a:I

    .line 938
    .line 939
    sub-int v2, v1, v2

    .line 940
    .line 941
    if-nez v2, :cond_3b

    .line 942
    .line 943
    sget v1, Ls4/o;->c:I

    .line 944
    .line 945
    goto :goto_23

    .line 946
    :cond_3b
    new-array v3, v2, [Ls4/n;

    .line 947
    .line 948
    if-ne v1, v2, :cond_3c

    .line 949
    .line 950
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 951
    .line 952
    .line 953
    goto :goto_21

    .line 954
    :cond_3c
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 955
    .line 956
    .line 957
    move-result-object v1

    .line 958
    const/4 v4, 0x0

    .line 959
    :cond_3d
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 960
    .line 961
    .line 962
    move-result v5

    .line 963
    if-eqz v5, :cond_3e

    .line 964
    .line 965
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 966
    .line 967
    .line 968
    move-result-object v5

    .line 969
    check-cast v5, Ls4/n;

    .line 970
    .line 971
    if-eqz v5, :cond_3d

    .line 972
    .line 973
    const/4 v6, 0x1

    .line 974
    add-int/lit8 v7, v4, 0x1

    .line 975
    .line 976
    aput-object v5, v3, v4

    .line 977
    .line 978
    move v4, v7

    .line 979
    goto :goto_20

    .line 980
    :cond_3e
    :goto_21
    invoke-static {v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 981
    .line 982
    .line 983
    new-instance v1, Ls4/o;

    .line 984
    .line 985
    invoke-direct {v1, v2}, Ls4/o;-><init>(I)V

    .line 986
    .line 987
    .line 988
    const/4 v4, 0x0

    .line 989
    :goto_22
    if-ge v4, v2, :cond_3f

    .line 990
    .line 991
    aget-object v5, v3, v4

    .line 992
    .line 993
    invoke-virtual {v1, v4, v5}, Lb5/c;->e(ILjava/lang/Object;)V

    .line 994
    .line 995
    .line 996
    const/4 v5, 0x1

    .line 997
    add-int/2addr v4, v5

    .line 998
    goto :goto_22

    .line 999
    :cond_3f
    const/4 v4, 0x0

    .line 1000
    iput-boolean v4, v1, Lb5/f;->a:Z

    .line 1001
    .line 1002
    :goto_23
    iget-object v1, v0, La2/w0;->c:Ljava/lang/Object;

    .line 1003
    .line 1004
    check-cast v1, Ls4/a;

    .line 1005
    .line 1006
    iget-object v2, v1, Ls4/a;->c:Ljava/lang/Object;

    .line 1007
    .line 1008
    check-cast v2, [I

    .line 1009
    .line 1010
    array-length v3, v2

    .line 1011
    iget-object v4, v1, Ls4/a;->b:Ljava/lang/Object;

    .line 1012
    .line 1013
    check-cast v4, Ls4/a;

    .line 1014
    .line 1015
    iget-object v4, v4, Ls4/a;->b:Ljava/lang/Object;

    .line 1016
    .line 1017
    check-cast v4, Lw4/b;

    .line 1018
    .line 1019
    new-instance v5, Ljava/util/ArrayList;

    .line 1020
    .line 1021
    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1022
    .line 1023
    .line 1024
    sget-object v6, Ls4/c;->c:Ls4/c;

    .line 1025
    .line 1026
    move-object v7, v6

    .line 1027
    const/4 v6, 0x0

    .line 1028
    const/4 v8, 0x0

    .line 1029
    const/4 v9, 0x0

    .line 1030
    :goto_24
    iget-object v10, v1, Ls4/a;->d:Ljava/lang/Object;

    .line 1031
    .line 1032
    check-cast v10, Ls4/a;

    .line 1033
    .line 1034
    if-ge v6, v3, :cond_4c

    .line 1035
    .line 1036
    aget v11, v2, v6

    .line 1037
    .line 1038
    invoke-virtual {v4, v11}, Lw4/b;->h(I)Lw4/a;

    .line 1039
    .line 1040
    .line 1041
    move-result-object v11

    .line 1042
    iget-object v12, v11, Lw4/a;->b:Lw4/g;

    .line 1043
    .line 1044
    invoke-virtual {v12}, Lw4/g;->g()Lw4/f;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v13

    .line 1048
    iget-object v13, v13, Lw4/f;->a:Lw4/n;

    .line 1049
    .line 1050
    iget-object v13, v13, Lw4/n;->d:Ly4/b;

    .line 1051
    .line 1052
    iget-object v13, v13, Lb5/c;->b:[Ljava/lang/Object;

    .line 1053
    .line 1054
    array-length v13, v13

    .line 1055
    if-eqz v13, :cond_4b

    .line 1056
    .line 1057
    iget-object v13, v11, Lw4/a;->c:Lb5/e;

    .line 1058
    .line 1059
    iget v14, v13, Lb5/e;->c:I

    .line 1060
    .line 1061
    invoke-virtual {v12}, Lw4/g;->g()Lw4/f;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v12

    .line 1065
    invoke-virtual {v12}, Lw4/f;->c()Ly4/e;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v12

    .line 1069
    move-object v15, v12

    .line 1070
    check-cast v15, Lb5/c;

    .line 1071
    .line 1072
    iget-object v15, v15, Lb5/c;->b:[Ljava/lang/Object;

    .line 1073
    .line 1074
    array-length v15, v15

    .line 1075
    if-nez v15, :cond_40

    .line 1076
    .line 1077
    sget-object v12, Ls4/c;->c:Ls4/c;

    .line 1078
    .line 1079
    move-object/from16 v17, v1

    .line 1080
    .line 1081
    move-object/from16 v18, v2

    .line 1082
    .line 1083
    move/from16 v19, v3

    .line 1084
    .line 1085
    move-object/from16 v20, v4

    .line 1086
    .line 1087
    goto/16 :goto_29

    .line 1088
    .line 1089
    :cond_40
    move-object/from16 v17, v1

    .line 1090
    .line 1091
    const/4 v1, -0x1

    .line 1092
    move-object/from16 v18, v2

    .line 1093
    .line 1094
    iget v2, v11, Lw4/a;->d:I

    .line 1095
    .line 1096
    if-ne v2, v1, :cond_41

    .line 1097
    .line 1098
    if-ne v14, v15, :cond_42

    .line 1099
    .line 1100
    :cond_41
    move/from16 v19, v3

    .line 1101
    .line 1102
    if-eq v2, v1, :cond_43

    .line 1103
    .line 1104
    const/4 v1, 0x1

    .line 1105
    add-int/lit8 v3, v15, 0x1

    .line 1106
    .line 1107
    if-ne v14, v3, :cond_42

    .line 1108
    .line 1109
    invoke-virtual {v13, v15}, Lb5/e;->e(I)I

    .line 1110
    .line 1111
    .line 1112
    move-result v1

    .line 1113
    if-ne v2, v1, :cond_42

    .line 1114
    .line 1115
    goto :goto_25

    .line 1116
    :cond_42
    new-instance v1, Ljava/lang/RuntimeException;

    .line 1117
    .line 1118
    const-string v2, "shouldn\'t happen: weird successors list"

    .line 1119
    .line 1120
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1121
    .line 1122
    .line 1123
    throw v1

    .line 1124
    :cond_43
    :goto_25
    const/4 v1, 0x0

    .line 1125
    :goto_26
    if-ge v1, v15, :cond_45

    .line 1126
    .line 1127
    invoke-interface {v12, v1}, Ly4/e;->b(I)Ly4/c;

    .line 1128
    .line 1129
    .line 1130
    move-result-object v2

    .line 1131
    sget-object v3, Ly4/c;->v:Ly4/c;

    .line 1132
    .line 1133
    invoke-virtual {v2, v3}, Ly4/c;->equals(Ljava/lang/Object;)Z

    .line 1134
    .line 1135
    .line 1136
    move-result v2

    .line 1137
    if-eqz v2, :cond_44

    .line 1138
    .line 1139
    const/4 v2, 0x1

    .line 1140
    add-int/lit8 v15, v1, 0x1

    .line 1141
    .line 1142
    goto :goto_27

    .line 1143
    :cond_44
    const/4 v2, 0x1

    .line 1144
    add-int/2addr v1, v2

    .line 1145
    goto :goto_26

    .line 1146
    :cond_45
    :goto_27
    new-instance v1, Ls4/c;

    .line 1147
    .line 1148
    invoke-direct {v1, v15}, Ls4/c;-><init>(I)V

    .line 1149
    .line 1150
    .line 1151
    const/4 v2, 0x0

    .line 1152
    :goto_28
    if-ge v2, v15, :cond_46

    .line 1153
    .line 1154
    new-instance v3, Lx4/u;

    .line 1155
    .line 1156
    invoke-interface {v12, v2}, Ly4/e;->b(I)Ly4/c;

    .line 1157
    .line 1158
    .line 1159
    move-result-object v14

    .line 1160
    invoke-direct {v3, v14}, Lx4/u;-><init>(Ly4/c;)V

    .line 1161
    .line 1162
    .line 1163
    invoke-virtual {v13, v2}, Lb5/e;->e(I)I

    .line 1164
    .line 1165
    .line 1166
    move-result v14

    .line 1167
    move-object/from16 v20, v4

    .line 1168
    .line 1169
    iget-object v4, v10, Ls4/a;->b:Ljava/lang/Object;

    .line 1170
    .line 1171
    check-cast v4, [Ls4/f;

    .line 1172
    .line 1173
    aget-object v4, v4, v14

    .line 1174
    .line 1175
    invoke-virtual {v4}, Ls4/h;->e()I

    .line 1176
    .line 1177
    .line 1178
    move-result v4

    .line 1179
    new-instance v14, Ls4/b;

    .line 1180
    .line 1181
    invoke-direct {v14, v3, v4}, Ls4/b;-><init>(Lx4/u;I)V

    .line 1182
    .line 1183
    .line 1184
    invoke-virtual {v1, v2, v14}, Lb5/c;->e(ILjava/lang/Object;)V

    .line 1185
    .line 1186
    .line 1187
    const/4 v3, 0x1

    .line 1188
    add-int/2addr v2, v3

    .line 1189
    move-object/from16 v4, v20

    .line 1190
    .line 1191
    goto :goto_28

    .line 1192
    :cond_46
    move-object/from16 v20, v4

    .line 1193
    .line 1194
    const/4 v2, 0x0

    .line 1195
    iput-boolean v2, v1, Lb5/f;->a:Z

    .line 1196
    .line 1197
    move-object v12, v1

    .line 1198
    :goto_29
    iget-object v1, v7, Lb5/c;->b:[Ljava/lang/Object;

    .line 1199
    .line 1200
    array-length v1, v1

    .line 1201
    if-nez v1, :cond_47

    .line 1202
    .line 1203
    goto :goto_2b

    .line 1204
    :cond_47
    invoke-virtual {v7, v12}, Lb5/c;->equals(Ljava/lang/Object;)Z

    .line 1205
    .line 1206
    .line 1207
    move-result v1

    .line 1208
    if-eqz v1, :cond_49

    .line 1209
    .line 1210
    if-eqz v8, :cond_48

    .line 1211
    .line 1212
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1213
    .line 1214
    .line 1215
    iget-object v1, v10, Ls4/a;->c:Ljava/lang/Object;

    .line 1216
    .line 1217
    check-cast v1, [Ls4/f;

    .line 1218
    .line 1219
    iget v2, v8, Lw4/a;->a:I

    .line 1220
    .line 1221
    aget-object v1, v1, v2

    .line 1222
    .line 1223
    invoke-virtual {v1}, Ls4/h;->e()I

    .line 1224
    .line 1225
    .line 1226
    move-result v1

    .line 1227
    iget-object v2, v10, Ls4/a;->d:Ljava/lang/Object;

    .line 1228
    .line 1229
    check-cast v2, [Ls4/f;

    .line 1230
    .line 1231
    iget v3, v11, Lw4/a;->a:I

    .line 1232
    .line 1233
    aget-object v2, v2, v3

    .line 1234
    .line 1235
    invoke-virtual {v2}, Ls4/h;->e()I

    .line 1236
    .line 1237
    .line 1238
    move-result v2

    .line 1239
    sub-int/2addr v2, v1

    .line 1240
    const v1, 0xffff

    .line 1241
    .line 1242
    .line 1243
    if-gt v2, v1, :cond_49

    .line 1244
    .line 1245
    move-object v9, v11

    .line 1246
    :goto_2a
    const/4 v1, 0x1

    .line 1247
    goto :goto_2c

    .line 1248
    :cond_48
    new-instance v1, Ljava/lang/NullPointerException;

    .line 1249
    .line 1250
    const-string v2, "start == null"

    .line 1251
    .line 1252
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1253
    .line 1254
    .line 1255
    throw v1

    .line 1256
    :cond_49
    iget-object v1, v7, Lb5/c;->b:[Ljava/lang/Object;

    .line 1257
    .line 1258
    array-length v1, v1

    .line 1259
    if-eqz v1, :cond_4a

    .line 1260
    .line 1261
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1262
    .line 1263
    .line 1264
    iget v1, v8, Lw4/a;->a:I

    .line 1265
    .line 1266
    iget-object v2, v10, Ls4/a;->c:Ljava/lang/Object;

    .line 1267
    .line 1268
    check-cast v2, [Ls4/f;

    .line 1269
    .line 1270
    aget-object v1, v2, v1

    .line 1271
    .line 1272
    iget v2, v9, Lw4/a;->a:I

    .line 1273
    .line 1274
    iget-object v3, v10, Ls4/a;->d:Ljava/lang/Object;

    .line 1275
    .line 1276
    check-cast v3, [Ls4/f;

    .line 1277
    .line 1278
    aget-object v2, v3, v2

    .line 1279
    .line 1280
    new-instance v3, Ls4/d;

    .line 1281
    .line 1282
    invoke-virtual {v1}, Ls4/h;->e()I

    .line 1283
    .line 1284
    .line 1285
    move-result v1

    .line 1286
    invoke-virtual {v2}, Ls4/h;->e()I

    .line 1287
    .line 1288
    .line 1289
    move-result v2

    .line 1290
    invoke-direct {v3, v1, v2, v7}, Ls4/d;-><init>(IILs4/c;)V

    .line 1291
    .line 1292
    .line 1293
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1294
    .line 1295
    .line 1296
    :cond_4a
    :goto_2b
    move-object v8, v11

    .line 1297
    move-object v9, v8

    .line 1298
    move-object v7, v12

    .line 1299
    goto :goto_2a

    .line 1300
    :cond_4b
    move-object/from16 v17, v1

    .line 1301
    .line 1302
    move-object/from16 v18, v2

    .line 1303
    .line 1304
    move/from16 v19, v3

    .line 1305
    .line 1306
    move-object/from16 v20, v4

    .line 1307
    .line 1308
    goto :goto_2a

    .line 1309
    :goto_2c
    add-int/2addr v6, v1

    .line 1310
    move-object/from16 v1, v17

    .line 1311
    .line 1312
    move-object/from16 v2, v18

    .line 1313
    .line 1314
    move/from16 v3, v19

    .line 1315
    .line 1316
    move-object/from16 v4, v20

    .line 1317
    .line 1318
    goto/16 :goto_24

    .line 1319
    .line 1320
    :cond_4c
    iget-object v1, v7, Lb5/c;->b:[Ljava/lang/Object;

    .line 1321
    .line 1322
    array-length v1, v1

    .line 1323
    if-eqz v1, :cond_4d

    .line 1324
    .line 1325
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1326
    .line 1327
    .line 1328
    iget v1, v8, Lw4/a;->a:I

    .line 1329
    .line 1330
    iget-object v2, v10, Ls4/a;->c:Ljava/lang/Object;

    .line 1331
    .line 1332
    check-cast v2, [Ls4/f;

    .line 1333
    .line 1334
    aget-object v1, v2, v1

    .line 1335
    .line 1336
    iget v2, v9, Lw4/a;->a:I

    .line 1337
    .line 1338
    iget-object v3, v10, Ls4/a;->d:Ljava/lang/Object;

    .line 1339
    .line 1340
    check-cast v3, [Ls4/f;

    .line 1341
    .line 1342
    aget-object v2, v3, v2

    .line 1343
    .line 1344
    new-instance v3, Ls4/d;

    .line 1345
    .line 1346
    invoke-virtual {v1}, Ls4/h;->e()I

    .line 1347
    .line 1348
    .line 1349
    move-result v1

    .line 1350
    invoke-virtual {v2}, Ls4/h;->e()I

    .line 1351
    .line 1352
    .line 1353
    move-result v2

    .line 1354
    invoke-direct {v3, v1, v2, v7}, Ls4/d;-><init>(IILs4/c;)V

    .line 1355
    .line 1356
    .line 1357
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1358
    .line 1359
    .line 1360
    :cond_4d
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 1361
    .line 1362
    .line 1363
    move-result v1

    .line 1364
    if-nez v1, :cond_4e

    .line 1365
    .line 1366
    sget-object v1, Ls4/e;->c:Ls4/e;

    .line 1367
    .line 1368
    goto :goto_2e

    .line 1369
    :cond_4e
    new-instance v2, Ls4/e;

    .line 1370
    .line 1371
    invoke-direct {v2, v1}, Ls4/e;-><init>(I)V

    .line 1372
    .line 1373
    .line 1374
    const/4 v3, 0x0

    .line 1375
    :goto_2d
    if-ge v3, v1, :cond_4f

    .line 1376
    .line 1377
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1378
    .line 1379
    .line 1380
    move-result-object v4

    .line 1381
    check-cast v4, Ls4/d;

    .line 1382
    .line 1383
    invoke-virtual {v2, v3, v4}, Lb5/c;->e(ILjava/lang/Object;)V

    .line 1384
    .line 1385
    .line 1386
    const/4 v6, 0x1

    .line 1387
    add-int/2addr v3, v6

    .line 1388
    goto :goto_2d

    .line 1389
    :cond_4f
    const/4 v3, 0x0

    .line 1390
    iput-boolean v3, v2, Lb5/f;->a:Z

    .line 1391
    .line 1392
    move-object v1, v2

    .line 1393
    :goto_2e
    iput-object v1, v0, La2/w0;->d:Ljava/lang/Object;

    .line 1394
    .line 1395
    const/4 v1, 0x0

    .line 1396
    iput-object v1, v0, La2/w0;->b:Ljava/lang/Object;

    .line 1397
    .line 1398
    iput-object v1, v0, La2/w0;->c:Ljava/lang/Object;

    .line 1399
    .line 1400
    return-void

    .line 1401
    :cond_50
    move-object/from16 v0, p0

    .line 1402
    .line 1403
    goto/16 :goto_10

    .line 1404
    .line 1405
    :cond_51
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 1406
    .line 1407
    const-string v2, "already processed"

    .line 1408
    .line 1409
    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 1410
    .line 1411
    .line 1412
    goto :goto_30

    .line 1413
    :goto_2f
    throw v1

    .line 1414
    :goto_30
    goto :goto_2f
.end method

.method public G(Lu/a;)Lu/f;
    .locals 5

    .line 1
    iget-object v0, p0, La2/w0;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    check-cast v3, Lu/f;

    .line 17
    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    iget-object v4, v3, Lu/f;->b:Lu/a;

    .line 21
    .line 22
    if-ne v4, p1, :cond_0

    .line 23
    .line 24
    return-object v3

    .line 25
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    new-instance v1, Lu/f;

    .line 29
    .line 30
    iget-object v2, p0, La2/w0;->c:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v2, Landroid/content/Context;

    .line 33
    .line 34
    invoke-direct {v1, v2, p1}, Lu/f;-><init>(Landroid/content/Context;Lu/a;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    return-object v1
.end method

.method public H()Lw4/k;
    .locals 4

    .line 1
    iget-object v0, p0, La2/w0;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lw4/a;

    .line 4
    .line 5
    iget v0, v0, Lw4/a;->d:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-gez v0, :cond_0

    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    iget-object v2, p0, La2/w0;->e:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v2, Ll6/f;

    .line 14
    .line 15
    iget-object v2, v2, Ll6/f;->d:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v2, Ls4/a;

    .line 18
    .line 19
    iget-object v2, v2, Ls4/a;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v2, Lw4/b;

    .line 22
    .line 23
    invoke-virtual {v2, v0}, Lw4/b;->h(I)Lw4/a;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v0, v0, Lw4/a;->b:Lw4/g;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-virtual {v0, v2}, Lb5/c;->d(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lw4/f;

    .line 35
    .line 36
    iget-object v2, v0, Lw4/f;->a:Lw4/n;

    .line 37
    .line 38
    iget v2, v2, Lw4/n;->a:I

    .line 39
    .line 40
    const/16 v3, 0x38

    .line 41
    .line 42
    if-eq v2, v3, :cond_1

    .line 43
    .line 44
    return-object v1

    .line 45
    :cond_1
    iget-object v0, v0, Lw4/f;->c:Lw4/k;

    .line 46
    .line 47
    return-object v0
.end method

.method public R(Lu/a;Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, La2/w0;->G(Lu/a;)Lu/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Lv/r;

    .line 6
    .line 7
    iget-object v1, p0, La2/w0;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Landroid/content/Context;

    .line 10
    .line 11
    check-cast p2, Lr0/a;

    .line 12
    .line 13
    invoke-direct {v0, v1, p2}, Lv/r;-><init>(Landroid/content/Context;Lr0/a;)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, La2/w0;->b:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p2, Landroid/view/ActionMode$Callback;

    .line 19
    .line 20
    invoke-interface {p2, p1, v0}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    return p1
.end method

.method public S(Lu/a;Lv/k;)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, La2/w0;->G(Lu/a;)Lu/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, La2/w0;->e:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, La0/t;

    .line 8
    .line 9
    invoke-virtual {v0, p2}, La0/t;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Landroid/view/Menu;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    new-instance v1, Lv/a0;

    .line 18
    .line 19
    iget-object v2, p0, La2/w0;->c:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v2, Landroid/content/Context;

    .line 22
    .line 23
    invoke-direct {v1, v2, p2}, Lv/a0;-><init>(Landroid/content/Context;Lv/k;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p2, v1}, La0/t;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object p2, p0, La2/w0;->b:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p2, Landroid/view/ActionMode$Callback;

    .line 32
    .line 33
    invoke-interface {p2, p1, v1}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    return p1
.end method

.method public T(I)V
    .locals 11

    .line 1
    iget-object v0, p0, La2/w0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/widget/ListView;

    .line 4
    .line 5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v9

    .line 9
    const/4 v7, 0x0

    .line 10
    const/4 v8, 0x0

    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x0

    .line 13
    move-wide v1, v9

    .line 14
    move-wide v3, v9

    .line 15
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 23
    .line 24
    .line 25
    int-to-float p1, p1

    .line 26
    const/4 v5, 0x2

    .line 27
    move-wide v1, v9

    .line 28
    move v7, p1

    .line 29
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 37
    .line 38
    .line 39
    const/4 v5, 0x3

    .line 40
    move-wide v1, v9

    .line 41
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {v0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public a(Lw4/q;)V
    .locals 9

    .line 1
    iget-object v0, p1, Lw4/f;->b:Lw4/p;

    .line 2
    .line 3
    invoke-static {p1}, Ls4/t;->a(Lw4/f;)Ls4/j;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p1, Lw4/f;->a:Lw4/n;

    .line 8
    .line 9
    iget v3, v2, Lw4/n;->e:I

    .line 10
    .line 11
    const/4 v4, 0x6

    .line 12
    if-ne v3, v4, :cond_6

    .line 13
    .line 14
    iget-object v3, p0, La2/w0;->d:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v3, Ls4/f;

    .line 17
    .line 18
    invoke-virtual {p0, v3}, La2/w0;->c(Ls4/h;)V

    .line 19
    .line 20
    .line 21
    iget-boolean v3, v2, Lw4/n;->f:Z

    .line 22
    .line 23
    iget-object v4, p1, Lw4/c;->e:Lx4/a;

    .line 24
    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    new-instance v2, Ls4/g;

    .line 28
    .line 29
    iget-object p1, p1, Lw4/f;->d:Lw4/l;

    .line 30
    .line 31
    invoke-direct {v2, v1, v0, p1, v4}, Ls4/g;-><init>(Ls4/j;Lw4/p;Lw4/l;Lx4/a;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v2}, La2/w0;->c(Ls4/h;)V

    .line 35
    .line 36
    .line 37
    goto :goto_4

    .line 38
    :cond_0
    invoke-virtual {p0}, La2/w0;->H()Lw4/k;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-static {p1, v3}, Ll6/f;->c(Lw4/f;Lw4/k;)Lw4/l;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    iget-boolean v6, v1, Ls4/j;->e:Z

    .line 47
    .line 48
    const/4 v7, 0x1

    .line 49
    const/4 v8, 0x0

    .line 50
    iget v2, v2, Lw4/n;->a:I

    .line 51
    .line 52
    if-nez v6, :cond_2

    .line 53
    .line 54
    const/16 v6, 0x2b

    .line 55
    .line 56
    if-ne v2, v6, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    const/4 v6, 0x0

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    :goto_0
    const/4 v6, 0x1

    .line 62
    :goto_1
    if-eqz v3, :cond_3

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_3
    const/4 v7, 0x0

    .line 66
    :goto_2
    if-ne v6, v7, :cond_5

    .line 67
    .line 68
    const/16 p1, 0x29

    .line 69
    .line 70
    if-ne v2, p1, :cond_4

    .line 71
    .line 72
    const/16 p1, 0x23

    .line 73
    .line 74
    iget v2, v1, Ls4/j;->a:I

    .line 75
    .line 76
    if-eq v2, p1, :cond_4

    .line 77
    .line 78
    new-instance p1, Ls4/u;

    .line 79
    .line 80
    invoke-direct {p1, v1, v0, v5}, Ls4/u;-><init>(Ls4/j;Lw4/p;Lw4/l;)V

    .line 81
    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_4
    new-instance p1, Ls4/g;

    .line 85
    .line 86
    invoke-direct {p1, v1, v0, v5, v4}, Ls4/g;-><init>(Ls4/j;Lw4/p;Lw4/l;Lx4/a;)V

    .line 87
    .line 88
    .line 89
    :goto_3
    invoke-virtual {p0, p1}, La2/w0;->c(Ls4/h;)V

    .line 90
    .line 91
    .line 92
    :goto_4
    return-void

    .line 93
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    .line 94
    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    const-string v2, "Insn with result/move-result-pseudo mismatch "

    .line 98
    .line 99
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw v0

    .line 113
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    .line 114
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    const-string v1, "Expected BRANCH_THROW got "

    .line 118
    .line 119
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iget v1, v2, Lw4/n;->e:I

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw p1
.end method

.method public b([BIILi3/i;Lu1/f;)V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    const/16 v3, 0x80

    .line 7
    .line 8
    add-int v5, v1, p3

    .line 9
    .line 10
    iget-object v6, v0, La2/w0;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v6, Lu1/q;

    .line 13
    .line 14
    move-object/from16 v7, p1

    .line 15
    .line 16
    invoke-virtual {v6, v5, v7}, Lu1/q;->M(I[B)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v6, v1}, Lu1/q;->O(I)V

    .line 20
    .line 21
    .line 22
    iget-object v1, v0, La2/w0;->e:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v1, Ljava/util/zip/Inflater;

    .line 25
    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    new-instance v1, Ljava/util/zip/Inflater;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/util/zip/Inflater;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v1, v0, La2/w0;->e:Ljava/lang/Object;

    .line 34
    .line 35
    :cond_0
    iget-object v1, v0, La2/w0;->e:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v1, Ljava/util/zip/Inflater;

    .line 38
    .line 39
    sget-object v5, Lu1/f0;->a:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v6}, Lu1/q;->a()I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-lez v5, :cond_1

    .line 46
    .line 47
    invoke-virtual {v6}, Lu1/q;->k()I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    const/16 v7, 0x78

    .line 52
    .line 53
    if-ne v5, v7, :cond_1

    .line 54
    .line 55
    iget-object v5, v0, La2/w0;->c:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v5, Lu1/q;

    .line 58
    .line 59
    invoke-static {v6, v5, v1}, Lu1/f0;->A(Lu1/q;Lu1/q;Ljava/util/zip/Inflater;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_1

    .line 64
    .line 65
    iget-object v1, v5, Lu1/q;->a:[B

    .line 66
    .line 67
    iget v5, v5, Lu1/q;->c:I

    .line 68
    .line 69
    invoke-virtual {v6, v5, v1}, Lu1/q;->M(I[B)V

    .line 70
    .line 71
    .line 72
    :cond_1
    iget-object v1, v0, La2/w0;->d:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v1, Ll3/a;

    .line 75
    .line 76
    const/4 v5, 0x0

    .line 77
    iput v5, v1, Ll3/a;->d:I

    .line 78
    .line 79
    iput v5, v1, Ll3/a;->e:I

    .line 80
    .line 81
    iput v5, v1, Ll3/a;->f:I

    .line 82
    .line 83
    iput v5, v1, Ll3/a;->g:I

    .line 84
    .line 85
    iput v5, v1, Ll3/a;->h:I

    .line 86
    .line 87
    iput v5, v1, Ll3/a;->i:I

    .line 88
    .line 89
    iget-object v7, v1, Ll3/a;->a:Lu1/q;

    .line 90
    .line 91
    invoke-virtual {v7, v5}, Lu1/q;->L(I)V

    .line 92
    .line 93
    .line 94
    iput-boolean v5, v1, Ll3/a;->c:Z

    .line 95
    .line 96
    new-instance v13, Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .line 100
    .line 101
    :goto_0
    invoke-virtual {v6}, Lu1/q;->a()I

    .line 102
    .line 103
    .line 104
    move-result v8

    .line 105
    const/4 v9, 0x3

    .line 106
    if-lt v8, v9, :cond_15

    .line 107
    .line 108
    iget v8, v6, Lu1/q;->c:I

    .line 109
    .line 110
    invoke-virtual {v6}, Lu1/q;->B()I

    .line 111
    .line 112
    .line 113
    move-result v10

    .line 114
    invoke-virtual {v6}, Lu1/q;->I()I

    .line 115
    .line 116
    .line 117
    move-result v11

    .line 118
    iget v12, v6, Lu1/q;->b:I

    .line 119
    .line 120
    add-int/2addr v12, v11

    .line 121
    if-le v12, v8, :cond_2

    .line 122
    .line 123
    invoke-virtual {v6, v8}, Lu1/q;->O(I)V

    .line 124
    .line 125
    .line 126
    move-object v5, v13

    .line 127
    const/4 v2, 0x0

    .line 128
    const/4 v9, 0x1

    .line 129
    const/16 v11, 0x80

    .line 130
    .line 131
    const/4 v14, 0x0

    .line 132
    goto/16 :goto_c

    .line 133
    .line 134
    :cond_2
    iget-object v8, v1, Ll3/a;->b:[I

    .line 135
    .line 136
    if-eq v10, v3, :cond_c

    .line 137
    .line 138
    packed-switch v10, :pswitch_data_0

    .line 139
    .line 140
    .line 141
    :cond_3
    :goto_1
    move/from16 p3, v12

    .line 142
    .line 143
    move-object v5, v13

    .line 144
    goto/16 :goto_4

    .line 145
    .line 146
    :pswitch_0
    const/16 v8, 0x13

    .line 147
    .line 148
    if-ge v11, v8, :cond_4

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_4
    invoke-virtual {v6}, Lu1/q;->I()I

    .line 152
    .line 153
    .line 154
    move-result v8

    .line 155
    iput v8, v1, Ll3/a;->d:I

    .line 156
    .line 157
    invoke-virtual {v6}, Lu1/q;->I()I

    .line 158
    .line 159
    .line 160
    move-result v8

    .line 161
    iput v8, v1, Ll3/a;->e:I

    .line 162
    .line 163
    const/16 v8, 0xb

    .line 164
    .line 165
    invoke-virtual {v6, v8}, Lu1/q;->P(I)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v6}, Lu1/q;->I()I

    .line 169
    .line 170
    .line 171
    move-result v8

    .line 172
    iput v8, v1, Ll3/a;->f:I

    .line 173
    .line 174
    invoke-virtual {v6}, Lu1/q;->I()I

    .line 175
    .line 176
    .line 177
    move-result v8

    .line 178
    iput v8, v1, Ll3/a;->g:I

    .line 179
    .line 180
    goto :goto_1

    .line 181
    :pswitch_1
    if-ge v11, v2, :cond_5

    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_5
    invoke-virtual {v6, v9}, Lu1/q;->P(I)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v6}, Lu1/q;->B()I

    .line 188
    .line 189
    .line 190
    move-result v8

    .line 191
    and-int/2addr v8, v3

    .line 192
    if-eqz v8, :cond_6

    .line 193
    .line 194
    const/4 v8, 0x1

    .line 195
    goto :goto_2

    .line 196
    :cond_6
    const/4 v8, 0x0

    .line 197
    :goto_2
    add-int/lit8 v9, v11, -0x4

    .line 198
    .line 199
    if-eqz v8, :cond_9

    .line 200
    .line 201
    const/4 v8, 0x7

    .line 202
    if-ge v9, v8, :cond_7

    .line 203
    .line 204
    goto :goto_1

    .line 205
    :cond_7
    invoke-virtual {v6}, Lu1/q;->E()I

    .line 206
    .line 207
    .line 208
    move-result v8

    .line 209
    if-ge v8, v2, :cond_8

    .line 210
    .line 211
    goto :goto_1

    .line 212
    :cond_8
    invoke-virtual {v6}, Lu1/q;->I()I

    .line 213
    .line 214
    .line 215
    move-result v9

    .line 216
    iput v9, v1, Ll3/a;->h:I

    .line 217
    .line 218
    invoke-virtual {v6}, Lu1/q;->I()I

    .line 219
    .line 220
    .line 221
    move-result v9

    .line 222
    iput v9, v1, Ll3/a;->i:I

    .line 223
    .line 224
    sub-int/2addr v8, v2

    .line 225
    invoke-virtual {v7, v8}, Lu1/q;->L(I)V

    .line 226
    .line 227
    .line 228
    add-int/lit8 v9, v11, -0xb

    .line 229
    .line 230
    :cond_9
    iget v8, v7, Lu1/q;->b:I

    .line 231
    .line 232
    iget v10, v7, Lu1/q;->c:I

    .line 233
    .line 234
    if-ge v8, v10, :cond_3

    .line 235
    .line 236
    if-lez v9, :cond_3

    .line 237
    .line 238
    sub-int/2addr v10, v8

    .line 239
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    .line 240
    .line 241
    .line 242
    move-result v9

    .line 243
    iget-object v10, v7, Lu1/q;->a:[B

    .line 244
    .line 245
    invoke-virtual {v6, v8, v9, v10}, Lu1/q;->l(II[B)V

    .line 246
    .line 247
    .line 248
    add-int/2addr v8, v9

    .line 249
    invoke-virtual {v7, v8}, Lu1/q;->O(I)V

    .line 250
    .line 251
    .line 252
    goto :goto_1

    .line 253
    :pswitch_2
    rem-int/lit8 v9, v11, 0x5

    .line 254
    .line 255
    const/4 v10, 0x2

    .line 256
    if-eq v9, v10, :cond_a

    .line 257
    .line 258
    goto :goto_1

    .line 259
    :cond_a
    invoke-virtual {v6, v10}, Lu1/q;->P(I)V

    .line 260
    .line 261
    .line 262
    invoke-static {v8, v5}, Ljava/util/Arrays;->fill([II)V

    .line 263
    .line 264
    .line 265
    div-int/lit8 v11, v11, 0x5

    .line 266
    .line 267
    const/4 v9, 0x0

    .line 268
    :goto_3
    if-ge v9, v11, :cond_b

    .line 269
    .line 270
    invoke-virtual {v6}, Lu1/q;->B()I

    .line 271
    .line 272
    .line 273
    move-result v10

    .line 274
    invoke-virtual {v6}, Lu1/q;->B()I

    .line 275
    .line 276
    .line 277
    move-result v15

    .line 278
    invoke-virtual {v6}, Lu1/q;->B()I

    .line 279
    .line 280
    .line 281
    move-result v16

    .line 282
    invoke-virtual {v6}, Lu1/q;->B()I

    .line 283
    .line 284
    .line 285
    move-result v17

    .line 286
    invoke-virtual {v6}, Lu1/q;->B()I

    .line 287
    .line 288
    .line 289
    move-result v18

    .line 290
    int-to-double v14, v15

    .line 291
    add-int/lit8 v2, v16, -0x80

    .line 292
    .line 293
    int-to-double v4, v2

    .line 294
    const-wide v19, 0x3ff66e978d4fdf3bL    # 1.402

    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    .line 300
    .line 301
    .line 302
    mul-double v19, v19, v4

    .line 303
    .line 304
    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    .line 305
    .line 306
    .line 307
    move v2, v11

    .line 308
    move/from16 p3, v12

    .line 309
    .line 310
    add-double v11, v19, v14

    .line 311
    .line 312
    double-to-int v11, v11

    .line 313
    add-int/lit8 v12, v17, -0x80

    .line 314
    .line 315
    move-wide/from16 v19, v4

    .line 316
    .line 317
    int-to-double v3, v12

    .line 318
    const-wide v21, 0x3fd60663c74fb54aL    # 0.34414

    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    .line 324
    .line 325
    .line 326
    mul-double v21, v21, v3

    .line 327
    .line 328
    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    .line 329
    .line 330
    .line 331
    sub-double v21, v14, v21

    .line 332
    .line 333
    const-wide v23, 0x3fe6da3c21187e7cL    # 0.71414

    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->isNaN(D)Z

    .line 339
    .line 340
    .line 341
    mul-double v19, v19, v23

    .line 342
    .line 343
    move-object v5, v13

    .line 344
    sub-double v12, v21, v19

    .line 345
    .line 346
    double-to-int v12, v12

    .line 347
    const-wide v19, 0x3ffc5a1cac083127L    # 1.772

    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    .line 353
    .line 354
    .line 355
    mul-double v3, v3, v19

    .line 356
    .line 357
    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    .line 358
    .line 359
    .line 360
    add-double/2addr v3, v14

    .line 361
    double-to-int v3, v3

    .line 362
    shl-int/lit8 v4, v18, 0x18

    .line 363
    .line 364
    const/16 v13, 0xff

    .line 365
    .line 366
    const/4 v14, 0x0

    .line 367
    invoke-static {v11, v14, v13}, Lu1/f0;->g(III)I

    .line 368
    .line 369
    .line 370
    move-result v11

    .line 371
    shl-int/lit8 v11, v11, 0x10

    .line 372
    .line 373
    or-int/2addr v4, v11

    .line 374
    invoke-static {v12, v14, v13}, Lu1/f0;->g(III)I

    .line 375
    .line 376
    .line 377
    move-result v11

    .line 378
    shl-int/lit8 v11, v11, 0x8

    .line 379
    .line 380
    or-int/2addr v4, v11

    .line 381
    invoke-static {v3, v14, v13}, Lu1/f0;->g(III)I

    .line 382
    .line 383
    .line 384
    move-result v3

    .line 385
    or-int/2addr v3, v4

    .line 386
    aput v3, v8, v10

    .line 387
    .line 388
    const/4 v3, 0x1

    .line 389
    add-int/2addr v9, v3

    .line 390
    move/from16 v12, p3

    .line 391
    .line 392
    move v11, v2

    .line 393
    move-object v13, v5

    .line 394
    const/4 v2, 0x4

    .line 395
    const/16 v3, 0x80

    .line 396
    .line 397
    const/4 v5, 0x0

    .line 398
    goto/16 :goto_3

    .line 399
    .line 400
    :cond_b
    move/from16 p3, v12

    .line 401
    .line 402
    move-object v5, v13

    .line 403
    const/4 v3, 0x1

    .line 404
    iput-boolean v3, v1, Ll3/a;->c:Z

    .line 405
    .line 406
    :goto_4
    move/from16 v12, p3

    .line 407
    .line 408
    const/4 v2, 0x0

    .line 409
    const/4 v9, 0x1

    .line 410
    const/16 v11, 0x80

    .line 411
    .line 412
    const/4 v14, 0x0

    .line 413
    goto/16 :goto_b

    .line 414
    .line 415
    :cond_c
    move/from16 p3, v12

    .line 416
    .line 417
    move-object v5, v13

    .line 418
    iget v2, v1, Ll3/a;->d:I

    .line 419
    .line 420
    if-eqz v2, :cond_d

    .line 421
    .line 422
    iget v2, v1, Ll3/a;->e:I

    .line 423
    .line 424
    if-eqz v2, :cond_d

    .line 425
    .line 426
    iget v2, v1, Ll3/a;->h:I

    .line 427
    .line 428
    if-eqz v2, :cond_d

    .line 429
    .line 430
    iget v2, v1, Ll3/a;->i:I

    .line 431
    .line 432
    if-eqz v2, :cond_d

    .line 433
    .line 434
    iget v2, v7, Lu1/q;->c:I

    .line 435
    .line 436
    if-eqz v2, :cond_d

    .line 437
    .line 438
    iget v3, v7, Lu1/q;->b:I

    .line 439
    .line 440
    if-ne v3, v2, :cond_d

    .line 441
    .line 442
    iget-boolean v2, v1, Ll3/a;->c:Z

    .line 443
    .line 444
    if-nez v2, :cond_e

    .line 445
    .line 446
    :cond_d
    const/4 v9, 0x1

    .line 447
    const/16 v11, 0x80

    .line 448
    .line 449
    goto/16 :goto_9

    .line 450
    .line 451
    :cond_e
    const/4 v2, 0x0

    .line 452
    invoke-virtual {v7, v2}, Lu1/q;->O(I)V

    .line 453
    .line 454
    .line 455
    iget v2, v1, Ll3/a;->h:I

    .line 456
    .line 457
    iget v3, v1, Ll3/a;->i:I

    .line 458
    .line 459
    mul-int v2, v2, v3

    .line 460
    .line 461
    new-array v3, v2, [I

    .line 462
    .line 463
    const/4 v14, 0x0

    .line 464
    :goto_5
    if-ge v14, v2, :cond_13

    .line 465
    .line 466
    invoke-virtual {v7}, Lu1/q;->B()I

    .line 467
    .line 468
    .line 469
    move-result v4

    .line 470
    if-eqz v4, :cond_10

    .line 471
    .line 472
    const/4 v9, 0x1

    .line 473
    add-int/lit8 v10, v14, 0x1

    .line 474
    .line 475
    aget v4, v8, v4

    .line 476
    .line 477
    aput v4, v3, v14

    .line 478
    .line 479
    move v14, v10

    .line 480
    :cond_f
    const/16 v11, 0x80

    .line 481
    .line 482
    goto :goto_5

    .line 483
    :cond_10
    const/4 v9, 0x1

    .line 484
    invoke-virtual {v7}, Lu1/q;->B()I

    .line 485
    .line 486
    .line 487
    move-result v4

    .line 488
    if-eqz v4, :cond_f

    .line 489
    .line 490
    and-int/lit8 v10, v4, 0x40

    .line 491
    .line 492
    if-nez v10, :cond_11

    .line 493
    .line 494
    and-int/lit8 v10, v4, 0x3f

    .line 495
    .line 496
    :goto_6
    const/16 v11, 0x80

    .line 497
    .line 498
    goto :goto_7

    .line 499
    :cond_11
    and-int/lit8 v10, v4, 0x3f

    .line 500
    .line 501
    shl-int/lit8 v10, v10, 0x8

    .line 502
    .line 503
    invoke-virtual {v7}, Lu1/q;->B()I

    .line 504
    .line 505
    .line 506
    move-result v11

    .line 507
    or-int/2addr v10, v11

    .line 508
    goto :goto_6

    .line 509
    :goto_7
    and-int/2addr v4, v11

    .line 510
    if-nez v4, :cond_12

    .line 511
    .line 512
    const/4 v4, 0x0

    .line 513
    aget v12, v8, v4

    .line 514
    .line 515
    goto :goto_8

    .line 516
    :cond_12
    invoke-virtual {v7}, Lu1/q;->B()I

    .line 517
    .line 518
    .line 519
    move-result v4

    .line 520
    aget v12, v8, v4

    .line 521
    .line 522
    :goto_8
    add-int/2addr v10, v14

    .line 523
    invoke-static {v3, v14, v10, v12}, Ljava/util/Arrays;->fill([IIII)V

    .line 524
    .line 525
    .line 526
    move v14, v10

    .line 527
    goto :goto_5

    .line 528
    :cond_13
    const/4 v9, 0x1

    .line 529
    const/16 v11, 0x80

    .line 530
    .line 531
    iget v2, v1, Ll3/a;->h:I

    .line 532
    .line 533
    iget v4, v1, Ll3/a;->i:I

    .line 534
    .line 535
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 536
    .line 537
    invoke-static {v3, v2, v4, v8}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 538
    .line 539
    .line 540
    move-result-object v16

    .line 541
    iget v2, v1, Ll3/a;->f:I

    .line 542
    .line 543
    int-to-float v2, v2

    .line 544
    iget v3, v1, Ll3/a;->d:I

    .line 545
    .line 546
    int-to-float v3, v3

    .line 547
    div-float v20, v2, v3

    .line 548
    .line 549
    iget v2, v1, Ll3/a;->g:I

    .line 550
    .line 551
    int-to-float v2, v2

    .line 552
    iget v4, v1, Ll3/a;->e:I

    .line 553
    .line 554
    int-to-float v4, v4

    .line 555
    div-float v17, v2, v4

    .line 556
    .line 557
    iget v2, v1, Ll3/a;->h:I

    .line 558
    .line 559
    int-to-float v2, v2

    .line 560
    div-float v24, v2, v3

    .line 561
    .line 562
    iget v2, v1, Ll3/a;->i:I

    .line 563
    .line 564
    int-to-float v2, v2

    .line 565
    div-float v25, v2, v4

    .line 566
    .line 567
    new-instance v2, Lt1/b;

    .line 568
    .line 569
    move-object v12, v2

    .line 570
    const/16 v29, 0x0

    .line 571
    .line 572
    const/16 v30, 0x0

    .line 573
    .line 574
    const/4 v13, 0x0

    .line 575
    const/4 v14, 0x0

    .line 576
    move-object v15, v14

    .line 577
    const/16 v18, 0x0

    .line 578
    .line 579
    const/16 v19, 0x0

    .line 580
    .line 581
    const/16 v21, 0x0

    .line 582
    .line 583
    const/high16 v22, -0x80000000

    .line 584
    .line 585
    move/from16 v28, v22

    .line 586
    .line 587
    const v23, -0x800001

    .line 588
    .line 589
    .line 590
    const/16 v26, 0x0

    .line 591
    .line 592
    const/high16 v27, -0x1000000

    .line 593
    .line 594
    invoke-direct/range {v12 .. v30}, Lt1/b;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIFI)V

    .line 595
    .line 596
    .line 597
    move-object v14, v2

    .line 598
    const/4 v2, 0x0

    .line 599
    goto :goto_a

    .line 600
    :goto_9
    const/4 v2, 0x0

    .line 601
    const/4 v14, 0x0

    .line 602
    :goto_a
    iput v2, v1, Ll3/a;->d:I

    .line 603
    .line 604
    iput v2, v1, Ll3/a;->e:I

    .line 605
    .line 606
    iput v2, v1, Ll3/a;->f:I

    .line 607
    .line 608
    iput v2, v1, Ll3/a;->g:I

    .line 609
    .line 610
    iput v2, v1, Ll3/a;->h:I

    .line 611
    .line 612
    iput v2, v1, Ll3/a;->i:I

    .line 613
    .line 614
    invoke-virtual {v7, v2}, Lu1/q;->L(I)V

    .line 615
    .line 616
    .line 617
    iput-boolean v2, v1, Ll3/a;->c:Z

    .line 618
    .line 619
    move/from16 v12, p3

    .line 620
    .line 621
    :goto_b
    invoke-virtual {v6, v12}, Lu1/q;->O(I)V

    .line 622
    .line 623
    .line 624
    :goto_c
    if-eqz v14, :cond_14

    .line 625
    .line 626
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    .line 628
    .line 629
    :cond_14
    move-object v13, v5

    .line 630
    const/4 v2, 0x4

    .line 631
    const/16 v3, 0x80

    .line 632
    .line 633
    const/4 v5, 0x0

    .line 634
    goto/16 :goto_0

    .line 635
    .line 636
    :cond_15
    move-object v5, v13

    .line 637
    new-instance v1, Li3/a;

    .line 638
    .line 639
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    move-object v8, v1

    .line 650
    invoke-direct/range {v8 .. v13}, Li3/a;-><init>(JJLjava/util/List;)V

    .line 651
    .line 652
    .line 653
    move-object/from16 v2, p5

    .line 654
    .line 655
    invoke-interface {v2, v1}, Lu1/f;->accept(Ljava/lang/Object;)V

    .line 656
    .line 657
    .line 658
    return-void

    .line 659
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c(Ls4/h;)V
    .locals 1

    .line 1
    iget-object v0, p0, La2/w0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lkf/d;

    .line 4
    .line 5
    iget-object v0, v0, Lkf/d;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Ls4/r;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ls4/r;->a(Ls4/h;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public d(Lw4/h;)V
    .locals 6

    .line 1
    iget-object v0, p1, Lw4/f;->b:Lw4/p;

    .line 2
    .line 3
    invoke-static {p1}, Ls4/t;->a(Lw4/f;)Ls4/j;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p1, Lw4/f;->a:Lw4/n;

    .line 8
    .line 9
    iget v3, v2, Lw4/n;->a:I

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    iget v2, v2, Lw4/n;->e:I

    .line 13
    .line 14
    if-ne v2, v4, :cond_2

    .line 15
    .line 16
    const/4 v2, 0x3

    .line 17
    iget-object v4, p1, Lw4/c;->e:Lx4/a;

    .line 18
    .line 19
    iget-object v5, p1, Lw4/f;->c:Lw4/k;

    .line 20
    .line 21
    if-ne v3, v2, :cond_0

    .line 22
    .line 23
    iget-object p1, p0, La2/w0;->e:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p1, Ll6/f;

    .line 26
    .line 27
    iget-boolean v2, p1, Ll6/f;->c:Z

    .line 28
    .line 29
    if-nez v2, :cond_1

    .line 30
    .line 31
    check-cast v4, Lx4/j;

    .line 32
    .line 33
    iget v2, v4, Lx4/l;->a:I

    .line 34
    .line 35
    iget v3, p1, Ll6/f;->a:I

    .line 36
    .line 37
    iget p1, p1, Ll6/f;->b:I

    .line 38
    .line 39
    sub-int/2addr v3, p1

    .line 40
    add-int/2addr v3, v2

    .line 41
    iget-object p1, v5, Lw4/k;->b:Ly4/c;

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-static {v3, p1}, Lw4/k;->d(ILy4/c;)Lw4/k;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    new-instance v2, Ls4/u;

    .line 51
    .line 52
    invoke-static {v5, p1}, Lw4/l;->h(Lw4/k;Lw4/k;)Lw4/l;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-direct {v2, v1, v0, p1}, Ls4/u;-><init>(Ls4/j;Lw4/p;Lw4/l;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v2}, La2/w0;->c(Ls4/h;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    invoke-static {p1, v5}, Ll6/f;->c(Lw4/f;Lw4/k;)Lw4/l;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    new-instance v2, Ls4/g;

    .line 68
    .line 69
    invoke-direct {v2, v1, v0, p1, v4}, Ls4/g;-><init>(Ls4/j;Lw4/p;Lw4/l;Lx4/a;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v2}, La2/w0;->c(Ls4/h;)V

    .line 73
    .line 74
    .line 75
    :cond_1
    :goto_0
    return-void

    .line 76
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    .line 77
    .line 78
    const-string v0, "shouldn\'t happen"

    .line 79
    .line 80
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p1
.end method

.method public synthetic e(II[B)Li3/d;
    .locals 0

    .line 1
    invoke-static {p0, p3, p2}, Lg/b;->a(Li3/j;[BI)Li3/b;

    move-result-object p1

    return-object p1
.end method

.method public e0(ILjava/lang/Object;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput p1, v0, Landroid/os/Message;->what:I

    .line 6
    .line 7
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object p1, p0, La2/w0;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p1, Lcom/yunpan/appmanage/carsdk/u;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public g(Ljava/lang/String;Lfa/z;)V
    .locals 2

    .line 1
    iput-object p2, p0, La2/w0;->e:Ljava/lang/Object;

    .line 2
    .line 3
    sget-object p2, Lu9/d;->a:Ljava/util/concurrent/ExecutorService;

    .line 4
    .line 5
    new-instance v0, Lfa/u;

    .line 6
    .line 7
    const/4 v1, 0x6

    .line 8
    invoke-direct {v0, p0, p1, v1}, Lfa/u;-><init>(La2/w0;Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public g0()V
    .locals 10

    .line 1
    iget-object v0, p0, La2/w0;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    .line 4
    .line 5
    const v1, 0x1020048

    .line 6
    .line 7
    .line 8
    invoke-static {v1, v0}, Lx0/b1;->s(ILandroid/view/View;)V

    .line 9
    .line 10
    .line 11
    const v2, 0x1020049

    .line 12
    .line 13
    .line 14
    invoke-static {v2, v0}, Lx0/b1;->s(ILandroid/view/View;)V

    .line 15
    .line 16
    .line 17
    const v3, 0x1020046

    .line 18
    .line 19
    .line 20
    invoke-static {v3, v0}, Lx0/b1;->s(ILandroid/view/View;)V

    .line 21
    .line 22
    .line 23
    const v4, 0x1020047

    .line 24
    .line 25
    .line 26
    invoke-static {v4, v0}, Lx0/b1;->s(ILandroid/view/View;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/m1;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    if-nez v5, :cond_0

    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/m1;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-virtual {v5}, Landroidx/recyclerview/widget/m1;->b()I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-nez v5, :cond_1

    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    iget-boolean v6, v0, Landroidx/viewpager2/widget/ViewPager2;->s:Z

    .line 48
    .line 49
    if-nez v6, :cond_2

    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getOrientation()I

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    iget-object v7, p0, La2/w0;->c:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v7, Lm4/j;

    .line 59
    .line 60
    iget-object v8, p0, La2/w0;->b:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v8, Lm4/j;

    .line 63
    .line 64
    const/4 v9, 0x1

    .line 65
    if-nez v6, :cond_7

    .line 66
    .line 67
    iget-object v3, v0, Landroidx/viewpager2/widget/ViewPager2;->g:Lm4/h;

    .line 68
    .line 69
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-ne v3, v9, :cond_3

    .line 74
    .line 75
    const/4 v3, 0x1

    .line 76
    goto :goto_0

    .line 77
    :cond_3
    const/4 v3, 0x0

    .line 78
    :goto_0
    if-eqz v3, :cond_4

    .line 79
    .line 80
    const v4, 0x1020048

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_4
    const v4, 0x1020049

    .line 85
    .line 86
    .line 87
    :goto_1
    if-eqz v3, :cond_5

    .line 88
    .line 89
    const v1, 0x1020049

    .line 90
    .line 91
    .line 92
    :cond_5
    iget v2, v0, Landroidx/viewpager2/widget/ViewPager2;->d:I

    .line 93
    .line 94
    sub-int/2addr v5, v9

    .line 95
    if-ge v2, v5, :cond_6

    .line 96
    .line 97
    new-instance v2, Ly0/f;

    .line 98
    .line 99
    invoke-direct {v2, v4}, Ly0/f;-><init>(I)V

    .line 100
    .line 101
    .line 102
    invoke-static {v0, v2, v8}, Lx0/b1;->u(Landroid/view/View;Ly0/f;Ly0/a0;)V

    .line 103
    .line 104
    .line 105
    :cond_6
    iget v2, v0, Landroidx/viewpager2/widget/ViewPager2;->d:I

    .line 106
    .line 107
    if-lez v2, :cond_9

    .line 108
    .line 109
    new-instance v2, Ly0/f;

    .line 110
    .line 111
    invoke-direct {v2, v1}, Ly0/f;-><init>(I)V

    .line 112
    .line 113
    .line 114
    invoke-static {v0, v2, v7}, Lx0/b1;->u(Landroid/view/View;Ly0/f;Ly0/a0;)V

    .line 115
    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_7
    iget v1, v0, Landroidx/viewpager2/widget/ViewPager2;->d:I

    .line 119
    .line 120
    sub-int/2addr v5, v9

    .line 121
    if-ge v1, v5, :cond_8

    .line 122
    .line 123
    new-instance v1, Ly0/f;

    .line 124
    .line 125
    invoke-direct {v1, v4}, Ly0/f;-><init>(I)V

    .line 126
    .line 127
    .line 128
    invoke-static {v0, v1, v8}, Lx0/b1;->u(Landroid/view/View;Ly0/f;Ly0/a0;)V

    .line 129
    .line 130
    .line 131
    :cond_8
    iget v1, v0, Landroidx/viewpager2/widget/ViewPager2;->d:I

    .line 132
    .line 133
    if-lez v1, :cond_9

    .line 134
    .line 135
    new-instance v1, Ly0/f;

    .line 136
    .line 137
    invoke-direct {v1, v3}, Ly0/f;-><init>(I)V

    .line 138
    .line 139
    .line 140
    invoke-static {v0, v1, v7}, Lx0/b1;->u(Landroid/view/View;Ly0/f;Ly0/a0;)V

    .line 141
    .line 142
    .line 143
    :cond_9
    :goto_2
    return-void
.end method

.method public i(Lw4/r;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lw4/f;->b:Lw4/p;

    .line 2
    .line 3
    invoke-static {p1}, Ls4/t;->a(Lw4/f;)Ls4/j;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p1, Lw4/f;->a:Lw4/n;

    .line 8
    .line 9
    iget v2, v2, Lw4/n;->e:I

    .line 10
    .line 11
    const/4 v3, 0x6

    .line 12
    if-ne v2, v3, :cond_2

    .line 13
    .line 14
    invoke-virtual {p0}, La2/w0;->H()Lw4/k;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    iget-boolean v3, v1, Ls4/j;->e:Z

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    const/4 v4, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v4, 0x0

    .line 25
    :goto_0
    if-ne v3, v4, :cond_1

    .line 26
    .line 27
    iget-object v3, p0, La2/w0;->d:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v3, Ls4/f;

    .line 30
    .line 31
    invoke-virtual {p0, v3}, La2/w0;->c(Ls4/h;)V

    .line 32
    .line 33
    .line 34
    new-instance v3, Ls4/u;

    .line 35
    .line 36
    invoke-static {p1, v2}, Ll6/f;->c(Lw4/f;Lw4/k;)Lw4/l;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-direct {v3, v1, v0, p1}, Ls4/u;-><init>(Ls4/j;Lw4/p;Lw4/l;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v3}, La2/w0;->c(Ls4/h;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 48
    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v2, "Insn with result/move-result-pseudo mismatch"

    .line 52
    .line 53
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw v0

    .line 67
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    .line 68
    .line 69
    const-string v0, "shouldn\'t happen"

    .line 70
    .line 71
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw p1
.end method

.method public j(Lw4/i;)V
    .locals 6

    .line 1
    iget-object v0, p1, Lw4/f;->a:Lw4/n;

    .line 2
    .line 3
    iget v1, v0, Lw4/n;->a:I

    .line 4
    .line 5
    const/16 v2, 0x36

    .line 6
    .line 7
    if-ne v1, v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/16 v2, 0x38

    .line 11
    .line 12
    if-ne v1, v2, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    invoke-static {p1}, Ls4/t;->a(Lw4/f;)Ls4/j;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x1

    .line 20
    iget-object v3, p1, Lw4/f;->c:Lw4/k;

    .line 21
    .line 22
    iget-object v4, p1, Lw4/f;->b:Lw4/p;

    .line 23
    .line 24
    iget v0, v0, Lw4/n;->e:I

    .line 25
    .line 26
    if-eq v0, v2, :cond_5

    .line 27
    .line 28
    const/4 v5, 0x2

    .line 29
    if-eq v0, v5, :cond_5

    .line 30
    .line 31
    const/4 v5, 0x3

    .line 32
    if-eq v0, v5, :cond_4

    .line 33
    .line 34
    const/4 v5, 0x4

    .line 35
    if-eq v0, v5, :cond_3

    .line 36
    .line 37
    const/4 v2, 0x6

    .line 38
    if-ne v0, v2, :cond_2

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    .line 42
    .line 43
    const-string v0, "shouldn\'t happen"

    .line 44
    .line 45
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p1

    .line 49
    :cond_3
    iget-object v0, p0, La2/w0;->c:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v0, Lw4/a;

    .line 52
    .line 53
    iget-object v0, v0, Lw4/a;->c:Lb5/e;

    .line 54
    .line 55
    invoke-virtual {v0, v2}, Lb5/e;->e(I)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    new-instance v2, Ls4/v;

    .line 60
    .line 61
    invoke-static {p1, v3}, Ll6/f;->c(Lw4/f;Lw4/k;)Lw4/l;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iget-object v3, p0, La2/w0;->e:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v3, Ll6/f;

    .line 68
    .line 69
    iget-object v3, v3, Ll6/f;->e:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v3, Ls4/a;

    .line 72
    .line 73
    iget-object v3, v3, Ls4/a;->b:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v3, [Ls4/f;

    .line 76
    .line 77
    aget-object v0, v3, v0

    .line 78
    .line 79
    invoke-direct {v2, v1, v4, p1, v0}, Ls4/v;-><init>(Ls4/j;Lw4/p;Lw4/l;Ls4/f;)V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_4
    return-void

    .line 84
    :cond_5
    :goto_0
    new-instance v2, Ls4/u;

    .line 85
    .line 86
    invoke-static {p1, v3}, Ll6/f;->c(Lw4/f;Lw4/k;)Lw4/l;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-direct {v2, v1, v4, p1}, Ls4/u;-><init>(Ls4/j;Lw4/p;Lw4/l;)V

    .line 91
    .line 92
    .line 93
    :goto_1
    invoke-virtual {p0, v2}, La2/w0;->c(Ls4/h;)V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method public synthetic reset()V
    .locals 0

    .line 1
    return-void
.end method

.method public t()V
    .locals 3

    .line 1
    sget v0, Lcom/yunpan/appmanage/ui/ActivityAdb;->G:I

    .line 2
    .line 3
    iget-object v0, p0, La2/w0;->e:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityAdb;

    .line 6
    .line 7
    iget-object v1, v0, Lda/g;->A:Lda/g;

    .line 8
    .line 9
    invoke-static {v1}, Lpa/e;->b(Landroid/content/Context;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const-string v0, "\u7591\u662f\u4e71\u7528\uff0c\u62d2\u7edd\u60a8\u4f7f\u7528\u6b64\u529f\u80fd"

    .line 16
    .line 17
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v1, p0, La2/w0;->b:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v1, Ljava/lang/String;

    .line 24
    .line 25
    iget-object v2, p0, La2/w0;->d:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v2, Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v0, v1, v2}, Lcom/yunpan/appmanage/ui/ActivityAdb;->y(Lcom/yunpan/appmanage/ui/ActivityAdb;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, La2/w0;->a:I

    .line 2
    .line 3
    sparse-switch v0, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "StreamMap with indices of "

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, La2/w0;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, [I

    .line 21
    .line 22
    array-length v1, v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, " folders, offsets of "

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, La2/w0;->c:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v1, [J

    .line 34
    .line 35
    array-length v1, v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v1, " packed streams, first files of "

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, La2/w0;->d:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v1, [I

    .line 47
    .line 48
    array-length v1, v1

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v1, " folders and folder indices for "

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    iget-object v1, p0, La2/w0;->e:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v1, [I

    .line 60
    .line 61
    array-length v1, v1

    .line 62
    const-string v2, " files"

    .line 63
    .line 64
    invoke-static {v0, v1, v2}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    return-object v0

    .line 69
    :sswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v1, "horizontal="

    .line 72
    .line 73
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object v1, p0, La2/w0;->c:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v1, Landroidx/leanback/widget/x0;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, "; vertical="

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-object v1, p0, La2/w0;->b:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v1, Landroidx/leanback/widget/x0;

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    return-object v0

    .line 100
    nop

    .line 101
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method public v(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .locals 4

    .line 1
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_2

    .line 13
    .line 14
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, La2/w0;->c:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, La0/t;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, La0/t;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/util/ArrayList;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const/4 v2, 0x0

    .line 34
    :goto_0
    if-ge v2, v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {p0, v3, p2, p3}, La2/w0;->v(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    .line 41
    .line 42
    .line 43
    add-int/lit8 v2, v2, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    .line 54
    .line 55
    const-string p2, "This graph contains cyclic dependencies"

    .line 56
    .line 57
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    goto :goto_2

    .line 61
    :goto_1
    throw p1

    .line 62
    :goto_2
    goto :goto_1
.end method
