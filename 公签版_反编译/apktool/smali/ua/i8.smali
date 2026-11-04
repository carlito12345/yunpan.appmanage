.class public final Lua/i8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/x4;
.implements Lcom/yunpan/appmanage/util/o;
.implements Lw1/g;
.implements Lvc/b;
.implements Lnet/sf/sevenzipjbinding/ISequentialOutStream;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Lua/i8;->a:I

    sparse-switch p1, :sswitch_data_0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lua/i8;->b:Ljava/lang/Object;

    .line 5
    new-instance p1, La0/e;

    invoke-direct {p1}, La0/e;-><init>()V

    iput-object p1, p0, Lua/i8;->c:Ljava/lang/Object;

    return-void

    .line 6
    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x6

    .line 7
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lua/i8;->b:Ljava/lang/Object;

    .line 8
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lua/i8;->c:Ljava/lang/Object;

    return-void

    .line 9
    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .line 10
    :sswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lua/i8;->b:Ljava/lang/Object;

    .line 12
    sget-object p1, Ly1/b;->b:Ly1/b;

    iput-object p1, p0, Lua/i8;->c:Ljava/lang/Object;

    return-void

    .line 13
    :sswitch_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x200

    invoke-direct {p1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object p1, p0, Lua/i8;->b:Ljava/lang/Object;

    .line 15
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lua/i8;->c:Ljava/lang/Object;

    return-void

    .line 16
    :sswitch_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lua/i8;->b:Ljava/lang/Object;

    return-void

    .line 18
    :sswitch_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lua/i8;->b:Ljava/lang/Object;

    .line 20
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lua/i8;->c:Ljava/lang/Object;

    return-void

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_5
        0x6 -> :sswitch_4
        0x7 -> :sswitch_3
        0xa -> :sswitch_2
        0xb -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method public constructor <init>(III[B)V
    .locals 3

    const/16 v0, 0xe

    iput v0, p0, Lua/i8;->a:I

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x18

    .line 22
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lua/i8;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, v1, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 24
    iget-object v0, p0, Lua/i8;->b:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    const/4 v2, 0x4

    invoke-virtual {v0, v2, p2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 25
    iget-object p2, p0, Lua/i8;->b:Ljava/lang/Object;

    check-cast p2, Ljava/nio/ByteBuffer;

    const/16 v0, 0x8

    invoke-virtual {p2, v0, p3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 26
    iget-object p2, p0, Lua/i8;->b:Ljava/lang/Object;

    check-cast p2, Ljava/nio/ByteBuffer;

    if-nez p4, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    array-length p3, p4

    :goto_0
    const/16 v0, 0xc

    invoke-virtual {p2, v0, p3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 27
    iget-object p2, p0, Lua/i8;->b:Ljava/lang/Object;

    check-cast p2, Ljava/nio/ByteBuffer;

    if-nez p4, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p4}, Lua/i8;->m([B)I

    move-result v1

    :goto_1
    const/16 p3, 0x10

    invoke-virtual {p2, p3, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 28
    iget-object p2, p0, Lua/i8;->b:Ljava/lang/Object;

    check-cast p2, Ljava/nio/ByteBuffer;

    xor-int/lit8 p1, p1, -0x1

    const/16 p3, 0x14

    invoke-virtual {p2, p3, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 29
    iput-object p4, p0, Lua/i8;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    .line 1
    iput p1, p0, Lua/i8;->a:I

    iput-object p2, p0, Lua/i8;->b:Ljava/lang/Object;

    iput-object p3, p0, Lua/i8;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 2

    const/4 v0, 0x5

    iput v0, p0, Lua/i8;->a:I

    .line 30
    new-instance v0, La0/h;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, La0/h;-><init>(I)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lua/i8;->b:Ljava/lang/Object;

    .line 33
    iput-object v0, p0, Lua/i8;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/view/WindowInsetsAnimation$Bounds;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Lua/i8;->a:I

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {p1}, Landroidx/media3/exoplayer/video/b0;->C(Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Lp0/c;->c(Landroid/graphics/Insets;)Lp0/c;

    move-result-object v0

    .line 48
    iput-object v0, p0, Lua/i8;->b:Ljava/lang/Object;

    .line 49
    invoke-static {p1}, Landroidx/media3/exoplayer/video/b0;->g(Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/graphics/Insets;

    move-result-object p1

    invoke-static {p1}, Lp0/c;->c(Landroid/graphics/Insets;)Lp0/c;

    move-result-object p1

    .line 50
    iput-object p1, p0, Lua/i8;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 2
    iput p2, p0, Lua/i8;->a:I

    iput-object p1, p0, Lua/i8;->c:Ljava/lang/Object;

    iput-object p3, p0, Lua/i8;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lr1/n;Landroid/util/SparseArray;)V
    .locals 5

    const/16 v0, 0xc

    iput v0, p0, Lua/i8;->a:I

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lua/i8;->b:Ljava/lang/Object;

    .line 36
    new-instance v0, Landroid/util/SparseArray;

    .line 37
    iget-object v1, p1, Lr1/n;->a:Landroid/util/SparseBooleanArray;

    .line 38
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    .line 39
    invoke-direct {v0, v2}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v2, 0x0

    .line 40
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 41
    invoke-virtual {p1, v2}, Lr1/n;->a(I)I

    move-result v3

    .line 42
    invoke-virtual {p2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lz1/a;

    .line 43
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 45
    :cond_0
    iput-object v0, p0, Lua/i8;->c:Ljava/lang/Object;

    return-void
.end method

.method public static l(Lua/i8;Ly1/b;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    iget-object v1, p0, Lua/i8;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/util/Map$Entry;

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    if-nez v2, :cond_1

    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Ljava/util/List;

    .line 44
    .line 45
    invoke-static {p1, v1}, Lua/i8;->p(Ly1/b;Ljava/util/List;)Ly1/b;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    iget-object v3, p0, Lua/i8;->c:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v3, Ly1/b;

    .line 52
    .line 53
    invoke-static {v3, v1}, Lua/i8;->p(Ly1/b;Ljava/util/List;)Ly1/b;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v2, v1}, Ly1/b;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_0

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    const/4 p0, 0x0

    .line 65
    throw p0

    .line 66
    :cond_1
    new-instance p0, Ljava/lang/ClassCastException;

    .line 67
    .line 68
    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    .line 69
    .line 70
    .line 71
    throw p0

    .line 72
    :cond_2
    iput-object p1, p0, Lua/i8;->c:Ljava/lang/Object;

    .line 73
    .line 74
    return-void
.end method

.method public static m([B)I
    .locals 4

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    if-ge v1, v0, :cond_1

    .line 5
    .line 6
    aget-byte v3, p0, v1

    .line 7
    .line 8
    if-ltz v3, :cond_0

    .line 9
    .line 10
    add-int/2addr v2, v3

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    add-int/lit16 v3, v3, 0x100

    .line 13
    .line 14
    add-int/2addr v3, v2

    .line 15
    move v2, v3

    .line 16
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    return v2
.end method

.method public static p(Ly1/b;Ljava/util/List;)Ly1/b;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    iget-object p0, p0, Ly1/b;->a:Ljava/util/Map;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Ljava/util/HashSet;

    .line 12
    .line 13
    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-nez v2, :cond_0

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    new-instance p0, Ly1/b;

    .line 47
    .line 48
    invoke-direct {p0, v0}, Ly1/b;-><init>(Ljava/util/HashMap;)V

    .line 49
    .line 50
    .line 51
    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 1
    iget-object v0, p0, Lua/i8;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/yunpan/appmanage/bean/FileCopyBean;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/yunpan/appmanage/bean/FileCopyBean;->files:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/lit8 v1, v1, -0x1

    .line 12
    .line 13
    :goto_0
    if-ltz v1, :cond_1

    .line 14
    .line 15
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/FileCopyBean;->files:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lx9/w3;

    .line 22
    .line 23
    iget-object v2, v2, Lx9/w3;->j:Ljava/lang/String;

    .line 24
    .line 25
    const-string v3, "\u8df3\u8fc7"

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/FileCopyBean;->files:Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-object v1, p0, Lua/i8;->c:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v1, Lua/i9;

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    new-instance v2, Lha/s5;

    .line 49
    .line 50
    iget-object v3, v1, Lda/h;->f:Landroid/app/Activity;

    .line 51
    .line 52
    iget-object v4, v1, Lda/h;->e:Landroid/content/Context;

    .line 53
    .line 54
    invoke-direct {v2, v3, v4}, Lha/s5;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Lha/a4;->show()V

    .line 58
    .line 59
    .line 60
    iget-object v3, v2, Lha/s5;->h:Landroid/widget/TextView;

    .line 61
    .line 62
    const-string v4, "\u5206\u6790\u4e2d"

    .line 63
    .line 64
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    .line 66
    .line 67
    new-instance v3, Lw/r3;

    .line 68
    .line 69
    invoke-direct {v3}, Lw/r3;-><init>()V

    .line 70
    .line 71
    .line 72
    new-instance v4, Lua/i8;

    .line 73
    .line 74
    const/4 v5, 0x2

    .line 75
    invoke-direct {v4, v1, v5, v2}, Lua/i8;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    iput-object v4, v3, Lw/r3;->b:Ljava/lang/Object;

    .line 79
    .line 80
    new-instance v1, La2/c0;

    .line 81
    .line 82
    const/16 v2, 0xf

    .line 83
    .line 84
    invoke-direct {v1, v3, v2, v0}, La2/c0;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    iget-object v0, v3, Lw/r3;->c:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v0, Ljava/util/concurrent/ExecutorService;

    .line 90
    .line 91
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method public b()Lvc/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lua/i8;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lxc/a;

    .line 4
    .line 5
    iget-object v0, v0, Lxc/a;->g:Lvd/d0;

    .line 6
    .line 7
    return-object v0
.end method

.method public c()V
    .locals 0

    .line 1
    return-void
.end method

.method public d()Lvc/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lua/i8;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lxc/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lxc/a;->d()Lvc/b;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public e()Lvc/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lua/i8;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lxc/a;

    .line 4
    .line 5
    iget-object v0, v0, Lxc/a;->b:Lwc/a;

    .line 6
    .line 7
    return-object v0
.end method

.method public f(Lja/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lua/i8;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lha/s5;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lha/s5;->a(Lja/b;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public g()Lvd/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lua/i8;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lvd/j;

    .line 4
    .line 5
    return-object v0
.end method

.method public h()La0/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lua/i8;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lxc/a;

    .line 4
    .line 5
    iget-object v0, v0, Lxc/a;->f:La0/h;

    .line 6
    .line 7
    return-object v0
.end method

.method public i()Lvc/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lua/i8;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lxc/a;

    .line 4
    .line 5
    iget-object v0, v0, Lxc/a;->e:Lsd/f;

    .line 6
    .line 7
    return-object v0
.end method

.method public j(Lcom/yunpan/appmanage/util/q;Lja/b;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lua/i8;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lha/s5;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 6
    .line 7
    .line 8
    iget-boolean p2, p2, Lja/b;->l:Z

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iget-object v1, p0, Lua/i8;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Lua/i9;

    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    iget-object p1, v1, Lua/i9;->w:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 20
    .line 21
    .line 22
    iget-object p1, v1, Lua/i9;->x:Lx9/g0;

    .line 23
    .line 24
    invoke-static {p1, v0}, Lg/b;->d(Lx9/g0;I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lx9/w3;

    .line 29
    .line 30
    invoke-virtual {v1, p1, v0}, Lua/i9;->n(Lx9/w3;Z)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    iget-object p2, p1, Lcom/yunpan/appmanage/util/q;->a:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    if-nez p2, :cond_1

    .line 41
    .line 42
    new-instance p2, Lha/r5;

    .line 43
    .line 44
    iget-object v2, v1, Lda/h;->f:Landroid/app/Activity;

    .line 45
    .line 46
    iget-object v3, v1, Lda/h;->e:Landroid/content/Context;

    .line 47
    .line 48
    iget-object p1, p1, Lcom/yunpan/appmanage/util/q;->a:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {p2, v2, v3, p1}, Lha/r5;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Lha/a4;->show()V

    .line 54
    .line 55
    .line 56
    :cond_1
    iget-object p1, v1, Lua/i9;->w:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 59
    .line 60
    .line 61
    iget-object p1, v1, Lua/i9;->x:Lx9/g0;

    .line 62
    .line 63
    invoke-static {p1, v0}, Lg/b;->d(Lx9/g0;I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Lx9/w3;

    .line 68
    .line 69
    invoke-virtual {v1, p1, v0}, Lua/i9;->n(Lx9/w3;Z)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public k()Lvc/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lua/i8;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lxc/a;

    .line 4
    .line 5
    iget-object v0, v0, Lxc/a;->c:Lvd/d;

    .line 6
    .line 7
    return-object v0
.end method

.method public n()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lua/i8;->b:Ljava/lang/Object;

    .line 3
    .line 4
    iput-object v0, p0, Lua/i8;->c:Ljava/lang/Object;

    .line 5
    .line 6
    return-void
.end method

.method public o(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lua/i8;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lr1/n;

    .line 4
    .line 5
    iget-object v0, v0, Lr1/n;->a:Landroid/util/SparseBooleanArray;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public q(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_4

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lx9/w3;

    .line 21
    .line 22
    monitor-enter v0

    .line 23
    :try_start_0
    iget-object v2, v1, Lx9/w3;->o:Ljava/lang/String;

    .line 24
    .line 25
    if-nez v2, :cond_2

    .line 26
    .line 27
    iget-boolean v2, v1, Lx9/w3;->c:Z

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    iget-object v3, v1, Lx9/w3;->a:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v3, "/"

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    goto :goto_1

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    goto :goto_2

    .line 53
    :cond_1
    iget-object v2, v1, Lx9/w3;->a:Ljava/lang/String;

    .line 54
    .line 55
    :goto_1
    iput-object v2, v1, Lx9/w3;->o:Ljava/lang/String;

    .line 56
    .line 57
    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    iget-boolean v2, v1, Lx9/w3;->c:Z

    .line 62
    .line 63
    if-eqz v2, :cond_0

    .line 64
    .line 65
    iget-object v2, p0, Lua/i8;->c:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 70
    .line 71
    .line 72
    new-instance v2, Ljava/io/File;

    .line 73
    .line 74
    iget-object v3, v1, Lx9/w3;->b:Ljava/lang/String;

    .line 75
    .line 76
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    const/4 v3, 0x1

    .line 88
    if-eq v2, v3, :cond_3

    .line 89
    .line 90
    add-int/lit8 v2, v2, 0x1

    .line 91
    .line 92
    :cond_3
    iget-object v3, p0, Lua/i8;->b:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v3, Ljava/util/concurrent/ExecutorService;

    .line 95
    .line 96
    new-instance v4, Lza/h;

    .line 97
    .line 98
    invoke-direct {v4, p0, v1, v0, v2}, Lza/h;-><init>(Lua/i8;Lx9/w3;Ljava/util/ArrayList;I)V

    .line 99
    .line 100
    .line 101
    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    throw p1

    .line 107
    :cond_4
    :goto_3
    iget-object p1, p0, Lua/i8;->c:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast p1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 110
    .line 111
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-eqz p1, :cond_5

    .line 116
    .line 117
    const-wide/16 v1, 0xc8

    .line 118
    .line 119
    :try_start_2
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 120
    .line 121
    .line 122
    goto :goto_3

    .line 123
    :catch_0
    nop

    .line 124
    goto :goto_3

    .line 125
    :cond_5
    return-object v0
.end method

.method public declared-synchronized r(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lua/i8;->b:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lua/i8;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lua/i8;->c:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/util/List;

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    new-instance v0, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lua/i8;->c:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v1, Ljava/util/HashMap;

    .line 39
    .line 40
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    :goto_0
    monitor-exit p0

    .line 47
    return-object v0

    .line 48
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    throw p1
.end method

.method public declared-synchronized s(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/ArrayList;
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lua/i8;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_4

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Ljava/lang/String;

    .line 26
    .line 27
    iget-object v3, p0, Lua/i8;->c:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v3, Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Ljava/util/List;

    .line 36
    .line 37
    if-nez v2, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_0

    .line 49
    .line 50
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Lv5/c;

    .line 55
    .line 56
    iget-object v4, v3, Lv5/c;->a:Ljava/lang/Class;

    .line 57
    .line 58
    invoke-virtual {v4, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-eqz v4, :cond_3

    .line 63
    .line 64
    iget-object v4, v3, Lv5/c;->b:Ljava/lang/Class;

    .line 65
    .line 66
    invoke-virtual {p2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-eqz v4, :cond_3

    .line 71
    .line 72
    const/4 v4, 0x1

    .line 73
    goto :goto_2

    .line 74
    :cond_3
    const/4 v4, 0x0

    .line 75
    :goto_2
    if-eqz v4, :cond_2

    .line 76
    .line 77
    iget-object v4, v3, Lv5/c;->b:Ljava/lang/Class;

    .line 78
    .line 79
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-nez v4, :cond_2

    .line 84
    .line 85
    iget-object v3, v3, Lv5/c;->b:Ljava/lang/Class;

    .line 86
    .line 87
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :catchall_0
    move-exception p1

    .line 92
    goto :goto_3

    .line 93
    :cond_4
    monitor-exit p0

    .line 94
    return-object v0

    .line 95
    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    goto :goto_5

    .line 97
    :goto_4
    throw p1

    .line 98
    :goto_5
    goto :goto_4
.end method

.method public declared-synchronized t()Ljava/util/Map;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lua/i8;->c:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v0, Ljava/util/Map;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 9
    .line 10
    iget-object v1, p0, Lua/i8;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lua/i8;->c:Ljava/lang/Object;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    iget-object v0, p0, Lua/i8;->c:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    monitor-exit p0

    .line 31
    return-object v0

    .line 32
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lua/i8;->a:I

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
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "Bounds{lower="

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lua/i8;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Lp0/c;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, " upper="

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lua/i8;->c:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v1, Lp0/c;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, "}"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    return-object v0

    .line 47
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public u(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lua/i8;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, La0/e;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lua/i8;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, La0/e;

    .line 9
    .line 10
    new-instance v2, La6/o;

    .line 11
    .line 12
    invoke-direct {v2, p1, p2, p3}, La6/o;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2, p4}, La0/t;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p1
.end method

.method public write([B)I
    .locals 3

    .line 1
    iget-object v0, p0, Lua/i8;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/io/FileOutputStream;

    .line 4
    .line 5
    :try_start_0
    array-length v1, p1

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0, p1, v2, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    array-length p1, p1

    .line 14
    return p1

    .line 15
    :catch_0
    move-exception p1

    .line 16
    new-instance v0, Lnet/sf/sevenzipjbinding/SevenZipException;

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v2, "\u5199\u5165\u6587\u4ef6\u5931\u8d25: "

    .line 21
    .line 22
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Lua/i8;->c:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v2, Ljava/io/File;

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-direct {v0, v1, p1}, Lnet/sf/sevenzipjbinding/SevenZipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    throw v0
.end method
