.class public final Landroidx/fragment/app/l;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/fragment/app/n;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Z

.field public final synthetic d:Landroidx/fragment/app/z1;

.field public final synthetic e:Landroidx/fragment/app/i;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/n;Landroid/view/View;ZLandroidx/fragment/app/z1;Landroidx/fragment/app/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/l;->a:Landroidx/fragment/app/n;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/fragment/app/l;->b:Landroid/view/View;

    .line 4
    .line 5
    iput-boolean p3, p0, Landroidx/fragment/app/l;->c:Z

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/fragment/app/l;->d:Landroidx/fragment/app/z1;

    .line 8
    .line 9
    iput-object p5, p0, Landroidx/fragment/app/l;->e:Landroidx/fragment/app/i;

    .line 10
    .line 11
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    const-string v0, "anim"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroidx/fragment/app/l;->a:Landroidx/fragment/app/n;

    .line 7
    .line 8
    iget-object p1, p1, Landroidx/fragment/app/n;->a:Landroid/view/ViewGroup;

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/fragment/app/l;->b:Landroid/view/View;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Landroidx/fragment/app/l;->d:Landroidx/fragment/app/z1;

    .line 16
    .line 17
    iget-boolean v1, p0, Landroidx/fragment/app/l;->c:Z

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iget-object v1, p1, Landroidx/fragment/app/z1;->a:Landroidx/fragment/app/c2;

    .line 22
    .line 23
    const-string v2, "viewToAnimate"

    .line 24
    .line 25
    invoke-static {v0, v2}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v0}, Landroidx/fragment/app/c2;->a(Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/l;->e:Landroidx/fragment/app/i;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroidx/fragment/app/j;->a()V

    .line 34
    .line 35
    .line 36
    const-string v0, "FragmentManager"

    .line 37
    .line 38
    const/4 v1, 0x2

    .line 39
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    invoke-virtual {p1}, Landroidx/fragment/app/z1;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    :cond_1
    return-void
.end method
