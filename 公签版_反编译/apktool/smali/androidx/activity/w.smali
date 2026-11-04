.class public final Landroidx/activity/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Runnable;

.field public final b:Lje/h;

.field public c:Landroidx/fragment/app/u0;

.field public final d:Landroid/window/OnBackInvokedCallback;

.field public e:Landroid/window/OnBackInvokedDispatcher;

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/activity/w;->a:Ljava/lang/Runnable;

    .line 5
    .line 6
    new-instance p1, Lje/h;

    .line 7
    .line 8
    invoke-direct {p1}, Lje/h;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Landroidx/activity/w;->b:Lje/h;

    .line 12
    .line 13
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    .line 15
    const/16 v0, 0x21

    .line 16
    .line 17
    if-lt p1, v0, :cond_1

    .line 18
    .line 19
    const/16 v0, 0x22

    .line 20
    .line 21
    if-lt p1, v0, :cond_0

    .line 22
    .line 23
    sget-object p1, Landroidx/activity/t;->a:Landroidx/activity/t;

    .line 24
    .line 25
    new-instance v0, Landroidx/activity/o;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-direct {v0, p0, v1}, Landroidx/activity/o;-><init>(Landroidx/activity/w;I)V

    .line 29
    .line 30
    .line 31
    new-instance v1, Landroidx/activity/o;

    .line 32
    .line 33
    const/4 v2, 0x1

    .line 34
    invoke-direct {v1, p0, v2}, Landroidx/activity/o;-><init>(Landroidx/activity/w;I)V

    .line 35
    .line 36
    .line 37
    new-instance v2, Landroidx/activity/p;

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    invoke-direct {v2, p0, v3}, Landroidx/activity/p;-><init>(Landroidx/activity/w;I)V

    .line 41
    .line 42
    .line 43
    new-instance v3, Landroidx/activity/p;

    .line 44
    .line 45
    const/4 v4, 0x1

    .line 46
    invoke-direct {v3, p0, v4}, Landroidx/activity/p;-><init>(Landroidx/activity/w;I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0, v1, v2, v3}, Landroidx/activity/t;->a(Lte/l;Lte/l;Lte/a;Lte/a;)Landroid/window/OnBackInvokedCallback;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    sget-object p1, Landroidx/activity/r;->a:Landroidx/activity/r;

    .line 55
    .line 56
    new-instance v0, Landroidx/activity/p;

    .line 57
    .line 58
    const/4 v1, 0x2

    .line 59
    invoke-direct {v0, p0, v1}, Landroidx/activity/p;-><init>(Landroidx/activity/w;I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v0}, Landroidx/activity/r;->a(Lte/a;)Landroid/window/OnBackInvokedCallback;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    :goto_0
    iput-object p1, p0, Landroidx/activity/w;->d:Landroid/window/OnBackInvokedCallback;

    .line 67
    .line 68
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/t;Landroidx/fragment/app/u0;)V
    .locals 2

    .line 1
    const-string v0, "onBackPressedCallback"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Landroidx/lifecycle/t;->getLifecycle()Landroidx/lifecycle/o;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    move-object v0, p1

    .line 11
    check-cast v0, Landroidx/lifecycle/v;

    .line 12
    .line 13
    iget-object v0, v0, Landroidx/lifecycle/v;->c:Landroidx/lifecycle/n;

    .line 14
    .line 15
    sget-object v1, Landroidx/lifecycle/n;->a:Landroidx/lifecycle/n;

    .line 16
    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance v0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1, p2}, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;-><init>(Landroidx/activity/w;Landroidx/lifecycle/o;Landroidx/fragment/app/u0;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p2, Landroidx/fragment/app/u0;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroidx/activity/w;->d()V

    .line 31
    .line 32
    .line 33
    new-instance p1, Landroidx/activity/v;

    .line 34
    .line 35
    invoke-direct {p1, p0}, Landroidx/activity/v;-><init>(Landroidx/activity/w;)V

    .line 36
    .line 37
    .line 38
    iput-object p1, p2, Landroidx/fragment/app/u0;->c:Landroidx/activity/v;

    .line 39
    .line 40
    return-void
.end method

.method public final b()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/activity/w;->b:Lje/h;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    move-object v3, v1

    .line 23
    check-cast v3, Landroidx/fragment/app/u0;

    .line 24
    .line 25
    iget-boolean v3, v3, Landroidx/fragment/app/u0;->a:Z

    .line 26
    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move-object v1, v2

    .line 31
    :goto_0
    check-cast v1, Landroidx/fragment/app/u0;

    .line 32
    .line 33
    iput-object v2, p0, Landroidx/activity/w;->c:Landroidx/fragment/app/u0;

    .line 34
    .line 35
    if-eqz v1, :cond_5

    .line 36
    .line 37
    iget v0, v1, Landroidx/fragment/app/u0;->d:I

    .line 38
    .line 39
    packed-switch v0, :pswitch_data_0

    .line 40
    .line 41
    .line 42
    iget-object v0, v1, Landroidx/fragment/app/u0;->e:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityDownload;

    .line 45
    .line 46
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityDownload;->R:Lba/q;

    .line 47
    .line 48
    invoke-virtual {v1}, Lc6/g;->b()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    const/4 v2, 0x1

    .line 53
    if-le v1, v2, :cond_3

    .line 54
    .line 55
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityDownload;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 56
    .line 57
    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_2

    .line 62
    .line 63
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityDownload;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 64
    .line 65
    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_3

    .line 70
    .line 71
    :cond_2
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityDownload;->R:Lba/q;

    .line 72
    .line 73
    invoke-virtual {v1}, Lc6/g;->b()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    add-int/lit8 v1, v1, -0x2

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Lcom/yunpan/appmanage/ui/ActivityDownload;->A(I)V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_3
    invoke-virtual {v0}, Lcom/yunpan/appmanage/ui/ActivityDownload;->C()V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :pswitch_0
    iget-object v0, v1, Landroidx/fragment/app/u0;->e:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v0, Landroidx/fragment/app/d1;

    .line 90
    .line 91
    const/4 v1, 0x1

    .line 92
    invoke-virtual {v0, v1}, Landroidx/fragment/app/d1;->y(Z)Z

    .line 93
    .line 94
    .line 95
    iget-object v1, v0, Landroidx/fragment/app/d1;->h:Landroidx/fragment/app/u0;

    .line 96
    .line 97
    iget-boolean v1, v1, Landroidx/fragment/app/u0;->a:Z

    .line 98
    .line 99
    if-eqz v1, :cond_4

    .line 100
    .line 101
    invoke-virtual {v0}, Landroidx/fragment/app/d1;->N()Z

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_4
    iget-object v0, v0, Landroidx/fragment/app/d1;->g:Landroidx/activity/w;

    .line 106
    .line 107
    invoke-virtual {v0}, Landroidx/activity/w;->b()V

    .line 108
    .line 109
    .line 110
    :goto_1
    return-void

    .line 111
    :cond_5
    iget-object v0, p0, Landroidx/activity/w;->a:Ljava/lang/Runnable;

    .line 112
    .line 113
    if-eqz v0, :cond_6

    .line 114
    .line 115
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 116
    .line 117
    .line 118
    :cond_6
    return-void

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/activity/w;->e:Landroid/window/OnBackInvokedDispatcher;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/activity/w;->d:Landroid/window/OnBackInvokedCallback;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    sget-object v2, Landroidx/activity/r;->a:Landroidx/activity/r;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-boolean v4, p0, Landroidx/activity/w;->f:Z

    .line 15
    .line 16
    if-nez v4, :cond_0

    .line 17
    .line 18
    invoke-virtual {v2, v0, v3, v1}, Landroidx/activity/r;->b(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Landroidx/activity/w;->f:Z

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    if-nez p1, :cond_1

    .line 26
    .line 27
    iget-boolean p1, p0, Landroidx/activity/w;->f:Z

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    invoke-virtual {v2, v0, v1}, Landroidx/activity/r;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iput-boolean v3, p0, Landroidx/activity/w;->f:Z

    .line 35
    .line 36
    :cond_1
    :goto_0
    return-void
.end method

.method public final d()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/activity/w;->g:Z

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/activity/w;->b:Lje/h;

    .line 4
    .line 5
    instance-of v2, v1, Ljava/util/Collection;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1}, Lje/h;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v1}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Landroidx/fragment/app/u0;

    .line 32
    .line 33
    iget-boolean v2, v2, Landroidx/fragment/app/u0;->a:Z

    .line 34
    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    const/4 v3, 0x1

    .line 38
    :cond_2
    :goto_0
    iput-boolean v3, p0, Landroidx/activity/w;->g:Z

    .line 39
    .line 40
    if-eq v3, v0, :cond_3

    .line 41
    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 43
    .line 44
    const/16 v1, 0x21

    .line 45
    .line 46
    if-lt v0, v1, :cond_3

    .line 47
    .line 48
    invoke-virtual {p0, v3}, Landroidx/activity/w;->c(Z)V

    .line 49
    .line 50
    .line 51
    :cond_3
    return-void
.end method
