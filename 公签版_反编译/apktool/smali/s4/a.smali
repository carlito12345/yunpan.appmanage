.class public final Ls4/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt5/a;
.implements Lha/wd;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    iput p1, p0, Ls4/a;->a:I

    packed-switch p1, :pswitch_data_0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Ls4/a;->b:Ljava/lang/Object;

    .line 42
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Ls4/a;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 43
    iput-object p1, p0, Ls4/a;->d:Ljava/lang/Object;

    return-void

    .line 44
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance p1, Lv3/f;

    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0}, Lv3/f;-><init>(BI)V

    iput-object p1, p0, Ls4/a;->b:Ljava/lang/Object;

    const/16 p1, 0x8

    .line 46
    new-array p1, p1, [B

    iput-object p1, p0, Ls4/a;->c:Ljava/lang/Object;

    const/4 p1, 0x4

    .line 47
    new-array p1, p1, [B

    iput-object p1, p0, Ls4/a;->d:Ljava/lang/Object;

    return-void

    .line 48
    :pswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance p1, Lv3/f;

    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0}, Lv3/f;-><init>(BI)V

    iput-object p1, p0, Ls4/a;->c:Ljava/lang/Object;

    const/4 p1, 0x4

    .line 50
    new-array p1, p1, [B

    iput-object p1, p0, Ls4/a;->d:Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Ls4/a;->a:I

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Ls4/a;->b:Ljava/lang/Object;

    .line 57
    iput-object p2, p0, Ls4/a;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/yunpan/appmanage/ui/ActivityDownload;Ljava/lang/String;Lx9/b6;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Ls4/a;->a:I

    .line 62
    iput-object p1, p0, Ls4/a;->d:Ljava/lang/Object;

    iput-object p2, p0, Ls4/a;->b:Ljava/lang/Object;

    iput-object p3, p0, Ls4/a;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Li5/c;Ld3/g;Lt5/c;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Ls4/a;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ls4/a;->b:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Ls4/a;->c:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Ls4/a;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lio/github/rosemoe/sora/widget/CodeEditor;)V
    .locals 1

    const/16 v0, 0xe

    iput v0, p0, Ls4/a;->a:I

    const-string v0, "editor"

    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Ls4/a;->b:Ljava/lang/Object;

    .line 13
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x40

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Ls4/a;->c:Ljava/lang/Object;

    .line 14
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Ls4/a;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Ls4/a;->a:I

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Ls4/a;->c:Ljava/lang/Object;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ls4/a;->d:Ljava/lang/Object;

    .line 54
    iput-object p1, p0, Ls4/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x3

    iput v0, p0, Ls4/a;->a:I

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lkf/d;

    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkf/d;-><init>(IZ)V

    iput-object v0, p0, Ls4/a;->c:Ljava/lang/Object;

    .line 60
    iput-object v0, p0, Ls4/a;->d:Ljava/lang/Object;

    .line 61
    iput-object p1, p0, Ls4/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ls4/a;)V
    .locals 7

    const/4 v0, 0x0

    iput v0, p0, Ls4/a;->a:I

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iget-object p1, p1, Ls4/a;->b:Ljava/lang/Object;

    check-cast p1, Lw4/b;

    .line 17
    invoke-virtual {p1}, Lw4/b;->g()I

    move-result v0

    .line 18
    new-array v1, v0, [Ls4/f;

    iput-object v1, p0, Ls4/a;->b:Ljava/lang/Object;

    .line 19
    new-array v1, v0, [Ls4/f;

    iput-object v1, p0, Ls4/a;->c:Ljava/lang/Object;

    .line 20
    new-array v0, v0, [Ls4/f;

    iput-object v0, p0, Ls4/a;->d:Ljava/lang/Object;

    .line 21
    iget-object v0, p1, Lb5/c;->b:[Ljava/lang/Object;

    .line 22
    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 23
    invoke-virtual {p1, v2}, Lb5/c;->d(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lw4/a;

    .line 24
    iget-object v4, v3, Lw4/a;->b:Lw4/g;

    invoke-virtual {v4, v1}, Lb5/c;->d(I)Ljava/lang/Object;

    move-result-object v5

    .line 25
    check-cast v5, Lw4/f;

    .line 26
    new-instance v6, Ls4/f;

    iget-object v5, v5, Lw4/f;->b:Lw4/p;

    invoke-direct {v6, v5}, Ls4/f;-><init>(Lw4/p;)V

    iget-object v5, p0, Ls4/a;->b:Ljava/lang/Object;

    check-cast v5, [Ls4/f;

    iget v3, v3, Lw4/a;->a:I

    aput-object v6, v5, v3

    .line 27
    invoke-virtual {v4}, Lw4/g;->g()Lw4/f;

    move-result-object v4

    .line 28
    new-instance v5, Ls4/f;

    iget-object v4, v4, Lw4/f;->b:Lw4/p;

    invoke-direct {v5, v4}, Ls4/f;-><init>(Lw4/p;)V

    iget-object v6, p0, Ls4/a;->c:Ljava/lang/Object;

    check-cast v6, [Ls4/f;

    aput-object v5, v6, v3

    .line 29
    new-instance v5, Ls4/f;

    invoke-direct {v5, v4}, Ls4/f;-><init>(Lw4/p;)V

    iget-object v4, p0, Ls4/a;->d:Ljava/lang/Object;

    check-cast v4, [Ls4/f;

    aput-object v5, v4, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ls4/a;[ILs4/a;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Ls4/a;->a:I

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 35
    iput-object p1, p0, Ls4/a;->b:Ljava/lang/Object;

    .line 36
    iput-object p2, p0, Ls4/a;->c:Ljava/lang/Object;

    .line 37
    iput-object p3, p0, Ls4/a;->d:Ljava/lang/Object;

    return-void

    .line 38
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "addresses == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 39
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "order == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lw4/b;)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Ls4/a;->a:I

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Ls4/a;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 32
    iput-object p1, p0, Ls4/a;->c:Ljava/lang/Object;

    .line 33
    iput-object p1, p0, Ls4/a;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ly1/g;Lz1/i;)V
    .locals 1

    const/16 v0, 0xb

    iput v0, p0, Ls4/a;->a:I

    .line 63
    iput-object p1, p0, Ls4/a;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Ls4/a;->b:Ljava/lang/Object;

    .line 65
    iput-object p2, p0, Ls4/a;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ly1/x;Landroid/content/ContextWrapper;)V
    .locals 3

    const/16 v0, 0xc

    iput v0, p0, Ls4/a;->a:I

    .line 66
    iput-object p1, p0, Ls4/a;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ls4/a;->b:Ljava/lang/Object;

    .line 68
    new-instance v0, Ly1/w;

    invoke-direct {v0, p0}, Ly1/w;-><init>(Ls4/a;)V

    iput-object v0, p0, Ls4/a;->c:Ljava/lang/Object;

    .line 69
    iget-object v1, p1, Ly1/x;->x:Lu1/z;

    .line 70
    iget-object p1, p1, Ly1/x;->v:Landroid/os/Looper;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lu1/z;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lu1/b0;

    move-result-object p1

    .line 71
    new-instance v1, La2/y0;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p1}, La2/y0;-><init>(ILjava/lang/Object;)V

    invoke-static {p2, v1, v0}, La2/b1;->g(Landroid/content/ContextWrapper;La2/y0;Ly1/w;)V

    return-void
.end method

.method public constructor <init>(Ly9/b;)V
    .locals 2

    const/16 v0, 0xd

    iput v0, p0, Ls4/a;->a:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ls4/a;->b:Ljava/lang/Object;

    .line 7
    iput-object p1, p0, Ls4/a;->c:Ljava/lang/Object;

    .line 8
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Ls4/a;->d:Ljava/lang/Object;

    .line 9
    new-instance p1, Lfg/b;

    new-instance v0, Lua/g8;

    const/16 v1, 0xd

    invoke-direct {v0, v1, p0}, Lua/g8;-><init>(ILjava/lang/Object;)V

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lfg/b;-><init>(Ljava/lang/Runnable;I)V

    .line 10
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static a(Lag/l;IJ)Lag/j;
    .locals 5

    .line 1
    new-instance v0, Lag/j;

    .line 2
    .line 3
    invoke-direct {v0}, Lag/j;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0xa

    .line 7
    .line 8
    iput v1, v0, Lab/a;->b:I

    .line 9
    .line 10
    const-wide/16 v1, 0x2c

    .line 11
    .line 12
    iput-wide v1, v0, Lag/j;->c:J

    .line 13
    .line 14
    iget-object v1, p0, Lag/l;->b:Lag/c;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object v1, v1, Lag/c;->a:Ljava/util/ArrayList;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-lez v1, :cond_0

    .line 27
    .line 28
    iget-object v1, p0, Lag/l;->b:Lag/c;

    .line 29
    .line 30
    iget-object v1, v1, Lag/c;->a:Ljava/util/ArrayList;

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lag/f;

    .line 38
    .line 39
    iget v2, v1, Lag/f;->v:I

    .line 40
    .line 41
    iput v2, v0, Lag/j;->d:I

    .line 42
    .line 43
    iget v1, v1, Lag/b;->c:I

    .line 44
    .line 45
    iput v1, v0, Lag/j;->e:I

    .line 46
    .line 47
    :cond_0
    iget-object v1, p0, Lag/l;->c:Lag/d;

    .line 48
    .line 49
    iget v2, v1, Lag/d;->c:I

    .line 50
    .line 51
    iput v2, v0, Lag/j;->f:I

    .line 52
    .line 53
    iget v1, v1, Lag/d;->d:I

    .line 54
    .line 55
    iput v1, v0, Lag/j;->g:I

    .line 56
    .line 57
    iget-object v1, p0, Lag/l;->b:Lag/c;

    .line 58
    .line 59
    iget-object v1, v1, Lag/c;->a:Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    int-to-long v1, v1

    .line 66
    iget-boolean v3, p0, Lag/l;->f:Z

    .line 67
    .line 68
    if-eqz v3, :cond_1

    .line 69
    .line 70
    iget-object v3, p0, Lag/l;->b:Lag/c;

    .line 71
    .line 72
    iget-object v3, v3, Lag/c;->a:Ljava/util/ArrayList;

    .line 73
    .line 74
    iget-object p0, p0, Lag/l;->c:Lag/d;

    .line 75
    .line 76
    iget p0, p0, Lag/d;->c:I

    .line 77
    .line 78
    invoke-static {p0, v3}, Ls4/a;->b(ILjava/util/ArrayList;)J

    .line 79
    .line 80
    .line 81
    move-result-wide v3

    .line 82
    goto :goto_0

    .line 83
    :cond_1
    move-wide v3, v1

    .line 84
    :goto_0
    iput-wide v3, v0, Lag/j;->h:J

    .line 85
    .line 86
    iput-wide v1, v0, Lag/j;->i:J

    .line 87
    .line 88
    int-to-long p0, p1

    .line 89
    iput-wide p0, v0, Lag/j;->j:J

    .line 90
    .line 91
    iput-wide p2, v0, Lag/j;->k:J

    .line 92
    .line 93
    return-object v0
.end method

.method public static b(ILjava/util/ArrayList;)J
    .locals 2

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lag/f;

    .line 19
    .line 20
    iget v1, v1, Lag/f;->w:I

    .line 21
    .line 22
    if-ne v1, p0, :cond_0

    .line 23
    .line 24
    add-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    int-to-long p0, v0

    .line 28
    return-wide p0

    .line 29
    :cond_2
    new-instance p0, Lwf/a;

    .line 30
    .line 31
    const-string p1, "file headers are null, cannot calculate number of entries on this disk"

    .line 32
    .line 33
    invoke-direct {p0, p1}, Lwf/a;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto :goto_2

    .line 37
    :goto_1
    throw p0

    .line 38
    :goto_2
    goto :goto_1
.end method

.method public static j(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ls4/a;
    .locals 2

    .line 1
    new-instance v0, Ls4/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, p1, p2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-direct {v0, p0, p1}, Ls4/a;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public static m(Lag/l;Ljava/io/OutputStream;)V
    .locals 3

    .line 1
    instance-of v0, p1, Lzf/g;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lag/l;->c:Lag/d;

    .line 6
    .line 7
    check-cast p1, Lzf/g;

    .line 8
    .line 9
    move-object v1, p1

    .line 10
    check-cast v1, Lzf/d;

    .line 11
    .line 12
    iget-wide v1, v1, Lzf/d;->b:J

    .line 13
    .line 14
    iput-wide v1, v0, Lag/d;->f:J

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-boolean p1, p0, Lag/l;->h:Z

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    if-eqz p1, :cond_3

    .line 23
    .line 24
    iget-object p1, p0, Lag/l;->e:Lag/j;

    .line 25
    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    new-instance p1, Lag/j;

    .line 29
    .line 30
    invoke-direct {p1}, Lag/j;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lag/l;->e:Lag/j;

    .line 34
    .line 35
    :cond_1
    iget-object p1, p0, Lag/l;->d:Lag/i;

    .line 36
    .line 37
    if-nez p1, :cond_2

    .line 38
    .line 39
    new-instance p1, Lag/i;

    .line 40
    .line 41
    invoke-direct {p1}, Lag/i;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Lag/l;->d:Lag/i;

    .line 45
    .line 46
    :cond_2
    iget-object p1, p0, Lag/l;->e:Lag/j;

    .line 47
    .line 48
    iget-object v1, p0, Lag/l;->c:Lag/d;

    .line 49
    .line 50
    iget-wide v1, v1, Lag/d;->f:J

    .line 51
    .line 52
    iput-wide v1, p1, Lag/j;->k:J

    .line 53
    .line 54
    iget-object p1, p0, Lag/l;->d:Lag/i;

    .line 55
    .line 56
    iput v0, p1, Lag/i;->c:I

    .line 57
    .line 58
    const/4 v1, 0x1

    .line 59
    iput v1, p1, Lag/i;->e:I

    .line 60
    .line 61
    :cond_3
    iget-object p0, p0, Lag/l;->c:Lag/d;

    .line 62
    .line 63
    iput v0, p0, Lag/d;->c:I

    .line 64
    .line 65
    iput v0, p0, Lag/d;->d:I

    .line 66
    .line 67
    return-void
.end method

.method public static n(Lag/b;Lv3/f;)V
    .locals 10

    .line 1
    iget-object p1, p0, Lag/b;->s:Ljava/util/List;

    .line 2
    .line 3
    if-eqz p1, :cond_a

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-gtz p1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_5

    .line 12
    .line 13
    :cond_0
    iget-object p1, p0, Lag/b;->s:Ljava/util/List;

    .line 14
    .line 15
    const/4 v0, 0x4

    .line 16
    const/4 v1, 0x0

    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    goto/16 :goto_4

    .line 20
    .line 21
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_9

    .line 30
    .line 31
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lag/e;

    .line 36
    .line 37
    if-nez v2, :cond_3

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    iget-wide v3, v2, Lag/e;->c:J

    .line 41
    .line 42
    const-wide/32 v5, 0x9901

    .line 43
    .line 44
    .line 45
    cmp-long v7, v3, v5

    .line 46
    .line 47
    if-nez v7, :cond_2

    .line 48
    .line 49
    iget-object p1, v2, Lag/e;->e:[B

    .line 50
    .line 51
    if-eqz p1, :cond_8

    .line 52
    .line 53
    array-length v1, p1

    .line 54
    const/4 v3, 0x7

    .line 55
    if-ne v1, v3, :cond_8

    .line 56
    .line 57
    new-instance v1, Lag/a;

    .line 58
    .line 59
    invoke-direct {v1}, Lag/a;-><init>()V

    .line 60
    .line 61
    .line 62
    const/16 v3, 0xc

    .line 63
    .line 64
    iput v3, v1, Lab/a;->b:I

    .line 65
    .line 66
    iget v2, v2, Lag/e;->d:I

    .line 67
    .line 68
    iput v2, v1, Lag/a;->c:I

    .line 69
    .line 70
    const/4 v2, 0x0

    .line 71
    invoke-static {v2, p1}, Lv3/f;->K(I[B)I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    const/4 v4, 0x2

    .line 76
    invoke-static {v4}, Ld0/f;->d(I)[I

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    array-length v6, v5

    .line 81
    const/4 v7, 0x0

    .line 82
    :goto_1
    if-ge v7, v6, :cond_7

    .line 83
    .line 84
    aget v8, v5, v7

    .line 85
    .line 86
    invoke-static {v8}, Landroid/support/v4/media/session/a;->i(I)I

    .line 87
    .line 88
    .line 89
    move-result v9

    .line 90
    if-ne v9, v3, :cond_6

    .line 91
    .line 92
    iput v8, v1, Lag/a;->d:I

    .line 93
    .line 94
    new-array v3, v4, [B

    .line 95
    .line 96
    invoke-static {p1, v4, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    .line 98
    .line 99
    new-instance v4, Ljava/lang/String;

    .line 100
    .line 101
    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    .line 102
    .line 103
    .line 104
    iput-object v4, v1, Lag/a;->e:Ljava/lang/String;

    .line 105
    .line 106
    aget-byte v3, p1, v0

    .line 107
    .line 108
    and-int/lit16 v3, v3, 0xff

    .line 109
    .line 110
    const/4 v4, 0x3

    .line 111
    invoke-static {v4}, Ld0/f;->d(I)[I

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    array-length v5, v4

    .line 116
    const/4 v6, 0x0

    .line 117
    :goto_2
    if-ge v6, v5, :cond_5

    .line 118
    .line 119
    aget v7, v4, v6

    .line 120
    .line 121
    invoke-static {v7}, Landroid/support/v4/media/session/a;->g(I)I

    .line 122
    .line 123
    .line 124
    move-result v8

    .line 125
    if-ne v8, v3, :cond_4

    .line 126
    .line 127
    move v2, v7

    .line 128
    goto :goto_3

    .line 129
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_5
    :goto_3
    iput v2, v1, Lag/a;->f:I

    .line 133
    .line 134
    const/4 v2, 0x5

    .line 135
    invoke-static {v2, p1}, Lv3/f;->K(I[B)I

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    invoke-static {p1}, Landroid/support/v4/media/session/a;->c(I)I

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    iput p1, v1, Lag/a;->g:I

    .line 144
    .line 145
    goto :goto_4

    .line 146
    :cond_6
    add-int/lit8 v7, v7, 0x1

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_7
    new-instance p0, Lwf/a;

    .line 150
    .line 151
    const-string p1, "Unsupported Aes version"

    .line 152
    .line 153
    invoke-direct {p0, p1}, Lwf/a;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw p0

    .line 157
    :cond_8
    new-instance p0, Lwf/a;

    .line 158
    .line 159
    const-string p1, "corrupt AES extra data records"

    .line 160
    .line 161
    invoke-direct {p0, p1}, Lwf/a;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    throw p0

    .line 165
    :cond_9
    :goto_4
    if-eqz v1, :cond_a

    .line 166
    .line 167
    iput-object v1, p0, Lag/b;->q:Lag/a;

    .line 168
    .line 169
    iput v0, p0, Lag/b;->m:I

    .line 170
    .line 171
    :cond_a
    :goto_5
    return-void
.end method

.method public static q(Ljava/util/List;Lv3/f;JJJI)Lag/k;
    .locals 7

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_7

    .line 11
    .line 12
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lag/e;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-wide v2, v0, Lag/e;->c:J

    .line 22
    .line 23
    const-wide/16 v4, 0x1

    .line 24
    .line 25
    cmp-long v6, v4, v2

    .line 26
    .line 27
    if-nez v6, :cond_0

    .line 28
    .line 29
    new-instance p0, Lag/k;

    .line 30
    .line 31
    invoke-direct {p0}, Lag/k;-><init>()V

    .line 32
    .line 33
    .line 34
    iget-object v2, v0, Lag/e;->e:[B

    .line 35
    .line 36
    iget v3, v0, Lag/e;->d:I

    .line 37
    .line 38
    if-gtz v3, :cond_2

    .line 39
    .line 40
    return-object v1

    .line 41
    :cond_2
    const-wide v4, 0xffffffffL

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    if-lez v3, :cond_3

    .line 48
    .line 49
    cmp-long v3, p2, v4

    .line 50
    .line 51
    if-nez v3, :cond_3

    .line 52
    .line 53
    invoke-virtual {p1, v1, v2}, Lv3/f;->J(I[B)J

    .line 54
    .line 55
    .line 56
    move-result-wide p2

    .line 57
    iput-wide p2, p0, Lag/k;->d:J

    .line 58
    .line 59
    const/16 v1, 0x8

    .line 60
    .line 61
    :cond_3
    iget p2, v0, Lag/e;->d:I

    .line 62
    .line 63
    if-ge v1, p2, :cond_4

    .line 64
    .line 65
    cmp-long p2, p4, v4

    .line 66
    .line 67
    if-nez p2, :cond_4

    .line 68
    .line 69
    invoke-virtual {p1, v1, v2}, Lv3/f;->J(I[B)J

    .line 70
    .line 71
    .line 72
    move-result-wide p2

    .line 73
    iput-wide p2, p0, Lag/k;->c:J

    .line 74
    .line 75
    add-int/lit8 v1, v1, 0x8

    .line 76
    .line 77
    :cond_4
    iget p2, v0, Lag/e;->d:I

    .line 78
    .line 79
    if-ge v1, p2, :cond_5

    .line 80
    .line 81
    cmp-long p2, p6, v4

    .line 82
    .line 83
    if-nez p2, :cond_5

    .line 84
    .line 85
    invoke-virtual {p1, v1, v2}, Lv3/f;->J(I[B)J

    .line 86
    .line 87
    .line 88
    move-result-wide p1

    .line 89
    iput-wide p1, p0, Lag/k;->e:J

    .line 90
    .line 91
    add-int/lit8 v1, v1, 0x8

    .line 92
    .line 93
    :cond_5
    iget p1, v0, Lag/e;->d:I

    .line 94
    .line 95
    if-ge v1, p1, :cond_6

    .line 96
    .line 97
    const p1, 0xffff

    .line 98
    .line 99
    .line 100
    if-ne p8, p1, :cond_6

    .line 101
    .line 102
    invoke-static {v1, v2}, Lv3/f;->H(I[B)I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    iput p1, p0, Lag/k;->f:I

    .line 107
    .line 108
    :cond_6
    return-object p0

    .line 109
    :cond_7
    return-object v1
.end method

.method public static u(Ljava/io/RandomAccessFile;J)V
    .locals 1

    .line 1
    instance-of v0, p0, Lyf/g;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lyf/g;

    .line 6
    .line 7
    iget-object p0, p0, Lyf/g;->c:Ljava/io/RandomAccessFile;

    .line 8
    .line 9
    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public static x(Lag/l;IJLjava/io/ByteArrayOutputStream;Lv3/f;)V
    .locals 8

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    const-wide/32 v1, 0x6054b50

    .line 6
    .line 7
    .line 8
    long-to-int v2, v1

    .line 9
    invoke-virtual {p5, p4, v2}, Lv3/f;->U(Ljava/io/ByteArrayOutputStream;I)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lag/l;->c:Lag/d;

    .line 13
    .line 14
    iget v1, v1, Lag/d;->c:I

    .line 15
    .line 16
    invoke-virtual {p5, p4, v1}, Lv3/f;->X(Ljava/io/ByteArrayOutputStream;I)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lag/l;->c:Lag/d;

    .line 20
    .line 21
    iget v1, v1, Lag/d;->d:I

    .line 22
    .line 23
    invoke-virtual {p5, p4, v1}, Lv3/f;->X(Ljava/io/ByteArrayOutputStream;I)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lag/l;->b:Lag/c;

    .line 27
    .line 28
    iget-object v1, v1, Lag/c;->a:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    int-to-long v1, v1

    .line 35
    iget-boolean v3, p0, Lag/l;->f:Z

    .line 36
    .line 37
    if-eqz v3, :cond_0

    .line 38
    .line 39
    iget-object v3, p0, Lag/l;->b:Lag/c;

    .line 40
    .line 41
    iget-object v3, v3, Lag/c;->a:Ljava/util/ArrayList;

    .line 42
    .line 43
    iget-object v4, p0, Lag/l;->c:Lag/d;

    .line 44
    .line 45
    iget v4, v4, Lag/d;->c:I

    .line 46
    .line 47
    invoke-static {v4, v3}, Ls4/a;->b(ILjava/util/ArrayList;)J

    .line 48
    .line 49
    .line 50
    move-result-wide v3

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    move-wide v3, v1

    .line 53
    :goto_0
    const-wide/32 v5, 0xffff

    .line 54
    .line 55
    .line 56
    cmp-long v7, v3, v5

    .line 57
    .line 58
    if-lez v7, :cond_1

    .line 59
    .line 60
    move-wide v3, v5

    .line 61
    :cond_1
    long-to-int v4, v3

    .line 62
    invoke-virtual {p5, p4, v4}, Lv3/f;->X(Ljava/io/ByteArrayOutputStream;I)V

    .line 63
    .line 64
    .line 65
    cmp-long v3, v1, v5

    .line 66
    .line 67
    if-lez v3, :cond_2

    .line 68
    .line 69
    move-wide v1, v5

    .line 70
    :cond_2
    long-to-int v2, v1

    .line 71
    invoke-virtual {p5, p4, v2}, Lv3/f;->X(Ljava/io/ByteArrayOutputStream;I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p5, p4, p1}, Lv3/f;->U(Ljava/io/ByteArrayOutputStream;I)V

    .line 75
    .line 76
    .line 77
    const/4 p1, 0x4

    .line 78
    const-wide v1, 0xffffffffL

    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    const/4 v3, 0x0

    .line 84
    cmp-long v4, p2, v1

    .line 85
    .line 86
    if-lez v4, :cond_3

    .line 87
    .line 88
    invoke-static {v0, v1, v2}, Lv3/f;->W([BJ)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p4, v0, v3, p1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_3
    invoke-static {v0, p2, p3}, Lv3/f;->W([BJ)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p4, v0, v3, p1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 99
    .line 100
    .line 101
    :goto_1
    iget-object p0, p0, Lag/l;->c:Lag/d;

    .line 102
    .line 103
    iget-object p0, p0, Lag/d;->h:Ljava/lang/String;

    .line 104
    .line 105
    invoke-static {p0}, Leg/c;->h(Ljava/lang/String;)Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-eqz p1, :cond_4

    .line 110
    .line 111
    sget-object p1, Leg/d;->c:Ljava/nio/charset/Charset;

    .line 112
    .line 113
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    array-length p1, p0

    .line 118
    invoke-virtual {p5, p4, p1}, Lv3/f;->X(Ljava/io/ByteArrayOutputStream;I)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p4, p0}, Ljava/io/OutputStream;->write([B)V

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_4
    invoke-virtual {p5, p4, v3}, Lv3/f;->X(Ljava/io/ByteArrayOutputStream;I)V

    .line 126
    .line 127
    .line 128
    :goto_2
    return-void
.end method

.method public static z(Lag/j;Ljava/io/ByteArrayOutputStream;Lv3/f;)V
    .locals 2

    .line 1
    iget v0, p0, Lab/a;->b:I

    .line 2
    .line 3
    invoke-static {v0}, Lta/q;->e(I)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    long-to-int v1, v0

    .line 8
    invoke-virtual {p2, p1, v1}, Lv3/f;->U(Ljava/io/ByteArrayOutputStream;I)V

    .line 9
    .line 10
    .line 11
    iget-wide v0, p0, Lag/j;->c:J

    .line 12
    .line 13
    invoke-virtual {p2, p1, v0, v1}, Lv3/f;->V(Ljava/io/ByteArrayOutputStream;J)V

    .line 14
    .line 15
    .line 16
    iget v0, p0, Lag/j;->d:I

    .line 17
    .line 18
    invoke-virtual {p2, p1, v0}, Lv3/f;->X(Ljava/io/ByteArrayOutputStream;I)V

    .line 19
    .line 20
    .line 21
    iget v0, p0, Lag/j;->e:I

    .line 22
    .line 23
    invoke-virtual {p2, p1, v0}, Lv3/f;->X(Ljava/io/ByteArrayOutputStream;I)V

    .line 24
    .line 25
    .line 26
    iget v0, p0, Lag/j;->f:I

    .line 27
    .line 28
    invoke-virtual {p2, p1, v0}, Lv3/f;->U(Ljava/io/ByteArrayOutputStream;I)V

    .line 29
    .line 30
    .line 31
    iget v0, p0, Lag/j;->g:I

    .line 32
    .line 33
    invoke-virtual {p2, p1, v0}, Lv3/f;->U(Ljava/io/ByteArrayOutputStream;I)V

    .line 34
    .line 35
    .line 36
    iget-wide v0, p0, Lag/j;->h:J

    .line 37
    .line 38
    invoke-virtual {p2, p1, v0, v1}, Lv3/f;->V(Ljava/io/ByteArrayOutputStream;J)V

    .line 39
    .line 40
    .line 41
    iget-wide v0, p0, Lag/j;->i:J

    .line 42
    .line 43
    invoke-virtual {p2, p1, v0, v1}, Lv3/f;->V(Ljava/io/ByteArrayOutputStream;J)V

    .line 44
    .line 45
    .line 46
    iget-wide v0, p0, Lag/j;->j:J

    .line 47
    .line 48
    invoke-virtual {p2, p1, v0, v1}, Lv3/f;->V(Ljava/io/ByteArrayOutputStream;J)V

    .line 49
    .line 50
    .line 51
    iget-wide v0, p0, Lag/j;->k:J

    .line 52
    .line 53
    invoke-virtual {p2, p1, v0, v1}, Lv3/f;->V(Ljava/io/ByteArrayOutputStream;J)V

    .line 54
    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public D()V
    .locals 9

    .line 1
    new-instance v6, Lx9/u5;

    .line 2
    .line 3
    iget-object v0, p0, Ls4/a;->d:Ljava/lang/Object;

    .line 4
    .line 5
    move-object v7, v0

    .line 6
    check-cast v7, Lcom/yunpan/appmanage/ui/ActivityDownload;

    .line 7
    .line 8
    iget-object v0, v7, Lcom/yunpan/appmanage/ui/ActivityDownload;->V:Lx9/t5;

    .line 9
    .line 10
    invoke-virtual {v0}, Lc6/g;->b()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const/4 v8, 0x0

    .line 20
    invoke-static {v7, v8}, Lcom/yunpan/appmanage/ui/ActivityDownload;->x(Lcom/yunpan/appmanage/ui/ActivityDownload;Z)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Ls4/a;->b:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v2, Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    iget-object v0, p0, Ls4/a;->c:Ljava/lang/Object;

    .line 39
    .line 40
    move-object v3, v0

    .line 41
    check-cast v3, Lx9/b6;

    .line 42
    .line 43
    const/4 v4, 0x0

    .line 44
    iget-object v0, p0, Ls4/a;->b:Ljava/lang/Object;

    .line 45
    .line 46
    move-object v2, v0

    .line 47
    check-cast v2, Ljava/lang/String;

    .line 48
    .line 49
    move-object v0, v6

    .line 50
    invoke-direct/range {v0 .. v5}, Lx9/u5;-><init>(ILjava/lang/String;Lx9/b6;ZLjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, v7, Lcom/yunpan/appmanage/ui/ActivityDownload;->R:Lba/q;

    .line 54
    .line 55
    invoke-virtual {v0}, Lc6/g;->b()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-lez v0, :cond_0

    .line 60
    .line 61
    iget-object v0, v7, Lcom/yunpan/appmanage/ui/ActivityDownload;->R:Lba/q;

    .line 62
    .line 63
    invoke-virtual {v0, v8}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Lba/r;

    .line 68
    .line 69
    iput-object v0, v6, Lx9/u5;->g:Lba/r;

    .line 70
    .line 71
    :cond_0
    iget-object v0, v7, Lcom/yunpan/appmanage/ui/ActivityDownload;->V:Lx9/t5;

    .line 72
    .line 73
    invoke-virtual {v0, v6}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    iget-object v0, v7, Lcom/yunpan/appmanage/ui/ActivityDownload;->t0:Ljava/util/concurrent/ExecutorService;

    .line 77
    .line 78
    new-instance v1, Landroidx/emoji2/text/j;

    .line 79
    .line 80
    iget-object v2, v7, Lcom/yunpan/appmanage/ui/ActivityDownload;->V:Lx9/t5;

    .line 81
    .line 82
    invoke-virtual {v2}, Lc6/g;->b()I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    add-int/lit8 v2, v2, -0x1

    .line 87
    .line 88
    const/4 v3, 0x5

    .line 89
    invoke-direct {v1, v2, v3, v7}, Landroidx/emoji2/text/j;-><init>(IILjava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public c(Lh5/z;Lf5/i;)Lh5/z;
    .locals 2

    .line 1
    invoke-interface {p1}, Lh5/z;->get()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, Ls4/a;->b:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Li5/c;

    .line 20
    .line 21
    invoke-static {p1, v0}, Lo5/d;->b(Landroid/graphics/Bitmap;Li5/c;)Lo5/d;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object v0, p0, Ls4/a;->c:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, Ld3/g;

    .line 28
    .line 29
    invoke-virtual {v0, p1, p2}, Ld3/g;->c(Lh5/z;Lf5/i;)Lh5/z;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1

    .line 34
    :cond_0
    instance-of v0, v0, Ls5/b;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    iget-object v0, p0, Ls4/a;->d:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, Lt5/c;

    .line 41
    .line 42
    invoke-virtual {v0, p1, p2}, Lt5/c;->c(Lh5/z;Lf5/i;)Lh5/z;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    return-object p1

    .line 47
    :cond_1
    const/4 p1, 0x0

    .line 48
    return-object p1
.end method

.method public d(I)Landroid/content/res/ColorStateList;
    .locals 3

    .line 1
    iget-object v0, p0, Ls4/a;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/content/res/TypedArray;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object v2, p0, Ls4/a;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v2, Landroid/content/Context;

    .line 21
    .line 22
    invoke-static {v2, v1}, Ln0/g;->d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    return-object v1

    .line 29
    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1
.end method

.method public e(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, Ls4/a;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/content/res/TypedArray;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Ls4/a;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p1, Landroid/content/Context;

    .line 21
    .line 22
    invoke-static {p1, v1}, Lcom/bumptech/glide/d;->x(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1

    .line 27
    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    return-object p1
.end method

.method public f(I)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 1
    iget-object v0, p0, Ls4/a;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/content/res/TypedArray;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Ls4/a;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Landroid/content/res/TypedArray;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    invoke-static {}, Lw/s;->a()Lw/s;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Ls4/a;->b:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v1, Landroid/content/Context;

    .line 29
    .line 30
    monitor-enter v0

    .line 31
    :try_start_0
    iget-object v2, v0, Lw/s;->a:Lw/p2;

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    invoke-virtual {v2, v1, p1, v3}, Lw/p2;->g(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    .line 35
    .line 36
    .line 37
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    monitor-exit v0

    .line 39
    return-object p1

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    throw p1

    .line 43
    :cond_0
    const/4 p1, 0x0

    .line 44
    return-object p1
.end method

.method public g(IILw/s0;)Landroid/graphics/Typeface;
    .locals 9

    .line 1
    iget-object v0, p0, Ls4/a;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/content/res/TypedArray;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    const/4 p1, 0x0

    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    iget-object v0, p0, Ls4/a;->d:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Landroid/util/TypedValue;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    new-instance v0, Landroid/util/TypedValue;

    .line 21
    .line 22
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Ls4/a;->d:Ljava/lang/Object;

    .line 26
    .line 27
    :cond_1
    iget-object v0, p0, Ls4/a;->d:Ljava/lang/Object;

    .line 28
    .line 29
    move-object v4, v0

    .line 30
    check-cast v4, Landroid/util/TypedValue;

    .line 31
    .line 32
    sget-object v0, Lo0/o;->a:Ljava/lang/ThreadLocal;

    .line 33
    .line 34
    iget-object v0, p0, Ls4/a;->b:Ljava/lang/Object;

    .line 35
    .line 36
    move-object v2, v0

    .line 37
    check-cast v2, Landroid/content/Context;

    .line 38
    .line 39
    invoke-virtual {v2}, Landroid/content/Context;->isRestricted()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const/4 v8, 0x0

    .line 47
    const/4 v7, 0x1

    .line 48
    move v5, p2

    .line 49
    move-object v6, p3

    .line 50
    invoke-static/range {v2 .. v8}, Lo0/o;->c(Landroid/content/Context;ILandroid/util/TypedValue;ILo0/b;ZZ)Landroid/graphics/Typeface;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    :goto_0
    return-object p1
.end method

.method public h(C)Ltb/y;
    .locals 2

    .line 1
    iget-object v0, p0, Ls4/a;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ltb/y;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Ls4/a;->d:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, Ls4/a;

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ls4/a;->h(C)Ltb/y;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    :cond_0
    return-object v0
.end method

.method public i(C)Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, Ls4/a;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/util/List;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Ls4/a;->d:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, Ls4/a;

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ls4/a;->i(C)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    if-nez v0, :cond_1

    .line 33
    .line 34
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :cond_1
    return-object v0
.end method

.method public k(I[B)Ljava/util/ArrayList;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, p1, :cond_1

    .line 9
    .line 10
    new-instance v3, Lag/e;

    .line 11
    .line 12
    invoke-direct {v3}, Lag/e;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {v2, p2}, Lv3/f;->K(I[B)I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    int-to-long v4, v4

    .line 20
    iput-wide v4, v3, Lag/e;->c:J

    .line 21
    .line 22
    add-int/lit8 v4, v2, 0x2

    .line 23
    .line 24
    invoke-static {v4, p2}, Lv3/f;->K(I[B)I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    iput v4, v3, Lag/e;->d:I

    .line 29
    .line 30
    add-int/lit8 v2, v2, 0x4

    .line 31
    .line 32
    if-lez v4, :cond_0

    .line 33
    .line 34
    new-array v5, v4, [B

    .line 35
    .line 36
    invoke-static {p2, v2, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    .line 38
    .line 39
    iput-object v5, v3, Lag/e;->e:[B

    .line 40
    .line 41
    :cond_0
    add-int/2addr v2, v4

    .line 42
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-lez p1, :cond_2

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    const/4 v0, 0x0

    .line 54
    :goto_1
    return-object v0
.end method

.method public l(Ly9/d;)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    sget-object v1, Ly9/e;->a:[B

    .line 3
    .line 4
    iget v1, p1, Ly9/d;->a:I

    .line 5
    .line 6
    iget v2, p1, Ly9/d;->f:I

    .line 7
    .line 8
    xor-int/lit8 v2, v2, -0x1

    .line 9
    .line 10
    if-eq v1, v2, :cond_0

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_0
    iget v1, p1, Ly9/d;->d:I

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v1, :cond_3

    .line 17
    .line 18
    iget-object v1, p1, Ly9/d;->g:[B

    .line 19
    .line 20
    array-length v3, v1

    .line 21
    const/4 v4, 0x0

    .line 22
    const/4 v5, 0x0

    .line 23
    :goto_0
    if-ge v4, v3, :cond_2

    .line 24
    .line 25
    aget-byte v6, v1, v4

    .line 26
    .line 27
    if-ltz v6, :cond_1

    .line 28
    .line 29
    add-int/2addr v5, v6

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    add-int/lit16 v6, v6, 0x100

    .line 32
    .line 33
    add-int/2addr v6, v5

    .line 34
    move v5, v6

    .line 35
    :goto_1
    add-int/2addr v4, v0

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    iget v1, p1, Ly9/d;->e:I

    .line 38
    .line 39
    if-eq v5, v1, :cond_3

    .line 40
    .line 41
    :goto_2
    return-void

    .line 42
    :cond_3
    :try_start_0
    iget v1, p1, Ly9/d;->a:I

    .line 43
    .line 44
    sparse-switch v1, :sswitch_data_0

    .line 45
    .line 46
    .line 47
    goto/16 :goto_6

    .line 48
    .line 49
    :sswitch_0
    iget-object p1, p0, Ls4/a;->c:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast p1, Ly9/b;

    .line 52
    .line 53
    const-string v1, "\u5df2\u8fde\u63a5"

    .line 54
    .line 55
    iput-object v1, p1, Ly9/b;->l:Ljava/lang/String;

    .line 56
    .line 57
    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :try_start_1
    iget-object v1, p0, Ls4/a;->c:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v1, Ly9/b;

    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    iget-object v1, p0, Ls4/a;->c:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v1, Ly9/b;

    .line 68
    .line 69
    iput-boolean v0, v1, Ly9/b;->g:Z

    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 72
    .line 73
    .line 74
    monitor-exit p1

    .line 75
    goto/16 :goto_6

    .line 76
    .line 77
    :catchall_0
    move-exception v1

    .line 78
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    :try_start_2
    throw v1

    .line 80
    :sswitch_1
    iget-object v1, p0, Ls4/a;->c:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v1, Ly9/b;

    .line 83
    .line 84
    const-string v3, "\u7b49\u5f85\u6388\u6743"

    .line 85
    .line 86
    iput-object v3, v1, Ly9/b;->l:Ljava/lang/String;

    .line 87
    .line 88
    iget v3, p1, Ly9/d;->b:I

    .line 89
    .line 90
    if-ne v3, v0, :cond_a

    .line 91
    .line 92
    iget-boolean v3, v1, Ly9/b;->i:Z

    .line 93
    .line 94
    const v4, 0x48545541

    .line 95
    .line 96
    .line 97
    if-eqz v3, :cond_4

    .line 98
    .line 99
    iget-object p1, v1, Ly9/b;->h:Ly9/c;

    .line 100
    .line 101
    invoke-virtual {p1}, Ly9/c;->b()[B

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    const/4 v1, 0x3

    .line 106
    invoke-static {v4, v1, v2, p1}, Ly9/e;->a(III[B)[B

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    goto :goto_3

    .line 111
    :cond_4
    iget-object v1, v1, Ly9/b;->h:Ly9/c;

    .line 112
    .line 113
    iget-object p1, p1, Ly9/d;->g:[B

    .line 114
    .line 115
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    const-string v3, "RSA/ECB/NoPadding"

    .line 119
    .line 120
    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    iget-object v1, v1, Ly9/c;->a:Ljava/security/KeyPair;

    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-virtual {v3, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 131
    .line 132
    .line 133
    sget-object v1, Ly9/c;->d:[B

    .line 134
    .line 135
    invoke-virtual {v3, v1}, Ljavax/crypto/Cipher;->update([B)[B

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    const/4 v1, 0x2

    .line 143
    invoke-static {v4, v1, v2, p1}, Ly9/e;->a(III[B)[B

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    iget-object v1, p0, Ls4/a;->c:Ljava/lang/Object;

    .line 148
    .line 149
    check-cast v1, Ly9/b;

    .line 150
    .line 151
    iput-boolean v0, v1, Ly9/b;->i:Z

    .line 152
    .line 153
    :goto_3
    iget-object v1, p0, Ls4/a;->c:Ljava/lang/Object;

    .line 154
    .line 155
    check-cast v1, Ly9/b;

    .line 156
    .line 157
    iget-object v1, v1, Ly9/b;->d:Ljava/io/OutputStream;

    .line 158
    .line 159
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 160
    .line 161
    .line 162
    iget-object p1, p0, Ls4/a;->c:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast p1, Ly9/b;

    .line 165
    .line 166
    iget-object p1, p1, Ly9/b;->d:Ljava/io/OutputStream;

    .line 167
    .line 168
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 169
    .line 170
    .line 171
    goto/16 :goto_6

    .line 172
    .line 173
    :sswitch_2
    iget-object v1, p0, Ls4/a;->c:Ljava/lang/Object;

    .line 174
    .line 175
    check-cast v1, Ly9/b;

    .line 176
    .line 177
    iget-boolean v1, v1, Ly9/b;->g:Z

    .line 178
    .line 179
    if-nez v1, :cond_5

    .line 180
    .line 181
    return-void

    .line 182
    :cond_5
    iget-object v1, p0, Ls4/a;->b:Ljava/lang/Object;

    .line 183
    .line 184
    check-cast v1, Ljava/util/HashMap;

    .line 185
    .line 186
    iget v2, p1, Ly9/d;->c:I

    .line 187
    .line 188
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    check-cast v1, Ly9/f;

    .line 197
    .line 198
    if-nez v1, :cond_6

    .line 199
    .line 200
    return-void

    .line 201
    :cond_6
    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 202
    :try_start_3
    iget v2, p1, Ly9/d;->a:I

    .line 203
    .line 204
    const v3, 0x59414b4f

    .line 205
    .line 206
    .line 207
    if-ne v2, v3, :cond_7

    .line 208
    .line 209
    iget p1, p1, Ly9/d;->b:I

    .line 210
    .line 211
    iput p1, v1, Ly9/f;->c:I

    .line 212
    .line 213
    iget-object p1, v1, Ly9/f;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 214
    .line 215
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 219
    .line 220
    .line 221
    goto :goto_4

    .line 222
    :catchall_1
    move-exception p1

    .line 223
    goto :goto_5

    .line 224
    :cond_7
    const v4, 0x45545257

    .line 225
    .line 226
    .line 227
    if-ne v2, v4, :cond_8

    .line 228
    .line 229
    iget-object p1, p1, Ly9/d;->g:[B

    .line 230
    .line 231
    iget-object v2, v1, Ly9/f;->e:Ly9/g;

    .line 232
    .line 233
    iget-object v2, v2, Ly9/g;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 234
    .line 235
    invoke-virtual {v2, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    iget p1, v1, Ly9/f;->c:I

    .line 239
    .line 240
    iget v2, v1, Ly9/f;->b:I

    .line 241
    .line 242
    const/4 v4, 0x0

    .line 243
    invoke-static {v3, v2, p1, v4}, Ly9/e;->a(III[B)[B

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    iget-object v2, v1, Ly9/f;->a:Ly9/b;

    .line 248
    .line 249
    iget-object v3, v2, Ly9/b;->d:Ljava/io/OutputStream;

    .line 250
    .line 251
    invoke-virtual {v3, p1}, Ljava/io/OutputStream;->write([B)V

    .line 252
    .line 253
    .line 254
    iget-object p1, v2, Ly9/b;->d:Ljava/io/OutputStream;

    .line 255
    .line 256
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 257
    .line 258
    .line 259
    goto :goto_4

    .line 260
    :cond_8
    const v3, 0x45534c43

    .line 261
    .line 262
    .line 263
    if-ne v2, v3, :cond_9

    .line 264
    .line 265
    iget-object v2, p0, Ls4/a;->b:Ljava/lang/Object;

    .line 266
    .line 267
    check-cast v2, Ljava/util/HashMap;

    .line 268
    .line 269
    iget p1, p1, Ly9/d;->c:I

    .line 270
    .line 271
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v1}, Ly9/f;->r()V

    .line 279
    .line 280
    .line 281
    :cond_9
    :goto_4
    monitor-exit v1

    .line 282
    goto :goto_6

    .line 283
    :goto_5
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 284
    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 285
    :catch_0
    iget-object p1, p0, Ls4/a;->c:Ljava/lang/Object;

    .line 286
    .line 287
    check-cast p1, Ly9/b;

    .line 288
    .line 289
    iput-boolean v0, p1, Ly9/b;->k:Z

    .line 290
    .line 291
    :cond_a
    :goto_6
    return-void

    .line 292
    nop

    .line 293
    :sswitch_data_0
    .sparse-switch
        0x45534c43 -> :sswitch_2
        0x45545257 -> :sswitch_2
        0x48545541 -> :sswitch_1
        0x4e584e43 -> :sswitch_0
        0x59414b4f -> :sswitch_2
    .end sparse-switch
.end method

.method public o(Ljava/io/RandomAccessFile;Lag/h;)Lag/l;
    .locals 32

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget-object v2, v1, Ls4/a;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Lv3/f;

    .line 8
    .line 9
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->length()J

    .line 10
    .line 11
    .line 12
    move-result-wide v3

    .line 13
    const-wide/16 v5, 0x0

    .line 14
    .line 15
    cmp-long v7, v3, v5

    .line 16
    .line 17
    if-nez v7, :cond_0

    .line 18
    .line 19
    new-instance v0, Lag/l;

    .line 20
    .line 21
    invoke-direct {v0}, Lag/l;-><init>()V

    .line 22
    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->length()J

    .line 26
    .line 27
    .line 28
    move-result-wide v3

    .line 29
    const-wide/16 v7, 0x16

    .line 30
    .line 31
    cmp-long v9, v3, v7

    .line 32
    .line 33
    if-ltz v9, :cond_20

    .line 34
    .line 35
    new-instance v3, Lag/l;

    .line 36
    .line 37
    invoke-direct {v3}, Lag/l;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v3, v1, Ls4/a;->b:Ljava/lang/Object;

    .line 41
    .line 42
    move-object/from16 v4, p2

    .line 43
    .line 44
    :try_start_0
    invoke-virtual {v1, v0, v2, v4}, Ls4/a;->p(Ljava/io/RandomAccessFile;Lv3/f;Lag/h;)Lag/d;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    iput-object v4, v3, Lag/l;->c:Lag/d;
    :try_end_0
    .catch Lwf/a; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 49
    .line 50
    iget-object v3, v1, Ls4/a;->b:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v3, Lag/l;

    .line 53
    .line 54
    iget-object v4, v3, Lag/l;->c:Lag/d;

    .line 55
    .line 56
    iget v7, v4, Lag/d;->e:I

    .line 57
    .line 58
    if-nez v7, :cond_1

    .line 59
    .line 60
    return-object v3

    .line 61
    :cond_1
    iget-wide v7, v4, Lag/d;->g:J

    .line 62
    .line 63
    new-instance v4, Lag/i;

    .line 64
    .line 65
    invoke-direct {v4}, Lag/i;-><init>()V

    .line 66
    .line 67
    .line 68
    const-wide/16 v9, 0x14

    .line 69
    .line 70
    sub-long/2addr v7, v9

    .line 71
    invoke-static {v0, v7, v8}, Ls4/a;->u(Ljava/io/RandomAccessFile;J)V

    .line 72
    .line 73
    .line 74
    iget-object v7, v2, Lv3/f;->c:Ljava/lang/Object;

    .line 75
    .line 76
    move-object v12, v7

    .line 77
    check-cast v12, [B

    .line 78
    .line 79
    invoke-virtual {v0, v12}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 80
    .line 81
    .line 82
    const/4 v13, 0x0

    .line 83
    invoke-static {v13, v12}, Lv3/f;->H(I[B)I

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    int-to-long v7, v7

    .line 88
    const-wide/32 v9, 0x7064b50

    .line 89
    .line 90
    .line 91
    const/4 v14, 0x1

    .line 92
    iget-object v11, v2, Lv3/f;->d:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v11, [B

    .line 95
    .line 96
    cmp-long v16, v7, v9

    .line 97
    .line 98
    if-nez v16, :cond_2

    .line 99
    .line 100
    iget-object v7, v1, Ls4/a;->b:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v7, Lag/l;

    .line 103
    .line 104
    iput-boolean v14, v7, Lag/l;->h:Z

    .line 105
    .line 106
    const/16 v7, 0x9

    .line 107
    .line 108
    iput v7, v4, Lab/a;->b:I

    .line 109
    .line 110
    invoke-virtual {v0, v12}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 111
    .line 112
    .line 113
    invoke-static {v13, v12}, Lv3/f;->H(I[B)I

    .line 114
    .line 115
    .line 116
    move-result v7

    .line 117
    iput v7, v4, Lag/i;->c:I

    .line 118
    .line 119
    invoke-virtual {v0, v11}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2, v13, v11}, Lv3/f;->J(I[B)J

    .line 123
    .line 124
    .line 125
    move-result-wide v7

    .line 126
    iput-wide v7, v4, Lag/i;->d:J

    .line 127
    .line 128
    invoke-virtual {v0, v12}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 129
    .line 130
    .line 131
    invoke-static {v13, v12}, Lv3/f;->H(I[B)I

    .line 132
    .line 133
    .line 134
    move-result v7

    .line 135
    iput v7, v4, Lag/i;->e:I

    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_2
    iget-object v4, v1, Ls4/a;->b:Ljava/lang/Object;

    .line 139
    .line 140
    check-cast v4, Lag/l;

    .line 141
    .line 142
    iput-boolean v13, v4, Lag/l;->h:Z

    .line 143
    .line 144
    const/4 v4, 0x0

    .line 145
    :goto_0
    iput-object v4, v3, Lag/l;->d:Lag/i;

    .line 146
    .line 147
    iget-object v3, v1, Ls4/a;->b:Ljava/lang/Object;

    .line 148
    .line 149
    check-cast v3, Lag/l;

    .line 150
    .line 151
    iget-boolean v4, v3, Lag/l;->h:Z

    .line 152
    .line 153
    iget-object v7, v2, Lv3/f;->b:Ljava/lang/Object;

    .line 154
    .line 155
    move-object v9, v7

    .line 156
    check-cast v9, [B

    .line 157
    .line 158
    if-eqz v4, :cond_8

    .line 159
    .line 160
    iget-object v4, v3, Lag/l;->d:Lag/i;

    .line 161
    .line 162
    if-eqz v4, :cond_7

    .line 163
    .line 164
    iget-wide v7, v4, Lag/i;->d:J

    .line 165
    .line 166
    cmp-long v4, v7, v5

    .line 167
    .line 168
    if-ltz v4, :cond_6

    .line 169
    .line 170
    invoke-virtual {v0, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 171
    .line 172
    .line 173
    new-instance v4, Lag/j;

    .line 174
    .line 175
    invoke-direct {v4}, Lag/j;-><init>()V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v12}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 179
    .line 180
    .line 181
    invoke-static {v13, v12}, Lv3/f;->H(I[B)I

    .line 182
    .line 183
    .line 184
    move-result v7

    .line 185
    int-to-long v7, v7

    .line 186
    const-wide/32 v16, 0x6064b50

    .line 187
    .line 188
    .line 189
    cmp-long v10, v7, v16

    .line 190
    .line 191
    if-nez v10, :cond_5

    .line 192
    .line 193
    const/16 v7, 0xa

    .line 194
    .line 195
    iput v7, v4, Lab/a;->b:I

    .line 196
    .line 197
    invoke-virtual {v0, v11}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v2, v13, v11}, Lv3/f;->J(I[B)J

    .line 201
    .line 202
    .line 203
    move-result-wide v7

    .line 204
    iput-wide v7, v4, Lag/j;->c:J

    .line 205
    .line 206
    invoke-virtual {v0, v9}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 207
    .line 208
    .line 209
    invoke-static {v13, v9}, Lv3/f;->K(I[B)I

    .line 210
    .line 211
    .line 212
    move-result v7

    .line 213
    iput v7, v4, Lag/j;->d:I

    .line 214
    .line 215
    invoke-virtual {v0, v9}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 216
    .line 217
    .line 218
    invoke-static {v13, v9}, Lv3/f;->K(I[B)I

    .line 219
    .line 220
    .line 221
    move-result v7

    .line 222
    iput v7, v4, Lag/j;->e:I

    .line 223
    .line 224
    invoke-virtual {v0, v12}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 225
    .line 226
    .line 227
    invoke-static {v13, v12}, Lv3/f;->H(I[B)I

    .line 228
    .line 229
    .line 230
    move-result v7

    .line 231
    iput v7, v4, Lag/j;->f:I

    .line 232
    .line 233
    invoke-virtual {v0, v12}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 234
    .line 235
    .line 236
    invoke-static {v13, v12}, Lv3/f;->H(I[B)I

    .line 237
    .line 238
    .line 239
    move-result v7

    .line 240
    iput v7, v4, Lag/j;->g:I

    .line 241
    .line 242
    invoke-virtual {v0, v11}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v2, v13, v11}, Lv3/f;->J(I[B)J

    .line 246
    .line 247
    .line 248
    move-result-wide v7

    .line 249
    iput-wide v7, v4, Lag/j;->h:J

    .line 250
    .line 251
    invoke-virtual {v0, v11}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v2, v13, v11}, Lv3/f;->J(I[B)J

    .line 255
    .line 256
    .line 257
    move-result-wide v7

    .line 258
    iput-wide v7, v4, Lag/j;->i:J

    .line 259
    .line 260
    invoke-virtual {v0, v11}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v2, v13, v11}, Lv3/f;->J(I[B)J

    .line 264
    .line 265
    .line 266
    move-result-wide v7

    .line 267
    iput-wide v7, v4, Lag/j;->j:J

    .line 268
    .line 269
    invoke-virtual {v0, v11}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v2, v13, v11}, Lv3/f;->J(I[B)J

    .line 273
    .line 274
    .line 275
    move-result-wide v7

    .line 276
    iput-wide v7, v4, Lag/j;->k:J

    .line 277
    .line 278
    iget-wide v7, v4, Lag/j;->c:J

    .line 279
    .line 280
    const-wide/16 v16, 0x2c

    .line 281
    .line 282
    sub-long v7, v7, v16

    .line 283
    .line 284
    cmp-long v10, v7, v5

    .line 285
    .line 286
    if-lez v10, :cond_3

    .line 287
    .line 288
    long-to-int v5, v7

    .line 289
    new-array v5, v5, [B

    .line 290
    .line 291
    invoke-virtual {v0, v5}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 292
    .line 293
    .line 294
    :cond_3
    iput-object v4, v3, Lag/l;->e:Lag/j;

    .line 295
    .line 296
    iget-object v3, v1, Ls4/a;->b:Ljava/lang/Object;

    .line 297
    .line 298
    check-cast v3, Lag/l;

    .line 299
    .line 300
    iget-object v4, v3, Lag/l;->e:Lag/j;

    .line 301
    .line 302
    if-eqz v4, :cond_4

    .line 303
    .line 304
    iget v4, v4, Lag/j;->f:I

    .line 305
    .line 306
    if-lez v4, :cond_4

    .line 307
    .line 308
    iput-boolean v14, v3, Lag/l;->f:Z

    .line 309
    .line 310
    goto :goto_1

    .line 311
    :cond_4
    iput-boolean v13, v3, Lag/l;->f:Z

    .line 312
    .line 313
    goto :goto_1

    .line 314
    :cond_5
    new-instance v0, Lwf/a;

    .line 315
    .line 316
    const-string v2, "invalid signature for zip64 end of central directory record"

    .line 317
    .line 318
    invoke-direct {v0, v2}, Lwf/a;-><init>(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    throw v0

    .line 322
    :cond_6
    new-instance v0, Lwf/a;

    .line 323
    .line 324
    const-string v2, "invalid offset for start of end of central directory record"

    .line 325
    .line 326
    invoke-direct {v0, v2}, Lwf/a;-><init>(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    throw v0

    .line 330
    :cond_7
    new-instance v0, Lwf/a;

    .line 331
    .line 332
    const-string v2, "invalid zip64 end of central directory locator"

    .line 333
    .line 334
    invoke-direct {v0, v2}, Lwf/a;-><init>(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    throw v0

    .line 338
    :cond_8
    :goto_1
    iget-object v3, v1, Ls4/a;->b:Ljava/lang/Object;

    .line 339
    .line 340
    move-object v10, v3

    .line 341
    check-cast v10, Lag/l;

    .line 342
    .line 343
    new-instance v7, Lag/c;

    .line 344
    .line 345
    const/4 v3, 0x0

    .line 346
    invoke-direct {v7, v3}, Lag/c;-><init>(I)V

    .line 347
    .line 348
    .line 349
    new-instance v8, Ljava/util/ArrayList;

    .line 350
    .line 351
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 352
    .line 353
    .line 354
    iget-object v3, v1, Ls4/a;->b:Ljava/lang/Object;

    .line 355
    .line 356
    check-cast v3, Lag/l;

    .line 357
    .line 358
    iget-boolean v4, v3, Lag/l;->h:Z

    .line 359
    .line 360
    if-eqz v4, :cond_9

    .line 361
    .line 362
    iget-object v5, v3, Lag/l;->e:Lag/j;

    .line 363
    .line 364
    iget-wide v5, v5, Lag/j;->k:J

    .line 365
    .line 366
    goto :goto_2

    .line 367
    :cond_9
    iget-object v5, v3, Lag/l;->c:Lag/d;

    .line 368
    .line 369
    iget-wide v5, v5, Lag/d;->f:J

    .line 370
    .line 371
    :goto_2
    if-eqz v4, :cond_a

    .line 372
    .line 373
    iget-object v3, v3, Lag/l;->e:Lag/j;

    .line 374
    .line 375
    iget-wide v3, v3, Lag/j;->i:J

    .line 376
    .line 377
    :goto_3
    move-wide/from16 v16, v3

    .line 378
    .line 379
    goto :goto_4

    .line 380
    :cond_a
    iget-object v3, v3, Lag/l;->c:Lag/d;

    .line 381
    .line 382
    iget v3, v3, Lag/d;->e:I

    .line 383
    .line 384
    int-to-long v3, v3

    .line 385
    goto :goto_3

    .line 386
    :goto_4
    invoke-virtual {v0, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 387
    .line 388
    .line 389
    const/4 v5, 0x2

    .line 390
    new-array v6, v5, [B

    .line 391
    .line 392
    const/4 v4, 0x4

    .line 393
    new-array v3, v4, [B

    .line 394
    .line 395
    const/4 v15, 0x0

    .line 396
    :goto_5
    int-to-long v4, v15

    .line 397
    cmp-long v19, v4, v16

    .line 398
    .line 399
    if-gez v19, :cond_1e

    .line 400
    .line 401
    new-instance v5, Lag/f;

    .line 402
    .line 403
    invoke-direct {v5}, Lag/f;-><init>()V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v0, v12}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 407
    .line 408
    .line 409
    invoke-static {v13, v12}, Lv3/f;->H(I[B)I

    .line 410
    .line 411
    .line 412
    move-result v4

    .line 413
    move/from16 v20, v15

    .line 414
    .line 415
    int-to-long v14, v4

    .line 416
    const-wide/32 v21, 0x2014b50    # 1.6619997E-316

    .line 417
    .line 418
    .line 419
    cmp-long v4, v14, v21

    .line 420
    .line 421
    if-nez v4, :cond_1d

    .line 422
    .line 423
    const/4 v4, 0x3

    .line 424
    iput v4, v5, Lab/a;->b:I

    .line 425
    .line 426
    invoke-virtual {v0, v9}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 427
    .line 428
    .line 429
    invoke-static {v13, v9}, Lv3/f;->K(I[B)I

    .line 430
    .line 431
    .line 432
    move-result v14

    .line 433
    iput v14, v5, Lag/f;->v:I

    .line 434
    .line 435
    invoke-virtual {v0, v9}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 436
    .line 437
    .line 438
    invoke-static {v13, v9}, Lv3/f;->K(I[B)I

    .line 439
    .line 440
    .line 441
    move-result v14

    .line 442
    iput v14, v5, Lag/b;->c:I

    .line 443
    .line 444
    const/4 v14, 0x2

    .line 445
    new-array v15, v14, [B

    .line 446
    .line 447
    invoke-virtual {v0, v15}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 448
    .line 449
    .line 450
    aget-byte v14, v15, v13

    .line 451
    .line 452
    invoke-static {v14, v13}, Leg/c;->g(BI)Z

    .line 453
    .line 454
    .line 455
    move-result v14

    .line 456
    iput-boolean v14, v5, Lag/b;->l:Z

    .line 457
    .line 458
    aget-byte v14, v15, v13

    .line 459
    .line 460
    invoke-static {v14, v4}, Leg/c;->g(BI)Z

    .line 461
    .line 462
    .line 463
    move-result v14

    .line 464
    iput-boolean v14, v5, Lag/b;->n:Z

    .line 465
    .line 466
    const/4 v14, 0x1

    .line 467
    aget-byte v13, v15, v14

    .line 468
    .line 469
    invoke-static {v13, v4}, Leg/c;->g(BI)Z

    .line 470
    .line 471
    .line 472
    move-result v13

    .line 473
    iput-boolean v13, v5, Lag/b;->r:Z

    .line 474
    .line 475
    invoke-virtual {v15}, [B->clone()Ljava/lang/Object;

    .line 476
    .line 477
    .line 478
    move-result-object v13

    .line 479
    check-cast v13, [B

    .line 480
    .line 481
    iput-object v13, v5, Lag/b;->d:[B

    .line 482
    .line 483
    invoke-virtual {v0, v9}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 484
    .line 485
    .line 486
    const/4 v13, 0x0

    .line 487
    invoke-static {v13, v9}, Lv3/f;->K(I[B)I

    .line 488
    .line 489
    .line 490
    move-result v14

    .line 491
    invoke-static {v14}, Landroid/support/v4/media/session/a;->c(I)I

    .line 492
    .line 493
    .line 494
    move-result v14

    .line 495
    iput v14, v5, Lag/b;->e:I

    .line 496
    .line 497
    invoke-virtual {v0, v12}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 498
    .line 499
    .line 500
    invoke-static {v13, v12}, Lv3/f;->H(I[B)I

    .line 501
    .line 502
    .line 503
    move-result v14

    .line 504
    int-to-long v14, v14

    .line 505
    iput-wide v14, v5, Lag/b;->f:J

    .line 506
    .line 507
    invoke-virtual {v0, v3}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v2, v13, v3}, Lv3/f;->J(I[B)J

    .line 511
    .line 512
    .line 513
    move-result-wide v14

    .line 514
    iput-wide v14, v5, Lag/b;->g:J

    .line 515
    .line 516
    invoke-static {v11, v13}, Ljava/util/Arrays;->fill([BB)V

    .line 517
    .line 518
    .line 519
    const/4 v14, 0x4

    .line 520
    invoke-virtual {v0, v11, v13, v14}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 521
    .line 522
    .line 523
    invoke-virtual {v2, v13, v11}, Lv3/f;->J(I[B)J

    .line 524
    .line 525
    .line 526
    move-result-wide v14

    .line 527
    iput-wide v14, v5, Lag/b;->h:J

    .line 528
    .line 529
    invoke-static {v11, v13}, Ljava/util/Arrays;->fill([BB)V

    .line 530
    .line 531
    .line 532
    const/4 v14, 0x4

    .line 533
    invoke-virtual {v0, v11, v13, v14}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 534
    .line 535
    .line 536
    invoke-virtual {v2, v13, v11}, Lv3/f;->J(I[B)J

    .line 537
    .line 538
    .line 539
    move-result-wide v14

    .line 540
    iput-wide v14, v5, Lag/b;->i:J

    .line 541
    .line 542
    invoke-virtual {v0, v9}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 543
    .line 544
    .line 545
    invoke-static {v13, v9}, Lv3/f;->K(I[B)I

    .line 546
    .line 547
    .line 548
    move-result v14

    .line 549
    invoke-virtual {v0, v9}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 550
    .line 551
    .line 552
    invoke-static {v13, v9}, Lv3/f;->K(I[B)I

    .line 553
    .line 554
    .line 555
    move-result v15

    .line 556
    iput v15, v5, Lag/b;->j:I

    .line 557
    .line 558
    invoke-virtual {v0, v9}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 559
    .line 560
    .line 561
    invoke-static {v13, v9}, Lv3/f;->K(I[B)I

    .line 562
    .line 563
    .line 564
    move-result v15

    .line 565
    invoke-virtual {v0, v9}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 566
    .line 567
    .line 568
    invoke-static {v13, v9}, Lv3/f;->K(I[B)I

    .line 569
    .line 570
    .line 571
    move-result v4

    .line 572
    iput v4, v5, Lag/f;->w:I

    .line 573
    .line 574
    invoke-virtual {v0, v6}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 575
    .line 576
    .line 577
    invoke-virtual {v0, v3}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 578
    .line 579
    .line 580
    invoke-virtual {v3}, [B->clone()Ljava/lang/Object;

    .line 581
    .line 582
    .line 583
    move-result-object v4

    .line 584
    check-cast v4, [B

    .line 585
    .line 586
    iput-object v4, v5, Lag/f;->x:[B

    .line 587
    .line 588
    invoke-virtual {v0, v3}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 589
    .line 590
    .line 591
    move-object/from16 v23, v6

    .line 592
    .line 593
    move-object v13, v7

    .line 594
    const/4 v4, 0x0

    .line 595
    invoke-virtual {v2, v4, v3}, Lv3/f;->J(I[B)J

    .line 596
    .line 597
    .line 598
    move-result-wide v6

    .line 599
    iput-wide v6, v5, Lag/f;->y:J

    .line 600
    .line 601
    if-lez v14, :cond_1c

    .line 602
    .line 603
    new-array v4, v14, [B

    .line 604
    .line 605
    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 606
    .line 607
    .line 608
    iget-boolean v6, v5, Lag/b;->r:Z

    .line 609
    .line 610
    const/4 v7, 0x0

    .line 611
    invoke-static {v4, v6, v7}, Lqf/c;->j([BZLjava/nio/charset/Charset;)Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object v4

    .line 615
    iput-object v4, v5, Lag/b;->k:Ljava/lang/String;

    .line 616
    .line 617
    iget-object v6, v5, Lag/f;->x:[B

    .line 618
    .line 619
    const/4 v7, 0x0

    .line 620
    aget-byte v14, v6, v7

    .line 621
    .line 622
    if-eqz v14, :cond_c

    .line 623
    .line 624
    const/4 v7, 0x4

    .line 625
    invoke-static {v14, v7}, Leg/c;->g(BI)Z

    .line 626
    .line 627
    .line 628
    move-result v14

    .line 629
    if-eqz v14, :cond_c

    .line 630
    .line 631
    :cond_b
    :goto_6
    const/4 v14, 0x1

    .line 632
    goto :goto_7

    .line 633
    :cond_c
    const/4 v7, 0x3

    .line 634
    aget-byte v6, v6, v7

    .line 635
    .line 636
    if-eqz v6, :cond_d

    .line 637
    .line 638
    const/4 v7, 0x6

    .line 639
    invoke-static {v6, v7}, Leg/c;->g(BI)Z

    .line 640
    .line 641
    .line 642
    move-result v6

    .line 643
    if-eqz v6, :cond_d

    .line 644
    .line 645
    goto :goto_6

    .line 646
    :cond_d
    const-string v6, "/"

    .line 647
    .line 648
    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 649
    .line 650
    .line 651
    move-result v6

    .line 652
    if-nez v6, :cond_b

    .line 653
    .line 654
    const-string v6, "\\"

    .line 655
    .line 656
    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 657
    .line 658
    .line 659
    move-result v4

    .line 660
    if-eqz v4, :cond_e

    .line 661
    .line 662
    goto :goto_6

    .line 663
    :cond_e
    const/4 v14, 0x0

    .line 664
    :goto_7
    iput-boolean v14, v5, Lag/b;->t:Z

    .line 665
    .line 666
    iget v4, v5, Lag/b;->j:I

    .line 667
    .line 668
    if-gtz v4, :cond_f

    .line 669
    .line 670
    const/4 v6, 0x4

    .line 671
    goto :goto_9

    .line 672
    :cond_f
    const/4 v6, 0x4

    .line 673
    if-ge v4, v6, :cond_11

    .line 674
    .line 675
    if-lez v4, :cond_10

    .line 676
    .line 677
    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 678
    .line 679
    .line 680
    :cond_10
    const/4 v7, 0x0

    .line 681
    goto :goto_8

    .line 682
    :cond_11
    new-array v7, v4, [B

    .line 683
    .line 684
    invoke-virtual {v0, v7}, Ljava/io/RandomAccessFile;->read([B)I

    .line 685
    .line 686
    .line 687
    :try_start_1
    invoke-virtual {v1, v4, v7}, Ls4/a;->k(I[B)Ljava/util/ArrayList;

    .line 688
    .line 689
    .line 690
    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 691
    goto :goto_8

    .line 692
    :catch_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 693
    .line 694
    .line 695
    move-result-object v7

    .line 696
    :goto_8
    iput-object v7, v5, Lag/b;->s:Ljava/util/List;

    .line 697
    .line 698
    :goto_9
    iget-object v4, v5, Lag/b;->s:Ljava/util/List;

    .line 699
    .line 700
    if-eqz v4, :cond_12

    .line 701
    .line 702
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 703
    .line 704
    .line 705
    move-result v4

    .line 706
    if-gtz v4, :cond_13

    .line 707
    .line 708
    :cond_12
    move-object/from16 v27, v3

    .line 709
    .line 710
    move-object v14, v5

    .line 711
    move-object/from16 v29, v9

    .line 712
    .line 713
    move-object/from16 v30, v10

    .line 714
    .line 715
    move-object/from16 v22, v12

    .line 716
    .line 717
    move-object v1, v13

    .line 718
    move-object/from16 v18, v23

    .line 719
    .line 720
    move-object v12, v8

    .line 721
    move-object/from16 v23, v11

    .line 722
    .line 723
    goto/16 :goto_a

    .line 724
    .line 725
    :cond_13
    iget-object v4, v5, Lag/b;->s:Ljava/util/List;

    .line 726
    .line 727
    iget-wide v6, v5, Lag/b;->i:J

    .line 728
    .line 729
    move-object/from16 v22, v8

    .line 730
    .line 731
    move-object v14, v9

    .line 732
    iget-wide v8, v5, Lag/b;->h:J

    .line 733
    .line 734
    move-object/from16 v25, v10

    .line 735
    .line 736
    move-object/from16 v24, v11

    .line 737
    .line 738
    iget-wide v10, v5, Lag/f;->y:J

    .line 739
    .line 740
    move-object/from16 v26, v13

    .line 741
    .line 742
    iget v13, v5, Lag/f;->w:I

    .line 743
    .line 744
    move-object/from16 v27, v3

    .line 745
    .line 746
    move-object v3, v4

    .line 747
    move-object/from16 v28, v14

    .line 748
    .line 749
    const/4 v14, 0x4

    .line 750
    move-object v4, v2

    .line 751
    move-object v14, v5

    .line 752
    move-object/from16 v18, v23

    .line 753
    .line 754
    move-wide v5, v6

    .line 755
    move-object/from16 v1, v26

    .line 756
    .line 757
    move-object/from16 v31, v22

    .line 758
    .line 759
    move-object/from16 v22, v12

    .line 760
    .line 761
    move-object/from16 v12, v31

    .line 762
    .line 763
    move-wide v7, v8

    .line 764
    move-object/from16 v30, v25

    .line 765
    .line 766
    move-object/from16 v29, v28

    .line 767
    .line 768
    move-wide v9, v10

    .line 769
    move-object/from16 v23, v24

    .line 770
    .line 771
    move v11, v13

    .line 772
    invoke-static/range {v3 .. v11}, Ls4/a;->q(Ljava/util/List;Lv3/f;JJJI)Lag/k;

    .line 773
    .line 774
    .line 775
    move-result-object v3

    .line 776
    if-nez v3, :cond_14

    .line 777
    .line 778
    goto :goto_a

    .line 779
    :cond_14
    iput-object v3, v14, Lag/b;->p:Lag/k;

    .line 780
    .line 781
    iget-wide v4, v3, Lag/k;->d:J

    .line 782
    .line 783
    const-wide/16 v6, -0x1

    .line 784
    .line 785
    cmp-long v8, v4, v6

    .line 786
    .line 787
    if-eqz v8, :cond_15

    .line 788
    .line 789
    iput-wide v4, v14, Lag/b;->i:J

    .line 790
    .line 791
    :cond_15
    iget-wide v4, v3, Lag/k;->c:J

    .line 792
    .line 793
    cmp-long v8, v4, v6

    .line 794
    .line 795
    if-eqz v8, :cond_16

    .line 796
    .line 797
    iput-wide v4, v14, Lag/b;->h:J

    .line 798
    .line 799
    :cond_16
    iget-wide v4, v3, Lag/k;->e:J

    .line 800
    .line 801
    cmp-long v8, v4, v6

    .line 802
    .line 803
    if-eqz v8, :cond_17

    .line 804
    .line 805
    iput-wide v4, v14, Lag/f;->y:J

    .line 806
    .line 807
    :cond_17
    iget v3, v3, Lag/k;->f:I

    .line 808
    .line 809
    const/4 v4, -0x1

    .line 810
    if-eq v3, v4, :cond_18

    .line 811
    .line 812
    iput v3, v14, Lag/f;->w:I

    .line 813
    .line 814
    :cond_18
    :goto_a
    invoke-static {v14, v2}, Ls4/a;->n(Lag/b;Lv3/f;)V

    .line 815
    .line 816
    .line 817
    if-lez v15, :cond_19

    .line 818
    .line 819
    new-array v3, v15, [B

    .line 820
    .line 821
    invoke-virtual {v0, v3}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 822
    .line 823
    .line 824
    iget-boolean v4, v14, Lag/b;->r:Z

    .line 825
    .line 826
    const/4 v5, 0x0

    .line 827
    invoke-static {v3, v4, v5}, Lqf/c;->j([BZLjava/nio/charset/Charset;)Ljava/lang/String;

    .line 828
    .line 829
    .line 830
    move-result-object v3

    .line 831
    iput-object v3, v14, Lag/f;->z:Ljava/lang/String;

    .line 832
    .line 833
    goto :goto_b

    .line 834
    :cond_19
    const/4 v5, 0x0

    .line 835
    :goto_b
    iget-boolean v3, v14, Lag/b;->l:Z

    .line 836
    .line 837
    if-eqz v3, :cond_1b

    .line 838
    .line 839
    iget-object v3, v14, Lag/b;->q:Lag/a;

    .line 840
    .line 841
    if-eqz v3, :cond_1a

    .line 842
    .line 843
    const/4 v3, 0x4

    .line 844
    iput v3, v14, Lag/b;->m:I

    .line 845
    .line 846
    :goto_c
    const/4 v4, 0x2

    .line 847
    goto :goto_d

    .line 848
    :cond_1a
    const/4 v3, 0x4

    .line 849
    const/4 v4, 0x2

    .line 850
    iput v4, v14, Lag/b;->m:I

    .line 851
    .line 852
    goto :goto_d

    .line 853
    :cond_1b
    const/4 v3, 0x4

    .line 854
    goto :goto_c

    .line 855
    :goto_d
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 856
    .line 857
    .line 858
    add-int/lit8 v15, v20, 0x1

    .line 859
    .line 860
    move-object v7, v1

    .line 861
    move-object v8, v12

    .line 862
    move-object/from16 v6, v18

    .line 863
    .line 864
    move-object/from16 v12, v22

    .line 865
    .line 866
    move-object/from16 v11, v23

    .line 867
    .line 868
    move-object/from16 v3, v27

    .line 869
    .line 870
    move-object/from16 v9, v29

    .line 871
    .line 872
    move-object/from16 v10, v30

    .line 873
    .line 874
    const/4 v13, 0x0

    .line 875
    const/4 v14, 0x1

    .line 876
    move-object/from16 v1, p0

    .line 877
    .line 878
    goto/16 :goto_5

    .line 879
    .line 880
    :cond_1c
    new-instance v0, Lwf/a;

    .line 881
    .line 882
    const-string v1, "Invalid entry name in file header"

    .line 883
    .line 884
    invoke-direct {v0, v1}, Lwf/a;-><init>(Ljava/lang/String;)V

    .line 885
    .line 886
    .line 887
    throw v0

    .line 888
    :cond_1d
    new-instance v0, Lwf/a;

    .line 889
    .line 890
    new-instance v1, Ljava/lang/StringBuilder;

    .line 891
    .line 892
    const-string v2, "Expected central directory entry not found (#"

    .line 893
    .line 894
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 895
    .line 896
    .line 897
    const/4 v2, 0x1

    .line 898
    add-int/lit8 v15, v20, 0x1

    .line 899
    .line 900
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 901
    .line 902
    .line 903
    const-string v2, ")"

    .line 904
    .line 905
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 906
    .line 907
    .line 908
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 909
    .line 910
    .line 911
    move-result-object v1

    .line 912
    invoke-direct {v0, v1}, Lwf/a;-><init>(Ljava/lang/String;)V

    .line 913
    .line 914
    .line 915
    throw v0

    .line 916
    :cond_1e
    move-object v1, v7

    .line 917
    move-object/from16 v29, v9

    .line 918
    .line 919
    move-object/from16 v30, v10

    .line 920
    .line 921
    move-object/from16 v22, v12

    .line 922
    .line 923
    move-object v12, v8

    .line 924
    iput-object v12, v1, Lag/c;->a:Ljava/util/ArrayList;

    .line 925
    .line 926
    move-object/from16 v7, v22

    .line 927
    .line 928
    invoke-virtual {v0, v7}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 929
    .line 930
    .line 931
    const/4 v2, 0x0

    .line 932
    invoke-static {v2, v7}, Lv3/f;->H(I[B)I

    .line 933
    .line 934
    .line 935
    move-result v3

    .line 936
    int-to-long v3, v3

    .line 937
    const-wide/32 v5, 0x5054b50

    .line 938
    .line 939
    .line 940
    cmp-long v7, v3, v5

    .line 941
    .line 942
    if-nez v7, :cond_1f

    .line 943
    .line 944
    move-object/from16 v7, v29

    .line 945
    .line 946
    invoke-virtual {v0, v7}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 947
    .line 948
    .line 949
    invoke-static {v2, v7}, Lv3/f;->K(I[B)I

    .line 950
    .line 951
    .line 952
    move-result v2

    .line 953
    if-lez v2, :cond_1f

    .line 954
    .line 955
    new-array v2, v2, [B

    .line 956
    .line 957
    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 958
    .line 959
    .line 960
    new-instance v0, Ljava/lang/String;

    .line 961
    .line 962
    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 963
    .line 964
    .line 965
    :cond_1f
    move-object/from16 v3, v30

    .line 966
    .line 967
    iput-object v1, v3, Lag/l;->b:Lag/c;

    .line 968
    .line 969
    move-object/from16 v1, p0

    .line 970
    .line 971
    iget-object v0, v1, Ls4/a;->b:Ljava/lang/Object;

    .line 972
    .line 973
    check-cast v0, Lag/l;

    .line 974
    .line 975
    return-object v0

    .line 976
    :catch_1
    move-exception v0

    .line 977
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 978
    .line 979
    .line 980
    new-instance v2, Lwf/a;

    .line 981
    .line 982
    invoke-direct {v2, v0}, Lwf/a;-><init>(Ljava/io/IOException;)V

    .line 983
    .line 984
    .line 985
    throw v2

    .line 986
    :catch_2
    move-exception v0

    .line 987
    throw v0

    .line 988
    :cond_20
    new-instance v0, Lwf/a;

    .line 989
    .line 990
    const-string v2, "Zip file size less than minimum expected zip file size. Probably not a zip file or a corrupted zip file"

    .line 991
    .line 992
    invoke-direct {v0, v2}, Lwf/a;-><init>(Ljava/lang/String;)V

    .line 993
    .line 994
    .line 995
    goto :goto_f

    .line 996
    :goto_e
    throw v0

    .line 997
    :goto_f
    goto :goto_e
.end method

.method public p(Ljava/io/RandomAccessFile;Lv3/f;Lag/h;)Lag/d;
    .locals 12

    .line 1
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x16

    .line 6
    .line 7
    cmp-long p3, v0, v2

    .line 8
    .line 9
    if-ltz p3, :cond_7

    .line 10
    .line 11
    sub-long/2addr v0, v2

    .line 12
    invoke-static {p1, v0, v1}, Ls4/a;->u(Ljava/io/RandomAccessFile;J)V

    .line 13
    .line 14
    .line 15
    iget-object p3, p0, Ls4/a;->c:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p3, Lv3/f;

    .line 18
    .line 19
    iget-object p3, p3, Lv3/f;->c:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p3, [B

    .line 22
    .line 23
    invoke-virtual {p1, p3}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 24
    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    invoke-static {v4, p3}, Lv3/f;->H(I[B)I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    int-to-long v5, v5

    .line 32
    const-wide/32 v7, 0x6054b50

    .line 33
    .line 34
    .line 35
    cmp-long v9, v5, v7

    .line 36
    .line 37
    if-nez v9, :cond_0

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    .line 41
    .line 42
    .line 43
    move-result-wide v0

    .line 44
    sub-long/2addr v0, v2

    .line 45
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    .line 46
    .line 47
    .line 48
    move-result-wide v2

    .line 49
    const-wide/32 v5, 0x10000

    .line 50
    .line 51
    .line 52
    cmp-long v9, v2, v5

    .line 53
    .line 54
    if-gez v9, :cond_1

    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    .line 57
    .line 58
    .line 59
    move-result-wide v5

    .line 60
    :cond_1
    :goto_0
    const-wide/16 v2, 0x0

    .line 61
    .line 62
    cmp-long v9, v5, v2

    .line 63
    .line 64
    if-lez v9, :cond_6

    .line 65
    .line 66
    cmp-long v9, v0, v2

    .line 67
    .line 68
    if-lez v9, :cond_6

    .line 69
    .line 70
    const-wide/16 v2, 0x1

    .line 71
    .line 72
    sub-long/2addr v0, v2

    .line 73
    invoke-static {p1, v0, v1}, Ls4/a;->u(Ljava/io/RandomAccessFile;J)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p3}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 77
    .line 78
    .line 79
    invoke-static {v4, p3}, Lv3/f;->H(I[B)I

    .line 80
    .line 81
    .line 82
    move-result v9

    .line 83
    int-to-long v9, v9

    .line 84
    cmp-long v11, v9, v7

    .line 85
    .line 86
    if-nez v11, :cond_5

    .line 87
    .line 88
    :goto_1
    const-wide/16 v2, 0x4

    .line 89
    .line 90
    add-long/2addr v2, v0

    .line 91
    invoke-static {p1, v2, v3}, Ls4/a;->u(Ljava/io/RandomAccessFile;J)V

    .line 92
    .line 93
    .line 94
    new-instance p3, Lag/d;

    .line 95
    .line 96
    invoke-direct {p3}, Lag/d;-><init>()V

    .line 97
    .line 98
    .line 99
    const/4 v2, 0x4

    .line 100
    iput v2, p3, Lab/a;->b:I

    .line 101
    .line 102
    iget-object v2, p2, Lv3/f;->b:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v2, [B

    .line 105
    .line 106
    invoke-virtual {p1, v2}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 107
    .line 108
    .line 109
    invoke-static {v4, v2}, Lv3/f;->K(I[B)I

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    iput v3, p3, Lag/d;->c:I

    .line 114
    .line 115
    invoke-virtual {p1, v2}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 116
    .line 117
    .line 118
    invoke-static {v4, v2}, Lv3/f;->K(I[B)I

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    iput v3, p3, Lag/d;->d:I

    .line 123
    .line 124
    invoke-virtual {p1, v2}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 125
    .line 126
    .line 127
    invoke-static {v4, v2}, Lv3/f;->K(I[B)I

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, v2}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 131
    .line 132
    .line 133
    invoke-static {v4, v2}, Lv3/f;->K(I[B)I

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    iput v3, p3, Lag/d;->e:I

    .line 138
    .line 139
    iget-object v3, p2, Lv3/f;->c:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast v3, [B

    .line 142
    .line 143
    invoke-virtual {p1, v3}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 144
    .line 145
    .line 146
    invoke-static {v4, v3}, Lv3/f;->H(I[B)I

    .line 147
    .line 148
    .line 149
    iput-wide v0, p3, Lag/d;->g:J

    .line 150
    .line 151
    iget-object v0, p0, Ls4/a;->d:Ljava/lang/Object;

    .line 152
    .line 153
    check-cast v0, [B

    .line 154
    .line 155
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p2, v4, v0}, Lv3/f;->J(I[B)J

    .line 159
    .line 160
    .line 161
    move-result-wide v0

    .line 162
    iput-wide v0, p3, Lag/d;->f:J

    .line 163
    .line 164
    invoke-virtual {p1, v2}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 165
    .line 166
    .line 167
    invoke-static {v4, v2}, Lv3/f;->K(I[B)I

    .line 168
    .line 169
    .line 170
    move-result p2

    .line 171
    const/4 v0, 0x0

    .line 172
    if-gtz p2, :cond_2

    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_2
    :try_start_0
    new-array p2, p2, [B

    .line 176
    .line 177
    invoke-virtual {p1, p2}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 178
    .line 179
    .line 180
    sget-object p1, Leg/d;->c:Ljava/nio/charset/Charset;

    .line 181
    .line 182
    invoke-static {p2, v4, p1}, Lqf/c;->j([BZLjava/nio/charset/Charset;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    goto :goto_2

    .line 187
    :catch_0
    nop

    .line 188
    :goto_2
    if-eqz v0, :cond_3

    .line 189
    .line 190
    iput-object v0, p3, Lag/d;->h:Ljava/lang/String;

    .line 191
    .line 192
    :cond_3
    iget-object p1, p0, Ls4/a;->b:Ljava/lang/Object;

    .line 193
    .line 194
    check-cast p1, Lag/l;

    .line 195
    .line 196
    iget p2, p3, Lag/d;->c:I

    .line 197
    .line 198
    if-lez p2, :cond_4

    .line 199
    .line 200
    const/4 v4, 0x1

    .line 201
    :cond_4
    iput-boolean v4, p1, Lag/l;->f:Z

    .line 202
    .line 203
    return-object p3

    .line 204
    :cond_5
    sub-long/2addr v5, v2

    .line 205
    goto/16 :goto_0

    .line 206
    .line 207
    :cond_6
    new-instance p1, Lwf/a;

    .line 208
    .line 209
    const-string p2, "Zip headers not found. Probably not a zip file"

    .line 210
    .line 211
    invoke-direct {p1, p2}, Lwf/a;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    throw p1

    .line 215
    :cond_7
    new-instance p1, Lwf/a;

    .line 216
    .line 217
    const-string p2, "Zip file size less than size of zip headers. Probably not a zip file."

    .line 218
    .line 219
    invoke-direct {p1, p2}, Lwf/a;-><init>(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    goto :goto_4

    .line 223
    :goto_3
    throw p1

    .line 224
    :goto_4
    goto :goto_3
.end method

.method public r()V
    .locals 1

    .line 1
    iget-object v0, p0, Ls4/a;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/content/res/TypedArray;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public s(Li2/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ls4/a;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lz1/i;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Ls4/a;->d:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Ly1/g;

    .line 17
    .line 18
    iget-object v0, v0, Ly1/g;->p:Lj$/util/concurrent/ConcurrentHashMap;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Ly1/f;

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    monitor-enter p1

    .line 29
    :try_start_0
    iget v0, p1, Ly1/f;->d:I

    .line 30
    .line 31
    add-int/lit8 v0, v0, -0x1

    .line 32
    .line 33
    iput v0, p1, Ly1/f;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    monitor-exit p1

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    throw v0

    .line 40
    :cond_0
    :goto_0
    return-void
.end method

.method public t()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v3, 0x18

    .line 7
    .line 8
    iget-object v4, v0, Ls4/a;->d:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v4, Lcom/yunpan/appmanage/ui/ActivityDownload;

    .line 11
    .line 12
    if-ge v2, v3, :cond_0

    .line 13
    .line 14
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const-string v3, "mounted"

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    sget-object v2, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 27
    .line 28
    sget-object v2, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 29
    .line 30
    iget-object v3, v2, Lcom/yunpan/appmanage/util/k;->v:Ljava/util/HashSet;

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_0

    .line 37
    .line 38
    iget-boolean v2, v2, Lcom/yunpan/appmanage/util/k;->m:Z

    .line 39
    .line 40
    if-nez v2, :cond_0

    .line 41
    .line 42
    new-instance v2, Lha/z6;

    .line 43
    .line 44
    sget v3, Lcom/yunpan/appmanage/ui/ActivityDownload;->P0:I

    .line 45
    .line 46
    iget-object v7, v4, Lda/g;->A:Lda/g;

    .line 47
    .line 48
    new-instance v12, Ls9/a;

    .line 49
    .line 50
    const/4 v3, 0x4

    .line 51
    invoke-direct {v12, v3, v1}, Ls9/a;-><init>(IZ)V

    .line 52
    .line 53
    .line 54
    const-string v10, "\u660e\u767d\u4e86"

    .line 55
    .line 56
    const-string v11, ""

    .line 57
    .line 58
    const-string v8, "\u68c0\u6d4b\u5230\u60a8\u7684\u8bbe\u5907\u6ca1\u6709\u5185\u7f6eSD\u5361(\u5185\u90e8\u5b58\u50a8)\uff0c\u800c\u4e14\u7cfb\u7edf\u4f4e\u4e8e\u5b89\u53537\uff0c\u6240\u4ee5\u5fc5\u987b\u63d2\u5165SD\u5361\u6216U\u76d8\u65b9\u53ef\u4f7f\u7528\uff0c\u56e0\u4e3a\u4f4e\u4e8e7.0\u7684\u7cfb\u7edf\u6ca1\u6709SD\u5361\u6765\u5b58\u50a8\u6570\u636e\u7684\u8bdd\uff0c\u65e0\u6cd5\u8c03\u7528\u7cfb\u7edf\u5b89\u88c5\u5668\u6765\u5b89\u88c5\u5e94\u7528\uff0c\u867d\u7136\u7ba1\u5bb6\u53ef\u4ee5\u5b58\u50a8\u5728/data/data/\uff0c\u4f46\u8fd9\u662f\u5e94\u7528\u79c1\u6709\u76ee\u5f55\uff0c\u4f4e\u4e8e\u5b89\u53537\u7684\u7cfb\u7edf\u5b89\u88c5\u5668\u662f\u65e0\u6743\u9650\u8bfb\u53d6\u7684\uff0c\uff0c\u9664\u975e\u60a8\u6709\u7cfb\u7edf\u5199\u5165\u6743\u9650\uff08\u53f3\u4e0a\u89d2\uff09"

    .line 59
    .line 60
    const-string v9, ""

    .line 61
    .line 62
    move-object v5, v2

    .line 63
    move-object v6, v7

    .line 64
    invoke-direct/range {v5 .. v12}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Lha/a4;->show()V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_0
    new-instance v2, Lx9/u5;

    .line 72
    .line 73
    iget-object v3, v4, Lcom/yunpan/appmanage/ui/ActivityDownload;->V:Lx9/t5;

    .line 74
    .line 75
    invoke-virtual {v3}, Lc6/g;->b()I

    .line 76
    .line 77
    .line 78
    move-result v14

    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const/4 v5, 0x1

    .line 85
    invoke-static {v4, v5}, Lcom/yunpan/appmanage/ui/ActivityDownload;->x(Lcom/yunpan/appmanage/ui/ActivityDownload;Z)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    iget-object v6, v0, Ls4/a;->b:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v6, Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v18

    .line 103
    iget-object v3, v0, Ls4/a;->c:Ljava/lang/Object;

    .line 104
    .line 105
    move-object/from16 v16, v3

    .line 106
    .line 107
    check-cast v16, Lx9/b6;

    .line 108
    .line 109
    const/16 v17, 0x1

    .line 110
    .line 111
    iget-object v3, v0, Ls4/a;->b:Ljava/lang/Object;

    .line 112
    .line 113
    move-object v15, v3

    .line 114
    check-cast v15, Ljava/lang/String;

    .line 115
    .line 116
    move-object v13, v2

    .line 117
    invoke-direct/range {v13 .. v18}, Lx9/u5;-><init>(ILjava/lang/String;Lx9/b6;ZLjava/lang/String;)V

    .line 118
    .line 119
    .line 120
    iget-object v3, v4, Lcom/yunpan/appmanage/ui/ActivityDownload;->R:Lba/q;

    .line 121
    .line 122
    invoke-virtual {v3}, Lc6/g;->b()I

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    if-lez v3, :cond_1

    .line 127
    .line 128
    iget-object v3, v4, Lcom/yunpan/appmanage/ui/ActivityDownload;->R:Lba/q;

    .line 129
    .line 130
    invoke-virtual {v3, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    check-cast v1, Lba/r;

    .line 135
    .line 136
    iput-object v1, v2, Lx9/u5;->g:Lba/r;

    .line 137
    .line 138
    :cond_1
    iget-object v1, v4, Lcom/yunpan/appmanage/ui/ActivityDownload;->V:Lx9/t5;

    .line 139
    .line 140
    invoke-virtual {v1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    iget-object v1, v4, Lcom/yunpan/appmanage/ui/ActivityDownload;->t0:Ljava/util/concurrent/ExecutorService;

    .line 144
    .line 145
    new-instance v2, Landroidx/emoji2/text/j;

    .line 146
    .line 147
    iget-object v3, v4, Lcom/yunpan/appmanage/ui/ActivityDownload;->V:Lx9/t5;

    .line 148
    .line 149
    invoke-virtual {v3}, Lc6/g;->b()I

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    sub-int/2addr v3, v5

    .line 154
    const/4 v5, 0x5

    .line 155
    invoke-direct {v2, v3, v5, v4}, Landroidx/emoji2/text/j;-><init>(IILjava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 159
    .line 160
    .line 161
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    iget v1, p0, Ls4/a;->a:I

    .line 3
    .line 4
    packed-switch v1, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const/16 v2, 0x20

    .line 15
    .line 16
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Ls4/a;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v2, Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const/16 v2, 0x7b

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Ls4/a;->c:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v2, Lkf/d;

    .line 34
    .line 35
    iget-object v2, v2, Lkf/d;->c:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v2, Lkf/d;

    .line 38
    .line 39
    const-string v3, ""

    .line 40
    .line 41
    :goto_0
    if-eqz v2, :cond_1

    .line 42
    .line 43
    iget-object v4, v2, Lkf/d;->b:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v4, Lv3/f;

    .line 46
    .line 47
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    if-eqz v4, :cond_0

    .line 51
    .line 52
    const-class v3, Lv3/f;

    .line 53
    .line 54
    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-eqz v3, :cond_0

    .line 59
    .line 60
    new-array v3, v0, [Ljava/lang/Object;

    .line 61
    .line 62
    const/4 v5, 0x0

    .line 63
    aput-object v4, v3, v5

    .line 64
    .line 65
    invoke-static {v3}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    sub-int/2addr v4, v0

    .line 74
    invoke-virtual {v1, v3, v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    :goto_1
    iget-object v2, v2, Lkf/d;->c:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v2, Lkf/d;

    .line 84
    .line 85
    const-string v3, ", "

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    const/16 v0, 0x7d

    .line 89
    .line 90
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    return-object v0

    .line 98
    nop

    .line 99
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized v()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Ls4/a;->d:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v0, Ly1/g;

    .line 5
    .line 6
    iget-object v0, v0, Ly1/g;->c:Li2/d;

    .line 7
    .line 8
    invoke-virtual {v0}, Li2/d;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    throw v0
.end method

.method public w(Lag/l;Ljava/io/ByteArrayOutputStream;Lv3/f;)V
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    const/4 v5, 0x2

    .line 10
    const/4 v6, 0x0

    .line 11
    iget-object v7, v0, Lag/l;->b:Lag/c;

    .line 12
    .line 13
    if-eqz v7, :cond_12

    .line 14
    .line 15
    iget-object v7, v7, Lag/c;->a:Ljava/util/ArrayList;

    .line 16
    .line 17
    if-eqz v7, :cond_12

    .line 18
    .line 19
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v7

    .line 23
    if-gtz v7, :cond_0

    .line 24
    .line 25
    goto/16 :goto_a

    .line 26
    .line 27
    :cond_0
    iget-object v7, v0, Lag/l;->b:Lag/c;

    .line 28
    .line 29
    iget-object v7, v7, Lag/c;->a:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v8

    .line 39
    if-eqz v8, :cond_12

    .line 40
    .line 41
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v8

    .line 45
    check-cast v8, Lag/f;

    .line 46
    .line 47
    iget-object v9, v1, Ls4/a;->d:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v9, [B

    .line 50
    .line 51
    iget-object v10, v1, Ls4/a;->c:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v10, [B

    .line 54
    .line 55
    if-eqz v8, :cond_11

    .line 56
    .line 57
    :try_start_0
    new-array v11, v5, [B

    .line 58
    .line 59
    fill-array-data v11, :array_0

    .line 60
    .line 61
    .line 62
    iget-wide v12, v8, Lag/b;->h:J

    .line 63
    .line 64
    const v14, 0xffff

    .line 65
    .line 66
    .line 67
    const-wide v4, 0xffffffffL

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    cmp-long v16, v12, v4

    .line 73
    .line 74
    if-gez v16, :cond_2

    .line 75
    .line 76
    iget-wide v12, v8, Lag/b;->i:J

    .line 77
    .line 78
    cmp-long v16, v12, v4

    .line 79
    .line 80
    if-gez v16, :cond_2

    .line 81
    .line 82
    iget-wide v12, v8, Lag/f;->y:J

    .line 83
    .line 84
    cmp-long v16, v12, v4

    .line 85
    .line 86
    if-gez v16, :cond_2

    .line 87
    .line 88
    iget v12, v8, Lag/f;->w:I

    .line 89
    .line 90
    if-lt v12, v14, :cond_1

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_1
    const/4 v12, 0x0

    .line 94
    goto :goto_2

    .line 95
    :cond_2
    :goto_1
    const/4 v12, 0x1

    .line 96
    :goto_2
    iget v13, v8, Lab/a;->b:I

    .line 97
    .line 98
    invoke-static {v13}, Lta/q;->e(I)J

    .line 99
    .line 100
    .line 101
    move-result-wide v14

    .line 102
    long-to-int v13, v14

    .line 103
    invoke-virtual {v3, v2, v13}, Lv3/f;->U(Ljava/io/ByteArrayOutputStream;I)V

    .line 104
    .line 105
    .line 106
    iget v13, v8, Lag/f;->v:I

    .line 107
    .line 108
    invoke-virtual {v3, v2, v13}, Lv3/f;->X(Ljava/io/ByteArrayOutputStream;I)V

    .line 109
    .line 110
    .line 111
    iget v13, v8, Lag/b;->c:I

    .line 112
    .line 113
    invoke-virtual {v3, v2, v13}, Lv3/f;->X(Ljava/io/ByteArrayOutputStream;I)V

    .line 114
    .line 115
    .line 116
    iget-object v13, v8, Lag/b;->d:[B

    .line 117
    .line 118
    invoke-virtual {v2, v13}, Ljava/io/OutputStream;->write([B)V

    .line 119
    .line 120
    .line 121
    iget v13, v8, Lag/b;->e:I

    .line 122
    .line 123
    invoke-static {v13}, Landroid/support/v4/media/session/a;->d(I)I

    .line 124
    .line 125
    .line 126
    move-result v13

    .line 127
    invoke-virtual {v3, v2, v13}, Lv3/f;->X(Ljava/io/ByteArrayOutputStream;I)V

    .line 128
    .line 129
    .line 130
    iget-wide v13, v8, Lag/b;->f:J

    .line 131
    .line 132
    invoke-static {v10, v13, v14}, Lv3/f;->W([BJ)V

    .line 133
    .line 134
    .line 135
    const/4 v13, 0x4

    .line 136
    invoke-virtual {v2, v10, v6, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 137
    .line 138
    .line 139
    iget-wide v14, v8, Lag/b;->g:J

    .line 140
    .line 141
    invoke-static {v10, v14, v15}, Lv3/f;->W([BJ)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2, v10, v6, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 145
    .line 146
    .line 147
    if-eqz v12, :cond_3

    .line 148
    .line 149
    invoke-static {v10, v4, v5}, Lv3/f;->W([BJ)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v2, v10, v6, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2, v10, v6, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 156
    .line 157
    .line 158
    const/4 v14, 0x1

    .line 159
    iput-boolean v14, v0, Lag/l;->h:Z

    .line 160
    .line 161
    goto :goto_3

    .line 162
    :catch_0
    move-exception v0

    .line 163
    goto/16 :goto_9

    .line 164
    .line 165
    :cond_3
    iget-wide v4, v8, Lag/b;->h:J

    .line 166
    .line 167
    invoke-static {v10, v4, v5}, Lv3/f;->W([BJ)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v2, v10, v6, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 171
    .line 172
    .line 173
    iget-wide v4, v8, Lag/b;->i:J

    .line 174
    .line 175
    invoke-static {v10, v4, v5}, Lv3/f;->W([BJ)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2, v10, v6, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 179
    .line 180
    .line 181
    :goto_3
    new-array v4, v6, [B

    .line 182
    .line 183
    iget-object v5, v8, Lag/b;->k:Ljava/lang/String;

    .line 184
    .line 185
    invoke-static {v5}, Leg/c;->h(Ljava/lang/String;)Z

    .line 186
    .line 187
    .line 188
    move-result v5

    .line 189
    if-eqz v5, :cond_4

    .line 190
    .line 191
    iget-object v4, v8, Lag/b;->k:Ljava/lang/String;

    .line 192
    .line 193
    sget-object v5, Leg/d;->c:Ljava/nio/charset/Charset;

    .line 194
    .line 195
    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 196
    .line 197
    .line 198
    move-result-object v4

    .line 199
    :cond_4
    array-length v5, v4

    .line 200
    invoke-virtual {v3, v2, v5}, Lv3/f;->X(Ljava/io/ByteArrayOutputStream;I)V

    .line 201
    .line 202
    .line 203
    new-array v5, v13, [B

    .line 204
    .line 205
    if-eqz v12, :cond_5

    .line 206
    .line 207
    move-object/from16 v18, v7

    .line 208
    .line 209
    const-wide v6, 0xffffffffL

    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    invoke-static {v10, v6, v7}, Lv3/f;->W([BJ)V

    .line 215
    .line 216
    .line 217
    const/4 v6, 0x0

    .line 218
    invoke-static {v10, v6, v5, v6, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 219
    .line 220
    .line 221
    goto :goto_4

    .line 222
    :cond_5
    move-object/from16 v18, v7

    .line 223
    .line 224
    iget-wide v6, v8, Lag/f;->y:J

    .line 225
    .line 226
    invoke-static {v10, v6, v7}, Lv3/f;->W([BJ)V

    .line 227
    .line 228
    .line 229
    const/4 v6, 0x0

    .line 230
    invoke-static {v10, v6, v5, v6, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 231
    .line 232
    .line 233
    :goto_4
    if-eqz v12, :cond_6

    .line 234
    .line 235
    const/16 v6, 0x20

    .line 236
    .line 237
    goto :goto_5

    .line 238
    :cond_6
    const/4 v6, 0x0

    .line 239
    :goto_5
    iget-object v7, v8, Lag/b;->q:Lag/a;

    .line 240
    .line 241
    if-eqz v7, :cond_7

    .line 242
    .line 243
    add-int/lit8 v6, v6, 0xb

    .line 244
    .line 245
    :cond_7
    iget-object v7, v8, Lag/b;->s:Ljava/util/List;

    .line 246
    .line 247
    if-eqz v7, :cond_a

    .line 248
    .line 249
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 250
    .line 251
    .line 252
    move-result-object v7

    .line 253
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 254
    .line 255
    .line 256
    move-result v17

    .line 257
    if-eqz v17, :cond_a

    .line 258
    .line 259
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v17

    .line 263
    move-object/from16 v10, v17

    .line 264
    .line 265
    check-cast v10, Lag/e;

    .line 266
    .line 267
    iget-wide v13, v10, Lag/e;->c:J

    .line 268
    .line 269
    const-wide/32 v21, 0x9901

    .line 270
    .line 271
    .line 272
    cmp-long v15, v13, v21

    .line 273
    .line 274
    if-eqz v15, :cond_8

    .line 275
    .line 276
    const-wide/16 v19, 0x1

    .line 277
    .line 278
    cmp-long v15, v13, v19

    .line 279
    .line 280
    if-nez v15, :cond_9

    .line 281
    .line 282
    :cond_8
    const/4 v13, 0x4

    .line 283
    goto :goto_6

    .line 284
    :cond_9
    iget v10, v10, Lag/e;->d:I

    .line 285
    .line 286
    const/4 v13, 0x4

    .line 287
    add-int/2addr v10, v13

    .line 288
    add-int/2addr v6, v10

    .line 289
    goto :goto_6

    .line 290
    :cond_a
    invoke-virtual {v3, v2, v6}, Lv3/f;->X(Ljava/io/ByteArrayOutputStream;I)V

    .line 291
    .line 292
    .line 293
    iget-object v6, v8, Lag/f;->z:Ljava/lang/String;

    .line 294
    .line 295
    const/4 v7, 0x0

    .line 296
    new-array v10, v7, [B

    .line 297
    .line 298
    invoke-static {v6}, Leg/c;->h(Ljava/lang/String;)Z

    .line 299
    .line 300
    .line 301
    move-result v13

    .line 302
    if-eqz v13, :cond_b

    .line 303
    .line 304
    sget-object v10, Leg/d;->c:Ljava/nio/charset/Charset;

    .line 305
    .line 306
    invoke-virtual {v6, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 307
    .line 308
    .line 309
    move-result-object v10

    .line 310
    :cond_b
    array-length v6, v10

    .line 311
    invoke-virtual {v3, v2, v6}, Lv3/f;->X(Ljava/io/ByteArrayOutputStream;I)V

    .line 312
    .line 313
    .line 314
    if-eqz v12, :cond_c

    .line 315
    .line 316
    const v6, 0xffff

    .line 317
    .line 318
    .line 319
    invoke-static {v6, v9}, Lv3/f;->T(I[B)V

    .line 320
    .line 321
    .line 322
    const/4 v6, 0x0

    .line 323
    const/4 v7, 0x2

    .line 324
    invoke-virtual {v2, v9, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 325
    .line 326
    .line 327
    goto :goto_7

    .line 328
    :cond_c
    const/4 v7, 0x2

    .line 329
    iget v9, v8, Lag/f;->w:I

    .line 330
    .line 331
    invoke-virtual {v3, v2, v9}, Lv3/f;->X(Ljava/io/ByteArrayOutputStream;I)V

    .line 332
    .line 333
    .line 334
    :goto_7
    invoke-virtual {v2, v11}, Ljava/io/OutputStream;->write([B)V

    .line 335
    .line 336
    .line 337
    iget-object v9, v8, Lag/f;->x:[B

    .line 338
    .line 339
    invoke-virtual {v2, v9}, Ljava/io/OutputStream;->write([B)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v2, v5}, Ljava/io/OutputStream;->write([B)V

    .line 343
    .line 344
    .line 345
    array-length v5, v4

    .line 346
    if-lez v5, :cond_d

    .line 347
    .line 348
    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write([B)V

    .line 349
    .line 350
    .line 351
    :cond_d
    if-eqz v12, :cond_e

    .line 352
    .line 353
    const/4 v4, 0x1

    .line 354
    iput-boolean v4, v0, Lag/l;->h:Z

    .line 355
    .line 356
    const-wide/16 v11, 0x1

    .line 357
    .line 358
    long-to-int v5, v11

    .line 359
    invoke-virtual {v3, v2, v5}, Lv3/f;->X(Ljava/io/ByteArrayOutputStream;I)V

    .line 360
    .line 361
    .line 362
    const/16 v5, 0x1c

    .line 363
    .line 364
    invoke-virtual {v3, v2, v5}, Lv3/f;->X(Ljava/io/ByteArrayOutputStream;I)V

    .line 365
    .line 366
    .line 367
    iget-wide v11, v8, Lag/b;->i:J

    .line 368
    .line 369
    invoke-virtual {v3, v2, v11, v12}, Lv3/f;->V(Ljava/io/ByteArrayOutputStream;J)V

    .line 370
    .line 371
    .line 372
    iget-wide v11, v8, Lag/b;->h:J

    .line 373
    .line 374
    invoke-virtual {v3, v2, v11, v12}, Lv3/f;->V(Ljava/io/ByteArrayOutputStream;J)V

    .line 375
    .line 376
    .line 377
    iget-wide v11, v8, Lag/f;->y:J

    .line 378
    .line 379
    invoke-virtual {v3, v2, v11, v12}, Lv3/f;->V(Ljava/io/ByteArrayOutputStream;J)V

    .line 380
    .line 381
    .line 382
    iget v5, v8, Lag/f;->w:I

    .line 383
    .line 384
    invoke-virtual {v3, v2, v5}, Lv3/f;->U(Ljava/io/ByteArrayOutputStream;I)V

    .line 385
    .line 386
    .line 387
    :cond_e
    iget-object v5, v8, Lag/b;->q:Lag/a;

    .line 388
    .line 389
    if-eqz v5, :cond_f

    .line 390
    .line 391
    iget v9, v5, Lab/a;->b:I

    .line 392
    .line 393
    invoke-static {v9}, Lta/q;->e(I)J

    .line 394
    .line 395
    .line 396
    move-result-wide v11

    .line 397
    long-to-int v9, v11

    .line 398
    invoke-virtual {v3, v2, v9}, Lv3/f;->X(Ljava/io/ByteArrayOutputStream;I)V

    .line 399
    .line 400
    .line 401
    iget v9, v5, Lag/a;->c:I

    .line 402
    .line 403
    invoke-virtual {v3, v2, v9}, Lv3/f;->X(Ljava/io/ByteArrayOutputStream;I)V

    .line 404
    .line 405
    .line 406
    iget v9, v5, Lag/a;->d:I

    .line 407
    .line 408
    invoke-static {v9}, Landroid/support/v4/media/session/a;->i(I)I

    .line 409
    .line 410
    .line 411
    move-result v9

    .line 412
    invoke-virtual {v3, v2, v9}, Lv3/f;->X(Ljava/io/ByteArrayOutputStream;I)V

    .line 413
    .line 414
    .line 415
    iget-object v9, v5, Lag/a;->e:Ljava/lang/String;

    .line 416
    .line 417
    sget-object v11, Leg/d;->c:Ljava/nio/charset/Charset;

    .line 418
    .line 419
    invoke-virtual {v9, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 420
    .line 421
    .line 422
    move-result-object v9

    .line 423
    invoke-virtual {v2, v9}, Ljava/io/OutputStream;->write([B)V

    .line 424
    .line 425
    .line 426
    iget v9, v5, Lag/a;->f:I

    .line 427
    .line 428
    invoke-static {v9}, Landroid/support/v4/media/session/a;->g(I)I

    .line 429
    .line 430
    .line 431
    move-result v9

    .line 432
    int-to-byte v9, v9

    .line 433
    const/4 v4, 0x1

    .line 434
    new-array v11, v4, [B

    .line 435
    .line 436
    const/4 v6, 0x0

    .line 437
    aput-byte v9, v11, v6

    .line 438
    .line 439
    invoke-virtual {v2, v11}, Ljava/io/OutputStream;->write([B)V

    .line 440
    .line 441
    .line 442
    iget v5, v5, Lag/a;->g:I

    .line 443
    .line 444
    invoke-static {v5}, Landroid/support/v4/media/session/a;->d(I)I

    .line 445
    .line 446
    .line 447
    move-result v5

    .line 448
    invoke-virtual {v3, v2, v5}, Lv3/f;->X(Ljava/io/ByteArrayOutputStream;I)V

    .line 449
    .line 450
    .line 451
    goto :goto_8

    .line 452
    :cond_f
    const/4 v4, 0x1

    .line 453
    const/4 v6, 0x0

    .line 454
    :goto_8
    invoke-virtual {v1, v8, v2}, Ls4/a;->y(Lag/f;Ljava/io/ByteArrayOutputStream;)V

    .line 455
    .line 456
    .line 457
    array-length v5, v10

    .line 458
    if-lez v5, :cond_10

    .line 459
    .line 460
    invoke-virtual {v2, v10}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    .line 462
    .line 463
    :cond_10
    move-object/from16 v7, v18

    .line 464
    .line 465
    const/4 v5, 0x2

    .line 466
    goto/16 :goto_0

    .line 467
    .line 468
    :goto_9
    new-instance v2, Lwf/a;

    .line 469
    .line 470
    invoke-direct {v2, v0}, Lwf/a;-><init>(Ljava/lang/Exception;)V

    .line 471
    .line 472
    .line 473
    throw v2

    .line 474
    :cond_11
    new-instance v0, Lwf/a;

    .line 475
    .line 476
    const-string v2, "input parameters is null, cannot write local file header"

    .line 477
    .line 478
    invoke-direct {v0, v2}, Lwf/a;-><init>(Ljava/lang/String;)V

    .line 479
    .line 480
    .line 481
    throw v0

    .line 482
    :cond_12
    :goto_a
    return-void

    .line 483
    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public y(Lag/f;Ljava/io/ByteArrayOutputStream;)V
    .locals 6

    .line 1
    iget-object v0, p1, Lag/b;->s:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-object p1, p1, Lag/b;->s:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lag/e;

    .line 29
    .line 30
    iget-wide v1, v0, Lag/e;->c:J

    .line 31
    .line 32
    const-wide/32 v3, 0x9901

    .line 33
    .line 34
    .line 35
    cmp-long v5, v1, v3

    .line 36
    .line 37
    if-eqz v5, :cond_1

    .line 38
    .line 39
    const-wide/16 v3, 0x1

    .line 40
    .line 41
    cmp-long v5, v1, v3

    .line 42
    .line 43
    if-nez v5, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    long-to-int v2, v1

    .line 47
    iget-object v1, p0, Ls4/a;->b:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v1, Lv3/f;

    .line 50
    .line 51
    invoke-virtual {v1, p2, v2}, Lv3/f;->X(Ljava/io/ByteArrayOutputStream;I)V

    .line 52
    .line 53
    .line 54
    iget v2, v0, Lag/e;->d:I

    .line 55
    .line 56
    invoke-virtual {v1, p2, v2}, Lv3/f;->X(Ljava/io/ByteArrayOutputStream;I)V

    .line 57
    .line 58
    .line 59
    iget v1, v0, Lag/e;->d:I

    .line 60
    .line 61
    if-lez v1, :cond_1

    .line 62
    .line 63
    iget-object v0, v0, Lag/e;->e:[B

    .line 64
    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    :goto_1
    return-void
.end method
