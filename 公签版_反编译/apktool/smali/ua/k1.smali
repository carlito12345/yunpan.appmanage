.class public final synthetic Lua/k1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/e;
.implements Lec/d;


# instance fields
.field public final synthetic a:Lcom/yunpan/appmanage/ui/ActivityDesktopSelected;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityDesktopSelected;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lua/k1;->a:Lcom/yunpan/appmanage/ui/ActivityDesktopSelected;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Lmc/b;)V
    .locals 1

    .line 1
    sget v0, Lcom/yunpan/appmanage/ui/ActivityDesktopSelected;->E:I

    .line 2
    .line 3
    iget-object v0, p0, Lua/k1;->a:Lcom/yunpan/appmanage/ui/ActivityDesktopSelected;

    .line 4
    .line 5
    iget-object v0, v0, Lda/g;->A:Lda/g;

    .line 6
    .line 7
    invoke-static {v0}, Lqf/c;->r(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 2

    .line 1
    sget p1, Lcom/yunpan/appmanage/ui/ActivityDesktopSelected;->E:I

    .line 2
    .line 3
    iget-object p1, p0, Lua/k1;->a:Lcom/yunpan/appmanage/ui/ActivityDesktopSelected;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sget-object p2, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 9
    .line 10
    iget-object v0, p1, Lcom/yunpan/appmanage/ui/ActivityDesktopSelected;->D:Lx9/l1;

    .line 11
    .line 12
    invoke-virtual {v0, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    check-cast p3, Lcom/yunpan/appmanage/bean/DesktopBean;

    .line 17
    .line 18
    iget-object p3, p3, Lcom/yunpan/appmanage/bean/DesktopBean;->name:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p3, p2, Lcom/yunpan/appmanage/util/w;->L0:Ljava/lang/String;

    .line 21
    .line 22
    :try_start_0
    iget-object v0, p2, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 23
    .line 24
    const-string v1, "Auto_task_desktop_selected_appName"

    .line 25
    .line 26
    invoke-virtual {v0, v1, p3}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    :catch_0
    invoke-virtual {p2}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 30
    .line 31
    .line 32
    new-instance p2, Landroid/content/Intent;

    .line 33
    .line 34
    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 35
    .line 36
    .line 37
    const/4 p3, -0x1

    .line 38
    invoke-virtual {p1, p3, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 42
    .line 43
    .line 44
    return-void
.end method
