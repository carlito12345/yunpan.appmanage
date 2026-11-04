.class public final synthetic La2/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, La2/c0;->a:I

    iput-object p1, p0, La2/c0;->b:Ljava/lang/Object;

    iput-object p3, p0, La2/c0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lma/i;Ljava/lang/String;Lma/g;)V
    .locals 0

    .line 2
    const/16 p3, 0x1a

    iput p3, p0, La2/c0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La2/c0;->b:Ljava/lang/Object;

    iput-object p2, p0, La2/c0;->c:Ljava/lang/Object;

    return-void
.end method

.method private final a()V
    .locals 5

    .line 1
    const-string v0, "\n"

    .line 2
    .line 3
    iget-object v1, p0, La2/c0;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lha/qd;

    .line 6
    .line 7
    iget-object v2, p0, La2/c0;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    :try_start_0
    iget-object v3, v1, Lha/qd;->g:Lgh/a;

    .line 15
    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    invoke-virtual {v3}, Lch/d;->f()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    iget-object v3, v1, Lha/qd;->p:Lgh/c;

    .line 25
    .line 26
    if-nez v3, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :try_start_1
    iget-object v4, v1, Lha/qd;->p:Lgh/c;

    .line 31
    .line 32
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sget-object v2, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v4, v0}, Lgh/c;->write([B)V

    .line 43
    .line 44
    .line 45
    iget-object v0, v1, Lha/qd;->p:Lgh/c;

    .line 46
    .line 47
    invoke-virtual {v0}, Lgh/c;->flush()V

    .line 48
    .line 49
    .line 50
    monitor-exit v3

    .line 51
    goto :goto_1

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    :try_start_2
    throw v0

    .line 55
    :cond_1
    :goto_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    const-string v0, "\u8fde\u63a5\u5df2\u65ad\u5f00"

    .line 61
    .line 62
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :catch_0
    const-string v0, "\u53d1\u9001\u5931\u8d25"

    .line 67
    .line 68
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :goto_1
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    move-object/from16 v1, p0

    const/4 v0, 0x3

    const/16 v5, 0x12d

    const/16 v6, 0x64

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget v9, v1, La2/c0;->a:I

    packed-switch v9, :pswitch_data_0

    iget-object v0, v1, La2/c0;->c:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lea/b;

    iget-object v0, v1, La2/c0;->b:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lra/c;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    const-string v4, "\u558a\u8bdd\u62a5\u9519\uff1a"

    :try_start_0
    iget-object v0, v3, Lra/c;->k:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 2
    iget-object v0, v3, Lra/c;->j:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    if-eqz v2, :cond_0

    .line 3
    invoke-interface {v2, v7}, Lea/b;->f(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_2

    .line 4
    :cond_0
    :goto_0
    invoke-virtual {v3}, Lra/c;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_1
    :goto_1
    invoke-virtual {v3}, Lra/c;->c()V

    goto :goto_3

    .line 6
    :goto_2
    :try_start_1
    iget-object v5, v3, Lra/c;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    :cond_2
    if-eqz v2, :cond_1

    .line 7
    invoke-interface {v2, v8}, Lea/b;->f(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_3
    return-void

    .line 8
    :goto_4
    invoke-virtual {v3}, Lra/c;->c()V

    .line 9
    throw v0

    .line 10
    :pswitch_0
    iget-object v0, v1, La2/c0;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    iget-object v2, v1, La2/c0;->b:Ljava/lang/Object;

    check-cast v2, Lq/g0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    :try_start_2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 12
    invoke-virtual {v2}, Lq/g0;->a()V

    return-void

    :catchall_1
    move-exception v0

    move-object v3, v0

    invoke-virtual {v2}, Lq/g0;->a()V

    .line 13
    throw v3

    .line 14
    :pswitch_1
    iget-object v0, v1, La2/c0;->b:Ljava/lang/Object;

    check-cast v0, Lo0/b;

    iget-object v2, v1, La2/c0;->c:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Lo0/b;->i(Landroid/graphics/Typeface;)V

    return-void

    .line 15
    :pswitch_2
    iget-object v0, v1, La2/c0;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v1, La2/c0;->b:Ljava/lang/Object;

    check-cast v2, Lma/i;

    invoke-virtual {v2, v0}, Lma/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 16
    iget-object v2, v2, Lma/i;->j:Lma/f;

    invoke-virtual {v2, v6, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 17
    :pswitch_3
    iget-object v0, v1, La2/c0;->b:Ljava/lang/Object;

    check-cast v0, Lk2/k;

    iget-object v2, v0, Lk2/k;->g:Landroid/graphics/SurfaceTexture;

    .line 18
    iget-object v3, v0, Lk2/k;->h:Landroid/view/Surface;

    .line 19
    new-instance v4, Landroid/view/Surface;

    iget-object v5, v1, La2/c0;->c:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/SurfaceTexture;

    invoke-direct {v4, v5}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 20
    iput-object v5, v0, Lk2/k;->g:Landroid/graphics/SurfaceTexture;

    .line 21
    iput-object v4, v0, Lk2/k;->h:Landroid/view/Surface;

    .line 22
    iget-object v0, v0, Lk2/k;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ly1/t;

    .line 23
    iget-object v5, v5, Ly1/t;->a:Ly1/x;

    .line 24
    invoke-virtual {v5, v4}, Ly1/x;->b0(Ljava/lang/Object;)V

    goto :goto_5

    :cond_3
    if-eqz v2, :cond_4

    .line 25
    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->release()V

    :cond_4
    if-eqz v3, :cond_5

    .line 26
    invoke-virtual {v3}, Landroid/view/Surface;->release()V

    :cond_5
    return-void

    .line 27
    :pswitch_4
    iget-object v0, v1, La2/c0;->b:Ljava/lang/Object;

    check-cast v0, Lhi/e;

    iget-object v2, v0, Lhi/e;->e:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ServiceConnection;

    .line 28
    iget-object v4, v0, Lhi/e;->f:Landroid/content/ComponentName;

    iget-object v5, v1, La2/c0;->c:Ljava/lang/Object;

    check-cast v5, Landroid/os/IBinder;

    invoke-interface {v3, v4, v5}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_6

    :cond_6
    return-void

    .line 29
    :pswitch_5
    invoke-direct/range {p0 .. p0}, La2/c0;->a()V

    return-void

    :pswitch_6
    iget-object v0, v1, La2/c0;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Process;

    iget-object v2, v1, La2/c0;->c:Ljava/lang/Object;

    check-cast v2, Lfa/a0;

    .line 30
    :try_start_3
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 31
    :goto_7
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 32
    iget-object v4, v2, Lfa/a0;->b:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v2, v0

    goto :goto_8

    .line 33
    :cond_7
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_b

    :catch_1
    move-exception v0

    goto :goto_a

    .line 34
    :goto_8
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_9

    :catchall_3
    move-exception v0

    move-object v3, v0

    :try_start_7
    const-class v0, Ljava/lang/Throwable;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :try_start_8
    const-string v4, "addSuppressed"

    new-array v5, v7, [Ljava/lang/Class;

    aput-object v0, v5, v8

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v3, v4, v8

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    :catch_2
    :goto_9
    :try_start_9
    throw v2
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 35
    :goto_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_b
    return-void

    .line 36
    :pswitch_7
    iget-object v0, v1, La2/c0;->b:Ljava/lang/Object;

    check-cast v0, Lfa/j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    new-instance v2, Lfa/i;

    invoke-direct {v2}, Lfa/i;-><init>()V

    .line 38
    iget-object v3, v0, Lfa/j;->c:Ljava/net/Socket;

    iget-object v4, v0, Lfa/j;->l:Lcom/yunpan/appmanage/carsdk/u;

    if-eqz v3, :cond_d

    iget-object v3, v0, Lfa/j;->d:Ly9/f;

    if-eqz v3, :cond_d

    .line 39
    iget-boolean v3, v3, Ly9/f;->f:Z

    if-eqz v3, :cond_8

    goto/16 :goto_e

    .line 40
    :cond_8
    iget-object v3, v1, La2/c0;->c:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string v5, "adb shell "

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/16 v5, 0xa

    .line 41
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 42
    :cond_9
    const-string v5, "adb "

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    const/4 v5, 0x4

    .line 43
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 44
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 45
    iput v8, v2, Lfa/i;->a:I

    .line 46
    const-string v0, "\u9519\u8bef\u7684\u547d\u4ee4"

    iput-object v0, v2, Lfa/i;->b:Ljava/lang/String;

    .line 47
    iget-object v3, v2, Lfa/i;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 48
    :cond_a
    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    const-string v10, ":"

    if-eqz v9, :cond_b

    .line 49
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v3, v8, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, v7

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_c

    .line 50
    :cond_b
    invoke-virtual {v3, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 51
    :goto_c
    :try_start_a
    invoke-virtual {v0, v3}, Lfa/j;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lfa/i;->b:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 52
    :catch_3
    iput v8, v2, Lfa/i;->a:I

    .line 53
    iget-object v0, v2, Lfa/i;->c:Ljava/util/ArrayList;

    iget-object v3, v2, Lfa/i;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 54
    :cond_c
    :try_start_b
    invoke-virtual {v0, v3}, Lfa/j;->n(Ljava/lang/String;)Lfa/i;

    move-result-object v2
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_d

    :catch_4
    const/16 v0, 0x194

    .line 55
    iput v0, v2, Lfa/i;->a:I

    .line 56
    const-string v0, "\u6267\u884c\u5931\u8d25"

    iput-object v0, v2, Lfa/i;->b:Ljava/lang/String;

    .line 57
    iget-object v0, v2, Lfa/i;->c:Ljava/util/ArrayList;

    iget-object v3, v2, Lfa/i;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    :goto_d
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 59
    iput v6, v0, Landroid/os/Message;->what:I

    .line 60
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 61
    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_f

    :cond_d
    :goto_e
    const/4 v0, -0x1

    .line 62
    iput v0, v2, Lfa/i;->a:I

    .line 63
    const-string v0, "\u672a\u8fde\u63a5adb"

    iput-object v0, v2, Lfa/i;->b:Ljava/lang/String;

    .line 64
    iget-object v3, v2, Lfa/i;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 66
    iput v6, v0, Landroid/os/Message;->what:I

    .line 67
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 68
    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_f
    return-void

    .line 69
    :pswitch_8
    iget-object v0, v1, La2/c0;->b:Ljava/lang/Object;

    check-cast v0, Lf2/u0;

    iget-object v2, v1, La2/c0;->c:Ljava/lang/Object;

    check-cast v2, Ll2/c0;

    invoke-virtual {v0, v2}, Lf2/u0;->C(Ll2/c0;)V

    return-void

    .line 70
    :pswitch_9
    iget-object v0, v1, La2/c0;->b:Ljava/lang/Object;

    check-cast v0, Lu1/f;

    iget-object v2, v1, La2/c0;->c:Ljava/lang/Object;

    invoke-interface {v0, v2}, Lu1/f;->accept(Ljava/lang/Object;)V

    return-void

    .line 71
    :pswitch_a
    iget-object v0, v1, La2/c0;->b:Ljava/lang/Object;

    check-cast v0, Ld2/u;

    iget-object v2, v0, Ld2/u;->F:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v3, v0, Ld2/u;->z:Lx1/g;

    iget-object v4, v1, La2/c0;->c:Ljava/lang/Object;

    check-cast v4, Lua/i8;

    invoke-virtual {v0, v4, v3, v8}, Ly1/a;->w(Lua/i8;Lx1/g;I)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void

    .line 72
    :pswitch_b
    iget-object v0, v1, La2/c0;->b:Ljava/lang/Object;

    check-cast v0, Ld2/f;

    iget-object v2, v0, Ld2/f;->f:Ljava/lang/Object;

    check-cast v2, Ld2/o;

    invoke-interface {v2}, Ld2/o;->h()V

    .line 73
    iget-object v0, v0, Ld2/f;->e:Ljava/lang/Object;

    check-cast v0, Ld2/i;

    iget-object v2, v1, La2/c0;->c:Ljava/lang/Object;

    check-cast v2, La2/c0;

    .line 74
    iget-object v6, v0, Ld2/i;->a:Ljava/lang/Object;

    monitor-enter v6

    .line 75
    :try_start_c
    invoke-virtual {v0}, Ld2/i;->b()V

    .line 76
    invoke-virtual {v2}, La2/c0;->run()V

    .line 77
    monitor-exit v6

    return-void

    :catchall_4
    move-exception v0

    monitor-exit v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw v0

    .line 78
    :pswitch_c
    iget-object v0, v1, La2/c0;->b:Ljava/lang/Object;

    check-cast v0, Lba/i;

    .line 79
    new-instance v6, Lja/b;

    invoke-direct {v6}, Lja/b;-><init>()V

    iput-object v6, v0, Lba/i;->e:Ljava/lang/Object;

    .line 80
    const-string v9, "\u5206\u6790\u4e2d"

    iput-object v9, v6, Lja/b;->c:Ljava/lang/String;

    .line 81
    iget-object v9, v1, La2/c0;->c:Ljava/lang/Object;

    move-object v15, v9

    check-cast v15, Lcom/yunpan/appmanage/bean/FileCopyBean;

    iget-object v9, v15, Lcom/yunpan/appmanage/bean/FileCopyBean;->files:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    iput v9, v6, Lja/b;->f:I

    .line 82
    iget-object v6, v0, Lba/i;->e:Ljava/lang/Object;

    check-cast v6, Lja/b;

    iget-object v9, v15, Lcom/yunpan/appmanage/bean/FileCopyBean;->fromDir:Ljava/lang/String;

    iput-object v9, v6, Lja/b;->a:Ljava/lang/String;

    .line 83
    iget-object v9, v15, Lcom/yunpan/appmanage/bean/FileCopyBean;->toDir:Ljava/lang/String;

    iput-object v9, v6, Lja/b;->b:Ljava/lang/String;

    .line 84
    iget-object v6, v15, Lcom/yunpan/appmanage/bean/FileCopyBean;->files:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lx9/w3;

    .line 85
    iget-object v10, v0, Lba/i;->e:Ljava/lang/Object;

    check-cast v10, Lja/b;

    iget-object v10, v10, Lja/b;->h:Ljava/util/concurrent/atomic/AtomicLong;

    iget-wide v11, v9, Lx9/w3;->d:J

    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    goto :goto_10

    .line 86
    :cond_e
    iget-object v6, v0, Lba/i;->f:Ljava/lang/Object;

    check-cast v6, Lcom/yunpan/appmanage/carsdk/u;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 87
    iget-object v9, v15, Lcom/yunpan/appmanage/bean/FileCopyBean;->dirs:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_11
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    sget-object v14, Lfa/a;->a:Lfa/b;

    const-string v13, "//"

    const-string v12, "/"

    if-eqz v10, :cond_10

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lx9/w3;

    .line 88
    :try_start_d
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v15, Lcom/yunpan/appmanage/bean/FileCopyBean;->toDir:Ljava/lang/String;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v10, Lx9/w3;->b:Ljava/lang/String;

    iget-object v10, v15, Lcom/yunpan/appmanage/bean/FileCopyBean;->fromDir:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 89
    invoke-virtual {v8, v13, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 90
    iget-object v10, v14, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    invoke-interface {v10, v8}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->file_exists(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_f

    :goto_12
    const/4 v8, 0x0

    goto :goto_11

    .line 91
    :cond_f
    iget-object v10, v14, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    invoke-interface {v10, v8}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->file_mkdirs(Ljava/lang/String;)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    goto :goto_12

    :catch_5
    nop

    goto :goto_12

    .line 92
    :cond_10
    iget-object v8, v0, Lba/i;->e:Ljava/lang/Object;

    check-cast v8, Lja/b;

    const-string v9, "\u62f7\u8d1d\u4e2d"

    iput-object v9, v8, Lja/b;->c:Ljava/lang/String;

    .line 93
    new-instance v8, Lcom/yunpan/appmanage/util/r;

    invoke-direct {v8}, Lcom/yunpan/appmanage/util/r;-><init>()V

    .line 94
    iget-object v9, v15, Lcom/yunpan/appmanage/bean/FileCopyBean;->files:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_13
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    iget-object v10, v0, Lba/i;->d:Ljava/lang/Object;

    check-cast v10, Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v9, :cond_11

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lx9/w3;

    .line 95
    iget-object v11, v0, Lba/i;->e:Ljava/lang/Object;

    check-cast v11, Lja/b;

    iget-boolean v11, v11, Lja/b;->l:Z

    if-eqz v11, :cond_12

    :cond_11
    move-object/from16 v17, v14

    goto/16 :goto_16

    .line 96
    :cond_12
    new-instance v11, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v15, Lcom/yunpan/appmanage/bean/FileCopyBean;->toDir:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Lx9/w3;->b:Ljava/lang/String;

    iget-object v3, v15, Lcom/yunpan/appmanage/bean/FileCopyBean;->fromDir:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v13, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v11, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    iget-object v2, v9, Lx9/w3;->b:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 98
    iget-wide v2, v9, Lx9/w3;->d:J

    invoke-virtual {v0, v2, v3}, Lba/i;->c(J)V

    :goto_14
    const/4 v7, 0x1

    goto :goto_13

    .line 99
    :cond_13
    iget-boolean v2, v15, Lcom/yunpan/appmanage/bean/FileCopyBean;->isDelete:Z

    if-eqz v2, :cond_14

    .line 100
    :try_start_e
    iget-object v2, v14, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    iget-object v3, v9, Lx9/w3;->b:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->file_rename(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    goto :goto_15

    .line 101
    :catch_6
    iget-wide v2, v9, Lx9/w3;->d:J

    invoke-virtual {v0, v2, v3}, Lba/i;->c(J)V

    goto :goto_14

    .line 102
    :cond_14
    :goto_15
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 103
    new-instance v2, Lcom/yunpan/appmanage/util/p;

    new-instance v3, Ljava/io/File;

    iget-object v4, v9, Lx9/w3;->b:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    move-object v9, v2

    move-object v10, v0

    move-object v7, v11

    move-object v11, v3

    move-object v3, v12

    move-object v12, v7

    move-object v7, v13

    move-object v13, v8

    move-object/from16 v17, v14

    move v14, v4

    invoke-direct/range {v9 .. v14}, Lcom/yunpan/appmanage/util/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object v4, v0, Lba/i;->c:Ljava/lang/Object;

    check-cast v4, Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    move-object v12, v3

    move-object v13, v7

    move-object/from16 v14, v17

    goto :goto_14

    .line 104
    :goto_16
    iget-object v2, v0, Lba/i;->e:Ljava/lang/Object;

    check-cast v2, Lja/b;

    iget-boolean v3, v2, Lja/b;->l:Z

    if-eqz v3, :cond_15

    .line 105
    const-string v3, "\u6b63\u5728\u505c\u6b62\u4e2d"

    iput-object v3, v2, Lja/b;->c:Ljava/lang/String;

    .line 106
    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 107
    :cond_15
    :goto_17
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-eqz v2, :cond_16

    const-wide/16 v2, 0xc8

    .line 108
    :try_start_f
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    goto :goto_17

    :catch_7
    nop

    goto :goto_17

    .line 109
    :cond_16
    iget-object v0, v0, Lba/i;->e:Ljava/lang/Object;

    check-cast v0, Lja/b;

    iget-boolean v0, v0, Lja/b;->l:Z

    if-eqz v0, :cond_17

    .line 110
    invoke-virtual {v6}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v2, 0x12c

    .line 111
    iput v2, v0, Landroid/os/Message;->what:I

    .line 112
    iput-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 113
    invoke-virtual {v6, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1c

    .line 114
    :cond_17
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 115
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 116
    iget-object v2, v15, Lcom/yunpan/appmanage/bean/FileCopyBean;->toDir:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/yunpan/appmanage/util/k;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 117
    iget-object v0, v15, Lcom/yunpan/appmanage/bean/FileCopyBean;->fromPaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lx9/w3;

    .line 118
    iget-boolean v3, v2, Lx9/w3;->c:Z

    if-eqz v3, :cond_18

    .line 119
    sget-object v3, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 120
    iget-object v3, v3, Lcom/yunpan/appmanage/util/k;->f0:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/yunpan/appmanage/util/z;

    new-instance v5, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v15, Lcom/yunpan/appmanage/bean/FileCopyBean;->toDir:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lx9/w3;->a:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/yunpan/appmanage/util/z;-><init>(Ljava/io/File;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-object/from16 v3, v17

    goto :goto_19

    :cond_18
    move-object/from16 v3, v17

    .line 121
    :try_start_10
    iget-object v4, v3, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v15, Lcom/yunpan/appmanage/bean/FileCopyBean;->toDir:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lx9/w3;->a:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->file_exists(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 122
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v15, Lcom/yunpan/appmanage/bean/FileCopyBean;->toDir:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lx9/w3;->a:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/yunpan/appmanage/db/MyDb;->addFile(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_8

    goto :goto_19

    :catch_8
    nop

    :cond_19
    :goto_19
    move-object/from16 v17, v3

    goto :goto_18

    :cond_1a
    move-object/from16 v3, v17

    .line 123
    iget-object v0, v8, Lcom/yunpan/appmanage/util/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-boolean v0, v15, Lcom/yunpan/appmanage/bean/FileCopyBean;->isDelete:Z

    if-eqz v0, :cond_20

    .line 124
    iget-object v0, v15, Lcom/yunpan/appmanage/bean/FileCopyBean;->fromPaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lx9/w3;

    .line 125
    iget-object v4, v15, Lcom/yunpan/appmanage/bean/FileCopyBean;->fromPaths:Ljava/util/List;

    iget-object v5, v15, Lcom/yunpan/appmanage/bean/FileCopyBean;->toDir:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v9, 0x1

    sub-int/2addr v7, v9

    const/4 v9, 0x0

    invoke-virtual {v5, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    goto :goto_1a

    .line 126
    :cond_1b
    :try_start_11
    iget-object v4, v3, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    iget-object v5, v2, Lx9/w3;->b:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->file_delete(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    goto :goto_1a

    .line 127
    :cond_1c
    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    throw v4
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_9

    .line 128
    :catch_9
    sget-object v4, Lfa/b0;->a:La2/w0;

    .line 129
    iget-object v2, v2, Lx9/w3;->b:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, La2/w0;->B(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1a

    .line 130
    :cond_1d
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 131
    iget-object v2, v15, Lcom/yunpan/appmanage/bean/FileCopyBean;->fromDir:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/yunpan/appmanage/util/k;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 132
    iget-object v0, v15, Lcom/yunpan/appmanage/bean/FileCopyBean;->fromPaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1e
    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lx9/w3;

    .line 133
    iget-boolean v4, v2, Lx9/w3;->c:Z

    if-eqz v4, :cond_1f

    .line 134
    sget-object v4, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 135
    iget-object v4, v4, Lcom/yunpan/appmanage/util/k;->f0:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/yunpan/appmanage/util/z;

    new-instance v7, Ljava/io/File;

    iget-object v2, v2, Lx9/w3;->b:Ljava/lang/String;

    invoke-direct {v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v7}, Lcom/yunpan/appmanage/util/z;-><init>(Ljava/io/File;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_1b

    .line 136
    :cond_1f
    :try_start_12
    iget-object v4, v3, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    iget-object v5, v2, Lx9/w3;->b:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->file_exists(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1e

    .line 137
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yunpan/appmanage/db/MyDb;->getFileInfoDao()Lcom/yunpan/appmanage/db/FileInfoDao;

    move-result-object v4

    iget-object v2, v2, Lx9/w3;->b:Ljava/lang/String;

    invoke-interface {v4, v2}, Lcom/yunpan/appmanage/db/FileInfoDao;->delete(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_a

    goto :goto_1b

    :catch_a
    nop

    goto :goto_1b

    .line 138
    :cond_20
    invoke-virtual {v6}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v2, 0x12c

    .line 139
    iput v2, v0, Landroid/os/Message;->what:I

    .line 140
    iput-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 141
    invoke-virtual {v6, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_1c
    return-void

    .line 142
    :pswitch_d
    iget-object v0, v1, La2/c0;->b:Ljava/lang/Object;

    check-cast v0, Lw/r3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    new-instance v2, Lja/b;

    invoke-direct {v2}, Lja/b;-><init>()V

    iput-object v2, v0, Lw/r3;->f:Ljava/lang/Object;

    .line 144
    const-string v3, "\u5206\u6790\u4e2d"

    iput-object v3, v2, Lja/b;->c:Ljava/lang/String;

    .line 145
    iget-object v3, v1, La2/c0;->c:Ljava/lang/Object;

    check-cast v3, Lcom/yunpan/appmanage/bean/FileCopyBean;

    iget-object v4, v3, Lcom/yunpan/appmanage/bean/FileCopyBean;->files:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iput v4, v2, Lja/b;->f:I

    .line 146
    iget-object v2, v0, Lw/r3;->f:Ljava/lang/Object;

    check-cast v2, Lja/b;

    iget-object v4, v3, Lcom/yunpan/appmanage/bean/FileCopyBean;->fromDir:Ljava/lang/String;

    iput-object v4, v2, Lja/b;->a:Ljava/lang/String;

    .line 147
    iget-object v4, v3, Lcom/yunpan/appmanage/bean/FileCopyBean;->toDir:Ljava/lang/String;

    iput-object v4, v2, Lja/b;->b:Ljava/lang/String;

    .line 148
    iget-object v2, v3, Lcom/yunpan/appmanage/bean/FileCopyBean;->files:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lx9/w3;

    .line 149
    iget-object v6, v0, Lw/r3;->f:Ljava/lang/Object;

    check-cast v6, Lja/b;

    iget-object v6, v6, Lja/b;->h:Ljava/util/concurrent/atomic/AtomicLong;

    iget-wide v7, v4, Lx9/w3;->d:J

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    goto :goto_1d

    .line 150
    :cond_21
    iget-object v2, v0, Lw/r3;->g:Ljava/lang/Object;

    check-cast v2, Lcom/yunpan/appmanage/carsdk/u;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 151
    iget-object v4, v3, Lcom/yunpan/appmanage/bean/FileCopyBean;->dirs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v12, "//"

    const-string v13, "/"

    if-eqz v6, :cond_23

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lx9/w3;

    .line 152
    :try_start_13
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v3, Lcom/yunpan/appmanage/bean/FileCopyBean;->toDir:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Lx9/w3;->b:Ljava/lang/String;

    iget-object v8, v3, Lcom/yunpan/appmanage/bean/FileCopyBean;->fromDir:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 153
    invoke-virtual {v6, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 154
    invoke-static {v6}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    move-result v7
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_c

    if-eqz v7, :cond_22

    goto :goto_1e

    .line 155
    :cond_22
    :try_start_14
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_b

    goto :goto_1e

    .line 156
    :catch_b
    :try_start_15
    sget-object v7, Lfa/b0;->a:La2/w0;

    .line 157
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mkdir -p \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\""

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_c

    goto :goto_1e

    :catch_c
    nop

    goto :goto_1e

    .line 158
    :cond_23
    iget-object v4, v0, Lw/r3;->f:Ljava/lang/Object;

    check-cast v4, Lja/b;

    const-string v6, "\u62f7\u8d1d\u4e2d"

    iput-object v6, v4, Lja/b;->c:Ljava/lang/String;

    .line 159
    new-instance v4, Lcom/yunpan/appmanage/util/q;

    invoke-direct {v4}, Lcom/yunpan/appmanage/util/q;-><init>()V

    .line 160
    iget-object v6, v3, Lcom/yunpan/appmanage/bean/FileCopyBean;->files:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1f
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    iget-object v7, v0, Lw/r3;->e:Ljava/lang/Object;

    check-cast v7, Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v6, :cond_27

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lx9/w3;

    .line 161
    iget-object v8, v0, Lw/r3;->f:Ljava/lang/Object;

    check-cast v8, Lja/b;

    iget-boolean v8, v8, Lja/b;->l:Z

    if-eqz v8, :cond_24

    goto :goto_20

    .line 162
    :cond_24
    new-instance v9, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v3, Lcom/yunpan/appmanage/bean/FileCopyBean;->toDir:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v6, Lx9/w3;->b:Ljava/lang/String;

    iget-object v11, v3, Lcom/yunpan/appmanage/bean/FileCopyBean;->fromDir:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 163
    iget-object v8, v6, Lx9/w3;->b:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_25

    .line 164
    iget-wide v6, v6, Lx9/w3;->d:J

    invoke-virtual {v0, v6, v7}, Lw/r3;->a(J)V

    goto :goto_1f

    .line 165
    :cond_25
    iget-boolean v8, v3, Lcom/yunpan/appmanage/bean/FileCopyBean;->isDelete:Z

    if-eqz v8, :cond_26

    .line 166
    new-instance v8, Ljava/io/File;

    iget-object v10, v6, Lx9/w3;->b:Ljava/lang/String;

    invoke-direct {v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_26

    .line 167
    iget-wide v6, v6, Lx9/w3;->d:J

    invoke-virtual {v0, v6, v7}, Lw/r3;->a(J)V

    goto :goto_1f

    .line 168
    :cond_26
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 169
    new-instance v15, Lcom/yunpan/appmanage/util/p;

    new-instance v8, Ljava/io/File;

    iget-object v6, v6, Lx9/w3;->b:Ljava/lang/String;

    invoke-direct {v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x0

    move-object v6, v15

    move-object v7, v0

    move-object v10, v4

    invoke-direct/range {v6 .. v11}, Lcom/yunpan/appmanage/util/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object v6, v0, Lw/r3;->d:Ljava/lang/Object;

    check-cast v6, Ljava/util/concurrent/ExecutorService;

    invoke-interface {v6, v15}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_1f

    .line 170
    :cond_27
    :goto_20
    iget-object v6, v0, Lw/r3;->f:Ljava/lang/Object;

    check-cast v6, Lja/b;

    iget-boolean v8, v6, Lja/b;->l:Z

    if-eqz v8, :cond_28

    .line 171
    const-string v8, "\u6b63\u5728\u505c\u6b62\u4e2d"

    iput-object v8, v6, Lja/b;->c:Ljava/lang/String;

    .line 172
    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 173
    :cond_28
    :goto_21
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    if-eqz v5, :cond_29

    const-wide/16 v5, 0xc8

    .line 174
    :try_start_16
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_d

    goto :goto_21

    :catch_d
    nop

    goto :goto_21

    .line 175
    :cond_29
    iget-object v0, v0, Lw/r3;->f:Ljava/lang/Object;

    check-cast v0, Lja/b;

    iget-boolean v0, v0, Lja/b;->l:Z

    if-eqz v0, :cond_2a

    .line 176
    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v3, 0x12c

    .line 177
    iput v3, v0, Landroid/os/Message;->what:I

    .line 178
    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 179
    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_25

    .line 180
    :cond_2a
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 181
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 182
    iget-object v5, v3, Lcom/yunpan/appmanage/bean/FileCopyBean;->toDir:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/yunpan/appmanage/util/k;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 183
    iget-object v0, v3, Lcom/yunpan/appmanage/bean/FileCopyBean;->fromPaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2b
    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lx9/w3;

    .line 184
    iget-boolean v6, v5, Lx9/w3;->c:Z

    if-eqz v6, :cond_2c

    .line 185
    sget-object v6, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 186
    iget-object v6, v6, Lcom/yunpan/appmanage/util/k;->f0:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/yunpan/appmanage/util/z;

    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v3, Lcom/yunpan/appmanage/bean/FileCopyBean;->toDir:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Lx9/w3;->a:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Lcom/yunpan/appmanage/util/z;-><init>(Ljava/io/File;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_22

    .line 187
    :cond_2c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v3, Lcom/yunpan/appmanage/bean/FileCopyBean;->toDir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lx9/w3;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 188
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v3, Lcom/yunpan/appmanage/bean/FileCopyBean;->toDir:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Lx9/w3;->a:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/yunpan/appmanage/db/MyDb;->addFile(Ljava/lang/String;)V

    goto :goto_22

    .line 189
    :cond_2d
    iget-object v0, v4, Lcom/yunpan/appmanage/util/q;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-boolean v0, v3, Lcom/yunpan/appmanage/bean/FileCopyBean;->isDelete:Z

    if-eqz v0, :cond_32

    .line 190
    iget-object v0, v3, Lcom/yunpan/appmanage/bean/FileCopyBean;->fromPaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lx9/w3;

    .line 191
    iget-object v6, v3, Lcom/yunpan/appmanage/bean/FileCopyBean;->fromPaths:Ljava/util/List;

    iget-object v7, v3, Lcom/yunpan/appmanage/bean/FileCopyBean;->toDir:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    const/4 v10, 0x0

    invoke-virtual {v7, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2e

    goto :goto_23

    .line 192
    :cond_2e
    sget-object v6, Lfa/b0;->a:La2/w0;

    .line 193
    iget-object v5, v5, Lx9/w3;->b:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, La2/w0;->B(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_23

    .line 194
    :cond_2f
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 195
    iget-object v5, v3, Lcom/yunpan/appmanage/bean/FileCopyBean;->fromDir:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/yunpan/appmanage/util/k;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 196
    iget-object v0, v3, Lcom/yunpan/appmanage/bean/FileCopyBean;->fromPaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_30
    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lx9/w3;

    .line 197
    iget-boolean v5, v3, Lx9/w3;->c:Z

    if-eqz v5, :cond_31

    .line 198
    sget-object v5, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 199
    iget-object v5, v5, Lcom/yunpan/appmanage/util/k;->f0:Ljava/util/concurrent/ExecutorService;

    new-instance v6, Lcom/yunpan/appmanage/util/z;

    new-instance v7, Ljava/io/File;

    iget-object v3, v3, Lx9/w3;->b:Ljava/lang/String;

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Lcom/yunpan/appmanage/util/z;-><init>(Ljava/io/File;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_24

    .line 200
    :cond_31
    iget-object v5, v3, Lx9/w3;->b:Ljava/lang/String;

    invoke-static {v5}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_30

    .line 201
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yunpan/appmanage/db/MyDb;->getFileInfoDao()Lcom/yunpan/appmanage/db/FileInfoDao;

    move-result-object v5

    iget-object v3, v3, Lx9/w3;->b:Ljava/lang/String;

    invoke-interface {v5, v3}, Lcom/yunpan/appmanage/db/FileInfoDao;->delete(Ljava/lang/String;)V

    goto :goto_24

    .line 202
    :cond_32
    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v3, 0x12c

    .line 203
    iput v3, v0, Landroid/os/Message;->what:I

    .line 204
    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 205
    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_25
    return-void

    .line 206
    :pswitch_e
    iget-object v0, v1, La2/c0;->b:Ljava/lang/Object;

    check-cast v0, Lw/r3;

    iget-object v2, v1, La2/c0;->c:Ljava/lang/Object;

    check-cast v2, Ljava/io/File;

    invoke-static {v2}, Lw/r3;->b(Ljava/io/File;)Z

    .line 207
    iget-object v0, v0, Lw/r3;->g:Ljava/lang/Object;

    check-cast v0, Lcom/yunpan/appmanage/carsdk/u;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 208
    :pswitch_f
    iget-object v0, v1, La2/c0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/yunpan/appmanage/util/m;

    iget-object v0, v0, Lcom/yunpan/appmanage/util/m;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    iget-object v2, v1, La2/c0;->c:Ljava/lang/Object;

    check-cast v2, Lea/b;

    invoke-interface {v2, v0}, Lea/b;->f(Z)V

    return-void

    .line 209
    :pswitch_10
    iget-object v0, v1, La2/c0;->c:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    .line 210
    iget-object v0, v1, La2/c0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/yunpan/appmanage/util/f;

    iget-object v0, v0, Lcom/yunpan/appmanage/util/f;->d:Lh5/m;

    if-eqz v0, :cond_33

    .line 211
    iget-object v0, v0, Lh5/m;->b:Ljava/lang/Object;

    check-cast v0, Lha/qc;

    .line 212
    :try_start_17
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_33

    iget-object v0, v0, Lha/qc;->i:Lx9/r2;

    new-instance v8, Lcom/yunpan/appmanage/util/d;

    const/16 v7, 0x1bd

    const-wide/16 v3, 0x0

    move-object v2, v8

    move-object v5, v6

    invoke-direct/range {v2 .. v7}, Lcom/yunpan/appmanage/util/d;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v8}, Lc6/g;->q(Ljava/lang/Object;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_e

    :catch_e
    :cond_33
    return-void

    .line 213
    :pswitch_11
    iget-object v0, v1, La2/c0;->c:Ljava/lang/Object;

    check-cast v0, Lcom/yunpan/appmanage/shizuku/CmdResult;

    iget-object v2, v1, La2/c0;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Process;

    invoke-static {v2, v0}, Lcom/yunpan/appmanage/shizuku/UserService;->h(Ljava/lang/Process;Lcom/yunpan/appmanage/shizuku/CmdResult;)V

    return-void

    :pswitch_12
    iget-object v0, v1, La2/c0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/yunpan/appmanage/db/MyDb;

    iget-object v2, v1, La2/c0;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/yunpan/appmanage/db/MyDb;->e(Lcom/yunpan/appmanage/db/MyDb;Ljava/lang/String;)V

    return-void

    .line 214
    :pswitch_13
    const-string v0, "$command"

    iget-object v2, v1, La2/c0;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Runnable;

    invoke-static {v2, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    iget-object v3, v1, La2/c0;->c:Ljava/lang/Object;

    check-cast v3, Landroidx/room/w;

    invoke-static {v3, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    :try_start_18
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    .line 216
    invoke-virtual {v3}, Landroidx/room/w;->a()V

    return-void

    :catchall_5
    move-exception v0

    move-object v2, v0

    invoke-virtual {v3}, Landroidx/room/w;->a()V

    throw v2

    .line 217
    :pswitch_14
    iget-object v0, v1, La2/c0;->b:Ljava/lang/Object;

    check-cast v0, La2/j0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 218
    sget-object v2, Lu1/f0;->a:Ljava/lang/String;

    .line 219
    iget-object v0, v0, La2/j0;->c:Ly1/t;

    iget-object v0, v0, Ly1/t;->a:Ly1/x;

    .line 220
    iget-object v0, v0, Ly1/x;->t:Lz1/e;

    .line 221
    invoke-virtual {v0}, Lz1/e;->M()Lz1/a;

    move-result-object v2

    .line 222
    new-instance v3, Lz1/d;

    iget-object v4, v1, La2/c0;->c:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Exception;

    const/4 v5, 0x0

    invoke-direct {v3, v2, v4, v5}, Lz1/d;-><init>(Lz1/a;Ljava/io/Serializable;I)V

    const/16 v4, 0x406

    invoke-virtual {v0, v2, v4, v3}, Lz1/e;->N(Lz1/a;ILu1/j;)V

    return-void

    .line 223
    :pswitch_15
    iget-object v0, v1, La2/c0;->b:Ljava/lang/Object;

    check-cast v0, La2/j0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 224
    sget-object v2, Lu1/f0;->a:Ljava/lang/String;

    .line 225
    iget-object v0, v0, La2/j0;->c:Ly1/t;

    iget-object v0, v0, Ly1/t;->a:Ly1/x;

    .line 226
    iget-object v2, v1, La2/c0;->c:Ljava/lang/Object;

    check-cast v2, Lr1/b1;

    iput-object v2, v0, Ly1/x;->a1:Lr1/b1;

    .line 227
    new-instance v3, Ly1/s;

    invoke-direct {v3, v2}, Ly1/s;-><init>(Lr1/b1;)V

    const/16 v2, 0x19

    iget-object v0, v0, Ly1/x;->m:Lu1/m;

    invoke-virtual {v0, v2, v3}, Lu1/m;->e(ILu1/j;)V

    return-void

    .line 228
    :pswitch_16
    iget-object v0, v1, La2/c0;->b:Ljava/lang/Object;

    check-cast v0, La2/j0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 229
    sget-object v2, Lu1/f0;->a:Ljava/lang/String;

    .line 230
    iget-object v0, v0, La2/j0;->c:Ly1/t;

    iget-object v0, v0, Ly1/t;->a:Ly1/x;

    .line 231
    iget-object v0, v0, Ly1/x;->I:Lua/i8;

    .line 232
    iget-object v2, v1, La2/c0;->c:Ljava/lang/Object;

    check-cast v2, Ly1/b;

    invoke-static {v0, v2}, Lua/i8;->l(Lua/i8;Ly1/b;)V

    return-void

    .line 233
    :pswitch_17
    iget-object v2, v1, La2/c0;->b:Ljava/lang/Object;

    check-cast v2, La2/j0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 234
    sget-object v3, Lu1/f0;->a:Ljava/lang/String;

    .line 235
    iget-object v2, v2, La2/j0;->c:Ly1/t;

    iget-object v2, v2, Ly1/t;->a:Ly1/x;

    .line 236
    iget-object v2, v2, Ly1/x;->t:Lz1/e;

    .line 237
    invoke-virtual {v2}, Lz1/e;->M()Lz1/a;

    move-result-object v3

    .line 238
    new-instance v4, Lz1/d;

    iget-object v5, v1, La2/c0;->c:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-direct {v4, v3, v5, v0}, Lz1/d;-><init>(Lz1/a;Ljava/io/Serializable;I)V

    const/16 v0, 0x3fb

    invoke-virtual {v2, v3, v0, v4}, Lz1/e;->N(Lz1/a;ILu1/j;)V

    return-void

    .line 239
    :pswitch_18
    iget-object v0, v1, La2/c0;->b:Ljava/lang/Object;

    check-cast v0, La2/g1;

    iget-object v0, v0, La2/g1;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/video/d;

    iget-object v0, v0, Landroidx/media3/exoplayer/video/d;->h:Landroidx/media3/exoplayer/video/h0;

    .line 240
    iget-object v2, v1, La2/c0;->c:Ljava/lang/Object;

    check-cast v2, Lr1/b1;

    invoke-interface {v0, v2}, Landroidx/media3/exoplayer/video/h0;->b(Lr1/b1;)V

    return-void

    .line 241
    :pswitch_19
    iget-object v0, v1, La2/c0;->c:Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioDeviceInfo;

    .line 242
    iget-object v2, v1, La2/c0;->b:Ljava/lang/Object;

    check-cast v2, La2/w0;

    iget-object v3, v2, La2/w0;->e:Ljava/lang/Object;

    check-cast v3, La2/v0;

    if-nez v3, :cond_34

    goto :goto_26

    .line 243
    :cond_34
    iget-object v2, v2, La2/w0;->c:Ljava/lang/Object;

    check-cast v2, La1/i;

    iget-object v2, v2, La1/i;->b:Ljava/lang/Object;

    check-cast v2, La2/d1;

    .line 244
    iget-object v2, v2, La2/d1;->i:La2/l;

    if-eqz v2, :cond_36

    .line 245
    iget-object v3, v2, La2/l;->i:Landroid/media/AudioDeviceInfo;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    goto :goto_26

    .line 246
    :cond_35
    iput-object v0, v2, La2/l;->i:Landroid/media/AudioDeviceInfo;

    .line 247
    iget-object v3, v2, La2/l;->j:Lr1/d;

    .line 248
    invoke-virtual {v2}, La2/l;->a()Ljava/util/List;

    move-result-object v4

    .line 249
    sget-object v5, La2/g;->e:Lu7/y0;

    .line 250
    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 251
    iget-object v6, v2, La2/l;->a:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v5

    .line 252
    invoke-static {v6, v5, v3, v0, v4}, La2/g;->b(Landroid/content/Context;Landroid/content/Intent;Lr1/d;Landroid/media/AudioDeviceInfo;Ljava/util/List;)La2/g;

    move-result-object v0

    .line 253
    invoke-virtual {v2, v0}, La2/l;->b(La2/g;)V

    :cond_36
    :goto_26
    return-void

    .line 254
    :pswitch_1a
    iget-object v2, v1, La2/c0;->c:Ljava/lang/Object;

    check-cast v2, Landroid/media/AudioRouting;

    iget-object v3, v1, La2/c0;->b:Ljava/lang/Object;

    check-cast v3, La2/w0;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 255
    invoke-static {v2}, La2/s0;->g(Landroid/media/AudioRouting;)Landroid/media/AudioDeviceInfo;

    move-result-object v2

    if-eqz v2, :cond_37

    .line 256
    iget-object v4, v3, La2/w0;->d:Ljava/lang/Object;

    check-cast v4, Landroid/os/Handler;

    new-instance v5, La2/c0;

    invoke-direct {v5, v3, v0, v2}, La2/c0;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_37
    return-void

    .line 257
    :pswitch_1b
    iget-object v0, v1, La2/c0;->b:Ljava/lang/Object;

    check-cast v0, La2/j0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 258
    sget-object v2, Lu1/f0;->a:Ljava/lang/String;

    .line 259
    iget-object v0, v0, La2/j0;->c:Ly1/t;

    iget-object v0, v0, Ly1/t;->a:Ly1/x;

    .line 260
    iget-object v0, v0, Ly1/x;->H:Lua/i8;

    .line 261
    iget-object v2, v1, La2/c0;->c:Ljava/lang/Object;

    check-cast v2, Ly1/b;

    invoke-static {v0, v2}, Lua/i8;->l(Lua/i8;Ly1/b;)V

    return-void

    .line 262
    :pswitch_1c
    iget-object v0, v1, La2/c0;->b:Ljava/lang/Object;

    check-cast v0, La2/j0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 263
    sget-object v2, Lu1/f0;->a:Ljava/lang/String;

    .line 264
    iget-object v0, v0, La2/j0;->c:Ly1/t;

    iget-object v0, v0, Ly1/t;->a:Ly1/x;

    .line 265
    iget-object v0, v0, Ly1/x;->t:Lz1/e;

    .line 266
    invoke-virtual {v0}, Lz1/e;->M()Lz1/a;

    move-result-object v2

    .line 267
    new-instance v3, Lz1/c;

    iget-object v4, v1, La2/c0;->c:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    const/16 v5, 0x1d

    invoke-direct {v3, v2, v4, v5}, Lz1/c;-><init>(Lz1/a;Ljava/lang/Object;I)V

    const/16 v4, 0x3f4

    invoke-virtual {v0, v2, v4, v3}, Lz1/e;->N(Lz1/a;ILu1/j;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
