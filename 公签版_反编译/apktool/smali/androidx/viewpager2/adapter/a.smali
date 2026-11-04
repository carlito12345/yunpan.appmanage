.class public final Landroidx/viewpager2/adapter/a;
.super Landroidx/fragment/app/z0;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/fragment/app/Fragment;

.field public final synthetic b:Landroid/widget/FrameLayout;

.field public final synthetic c:Landroidx/viewpager2/adapter/f;


# direct methods
.method public constructor <init>(Landroidx/viewpager2/adapter/f;Landroidx/fragment/app/Fragment;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/viewpager2/adapter/a;->c:Landroidx/viewpager2/adapter/f;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/viewpager2/adapter/a;->a:Landroidx/fragment/app/Fragment;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/viewpager2/adapter/a;->b:Landroid/widget/FrameLayout;

    .line 6
    .line 7
    invoke-direct {p0}, Landroidx/fragment/app/z0;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onFragmentViewCreated(Landroidx/fragment/app/d1;Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object p4, p0, Landroidx/viewpager2/adapter/a;->a:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    if-ne p2, p4, :cond_2

    .line 4
    .line 5
    iget-object p1, p1, Landroidx/fragment/app/d1;->l:Landroidx/fragment/app/k0;

    .line 6
    .line 7
    iget-object p2, p1, Landroidx/fragment/app/k0;->a:Ljava/lang/Cloneable;

    .line 8
    .line 9
    check-cast p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    .line 11
    monitor-enter p2

    .line 12
    :try_start_0
    iget-object p4, p1, Landroidx/fragment/app/k0;->a:Ljava/lang/Cloneable;

    .line 13
    .line 14
    check-cast p4, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 15
    .line 16
    invoke-virtual {p4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result p4

    .line 20
    const/4 v0, 0x0

    .line 21
    :goto_0
    if-ge v0, p4, :cond_1

    .line 22
    .line 23
    iget-object v1, p1, Landroidx/fragment/app/k0;->a:Ljava/lang/Cloneable;

    .line 24
    .line 25
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Landroidx/fragment/app/r0;

    .line 32
    .line 33
    iget-object v1, v1, Landroidx/fragment/app/r0;->a:Landroidx/fragment/app/z0;

    .line 34
    .line 35
    if-ne v1, p0, :cond_0

    .line 36
    .line 37
    iget-object p1, p1, Landroidx/fragment/app/k0;->a:Ljava/lang/Cloneable;

    .line 38
    .line 39
    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    goto :goto_2

    .line 47
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    iget-object p1, p0, Landroidx/viewpager2/adapter/a;->c:Landroidx/viewpager2/adapter/f;

    .line 52
    .line 53
    iget-object p2, p0, Landroidx/viewpager2/adapter/a;->b:Landroid/widget/FrameLayout;

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    invoke-static {p3, p2}, Landroidx/viewpager2/adapter/f;->p(Landroid/view/View;Landroid/widget/FrameLayout;)V

    .line 59
    .line 60
    .line 61
    goto :goto_3

    .line 62
    :goto_2
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    throw p1

    .line 64
    :cond_2
    :goto_3
    return-void
.end method
