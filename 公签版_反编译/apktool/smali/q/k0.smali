.class public final Lq/k0;
.super Lcom/bumptech/glide/d;
.source "SourceFile"


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Lq/m0;


# direct methods
.method public synthetic constructor <init>(Lq/m0;I)V
    .locals 0

    .line 1
    iput p2, p0, Lq/k0;->e:I

    iput-object p1, p0, Lq/k0;->f:Lq/m0;

    invoke-direct {p0}, Lcom/bumptech/glide/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 4

    .line 1
    iget v0, p0, Lq/k0;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lq/k0;->f:Lq/m0;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput-object v1, v0, Lq/m0;->t:Lu/k;

    .line 10
    .line 11
    iget-object v0, v0, Lq/m0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_0
    iget-object v0, p0, Lq/k0;->f:Lq/m0;

    .line 18
    .line 19
    iget-boolean v1, v0, Lq/m0;->p:Z

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    iget-object v1, v0, Lq/m0;->h:Landroid/view/View;

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 29
    .line 30
    .line 31
    iget-object v1, v0, Lq/m0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object v1, v0, Lq/m0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 37
    .line 38
    const/16 v2, 0x8

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    iget-object v1, v0, Lq/m0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 47
    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    iput-object v1, v0, Lq/m0;->t:Lu/k;

    .line 51
    .line 52
    iget-object v2, v0, Lq/m0;->l:Lkf/d;

    .line 53
    .line 54
    if-eqz v2, :cond_1

    .line 55
    .line 56
    iget-object v3, v0, Lq/m0;->k:Lq/l0;

    .line 57
    .line 58
    invoke-virtual {v2, v3}, Lkf/d;->F(Lu/a;)V

    .line 59
    .line 60
    .line 61
    iput-object v1, v0, Lq/m0;->k:Lq/l0;

    .line 62
    .line 63
    iput-object v1, v0, Lq/m0;->l:Lkf/d;

    .line 64
    .line 65
    :cond_1
    iget-object v0, v0, Lq/m0;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 66
    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    invoke-static {v0}, Lx0/b1;->v(Landroid/view/View;)V

    .line 70
    .line 71
    .line 72
    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
