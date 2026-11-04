.class public final synthetic Landroidx/fragment/app/y1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/fragment/app/n;

.field public final synthetic c:Landroidx/fragment/app/z1;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/n;Landroidx/fragment/app/z1;I)V
    .locals 0

    .line 1
    iput p3, p0, Landroidx/fragment/app/y1;->a:I

    iput-object p1, p0, Landroidx/fragment/app/y1;->b:Landroidx/fragment/app/n;

    iput-object p2, p0, Landroidx/fragment/app/y1;->c:Landroidx/fragment/app/z1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/fragment/app/y1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/fragment/app/y1;->b:Landroidx/fragment/app/n;

    .line 7
    .line 8
    const-string v1, "this$0"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Landroidx/fragment/app/y1;->c:Landroidx/fragment/app/z1;

    .line 14
    .line 15
    iget-object v2, v0, Landroidx/fragment/app/n;->b:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    iget-object v0, v0, Landroidx/fragment/app/n;->c:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_0
    iget-object v0, p0, Landroidx/fragment/app/y1;->b:Landroidx/fragment/app/n;

    .line 27
    .line 28
    const-string v1, "this$0"

    .line 29
    .line 30
    invoke-static {v0, v1}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Landroidx/fragment/app/y1;->c:Landroidx/fragment/app/z1;

    .line 34
    .line 35
    iget-object v0, v0, Landroidx/fragment/app/n;->b:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    iget-object v0, v1, Landroidx/fragment/app/z1;->a:Landroidx/fragment/app/c2;

    .line 44
    .line 45
    iget-object v1, v1, Landroidx/fragment/app/z1;->c:Landroidx/fragment/app/Fragment;

    .line 46
    .line 47
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 48
    .line 49
    const-string v2, "operation.fragment.mView"

    .line 50
    .line 51
    invoke-static {v1, v2}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroidx/fragment/app/c2;->a(Landroid/view/View;)V

    .line 55
    .line 56
    .line 57
    :cond_0
    return-void

    .line 58
    nop

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
