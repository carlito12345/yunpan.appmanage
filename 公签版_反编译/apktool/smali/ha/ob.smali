.class public final synthetic Lha/ob;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/o1;


# direct methods
.method public synthetic constructor <init>(Lha/o1;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/ob;->a:I

    iput-object p1, p0, Lha/ob;->b:Lha/o1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lha/ob;->b:Lha/o1;

    .line 2
    .line 3
    iget v0, p0, Lha/ob;->a:I

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 16
    .line 17
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    iput-boolean v1, v0, Lcom/yunpan/appmanage/util/k;->c0:Z

    .line 21
    .line 22
    iget-object v1, p1, Lha/o1;->h:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v1, Lua/c8;

    .line 25
    .line 26
    iget-object v2, v1, Lua/c8;->a:Lua/q8;

    .line 27
    .line 28
    iget-object v2, v2, Lua/q8;->i:Lx9/n4;

    .line 29
    .line 30
    iget v1, v1, Lua/c8;->b:I

    .line 31
    .line 32
    invoke-virtual {v2, v1}, Lc6/g;->C(I)V

    .line 33
    .line 34
    .line 35
    new-instance v1, Lcom/gj/server/a;

    .line 36
    .line 37
    const/4 v2, 0x3

    .line 38
    invoke-direct {v1, v2}, Lcom/gj/server/a;-><init>(I)V

    .line 39
    .line 40
    .line 41
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->g0:Ljava/util/concurrent/ExecutorService;

    .line 42
    .line 43
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
