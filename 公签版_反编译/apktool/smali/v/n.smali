.class public final Lv/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ActionProvider$VisibilityListener;


# instance fields
.field public final a:Landroid/view/ActionProvider;

.field public final synthetic b:Lv/r;

.field public c:Lua/i1;


# direct methods
.method public constructor <init>(Lv/r;Landroid/view/ActionProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lv/n;->b:Lv/r;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lv/n;->a:Landroid/view/ActionProvider;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lv/m;)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lv/n;->a:Landroid/view/ActionProvider;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final onActionProviderVisibilityChanged(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lv/n;->c:Lua/i1;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p1, Lua/i1;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p1, Lv/m;

    .line 8
    .line 9
    iget-object p1, p1, Lv/m;->n:Lv/k;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p1, Lv/k;->h:Z

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lv/k;->p(Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
