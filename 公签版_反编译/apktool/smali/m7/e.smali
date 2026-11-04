.class public Lm7/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/u0;
.implements Lb6/a;
.implements Lbc/b;
.implements Lcom/bumptech/glide/manager/l;
.implements Ld2/m;
.implements Lf5/g;
.implements Lg3/g;


# static fields
.field public static b:Lm7/e;

.field public static volatile c:Lm7/e;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lm7/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Lm7/e;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    return-void
.end method

.method public static h(Lba/i;)Landroid/media/MediaCodec;
    .locals 2

    .line 1
    iget-object p0, p0, Lba/i;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ld2/q;

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "createCodec:"

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Ld2/q;->a:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Ltb/a;->k(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-static {}, Ltb/a;->h()V

    .line 29
    .line 30
    .line 31
    return-object p0
.end method

.method public static i(FFFF)Landroid/graphics/Path;
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Path;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0, p1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method


# virtual methods
.method public a([BLjava/lang/Object;Ljava/security/MessageDigest;)V
    .locals 0

    .line 1
    return-void
.end method

.method public b(Ljava/lang/Class;)Landroidx/lifecycle/r0;
    .locals 1

    .line 1
    new-instance p1, Landroidx/fragment/app/g1;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-direct {p1, v0}, Landroidx/fragment/app/g1;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    return-object p1
.end method

.method public c(Ll2/l;)J
    .locals 2

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    return-wide v0
.end method

.method public create()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lm7/e;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Lh5/y;

    .line 7
    .line 8
    invoke-direct {v0}, Lh5/y;-><init>()V

    .line 9
    .line 10
    .line 11
    return-object v0

    .line 12
    :pswitch_0
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    return-object v0

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public d()Ll2/c0;
    .locals 3

    .line 1
    new-instance v0, Ll2/s;

    .line 2
    .line 3
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Ll2/s;-><init>(J)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public e(Ljava/lang/Class;Lp1/c;)Landroidx/lifecycle/r0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lm7/e;->b(Ljava/lang/Class;)Landroidx/lifecycle/r0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public f(J)V
    .locals 0

    .line 1
    return-void
.end method

.method public g(Lcom/bumptech/glide/b;Lcom/bumptech/glide/manager/g;Lcom/bumptech/glide/manager/l;Landroid/content/Context;)Lcom/bumptech/glide/p;
    .locals 1

    .line 1
    iget v0, p0, Lm7/e;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/bumptech/glide/p;

    .line 7
    .line 8
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/bumptech/glide/p;-><init>(Lcom/bumptech/glide/b;Lcom/bumptech/glide/manager/g;Lcom/bumptech/glide/manager/l;Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    return-object v0

    .line 12
    :pswitch_0
    new-instance v0, Lla/d;

    .line 13
    .line 14
    invoke-direct {v0, p1, p2, p3, p4}, Lla/d;-><init>(Lcom/bumptech/glide/b;Lcom/bumptech/glide/manager/g;Lcom/bumptech/glide/manager/l;Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    return-object v0

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method public j(Ljava/lang/CharSequence;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public s(Lba/i;)Ld2/n;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p1}, Lm7/e;->h(Lba/i;)Landroid/media/MediaCodec;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    const-string v1, "configureCodec"

    .line 7
    .line 8
    invoke-static {v1}, Ltb/a;->k(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p1, Lba/i;->d:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Landroid/view/Surface;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    iget-object v2, p1, Lba/i;->a:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v2, Ld2/q;

    .line 20
    .line 21
    iget-boolean v2, v2, Ld2/q;->h:Z

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 26
    .line 27
    const/16 v3, 0x23

    .line 28
    .line 29
    if-lt v2, v3, :cond_0

    .line 30
    .line 31
    const/16 v2, 0x8

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception p1

    .line 35
    goto :goto_1

    .line 36
    :catch_1
    move-exception p1

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    const/4 v2, 0x0

    .line 39
    :goto_0
    iget-object v3, p1, Lba/i;->b:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v3, Landroid/media/MediaFormat;

    .line 42
    .line 43
    iget-object v4, p1, Lba/i;->e:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v4, Landroid/media/MediaCrypto;

    .line 46
    .line 47
    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 48
    .line 49
    .line 50
    invoke-static {}, Ltb/a;->h()V

    .line 51
    .line 52
    .line 53
    const-string v1, "startCodec"

    .line 54
    .line 55
    invoke-static {v1}, Ltb/a;->k(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 59
    .line 60
    .line 61
    invoke-static {}, Ltb/a;->h()V

    .line 62
    .line 63
    .line 64
    new-instance v1, La2/g1;

    .line 65
    .line 66
    iget-object p1, p1, Lba/i;->f:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast p1, Lv3/f;

    .line 69
    .line 70
    invoke-direct {v1, v0, p1}, La2/g1;-><init>(Landroid/media/MediaCodec;Lv3/f;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .line 72
    .line 73
    return-object v1

    .line 74
    :goto_1
    if-eqz v0, :cond_1

    .line 75
    .line 76
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 77
    .line 78
    .line 79
    :cond_1
    throw p1
.end method

.method public v()[Ljava/lang/String;
    .locals 11

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    const/4 v2, 0x6

    .line 5
    const/4 v3, 0x5

    .line 6
    const/4 v4, 0x4

    .line 7
    const/4 v5, 0x3

    .line 8
    const/4 v6, 0x2

    .line 9
    const/4 v7, 0x1

    .line 10
    const/4 v8, 0x0

    .line 11
    iget v9, p0, Lm7/e;->a:I

    .line 12
    .line 13
    packed-switch v9, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    const/16 v9, 0xc

    .line 17
    .line 18
    new-array v9, v9, [Ljava/lang/String;

    .line 19
    .line 20
    const-string v10, "CURRENT_YEAR"

    .line 21
    .line 22
    aput-object v10, v9, v8

    .line 23
    .line 24
    const-string v8, "CURRENT_YEAR_SHORT"

    .line 25
    .line 26
    aput-object v8, v9, v7

    .line 27
    .line 28
    const-string v7, "CURRENT_MONTH"

    .line 29
    .line 30
    aput-object v7, v9, v6

    .line 31
    .line 32
    const-string v6, "CURRENT_DATE"

    .line 33
    .line 34
    aput-object v6, v9, v5

    .line 35
    .line 36
    const-string v5, "CURRENT_HOUR"

    .line 37
    .line 38
    aput-object v5, v9, v4

    .line 39
    .line 40
    const-string v4, "CURRENT_MINUTE"

    .line 41
    .line 42
    aput-object v4, v9, v3

    .line 43
    .line 44
    const-string v3, "CURRENT_SECOND"

    .line 45
    .line 46
    aput-object v3, v9, v2

    .line 47
    .line 48
    const-string v2, "CURRENT_DAY_NAME"

    .line 49
    .line 50
    aput-object v2, v9, v1

    .line 51
    .line 52
    const-string v1, "CURRENT_DAY_NAME_SHORT"

    .line 53
    .line 54
    aput-object v1, v9, v0

    .line 55
    .line 56
    const-string v0, "CURRENT_MONTH_NAME"

    .line 57
    .line 58
    const/16 v1, 0x9

    .line 59
    .line 60
    aput-object v0, v9, v1

    .line 61
    .line 62
    const-string v0, "CURRENT_MONTH_NAME_SHORT"

    .line 63
    .line 64
    const/16 v1, 0xa

    .line 65
    .line 66
    aput-object v0, v9, v1

    .line 67
    .line 68
    const-string v0, "CURRENT_SECONDS_UNIX"

    .line 69
    .line 70
    const/16 v1, 0xb

    .line 71
    .line 72
    aput-object v0, v9, v1

    .line 73
    .line 74
    return-object v9

    .line 75
    :pswitch_0
    new-array v0, v0, [Ljava/lang/String;

    .line 76
    .line 77
    const-string v9, "TM_CURRENT_LINE"

    .line 78
    .line 79
    aput-object v9, v0, v8

    .line 80
    .line 81
    const-string v8, "TM_LINE_INDEX"

    .line 82
    .line 83
    aput-object v8, v0, v7

    .line 84
    .line 85
    const-string v7, "TM_LINE_NUMBER"

    .line 86
    .line 87
    aput-object v7, v0, v6

    .line 88
    .line 89
    const-string v6, "CURSOR_INDEX"

    .line 90
    .line 91
    aput-object v6, v0, v5

    .line 92
    .line 93
    const-string v5, "CURSOR_NUMBER"

    .line 94
    .line 95
    aput-object v5, v0, v4

    .line 96
    .line 97
    const-string v4, "TM_CURRENT_WORD"

    .line 98
    .line 99
    aput-object v4, v0, v3

    .line 100
    .line 101
    const-string v3, "SELECTION"

    .line 102
    .line 103
    aput-object v3, v0, v2

    .line 104
    .line 105
    const-string v2, "TM_SELECTED_TEXT"

    .line 106
    .line 107
    aput-object v2, v0, v1

    .line 108
    .line 109
    return-object v0

    .line 110
    :pswitch_1
    new-array v0, v7, [Ljava/lang/String;

    .line 111
    .line 112
    const-string v1, "CLIPBOARD"

    .line 113
    .line 114
    aput-object v1, v0, v8

    .line 115
    .line 116
    return-object v0

    .line 117
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
