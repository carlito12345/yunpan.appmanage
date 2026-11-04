.class public final Ld2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2/n;
.implements Lxd/c;


# static fields
.field public static h:I = 0x1


# instance fields
.field public final synthetic a:I

.field public b:I

.field public c:Z

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Ld2/o;Lv3/f;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ld2/f;->a:I

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Ld2/f;->d:Ljava/lang/Object;

    .line 70
    new-instance p1, Ld2/i;

    invoke-direct {p1, p2}, Ld2/i;-><init>(Landroid/os/HandlerThread;)V

    iput-object p1, p0, Ld2/f;->e:Ljava/lang/Object;

    .line 71
    iput-object p3, p0, Ld2/f;->f:Ljava/lang/Object;

    .line 72
    iput-object p4, p0, Ld2/f;->g:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 73
    iput p1, p0, Ld2/f;->b:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lce/p;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    iput v2, v0, Ld2/f;->a:I

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    .line 2
    iput v2, v0, Ld2/f;->b:I

    const/4 v3, 0x0

    .line 3
    iput-object v3, v0, Ld2/f;->f:Ljava/lang/Object;

    .line 4
    iput-object v3, v0, Ld2/f;->g:Ljava/lang/Object;

    const/4 v4, 0x1

    .line 5
    iput-boolean v4, v0, Ld2/f;->c:Z

    .line 6
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    move-object v9, v3

    move-object v10, v9

    move-object v11, v10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 7
    :goto_0
    aget-char v12, v5, v6

    const/4 v13, 0x6

    const/16 v14, 0x3a

    if-eqz v7, :cond_a

    const/4 v15, 0x5

    const/4 v3, 0x2

    if-eq v7, v4, :cond_7

    if-eq v7, v3, :cond_9

    if-eq v7, v15, :cond_0

    .line 8
    array-length v6, v5

    goto/16 :goto_3

    :cond_0
    const/16 v3, 0x3d

    if-ne v12, v3, :cond_1

    .line 9
    invoke-virtual {v1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    :goto_1
    add-int/lit8 v8, v6, 0x1

    goto/16 :goto_3

    :cond_1
    const/16 v3, 0x2c

    if-eq v12, v3, :cond_2

    const/16 v3, 0x5d

    if-ne v12, v3, :cond_b

    .line 10
    :cond_2
    invoke-virtual {v1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 11
    const-string v12, "endpoint"

    if-nez v11, :cond_3

    move-object v11, v12

    .line 12
    :cond_3
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 14
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v10, Lxd/b;->c:Ljava/lang/String;

    .line 15
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 16
    const-string v11, "\\pipe\\"

    invoke-virtual {v3, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 17
    sget-object v11, Lxd/b;->h:Ljava/util/HashMap;

    invoke-virtual {v3, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 18
    invoke-virtual {v3, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    add-int/lit8 v12, v11, 0x1

    const/16 v14, 0x2e

    .line 19
    invoke-virtual {v3, v14, v12}, Ljava/lang/String;->indexOf(II)I

    move-result v14

    .line 20
    new-instance v15, Lxd/f;

    invoke-virtual {v3, v2, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v15, v11}, Lxd/f;-><init>(Ljava/lang/String;)V

    iput-object v15, v10, Lxd/b;->e:Lxd/f;

    .line 21
    invoke-virtual {v3, v12, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v10, Lxd/b;->f:I

    add-int/2addr v14, v4

    .line 22
    invoke-virtual {v3, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v10, Lxd/b;->g:I

    goto :goto_2

    .line 23
    :cond_4
    new-instance v1, Lch/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Bad endpoint: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v10, Lxd/b;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lch/a;-><init>(Ljava/lang/String;)V

    throw v1

    .line 24
    :cond_5
    iget-object v12, v10, Lxd/b;->d:Ljava/util/HashMap;

    if-nez v12, :cond_6

    .line 25
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    iput-object v12, v10, Lxd/b;->d:Ljava/util/HashMap;

    .line 26
    :cond_6
    iget-object v12, v10, Lxd/b;->d:Ljava/util/HashMap;

    invoke-virtual {v12, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    const/4 v11, 0x0

    goto :goto_3

    :cond_7
    const/16 v14, 0x5c

    if-ne v12, v14, :cond_8

    goto/16 :goto_1

    :cond_8
    const/4 v7, 0x2

    :cond_9
    const/16 v3, 0x5b

    if-ne v12, v3, :cond_b

    .line 27
    invoke-virtual {v1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 28
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    new-instance v10, Lxd/b;

    invoke-virtual {v1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v10, v9, v3}, Lxd/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v8, v6, 0x1

    const/4 v7, 0x5

    goto :goto_3

    :cond_a
    if-ne v12, v14, :cond_b

    .line 30
    invoke-virtual {v1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v8, v6, 0x1

    const/4 v7, 0x1

    :cond_b
    :goto_3
    add-int/2addr v6, v4

    .line 31
    array-length v3, v5

    if-lt v6, v3, :cond_12

    if-eqz v10, :cond_11

    .line 32
    iget-object v2, v10, Lxd/b;->c:Ljava/lang/String;

    if-eqz v2, :cond_11

    .line 33
    iput-object v10, v0, Ld2/f;->d:Ljava/lang/Object;

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "smb1://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v10, Lxd/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/IPC$/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lxd/b;->c:Ljava/lang/String;

    .line 35
    invoke-static {v2, v13, v1}, Landroid/support/v4/media/session/a;->p(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    .line 36
    iget-object v2, v10, Lxd/b;->d:Ljava/util/HashMap;

    if-eqz v2, :cond_c

    .line 37
    const-string v3, "server"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_4

    :cond_c
    const/4 v2, 0x0

    .line 38
    :goto_4
    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_d

    .line 39
    const-string v3, "&server="

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    .line 40
    :cond_d
    const-string v3, ""

    .line 41
    :goto_5
    iget-object v5, v10, Lxd/b;->d:Ljava/util/HashMap;

    if-eqz v5, :cond_e

    .line 42
    const-string v6, "address"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v16, v5

    goto :goto_6

    :cond_e
    const/16 v16, 0x0

    .line 43
    :goto_6
    move-object/from16 v5, v16

    check-cast v5, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 44
    const-string v2, "&address="

    .line 45
    invoke-static {v3, v2, v5}, Lg/b;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 46
    :cond_f
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_10

    .line 47
    const-string v2, "?"

    .line 48
    invoke-static {v1, v2}, Ld0/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 49
    invoke-static {v3, v4, v1}, Landroid/support/v4/media/session/a;->p(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    .line 50
    :cond_10
    new-instance v2, Lce/w0;

    move-object/from16 v3, p2

    invoke-direct {v2, v1, v3}, Lce/w0;-><init>(Ljava/lang/String;Lce/p;)V

    iput-object v2, v0, Ld2/f;->e:Ljava/lang/Object;

    return-void

    .line 51
    :cond_11
    new-instance v2, Lch/a;

    const-string v3, "Invalid binding URL: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lch/a;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_12
    move-object/from16 v3, p2

    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method public static b(Ld2/f;Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Ld2/f;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ld2/i;

    .line 4
    .line 5
    iget-object v1, v0, Ld2/i;->c:Landroid/os/Handler;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    invoke-static {v1}, La9/o;->t(Z)V

    .line 14
    .line 15
    .line 16
    iget-object v1, v0, Ld2/i;->b:Landroid/os/HandlerThread;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 19
    .line 20
    .line 21
    new-instance v1, Landroid/os/Handler;

    .line 22
    .line 23
    iget-object v3, v0, Ld2/i;->b:Landroid/os/HandlerThread;

    .line 24
    .line 25
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 30
    .line 31
    .line 32
    iget-object v3, p0, Ld2/f;->d:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v3, Landroid/media/MediaCodec;

    .line 35
    .line 36
    invoke-static {v3, v0, v1}, Ld2/c;->q(Landroid/media/MediaCodec;Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    .line 37
    .line 38
    .line 39
    iput-object v1, v0, Ld2/i;->c:Landroid/os/Handler;

    .line 40
    .line 41
    const-string v0, "configureCodec"

    .line 42
    .line 43
    invoke-static {v0}, Ltb/a;->k(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, p1, p2, p3, p4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 47
    .line 48
    .line 49
    invoke-static {}, Ltb/a;->h()V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Ld2/f;->f:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast p1, Ld2/o;

    .line 55
    .line 56
    invoke-interface {p1}, Ld2/o;->start()V

    .line 57
    .line 58
    .line 59
    const-string p1, "startCodec"

    .line 60
    .line 61
    invoke-static {p1}, Ltb/a;->k(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3}, Landroid/media/MediaCodec;->start()V

    .line 65
    .line 66
    .line 67
    invoke-static {}, Ltb/a;->h()V

    .line 68
    .line 69
    .line 70
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 71
    .line 72
    const/16 p2, 0x23

    .line 73
    .line 74
    if-lt p1, p2, :cond_2

    .line 75
    .line 76
    iget-object p1, p0, Ld2/f;->g:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast p1, Lv3/f;

    .line 79
    .line 80
    if-eqz p1, :cond_2

    .line 81
    .line 82
    iget-object p2, p1, Lv3/f;->d:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast p2, Landroid/media/LoudnessCodecController;

    .line 85
    .line 86
    if-eqz p2, :cond_1

    .line 87
    .line 88
    invoke-static {p2, v3}, Ld2/b;->e(Landroid/media/LoudnessCodecController;Landroid/media/MediaCodec;)Z

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    if-nez p2, :cond_1

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_1
    iget-object p1, p1, Lv3/f;->b:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast p1, Ljava/util/HashSet;

    .line 98
    .line 99
    invoke-virtual {p1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    invoke-static {p1}, La9/o;->t(Z)V

    .line 104
    .line 105
    .line 106
    :cond_2
    :goto_1
    iput v2, p0, Ld2/f;->b:I

    .line 107
    .line 108
    return-void
.end method

.method public static c(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    if-ne p0, p1, :cond_0

    .line 8
    .line 9
    const-string p0, "Audio"

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x2

    .line 16
    if-ne p0, p1, :cond_1

    .line 17
    .line 18
    const-string p0, "Video"

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const-string p1, "Unknown("

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p0, ")"

    .line 33
    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method


# virtual methods
.method public C(I)Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Ld2/f;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/media/MediaCodec;

    .line 4
    .line 5
    invoke-static {v0, p1}, Ld2/a;->n(Landroid/media/MediaCodec;I)Ljava/nio/ByteBuffer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public E(Landroid/view/Surface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld2/f;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/media/MediaCodec;

    .line 4
    .line 5
    invoke-static {v0, p1}, Ld2/c;->r(Landroid/media/MediaCodec;Landroid/view/Surface;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public H(I)Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Ld2/f;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/media/MediaCodec;

    .line 4
    .line 5
    invoke-static {v0, p1}, Landroidx/fragment/app/o1;->m(Landroid/media/MediaCodec;I)Ljava/nio/ByteBuffer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public I(Ljava/util/ArrayList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld2/f;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/media/MediaCodec;

    .line 4
    .line 5
    invoke-static {v0, p1}, La2/b;->D(Landroid/media/MediaCodec;Ljava/util/ArrayList;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public L(Ljava/util/ArrayList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld2/f;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/media/MediaCodec;

    .line 4
    .line 5
    invoke-static {v0, p1}, La2/b;->r(Landroid/media/MediaCodec;Ljava/util/ArrayList;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public a()V
    .locals 7

    .line 1
    const/16 v0, 0x21

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    const/16 v2, 0x23

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    :try_start_0
    iget v4, p0, Ld2/f;->b:I

    .line 9
    .line 10
    if-ne v4, v3, :cond_0

    .line 11
    .line 12
    iget-object v4, p0, Ld2/f;->f:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v4, Ld2/o;

    .line 15
    .line 16
    invoke-interface {v4}, Ld2/o;->shutdown()V

    .line 17
    .line 18
    .line 19
    iget-object v4, p0, Ld2/f;->e:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v4, Ld2/i;

    .line 22
    .line 23
    iget-object v5, v4, Ld2/i;->a:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 26
    :try_start_1
    iput-boolean v3, v4, Ld2/i;->m:Z

    .line 27
    .line 28
    iget-object v6, v4, Ld2/i;->b:Landroid/os/HandlerThread;

    .line 29
    .line 30
    invoke-virtual {v6}, Landroid/os/HandlerThread;->quit()Z

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4}, Ld2/i;->a()V

    .line 34
    .line 35
    .line 36
    monitor-exit v5

    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception v4

    .line 39
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    :try_start_2
    throw v4

    .line 41
    :catchall_1
    move-exception v4

    .line 42
    goto :goto_4

    .line 43
    :cond_0
    :goto_0
    const/4 v4, 0x2

    .line 44
    iput v4, p0, Ld2/f;->b:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 45
    .line 46
    iget-boolean v4, p0, Ld2/f;->c:Z

    .line 47
    .line 48
    if-nez v4, :cond_4

    .line 49
    .line 50
    :try_start_3
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 51
    .line 52
    if-lt v4, v1, :cond_1

    .line 53
    .line 54
    if-ge v4, v0, :cond_1

    .line 55
    .line 56
    iget-object v0, p0, Ld2/f;->d:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v0, Landroid/media/MediaCodec;

    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :catchall_2
    move-exception v0

    .line 65
    goto :goto_2

    .line 66
    :cond_1
    :goto_1
    if-lt v4, v2, :cond_2

    .line 67
    .line 68
    iget-object v0, p0, Ld2/f;->g:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v0, Lv3/f;

    .line 71
    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    iget-object v1, p0, Ld2/f;->d:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v1, Landroid/media/MediaCodec;

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Lv3/f;->M(Landroid/media/MediaCodec;)V

    .line 79
    .line 80
    .line 81
    :cond_2
    iget-object v0, p0, Ld2/f;->d:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v0, Landroid/media/MediaCodec;

    .line 84
    .line 85
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 86
    .line 87
    .line 88
    iput-boolean v3, p0, Ld2/f;->c:Z

    .line 89
    .line 90
    goto :goto_3

    .line 91
    :goto_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 92
    .line 93
    if-lt v1, v2, :cond_3

    .line 94
    .line 95
    iget-object v1, p0, Ld2/f;->g:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v1, Lv3/f;

    .line 98
    .line 99
    if-eqz v1, :cond_3

    .line 100
    .line 101
    iget-object v2, p0, Ld2/f;->d:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v2, Landroid/media/MediaCodec;

    .line 104
    .line 105
    invoke-virtual {v1, v2}, Lv3/f;->M(Landroid/media/MediaCodec;)V

    .line 106
    .line 107
    .line 108
    :cond_3
    iget-object v1, p0, Ld2/f;->d:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v1, Landroid/media/MediaCodec;

    .line 111
    .line 112
    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 113
    .line 114
    .line 115
    iput-boolean v3, p0, Ld2/f;->c:Z

    .line 116
    .line 117
    throw v0

    .line 118
    :cond_4
    :goto_3
    return-void

    .line 119
    :goto_4
    iget-boolean v5, p0, Ld2/f;->c:Z

    .line 120
    .line 121
    if-nez v5, :cond_8

    .line 122
    .line 123
    :try_start_4
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 124
    .line 125
    if-lt v5, v1, :cond_5

    .line 126
    .line 127
    if-ge v5, v0, :cond_5

    .line 128
    .line 129
    iget-object v0, p0, Ld2/f;->d:Ljava/lang/Object;

    .line 130
    .line 131
    check-cast v0, Landroid/media/MediaCodec;

    .line 132
    .line 133
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 134
    .line 135
    .line 136
    goto :goto_5

    .line 137
    :catchall_3
    move-exception v0

    .line 138
    goto :goto_6

    .line 139
    :cond_5
    :goto_5
    if-lt v5, v2, :cond_6

    .line 140
    .line 141
    iget-object v0, p0, Ld2/f;->g:Ljava/lang/Object;

    .line 142
    .line 143
    check-cast v0, Lv3/f;

    .line 144
    .line 145
    if-eqz v0, :cond_6

    .line 146
    .line 147
    iget-object v1, p0, Ld2/f;->d:Ljava/lang/Object;

    .line 148
    .line 149
    check-cast v1, Landroid/media/MediaCodec;

    .line 150
    .line 151
    invoke-virtual {v0, v1}, Lv3/f;->M(Landroid/media/MediaCodec;)V

    .line 152
    .line 153
    .line 154
    :cond_6
    iget-object v0, p0, Ld2/f;->d:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast v0, Landroid/media/MediaCodec;

    .line 157
    .line 158
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 159
    .line 160
    .line 161
    iput-boolean v3, p0, Ld2/f;->c:Z

    .line 162
    .line 163
    goto :goto_7

    .line 164
    :goto_6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 165
    .line 166
    if-lt v1, v2, :cond_7

    .line 167
    .line 168
    iget-object v1, p0, Ld2/f;->g:Ljava/lang/Object;

    .line 169
    .line 170
    check-cast v1, Lv3/f;

    .line 171
    .line 172
    if-eqz v1, :cond_7

    .line 173
    .line 174
    iget-object v2, p0, Ld2/f;->d:Ljava/lang/Object;

    .line 175
    .line 176
    check-cast v2, Landroid/media/MediaCodec;

    .line 177
    .line 178
    invoke-virtual {v1, v2}, Lv3/f;->M(Landroid/media/MediaCodec;)V

    .line 179
    .line 180
    .line 181
    :cond_7
    iget-object v1, p0, Ld2/f;->d:Ljava/lang/Object;

    .line 182
    .line 183
    check-cast v1, Landroid/media/MediaCodec;

    .line 184
    .line 185
    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 186
    .line 187
    .line 188
    iput-boolean v3, p0, Ld2/f;->c:Z

    .line 189
    .line 190
    throw v0

    .line 191
    :cond_8
    :goto_7
    throw v4
.end method

.method public d(ILx1/c;JI)V
    .locals 7

    .line 1
    iget-object v0, p0, Ld2/f;->f:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Ld2/o;

    .line 5
    .line 6
    move v2, p1

    .line 7
    move-object v3, p2

    .line 8
    move-wide v4, p3

    .line 9
    move v6, p5

    .line 10
    invoke-interface/range {v1 .. v6}, Ld2/o;->d(ILx1/c;JI)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public e(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld2/f;->f:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ld2/o;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ld2/o;->e(Landroid/os/Bundle;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public f([BZ)V
    .locals 5

    .line 1
    array-length v0, p1

    .line 2
    const/16 v1, 0x10b8

    .line 3
    .line 4
    if-lt v0, v1, :cond_6

    .line 5
    .line 6
    iget-boolean v0, p0, Ld2/f;->c:Z

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    iget-object p2, p0, Ld2/f;->f:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p2, Lce/u0;

    .line 16
    .line 17
    const/16 v0, 0x400

    .line 18
    .line 19
    invoke-virtual {p2, p1, v2, v0}, Lce/u0;->read([BII)I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object p2, p0, Ld2/f;->f:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p2, Lce/u0;

    .line 27
    .line 28
    array-length v0, p1

    .line 29
    invoke-virtual {p2, v2, v0, p1}, Lce/u0;->r(II[B)I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    :goto_0
    aget-byte v0, p1, v2

    .line 34
    .line 35
    const/4 v3, 0x5

    .line 36
    const/4 v4, 0x1

    .line 37
    if-eq v0, v3, :cond_2

    .line 38
    .line 39
    aget-byte v0, p1, v4

    .line 40
    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 45
    .line 46
    const-string p2, "Unexpected DCERPC PDU header"

    .line 47
    .line 48
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1

    .line 52
    :cond_2
    :goto_1
    const/4 v0, 0x3

    .line 53
    aget-byte v0, p1, v0

    .line 54
    .line 55
    const/4 v3, 0x2

    .line 56
    and-int/2addr v0, v3

    .line 57
    if-ne v0, v3, :cond_3

    .line 58
    .line 59
    const/4 v2, 0x1

    .line 60
    :cond_3
    iput-boolean v2, p0, Ld2/f;->c:Z

    .line 61
    .line 62
    const/16 v0, 0x8

    .line 63
    .line 64
    invoke-static {v0, p1}, La9/o;->B(I[B)S

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-gt v0, v1, :cond_5

    .line 69
    .line 70
    :goto_2
    if-ge p2, v0, :cond_4

    .line 71
    .line 72
    iget-object v1, p0, Ld2/f;->f:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v1, Lce/u0;

    .line 75
    .line 76
    sub-int v2, v0, p2

    .line 77
    .line 78
    invoke-virtual {v1, p2, v2, p1}, Lce/u0;->r(II[B)I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    add-int/2addr p2, v1

    .line 83
    goto :goto_2

    .line 84
    :cond_4
    return-void

    .line 85
    :cond_5
    new-instance p1, Ljava/io/IOException;

    .line 86
    .line 87
    const-string p2, "Unexpected fragment length: "

    .line 88
    .line 89
    invoke-static {v0, p2}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw p1

    .line 97
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 98
    .line 99
    const-string p2, "buffer too small"

    .line 100
    .line 101
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    goto :goto_4

    .line 105
    :goto_3
    throw p1

    .line 106
    :goto_4
    goto :goto_3
.end method

.method public flush()V
    .locals 6

    .line 1
    iget-object v0, p0, Ld2/f;->f:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ld2/o;

    .line 4
    .line 5
    invoke-interface {v0}, Ld2/o;->flush()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Ld2/f;->d:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Landroid/media/MediaCodec;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Ld2/f;->e:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Ld2/i;

    .line 18
    .line 19
    iget-object v1, v0, Ld2/i;->a:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter v1

    .line 22
    :try_start_0
    iget-wide v2, v0, Ld2/i;->l:J

    .line 23
    .line 24
    const-wide/16 v4, 0x1

    .line 25
    .line 26
    add-long/2addr v2, v4

    .line 27
    iput-wide v2, v0, Ld2/i;->l:J

    .line 28
    .line 29
    iget-object v2, v0, Ld2/i;->c:Landroid/os/Handler;

    .line 30
    .line 31
    sget-object v3, Lu1/f0;->a:Ljava/lang/String;

    .line 32
    .line 33
    new-instance v3, La2/h;

    .line 34
    .line 35
    const/16 v4, 0x10

    .line 36
    .line 37
    invoke-direct {v3, v4, v0}, La2/h;-><init>(ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 41
    .line 42
    .line 43
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    iget-object v0, p0, Ld2/f;->d:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v0, Landroid/media/MediaCodec;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    throw v0
.end method

.method public g(IIJI)V
    .locals 7

    .line 1
    iget-object v0, p0, Ld2/f;->f:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Ld2/o;

    .line 5
    .line 6
    move v2, p1

    .line 7
    move v3, p2

    .line 8
    move-wide v4, p3

    .line 9
    move v6, p5

    .line 10
    invoke-interface/range {v1 .. v6}, Ld2/o;->g(IIJI)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public h(I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Ld2/f;->d:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v1, Landroid/media/MediaCodec;

    .line 5
    .line 6
    invoke-virtual {v1, p1, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public i([BIIZ)V
    .locals 5

    .line 1
    iget-object v0, p0, Ld2/f;->g:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lce/v0;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, v0, Lce/v0;->a:Lce/t0;

    .line 8
    .line 9
    invoke-virtual {v0}, Lce/t0;->v()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 17
    .line 18
    const-string p2, "DCERPC pipe is no longer open"

    .line 19
    .line 20
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    :goto_0
    iget-object v0, p0, Ld2/f;->f:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, Lce/u0;

    .line 27
    .line 28
    iget-object v1, p0, Ld2/f;->e:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v1, Lce/w0;

    .line 31
    .line 32
    const/16 v2, 0x200

    .line 33
    .line 34
    const v3, -0xff01

    .line 35
    .line 36
    .line 37
    if-nez v0, :cond_4

    .line 38
    .line 39
    iget-object v0, v1, Lce/w0;->B:Lce/u0;

    .line 40
    .line 41
    if-nez v0, :cond_3

    .line 42
    .line 43
    iget v0, v1, Lce/w0;->D:I

    .line 44
    .line 45
    and-int/lit16 v4, v0, 0x200

    .line 46
    .line 47
    if-ne v4, v2, :cond_2

    .line 48
    .line 49
    new-instance v0, Lce/w1;

    .line 50
    .line 51
    invoke-direct {v0, v1}, Lce/w1;-><init>(Lce/w0;)V

    .line 52
    .line 53
    .line 54
    iput-object v0, v1, Lce/w0;->B:Lce/u0;

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    new-instance v4, Lce/u0;

    .line 58
    .line 59
    and-int/2addr v0, v3

    .line 60
    or-int/lit8 v0, v0, 0x20

    .line 61
    .line 62
    invoke-direct {v4, v1, v0}, Lce/u0;-><init>(Lce/t0;I)V

    .line 63
    .line 64
    .line 65
    iput-object v4, v1, Lce/w0;->B:Lce/u0;

    .line 66
    .line 67
    :cond_3
    :goto_1
    iget-object v0, v1, Lce/w0;->B:Lce/u0;

    .line 68
    .line 69
    iput-object v0, p0, Ld2/f;->f:Ljava/lang/Object;

    .line 70
    .line 71
    :cond_4
    iget-object v0, p0, Ld2/f;->g:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v0, Lce/v0;

    .line 74
    .line 75
    if-nez v0, :cond_7

    .line 76
    .line 77
    iget-object v0, v1, Lce/w0;->C:Lce/v0;

    .line 78
    .line 79
    if-nez v0, :cond_6

    .line 80
    .line 81
    iget v0, v1, Lce/w0;->D:I

    .line 82
    .line 83
    and-int/lit16 v4, v0, 0x200

    .line 84
    .line 85
    if-ne v4, v2, :cond_5

    .line 86
    .line 87
    new-instance v0, Lce/x1;

    .line 88
    .line 89
    invoke-direct {v0, v1}, Lce/x1;-><init>(Lce/w0;)V

    .line 90
    .line 91
    .line 92
    iput-object v0, v1, Lce/w0;->C:Lce/v0;

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_5
    new-instance v2, Lce/v0;

    .line 96
    .line 97
    and-int/2addr v0, v3

    .line 98
    or-int/lit8 v0, v0, 0x20

    .line 99
    .line 100
    invoke-direct {v2, v1, v0}, Lce/v0;-><init>(Lce/t0;I)V

    .line 101
    .line 102
    .line 103
    iput-object v2, v1, Lce/w0;->C:Lce/v0;

    .line 104
    .line 105
    :cond_6
    :goto_2
    iget-object v0, v1, Lce/w0;->C:Lce/v0;

    .line 106
    .line 107
    iput-object v0, p0, Ld2/f;->g:Ljava/lang/Object;

    .line 108
    .line 109
    :cond_7
    if-eqz p4, :cond_8

    .line 110
    .line 111
    iget-object p4, p0, Ld2/f;->g:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast p4, Lce/v0;

    .line 114
    .line 115
    const/4 v0, 0x1

    .line 116
    invoke-virtual {p4, p2, p3, v0, p1}, Lce/v0;->A(III[B)V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :cond_8
    iget-object p4, p0, Ld2/f;->g:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast p4, Lce/v0;

    .line 123
    .line 124
    invoke-virtual {p4, p1, p2, p3}, Lce/v0;->write([BII)V

    .line 125
    .line 126
    .line 127
    return-void
.end method

.method public j(Landroidx/media3/exoplayer/video/l;Landroid/os/Handler;)V
    .locals 2

    .line 1
    new-instance v0, Ld2/d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, p1, v1}, Ld2/d;-><init>(Ld2/n;Landroidx/media3/exoplayer/video/l;I)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Ld2/f;->d:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p1, Landroid/media/MediaCodec;

    .line 10
    .line 11
    invoke-static {p1, v0, p2}, La2/a;->q(Landroid/media/MediaCodec;Ld2/d;Landroid/os/Handler;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public k()Landroid/media/MediaFormat;
    .locals 2

    .line 1
    iget-object v0, p0, Ld2/f;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ld2/i;

    .line 4
    .line 5
    iget-object v1, v0, Ld2/i;->a:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v0, v0, Ld2/i;->h:Landroid/media/MediaFormat;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    monitor-exit v1

    .line 13
    return-object v0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 19
    .line 20
    .line 21
    throw v0

    .line 22
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v0
.end method

.method public l(La2/c0;)V
    .locals 2

    .line 1
    new-instance v0, La2/c0;

    .line 2
    .line 3
    const/16 v1, 0x11

    .line 4
    .line 5
    invoke-direct {v0, p0, v1, p1}, La2/c0;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Ld2/f;->e:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p1, Ld2/i;

    .line 11
    .line 12
    iget-object v1, p1, Ld2/i;->a:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v1

    .line 15
    :try_start_0
    invoke-virtual {p1}, Ld2/i;->b()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, La2/c0;->run()V

    .line 19
    .line 20
    .line 21
    monitor-exit v1

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p1
.end method

.method public m(La1/i;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Ld2/f;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ld2/i;

    .line 4
    .line 5
    iget-object v1, v0, Ld2/i;->a:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iput-object p1, v0, Ld2/i;->o:La1/i;

    .line 9
    .line 10
    monitor-exit v1

    .line 11
    const/4 p1, 0x1

    .line 12
    return p1

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p1
.end method

.method public n()V
    .locals 1

    .line 1
    iget-object v0, p0, Ld2/f;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/media/MediaCodec;

    .line 4
    .line 5
    invoke-static {v0}, Ld2/b;->d(Landroid/media/MediaCodec;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public o(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld2/f;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/media/MediaCodec;

    .line 4
    .line 5
    invoke-static {v0, p1, p2, p3}, Landroidx/fragment/app/o1;->s(Landroid/media/MediaCodec;IJ)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public p()I
    .locals 9

    .line 1
    iget-object v0, p0, Ld2/f;->f:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ld2/o;

    .line 4
    .line 5
    invoke-interface {v0}, Ld2/o;->h()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Ld2/f;->e:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Ld2/i;

    .line 11
    .line 12
    iget-object v1, v0, Ld2/i;->a:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v1

    .line 15
    :try_start_0
    invoke-virtual {v0}, Ld2/i;->b()V

    .line 16
    .line 17
    .line 18
    iget-wide v2, v0, Ld2/i;->l:J

    .line 19
    .line 20
    const-wide/16 v4, 0x0

    .line 21
    .line 22
    const/4 v6, 0x0

    .line 23
    const/4 v7, 0x1

    .line 24
    cmp-long v8, v2, v4

    .line 25
    .line 26
    if-gtz v8, :cond_1

    .line 27
    .line 28
    iget-boolean v2, v0, Ld2/i;->m:Z

    .line 29
    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v2, 0x0

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 36
    :goto_1
    const/4 v3, -0x1

    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    monitor-exit v1

    .line 40
    goto :goto_3

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    goto :goto_4

    .line 43
    :cond_2
    iget-object v0, v0, Ld2/i;->d:La0/g;

    .line 44
    .line 45
    iget v2, v0, La0/g;->a:I

    .line 46
    .line 47
    iget v4, v0, La0/g;->b:I

    .line 48
    .line 49
    if-ne v2, v4, :cond_3

    .line 50
    .line 51
    const/4 v6, 0x1

    .line 52
    :cond_3
    if-eqz v6, :cond_4

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_4
    if-eq v2, v4, :cond_5

    .line 56
    .line 57
    iget-object v3, v0, La0/g;->d:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v3, [I

    .line 60
    .line 61
    aget v3, v3, v2

    .line 62
    .line 63
    add-int/2addr v2, v7

    .line 64
    iget v4, v0, La0/g;->c:I

    .line 65
    .line 66
    and-int/2addr v2, v4

    .line 67
    iput v2, v0, La0/g;->a:I

    .line 68
    .line 69
    :goto_2
    monitor-exit v1

    .line 70
    :goto_3
    return v3

    .line 71
    :cond_5
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 72
    .line 73
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    .line 74
    .line 75
    .line 76
    throw v0

    .line 77
    :goto_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    throw v0
.end method

.method public q(Lxd/e;)V
    .locals 14

    .line 1
    iget v0, p0, Ld2/f;->b:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iput v1, p0, Ld2/f;->b:I

    .line 9
    .line 10
    new-instance v0, Lxd/a;

    .line 11
    .line 12
    iget-object v3, p0, Ld2/f;->d:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v3, Lxd/b;

    .line 15
    .line 16
    invoke-direct {v0, v3, p0}, Lxd/a;-><init>(Lxd/b;Ld2/f;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ld2/f;->q(Lxd/e;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    :try_start_1
    monitor-exit p0

    .line 23
    goto :goto_1

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception p1

    .line 27
    iput v2, p0, Ld2/f;->b:I

    .line 28
    .line 29
    throw p1

    .line 30
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    throw p1

    .line 32
    :cond_0
    :goto_1
    invoke-static {}, Lce/b;->a()[B

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :try_start_2
    new-instance v3, Ls3/d0;

    .line 37
    .line 38
    invoke-direct {v3, v0, v2}, Ls3/d0;-><init>([BI)V

    .line 39
    .line 40
    .line 41
    const/4 v4, 0x3

    .line 42
    iput v4, p1, Lxd/e;->c:I

    .line 43
    .line 44
    sget v5, Ld2/f;->h:I

    .line 45
    .line 46
    add-int/lit8 v6, v5, 0x1

    .line 47
    .line 48
    sput v6, Ld2/f;->h:I

    .line 49
    .line 50
    iput v5, p1, Lxd/e;->e:I

    .line 51
    .line 52
    invoke-virtual {p1, v3}, Lxd/e;->v(Ls3/d0;)V

    .line 53
    .line 54
    .line 55
    iget-object v5, v3, Ls3/d0;->f:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v5, Ls3/d0;

    .line 58
    .line 59
    iget v5, v5, Ls3/d0;->d:I

    .line 60
    .line 61
    const/16 v6, 0x18

    .line 62
    .line 63
    sub-int/2addr v5, v6

    .line 64
    const/4 v7, 0x0

    .line 65
    const/4 v8, 0x1

    .line 66
    :goto_2
    const/4 v9, 0x2

    .line 67
    const/16 v10, 0x10b8

    .line 68
    .line 69
    if-ge v7, v5, :cond_4

    .line 70
    .line 71
    sub-int v11, v5, v7

    .line 72
    .line 73
    add-int/lit8 v12, v11, 0x18

    .line 74
    .line 75
    if-le v12, v10, :cond_1

    .line 76
    .line 77
    iget v9, p1, Lxd/e;->c:I

    .line 78
    .line 79
    and-int/lit8 v9, v9, -0x3

    .line 80
    .line 81
    iput v9, p1, Lxd/e;->c:I

    .line 82
    .line 83
    const/16 v11, 0x10a0

    .line 84
    .line 85
    goto :goto_3

    .line 86
    :catchall_1
    move-exception p1

    .line 87
    goto/16 :goto_8

    .line 88
    .line 89
    :cond_1
    iget v8, p1, Lxd/e;->c:I

    .line 90
    .line 91
    or-int/2addr v8, v9

    .line 92
    iput v8, p1, Lxd/e;->c:I

    .line 93
    .line 94
    iput v11, p1, Lxd/e;->f:I

    .line 95
    .line 96
    const/4 v8, 0x0

    .line 97
    :goto_3
    add-int/lit8 v9, v11, 0x18

    .line 98
    .line 99
    iput v9, p1, Lxd/e;->d:I

    .line 100
    .line 101
    if-lez v7, :cond_2

    .line 102
    .line 103
    iget v9, p1, Lxd/e;->c:I

    .line 104
    .line 105
    and-int/lit8 v9, v9, -0x2

    .line 106
    .line 107
    iput v9, p1, Lxd/e;->c:I

    .line 108
    .line 109
    :cond_2
    iget v9, p1, Lxd/e;->c:I

    .line 110
    .line 111
    and-int/2addr v9, v4

    .line 112
    if-eq v9, v4, :cond_3

    .line 113
    .line 114
    iput v7, v3, Ls3/d0;->b:I

    .line 115
    .line 116
    iput v7, v3, Ls3/d0;->c:I

    .line 117
    .line 118
    iput v2, v3, Ls3/d0;->d:I

    .line 119
    .line 120
    iput-object v3, v3, Ls3/d0;->f:Ljava/lang/Object;

    .line 121
    .line 122
    invoke-virtual {p1, v3}, Lxd/e;->u0(Ls3/d0;)V

    .line 123
    .line 124
    .line 125
    iget v9, p1, Lxd/e;->f:I

    .line 126
    .line 127
    invoke-virtual {v3, v9}, Ls3/d0;->h(I)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3, v2}, Ls3/d0;->j(I)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Lxd/e;->w0()I

    .line 134
    .line 135
    .line 136
    move-result v9

    .line 137
    invoke-virtual {v3, v9}, Ls3/d0;->j(I)V

    .line 138
    .line 139
    .line 140
    :cond_3
    iget v9, p1, Lxd/e;->d:I

    .line 141
    .line 142
    invoke-virtual {p0, v0, v7, v9, v8}, Ld2/f;->i([BIIZ)V

    .line 143
    .line 144
    .line 145
    add-int/2addr v7, v11

    .line 146
    goto :goto_2

    .line 147
    :cond_4
    invoke-virtual {p0, v0, v8}, Ld2/f;->f([BZ)V

    .line 148
    .line 149
    .line 150
    iput v2, v3, Ls3/d0;->d:I

    .line 151
    .line 152
    iput-object v3, v3, Ls3/d0;->f:Ljava/lang/Object;

    .line 153
    .line 154
    const/16 v4, 0x8

    .line 155
    .line 156
    iput v4, v3, Ls3/d0;->c:I

    .line 157
    .line 158
    invoke-virtual {v3}, Ls3/d0;->d()I

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    iget-object v7, v3, Ls3/d0;->f:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast v7, Ls3/d0;

    .line 165
    .line 166
    iput v5, v7, Ls3/d0;->d:I

    .line 167
    .line 168
    iput v2, v3, Ls3/d0;->c:I

    .line 169
    .line 170
    invoke-virtual {p1, v3}, Lxd/e;->s0(Ls3/d0;)V

    .line 171
    .line 172
    .line 173
    iget v3, p1, Lxd/e;->b:I

    .line 174
    .line 175
    if-ne v3, v9, :cond_6

    .line 176
    .line 177
    iget v3, p1, Lxd/e;->c:I

    .line 178
    .line 179
    and-int/2addr v3, v9

    .line 180
    if-ne v3, v9, :cond_5

    .line 181
    .line 182
    const/4 v3, 0x1

    .line 183
    goto :goto_4

    .line 184
    :cond_5
    const/4 v3, 0x0

    .line 185
    :goto_4
    if-nez v3, :cond_6

    .line 186
    .line 187
    iget v3, p1, Lxd/e;->d:I

    .line 188
    .line 189
    goto :goto_5

    .line 190
    :cond_6
    const/16 v3, 0x18

    .line 191
    .line 192
    :goto_5
    const/4 v5, 0x0

    .line 193
    move-object v7, v5

    .line 194
    :goto_6
    iget v11, p1, Lxd/e;->c:I

    .line 195
    .line 196
    and-int/2addr v11, v9

    .line 197
    if-ne v11, v9, :cond_7

    .line 198
    .line 199
    const/4 v11, 0x1

    .line 200
    goto :goto_7

    .line 201
    :cond_7
    const/4 v11, 0x0

    .line 202
    :goto_7
    if-nez v11, :cond_a

    .line 203
    .line 204
    if-nez v5, :cond_8

    .line 205
    .line 206
    new-array v5, v10, [B

    .line 207
    .line 208
    new-instance v7, Ls3/d0;

    .line 209
    .line 210
    invoke-direct {v7, v5, v2}, Ls3/d0;-><init>([BI)V

    .line 211
    .line 212
    .line 213
    :cond_8
    invoke-virtual {p0, v5, v8}, Ld2/f;->f([BZ)V

    .line 214
    .line 215
    .line 216
    iget v11, v7, Ls3/d0;->b:I

    .line 217
    .line 218
    iput v2, v7, Ls3/d0;->d:I

    .line 219
    .line 220
    iput-object v7, v7, Ls3/d0;->f:Ljava/lang/Object;

    .line 221
    .line 222
    iput v4, v7, Ls3/d0;->c:I

    .line 223
    .line 224
    invoke-virtual {v7}, Ls3/d0;->d()I

    .line 225
    .line 226
    .line 227
    move-result v11

    .line 228
    iget-object v12, v7, Ls3/d0;->f:Ljava/lang/Object;

    .line 229
    .line 230
    check-cast v12, Ls3/d0;

    .line 231
    .line 232
    iput v11, v12, Ls3/d0;->d:I

    .line 233
    .line 234
    iget v11, v7, Ls3/d0;->b:I

    .line 235
    .line 236
    iput v11, v7, Ls3/d0;->c:I

    .line 237
    .line 238
    iput v2, v7, Ls3/d0;->d:I

    .line 239
    .line 240
    iput-object v7, v7, Ls3/d0;->f:Ljava/lang/Object;

    .line 241
    .line 242
    invoke-virtual {p1, v7}, Lxd/e;->s0(Ls3/d0;)V

    .line 243
    .line 244
    .line 245
    iget v11, p1, Lxd/e;->d:I

    .line 246
    .line 247
    sub-int/2addr v11, v6

    .line 248
    add-int v12, v3, v11

    .line 249
    .line 250
    array-length v13, v0

    .line 251
    if-le v12, v13, :cond_9

    .line 252
    .line 253
    new-array v13, v12, [B

    .line 254
    .line 255
    invoke-static {v0, v2, v13, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    .line 257
    .line 258
    move-object v0, v13

    .line 259
    :cond_9
    invoke-static {v5, v6, v0, v3, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 260
    .line 261
    .line 262
    move v3, v12

    .line 263
    goto :goto_6

    .line 264
    :cond_a
    new-instance v1, Ls3/d0;

    .line 265
    .line 266
    invoke-direct {v1, v0, v2}, Ls3/d0;-><init>([BI)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {p1, v1}, Lxd/e;->s(Ls3/d0;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 270
    .line 271
    .line 272
    invoke-static {v0}, Lce/b;->c([B)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {p1}, Lxd/e;->x0()Lch/a;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    if-nez p1, :cond_b

    .line 280
    .line 281
    return-void

    .line 282
    :cond_b
    throw p1

    .line 283
    :goto_8
    invoke-static {v0}, Lce/b;->c([B)V

    .line 284
    .line 285
    .line 286
    goto :goto_a

    .line 287
    :goto_9
    throw p1

    .line 288
    :goto_a
    goto :goto_9
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Ld2/f;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

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
    :pswitch_0
    iget-object v0, p0, Ld2/f;->d:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lxd/b;

    .line 14
    .line 15
    invoke-virtual {v0}, Lxd/b;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public u(Landroid/media/MediaCodec$BufferInfo;)I
    .locals 10

    .line 1
    iget-object v0, p0, Ld2/f;->f:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ld2/o;

    .line 4
    .line 5
    invoke-interface {v0}, Ld2/o;->h()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Ld2/f;->e:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Ld2/i;

    .line 11
    .line 12
    iget-object v1, v0, Ld2/i;->a:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v1

    .line 15
    :try_start_0
    invoke-virtual {v0}, Ld2/i;->b()V

    .line 16
    .line 17
    .line 18
    iget-wide v2, v0, Ld2/i;->l:J

    .line 19
    .line 20
    const-wide/16 v4, 0x0

    .line 21
    .line 22
    const/4 v6, 0x0

    .line 23
    const/4 v7, 0x1

    .line 24
    cmp-long v8, v2, v4

    .line 25
    .line 26
    if-gtz v8, :cond_1

    .line 27
    .line 28
    iget-boolean v2, v0, Ld2/i;->m:Z

    .line 29
    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v2, 0x0

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 36
    :goto_1
    const/4 v3, -0x1

    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    monitor-exit v1

    .line 40
    goto :goto_3

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    goto :goto_4

    .line 43
    :cond_2
    iget-object v2, v0, Ld2/i;->e:La0/g;

    .line 44
    .line 45
    iget v4, v2, La0/g;->a:I

    .line 46
    .line 47
    iget v5, v2, La0/g;->b:I

    .line 48
    .line 49
    if-ne v4, v5, :cond_3

    .line 50
    .line 51
    const/4 v6, 0x1

    .line 52
    :cond_3
    if-eqz v6, :cond_4

    .line 53
    .line 54
    monitor-exit v1

    .line 55
    goto :goto_3

    .line 56
    :cond_4
    if-eq v4, v5, :cond_7

    .line 57
    .line 58
    iget-object v3, v2, La0/g;->d:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v3, [I

    .line 61
    .line 62
    aget v3, v3, v4

    .line 63
    .line 64
    add-int/2addr v4, v7

    .line 65
    iget v5, v2, La0/g;->c:I

    .line 66
    .line 67
    and-int/2addr v4, v5

    .line 68
    iput v4, v2, La0/g;->a:I

    .line 69
    .line 70
    if-ltz v3, :cond_5

    .line 71
    .line 72
    iget-object v2, v0, Ld2/i;->h:Landroid/media/MediaFormat;

    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    iget-object v0, v0, Ld2/i;->f:Ljava/util/ArrayDeque;

    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Landroid/media/MediaCodec$BufferInfo;

    .line 84
    .line 85
    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 86
    .line 87
    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 88
    .line 89
    iget-wide v7, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 90
    .line 91
    iget v9, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 92
    .line 93
    move-object v4, p1

    .line 94
    invoke-virtual/range {v4 .. v9}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 95
    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_5
    const/4 p1, -0x2

    .line 99
    if-ne v3, p1, :cond_6

    .line 100
    .line 101
    iget-object p1, v0, Ld2/i;->g:Ljava/util/ArrayDeque;

    .line 102
    .line 103
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    check-cast p1, Landroid/media/MediaFormat;

    .line 108
    .line 109
    iput-object p1, v0, Ld2/i;->h:Landroid/media/MediaFormat;

    .line 110
    .line 111
    :cond_6
    :goto_2
    monitor-exit v1

    .line 112
    :goto_3
    return v3

    .line 113
    :cond_7
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 114
    .line 115
    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    .line 116
    .line 117
    .line 118
    throw p1

    .line 119
    :goto_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    throw p1
.end method

.method public y(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld2/f;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/media/MediaCodec;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
