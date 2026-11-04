.class public final synthetic Lcom/yunpan/appmanage/util/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/util/m;

.field public final synthetic c:Lua/f8;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/util/m;Lua/f8;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/yunpan/appmanage/util/n;->a:I

    iput-object p1, p0, Lcom/yunpan/appmanage/util/n;->b:Lcom/yunpan/appmanage/util/m;

    iput-object p2, p0, Lcom/yunpan/appmanage/util/n;->c:Lua/f8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/yunpan/appmanage/util/n;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/yunpan/appmanage/util/n;->b:Lcom/yunpan/appmanage/util/m;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/yunpan/appmanage/util/m;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object v1, p0, Lcom/yunpan/appmanage/util/n;->c:Lua/f8;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Lua/f8;->f(Z)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    iget-object v0, p0, Lcom/yunpan/appmanage/util/n;->b:Lcom/yunpan/appmanage/util/m;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/yunpan/appmanage/util/m;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget-object v1, p0, Lcom/yunpan/appmanage/util/n;->c:Lua/f8;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Lua/f8;->f(Z)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
