.class public final Landroidx/emoji2/text/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/emoji2/text/k;
.implements La6/j;
.implements Lj5/d;
.implements Ll5/r;


# instance fields
.field public final synthetic a:I

.field public final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/emoji2/text/n;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/emoji2/text/n;->b:Landroid/content/Context;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/emoji2/text/n;->a:I

    iput-object p1, p0, Landroidx/emoji2/text/n;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(La9/o;)V
    .locals 9

    .line 1
    new-instance v7, Landroidx/emoji2/text/a;

    .line 2
    .line 3
    const-string v0, "EmojiCompatInitializer"

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v7, v0, v1}, Landroidx/emoji2/text/a;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 10
    .line 11
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 12
    .line 13
    new-instance v6, Ljava/util/concurrent/LinkedBlockingDeque;

    .line 14
    .line 15
    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    .line 16
    .line 17
    .line 18
    const-wide/16 v3, 0xf

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    move-object v0, v8

    .line 22
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    invoke-virtual {v8, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 27
    .line 28
    .line 29
    new-instance v0, La2/e0;

    .line 30
    .line 31
    const/4 v1, 0x2

    .line 32
    invoke-direct {v0, p0, p1, v8, v1}, La2/e0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v8, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public b()Ljava/io/File;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/n;->b:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_0
    new-instance v1, Ljava/io/File;

    .line 12
    .line 13
    const-string v2, "image_manager_disk_cache"

    .line 14
    .line 15
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-object v1
.end method

.method public get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/n;->b:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "connectivity"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 10
    .line 11
    return-object v0
.end method

.method public l(Ll5/w;)Ll5/q;
    .locals 3

    .line 1
    iget v0, p0, Landroidx/emoji2/text/n;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p1, Ll5/m;

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/emoji2/text/n;->b:Landroid/content/Context;

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    invoke-direct {p1, v0, v1}, Ll5/m;-><init>(Landroid/content/Context;I)V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_0
    new-instance p1, Ll5/m;

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/emoji2/text/n;->b:Landroid/content/Context;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-direct {p1, v0, v1}, Ll5/m;-><init>(Landroid/content/Context;I)V

    .line 21
    .line 22
    .line 23
    return-object p1

    .line 24
    :pswitch_1
    new-instance v0, Ll5/b;

    .line 25
    .line 26
    const-class v1, Ljava/lang/Integer;

    .line 27
    .line 28
    const-class v2, Ljava/io/InputStream;

    .line 29
    .line 30
    invoke-virtual {p1, v1, v2}, Ll5/w;->c(Ljava/lang/Class;Ljava/lang/Class;)Ll5/q;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object v1, p0, Landroidx/emoji2/text/n;->b:Landroid/content/Context;

    .line 35
    .line 36
    invoke-direct {v0, v1, p1}, Ll5/b;-><init>(Landroid/content/Context;Ll5/q;)V

    .line 37
    .line 38
    .line 39
    return-object v0

    .line 40
    :pswitch_2
    new-instance v0, Ll5/b;

    .line 41
    .line 42
    const-class v1, Ljava/lang/Integer;

    .line 43
    .line 44
    const-class v2, Landroid/content/res/AssetFileDescriptor;

    .line 45
    .line 46
    invoke-virtual {p1, v1, v2}, Ll5/w;->c(Ljava/lang/Class;Ljava/lang/Class;)Ll5/q;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iget-object v1, p0, Landroidx/emoji2/text/n;->b:Landroid/content/Context;

    .line 51
    .line 52
    invoke-direct {v0, v1, p1}, Ll5/b;-><init>(Landroid/content/Context;Ll5/q;)V

    .line 53
    .line 54
    .line 55
    return-object v0

    .line 56
    :pswitch_3
    new-instance p1, Ll5/m;

    .line 57
    .line 58
    iget-object v0, p0, Landroidx/emoji2/text/n;->b:Landroid/content/Context;

    .line 59
    .line 60
    const/4 v1, 0x0

    .line 61
    invoke-direct {p1, v0, v1}, Ll5/m;-><init>(Landroid/content/Context;I)V

    .line 62
    .line 63
    .line 64
    return-object p1

    .line 65
    :pswitch_4
    new-instance p1, Ll5/b;

    .line 66
    .line 67
    iget-object v0, p0, Landroidx/emoji2/text/n;->b:Landroid/content/Context;

    .line 68
    .line 69
    invoke-direct {p1, v0, p0}, Ll5/b;-><init>(Landroid/content/Context;Landroidx/emoji2/text/n;)V

    .line 70
    .line 71
    .line 72
    return-object p1

    .line 73
    :pswitch_5
    new-instance p1, Ll5/b;

    .line 74
    .line 75
    iget-object v0, p0, Landroidx/emoji2/text/n;->b:Landroid/content/Context;

    .line 76
    .line 77
    invoke-direct {p1, v0, p0}, Ll5/b;-><init>(Landroid/content/Context;Landroidx/emoji2/text/n;)V

    .line 78
    .line 79
    .line 80
    return-object p1

    .line 81
    :pswitch_6
    new-instance p1, Ll5/b;

    .line 82
    .line 83
    iget-object v0, p0, Landroidx/emoji2/text/n;->b:Landroid/content/Context;

    .line 84
    .line 85
    invoke-direct {p1, v0, p0}, Ll5/b;-><init>(Landroid/content/Context;Landroidx/emoji2/text/n;)V

    .line 86
    .line 87
    .line 88
    return-object p1

    .line 89
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
