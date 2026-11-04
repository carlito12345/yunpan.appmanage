.class public final Ls9/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/wd;
.implements Lfa/z;
.implements Lwh/o;
.implements Ly3/b;
.implements Ltf/d;


# instance fields
.field public final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Ls9/a;->a:I

    packed-switch p1, :pswitch_data_0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-void

    .line 9
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x23

    if-lt p1, v0, :cond_0

    .line 11
    new-instance p1, Ly1/j;

    goto :goto_0

    .line 12
    :cond_0
    new-instance p1, Ls5/c;

    const/16 v0, 0x1a

    invoke-direct {p1, v0}, Ls5/c;-><init>(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic constructor <init>(IZ)V
    .locals 0

    .line 1
    iput p1, p0, Ls9/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    const/16 v0, 0x16

    iput v0, p0, Ls9/a;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 4
    new-instance v0, Lx0/d0;

    invoke-direct {v0, p1}, Lx0/d0;-><init>(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x14

    if-lt v0, v1, :cond_1

    .line 5
    new-instance v0, Lx0/c0;

    invoke-direct {v0, p1}, Lx0/c0;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 6
    :cond_1
    new-instance p1, Ls5/c;

    const/16 v0, 0x16

    invoke-direct {p1, v0}, Ls5/c;-><init>(I)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x1

    iput p1, p0, Ls9/a;->a:I

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 0

    .line 1
    return-void
.end method

.method private final f()V
    .locals 0

    .line 1
    return-void
.end method

.method private final g()V
    .locals 0

    .line 1
    return-void
.end method

.method private final h()V
    .locals 0

    .line 1
    return-void
.end method

.method private final i()V
    .locals 0

    .line 1
    return-void
.end method

.method private final j()V
    .locals 0

    .line 1
    return-void
.end method

.method private final k()V
    .locals 0

    .line 1
    return-void
.end method

.method private final l()V
    .locals 0

    .line 1
    return-void
.end method

.method private final m()V
    .locals 0

    .line 1
    return-void
.end method

.method private final n()V
    .locals 0

    .line 1
    return-void
.end method

.method private final o()V
    .locals 0

    .line 1
    return-void
.end method

.method private final p()V
    .locals 0

    .line 1
    return-void
.end method

.method private final q()V
    .locals 0

    .line 1
    return-void
.end method

.method private final r()V
    .locals 0

    .line 1
    return-void
.end method

.method private final s()V
    .locals 0

    .line 1
    return-void
.end method

.method private final u()V
    .locals 0

    .line 1
    return-void
.end method

.method private final v()V
    .locals 0

    .line 1
    return-void
.end method

.method private final w()V
    .locals 0

    .line 1
    return-void
.end method

.method private final x()V
    .locals 0

    .line 1
    return-void
.end method

.method private final y()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public D()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget v2, p0, Ls9/a;->a:I

    .line 4
    .line 5
    packed-switch v2, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    :pswitch_0
    invoke-static {}, Lkh/e;->b()Lkh/e;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "\u5173\u95ed\u5e94\u7528"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lkh/e;->f(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :pswitch_1
    return-void

    .line 18
    :pswitch_2
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-static {}, La2/w0;->d0()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_3
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-static {}, La2/w0;->d0()V

    .line 33
    .line 34
    .line 35
    :pswitch_4
    return-void

    .line 36
    :pswitch_5
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-static {}, La2/w0;->d0()V

    .line 42
    .line 43
    .line 44
    :pswitch_6
    return-void

    .line 45
    :pswitch_7
    new-array v1, v1, [Ljava/lang/String;

    .line 46
    .line 47
    const-string v2, "setprop sys.jsbd.apk_verify 1"

    .line 48
    .line 49
    aput-object v2, v1, v0

    .line 50
    .line 51
    invoke-static {v1}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const/4 v1, 0x0

    .line 56
    invoke-virtual {v0, v1}, Ls1/g;->e0(Lua/i6;)V

    .line 57
    .line 58
    .line 59
    const-string v0, "\u5df2\u6267\u884c"

    .line 60
    .line 61
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :pswitch_8
    return-void

    .line 65
    :pswitch_9
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Lcom/yunpan/appmanage/util/w;->r(Z)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :pswitch_a
    new-instance v1, Ltb/v;

    .line 72
    .line 73
    const/16 v2, 0x10

    .line 74
    .line 75
    invoke-direct {v1, v2}, Ltb/v;-><init>(I)V

    .line 76
    .line 77
    .line 78
    new-instance v2, Lmc/c;

    .line 79
    .line 80
    invoke-direct {v2, v0, v1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 84
    .line 85
    invoke-virtual {v2, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    new-instance v1, Lha/m6;

    .line 98
    .line 99
    const/16 v2, 0x8

    .line 100
    .line 101
    invoke-direct {v1, v2}, Lha/m6;-><init>(I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    nop

    .line 109
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public b(Lwh/k;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Ls9/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget-object v0, Lwh/a;->d:Lwh/a;

    .line 7
    .line 8
    invoke-interface {p1, v0}, Lwh/k;->d(Lwh/m;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-interface {p1, v0}, Lwh/k;->b(Lwh/m;)J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    invoke-static {v0, v1}, Lsh/g;->p(J)Lsh/g;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    :goto_0
    return-object p1

    .line 25
    :pswitch_0
    sget-object v0, Lwh/a;->G:Lwh/a;

    .line 26
    .line 27
    invoke-interface {p1, v0}, Lwh/k;->d(Lwh/m;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    invoke-interface {p1, v0}, Lwh/k;->i(Lwh/m;)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    invoke-static {p1}, Lsh/p;->r(I)Lsh/p;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const/4 p1, 0x0

    .line 43
    :goto_1
    return-object p1

    .line 44
    :pswitch_1
    invoke-interface {p1, p0}, Lwh/k;->c(Lwh/o;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Lwh/p;

    .line 49
    .line 50
    return-object p1

    .line 51
    :pswitch_2
    invoke-interface {p1, p0}, Lwh/k;->c(Lwh/o;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Lsh/o;

    .line 56
    .line 57
    return-object p1

    .line 58
    nop

    .line 59
    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c(ILjava/io/Serializable;)V
    .locals 1

    .line 1
    const/4 v0, 0x6

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    const/4 v0, 0x7

    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    const/16 v0, 0x8

    .line 8
    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    check-cast p2, Ljava/lang/Throwable;

    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method public d(II[B)I
    .locals 0

    .line 1
    return p2
.end method

.method public e(Lfa/a0;)V
    .locals 0

    .line 1
    iget p1, p1, Lfa/a0;->a:I

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const-string p1, "\u8bbe\u7f6e\u5931\u8d25"

    .line 6
    .line 7
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string p1, "\u8bbe\u7f6e\u6210\u529f"

    .line 12
    .line 13
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public t()V
    .locals 3

    .line 1
    iget v0, p0, Ls9/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    return-void

    .line 7
    :pswitch_1
    const/4 v0, 0x1

    .line 8
    new-array v0, v0, [Ljava/lang/String;

    .line 9
    .line 10
    const-string v1, "setprop sys.jsbd.apk_verify 0"

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    aput-object v1, v0, v2

    .line 14
    .line 15
    invoke-static {v0}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Ls1/g;->e0(Lua/i6;)V

    .line 21
    .line 22
    .line 23
    const-string v0, "\u5df2\u6267\u884c"

    .line 24
    .line 25
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :pswitch_2
    return-void

    .line 29
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
