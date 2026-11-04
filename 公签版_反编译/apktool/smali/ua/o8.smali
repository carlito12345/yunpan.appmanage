.class public final Lua/o8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yunpan/appmanage/util/o;


# instance fields
.field public final synthetic a:Lha/s5;

.field public final synthetic b:Lcom/yunpan/appmanage/bean/FileCopyBean;

.field public final synthetic c:Lua/q8;


# direct methods
.method public synthetic constructor <init>(Lua/q8;Lha/s5;Lcom/yunpan/appmanage/bean/FileCopyBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lua/o8;->c:Lua/q8;

    iput-object p2, p0, Lua/o8;->a:Lha/s5;

    iput-object p3, p0, Lua/o8;->b:Lcom/yunpan/appmanage/bean/FileCopyBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public f(Lja/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lua/o8;->a:Lha/s5;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lha/s5;->a(Lja/b;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public j(Lcom/yunpan/appmanage/util/q;Lja/b;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lua/o8;->a:Lha/s5;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 4
    .line 5
    .line 6
    iget-boolean p2, p2, Lja/b;->l:Z

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iget-object v1, p0, Lua/o8;->c:Lua/q8;

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    iget-object p1, v1, Lua/q8;->k:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 16
    .line 17
    .line 18
    iget-object p1, v1, Lua/q8;->l:Lx9/g0;

    .line 19
    .line 20
    invoke-static {p1, v0}, Lg/b;->d(Lx9/g0;I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lx9/w3;

    .line 25
    .line 26
    invoke-virtual {v1, p1, v0}, Lua/q8;->v(Lx9/w3;Z)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    iget-object p2, p1, Lcom/yunpan/appmanage/util/q;->a:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    if-nez p2, :cond_1

    .line 37
    .line 38
    new-instance p2, Lha/r5;

    .line 39
    .line 40
    iget-object v2, v1, Lda/h;->f:Landroid/app/Activity;

    .line 41
    .line 42
    iget-object v3, v1, Lda/h;->e:Landroid/content/Context;

    .line 43
    .line 44
    iget-object p1, p1, Lcom/yunpan/appmanage/util/q;->a:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {p2, v2, v3, p1}, Lha/r5;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2}, Lha/a4;->show()V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iget-object p1, p0, Lua/o8;->b:Lcom/yunpan/appmanage/bean/FileCopyBean;

    .line 54
    .line 55
    iget-boolean p1, p1, Lcom/yunpan/appmanage/bean/FileCopyBean;->isDelete:Z

    .line 56
    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    iget-object p1, v1, Lua/q8;->I:Landroid/widget/LinearLayout;

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-nez p1, :cond_2

    .line 66
    .line 67
    iget-object p1, v1, Lua/q8;->I:Landroid/widget/LinearLayout;

    .line 68
    .line 69
    const/16 p2, 0x8

    .line 70
    .line 71
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 72
    .line 73
    .line 74
    iget-object p1, v1, Lua/q8;->K:Landroid/widget/TextView;

    .line 75
    .line 76
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    :cond_2
    :goto_0
    iget-object p1, v1, Lua/q8;->k:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 80
    .line 81
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 82
    .line 83
    .line 84
    iget-object p1, v1, Lua/q8;->l:Lx9/g0;

    .line 85
    .line 86
    invoke-static {p1, v0}, Lg/b;->d(Lx9/g0;I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    check-cast p1, Lx9/w3;

    .line 91
    .line 92
    invoke-virtual {v1, p1, v0}, Lua/q8;->v(Lx9/w3;Z)V

    .line 93
    .line 94
    .line 95
    return-void
.end method
