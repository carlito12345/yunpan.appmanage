.class public final Landroidx/fragment/app/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/z1;

.field public final synthetic b:Landroidx/fragment/app/n;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Landroidx/fragment/app/i;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/z1;Landroidx/fragment/app/n;Landroid/view/View;Landroidx/fragment/app/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/m;->a:Landroidx/fragment/app/z1;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/fragment/app/m;->b:Landroidx/fragment/app/n;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/fragment/app/m;->c:Landroid/view/View;

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/fragment/app/m;->d:Landroidx/fragment/app/i;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    .line 1
    const-string v0, "animation"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroidx/fragment/app/m;->b:Landroidx/fragment/app/n;

    .line 7
    .line 8
    iget-object v0, p1, Landroidx/fragment/app/n;->a:Landroid/view/ViewGroup;

    .line 9
    .line 10
    new-instance v1, Landroidx/fragment/app/d;

    .line 11
    .line 12
    iget-object v2, p0, Landroidx/fragment/app/m;->d:Landroidx/fragment/app/i;

    .line 13
    .line 14
    iget-object v3, p0, Landroidx/fragment/app/m;->c:Landroid/view/View;

    .line 15
    .line 16
    invoke-direct {v1, p1, v3, v2}, Landroidx/fragment/app/d;-><init>(Landroidx/fragment/app/n;Landroid/view/View;Landroidx/fragment/app/i;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    const-string p1, "FragmentManager"

    .line 23
    .line 24
    const/4 v0, 0x2

    .line 25
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    iget-object p1, p0, Landroidx/fragment/app/m;->a:Landroidx/fragment/app/z1;

    .line 32
    .line 33
    invoke-virtual {p1}, Landroidx/fragment/app/z1;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    const-string v0, "animation"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "FragmentManager"

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Landroidx/fragment/app/m;->a:Landroidx/fragment/app/z1;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroidx/fragment/app/z1;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
