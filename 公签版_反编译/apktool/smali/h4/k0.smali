.class public final Lh4/k0;
.super Lh4/u;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Lh4/i;


# direct methods
.method public constructor <init>(Lh4/i;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lh4/k0;->d:Lh4/i;

    .line 2
    .line 3
    iput-object p2, p0, Lh4/k0;->a:Landroid/view/ViewGroup;

    .line 4
    .line 5
    iput-object p3, p0, Lh4/k0;->b:Landroid/view/View;

    .line 6
    .line 7
    iput-object p4, p0, Lh4/k0;->c:Landroid/view/View;

    .line 8
    .line 9
    invoke-direct {p0}, Lh4/u;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lh4/k0;->a:Landroid/view/ViewGroup;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/support/v4/media/session/b;->m(Landroid/view/ViewGroup;)La1/i;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lh4/k0;->b:Landroid/view/View;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, La1/i;->D(Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final c(Lh4/t;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lh4/k0;->c:Landroid/view/View;

    .line 3
    .line 4
    const v2, 0x7f0b0291

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1, v2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lh4/k0;->a:Landroid/view/ViewGroup;

    .line 11
    .line 12
    invoke-static {v0}, Landroid/support/v4/media/session/b;->m(Landroid/view/ViewGroup;)La1/i;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lh4/k0;->b:Landroid/view/View;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, La1/i;->D(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p0}, Lh4/t;->v(Lh4/s;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lh4/k0;->b:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lh4/k0;->a:Landroid/view/ViewGroup;

    .line 10
    .line 11
    invoke-static {v1}, Landroid/support/v4/media/session/b;->m(Landroid/view/ViewGroup;)La1/i;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1, v0}, La1/i;->k(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lh4/k0;->d:Lh4/i;

    .line 20
    .line 21
    invoke-virtual {v0}, Lh4/t;->cancel()V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method
