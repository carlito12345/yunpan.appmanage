.class public final synthetic Landroidx/fragment/app/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/fragment/app/n;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/n;Landroid/view/View;Landroidx/fragment/app/i;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Landroidx/fragment/app/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/d;->b:Landroidx/fragment/app/n;

    iput-object p2, p0, Landroidx/fragment/app/d;->c:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/fragment/app/d;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/ArrayList;Landroidx/fragment/app/z1;Landroidx/fragment/app/n;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Landroidx/fragment/app/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/d;->c:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/fragment/app/d;->d:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/fragment/app/d;->b:Landroidx/fragment/app/n;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/fragment/app/d;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string v0, "this$0"

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/fragment/app/d;->b:Landroidx/fragment/app/n;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v0, "$animationInfo"

    .line 14
    .line 15
    iget-object v2, p0, Landroidx/fragment/app/d;->d:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v2, Landroidx/fragment/app/i;

    .line 18
    .line 19
    invoke-static {v2, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, v1, Landroidx/fragment/app/n;->a:Landroid/view/ViewGroup;

    .line 23
    .line 24
    iget-object v1, p0, Landroidx/fragment/app/d;->c:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v1, Landroid/view/View;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Landroidx/fragment/app/j;->a()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_0
    iget-object v0, p0, Landroidx/fragment/app/d;->c:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v0, Ljava/util/ArrayList;

    .line 38
    .line 39
    iget-object v1, p0, Landroidx/fragment/app/d;->d:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v1, Landroidx/fragment/app/z1;

    .line 42
    .line 43
    const-string v2, "this$0"

    .line 44
    .line 45
    iget-object v3, p0, Landroidx/fragment/app/d;->b:Landroidx/fragment/app/n;

    .line 46
    .line 47
    invoke-static {v3, v2}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_0

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    iget-object v0, v1, Landroidx/fragment/app/z1;->c:Landroidx/fragment/app/Fragment;

    .line 60
    .line 61
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 62
    .line 63
    iget-object v1, v1, Landroidx/fragment/app/z1;->a:Landroidx/fragment/app/c2;

    .line 64
    .line 65
    const-string v2, "view"

    .line 66
    .line 67
    invoke-static {v0, v2}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v0}, Landroidx/fragment/app/c2;->a(Landroid/view/View;)V

    .line 71
    .line 72
    .line 73
    :cond_0
    return-void

    .line 74
    nop

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
