.class public Lw/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv/w;
.implements Lv/i;
.implements Lw/z0;
.implements Lx0/h;
.implements Lx0/l;
.implements Lx6/a;
.implements Ly3/b;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Lw/i;->a:I

    packed-switch p1, :pswitch_data_0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_0

    .line 4
    new-instance p1, Ly0/q;

    invoke-direct {p1, p0}, Ly0/q;-><init>(Lw/i;)V

    iput-object p1, p0, Lw/i;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/16 v0, 0x13

    if-lt p1, v0, :cond_1

    .line 5
    new-instance p1, Ly0/p;

    invoke-direct {p1, p0}, Ly0/p;-><init>(Lw/i;)V

    iput-object p1, p0, Lw/i;->b:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_1
    new-instance p1, Ly0/o;

    invoke-direct {p1, p0}, Ly0/o;-><init>(Lw/i;)V

    iput-object p1, p0, Lw/i;->b:Ljava/lang/Object;

    :goto_0
    return-void

    .line 7
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-static {}, Lx0/d;->c()Landroid/media/metrics/LogSessionId;

    move-result-object p1

    iput-object p1, p0, Lw/i;->b:Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lw/i;->a:I

    iput-object p2, p0, Lw/i;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/recyclerview/widget/q0;I)V
    .locals 1

    iput p3, p0, Lw/i;->a:I

    packed-switch p3, :pswitch_data_0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance p3, Landroid/view/GestureDetector;

    const/4 v0, 0x0

    invoke-direct {p3, p1, p2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object p3, p0, Lw/i;->b:Ljava/lang/Object;

    return-void

    .line 14
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-le p3, v0, :cond_0

    .line 16
    new-instance p3, Lw/i;

    const/4 v0, 0x4

    invoke-direct {p3, p1, p2, v0}, Lw/i;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/q0;I)V

    iput-object p3, p0, Lw/i;->b:Ljava/lang/Object;

    goto :goto_0

    .line 17
    :cond_0
    new-instance p3, Lx0/m;

    invoke-direct {p3, p1, p2}, Lx0/m;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/q0;)V

    iput-object p3, p0, Lw/i;->b:Ljava/lang/Object;

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Landroid/view/ContentInfo;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lw/i;->a:I

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-static {p1}, La2/b;->k(Ljava/lang/Object;)Landroid/view/ContentInfo;

    move-result-object p1

    iput-object p1, p0, Lw/i;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lv/k;Z)V
    .locals 2

    .line 1
    instance-of v0, p1, Lv/d0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lv/d0;

    .line 7
    .line 8
    iget-object v0, v0, Lv/d0;->B:Lv/k;

    .line 9
    .line 10
    invoke-virtual {v0}, Lv/k;->k()Lv/k;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Lv/k;->c(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lw/i;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Lw/j;

    .line 21
    .line 22
    iget-object v0, v0, Lw/j;->e:Lv/w;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-interface {v0, p1, p2}, Lv/w;->a(Lv/k;Z)V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method public b()Landroid/content/ClipData;
    .locals 1

    .line 1
    iget-object v0, p0, Lw/i;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/view/ContentInfo;

    .line 4
    .line 5
    invoke-static {v0}, Lx0/d;->b(Landroid/view/ContentInfo;)Landroid/content/ClipData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
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
    iget-object p2, p0, Lw/i;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p2, Landroidx/profileinstaller/ProfileInstallReceiver;

    .line 17
    .line 18
    invoke-virtual {p2, p1}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public d(Lv/k;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lw/i;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lw/j;

    .line 4
    .line 5
    iget-object v1, v0, Lw/j;->c:Lv/k;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-ne p1, v1, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    move-object v1, p1

    .line 12
    check-cast v1, Lv/d0;

    .line 13
    .line 14
    iget-object v1, v1, Lv/d0;->C:Lv/m;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    iget-object v0, v0, Lw/j;->e:Lv/w;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-interface {v0, p1}, Lv/w;->d(Lv/k;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    :cond_1
    return v2
.end method

.method public e(Lv/k;Landroid/view/MenuItem;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lw/i;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;

    .line 4
    .line 5
    iget-object p1, p1, Landroidx/appcompat/widget/ActionMenuView;->B:Lw/m;

    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    check-cast p1, Lw/g3;

    .line 10
    .line 11
    iget-object p1, p1, Lw/g3;->a:Landroidx/appcompat/widget/Toolbar;

    .line 12
    .line 13
    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->I:Ls4/a;

    .line 14
    .line 15
    iget-object p1, p1, Ls4/a;->c:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroidx/fragment/app/v0;

    .line 34
    .line 35
    iget-object v0, v0, Landroidx/fragment/app/v0;->a:Landroidx/fragment/app/d1;

    .line 36
    .line 37
    invoke-virtual {v0, p2}, Landroidx/fragment/app/d1;->o(Landroid/view/MenuItem;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    const/4 p1, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 p1, 0x0

    .line 46
    :goto_0
    return p1
.end method

.method public f(Lv/k;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lw/i;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/appcompat/widget/ActionMenuView;

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->w:Lw/g3;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lw/g3;->f(Lv/k;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public g(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public getSource()I
    .locals 1

    .line 1
    iget-object v0, p0, Lw/i;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/view/ContentInfo;

    .line 4
    .line 5
    invoke-static {v0}, Lx0/d;->t(Landroid/view/ContentInfo;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget-object v0, p0, Lw/i;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/view/ContentInfo;

    .line 4
    .line 5
    invoke-static {v0}, Lx0/d;->a(Landroid/view/ContentInfo;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public i()Landroid/view/ContentInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lw/i;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/view/ContentInfo;

    .line 4
    .line 5
    return-object v0
.end method

.method public j(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public k(I)Ly0/n;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public l(I)Ly0/n;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public m(IILandroid/os/Bundle;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lw/i;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/view/GestureDetector;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lw/i;->a:I

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
    const-string v1, "ContentInfoCompat{"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lw/i;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Landroid/view/ContentInfo;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, "}"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0

    .line 35
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
