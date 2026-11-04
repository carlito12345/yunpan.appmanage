.class public final Lua/j1;
.super Lha/l2;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/yunpan/appmanage/ui/ActivityDesktop;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityDesktop;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/j1;->b:I

    iput-object p1, p0, Lua/j1;->c:Lcom/yunpan/appmanage/ui/ActivityDesktop;

    const/16 p1, 0x1c

    invoke-direct {p0, p1}, Lha/l2;-><init>(I)V

    return-void
.end method

.method private final Y()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final E(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lua/j1;->c:Lcom/yunpan/appmanage/ui/ActivityDesktop;

    .line 2
    .line 3
    iget v1, p0, Lua/j1;->b:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget p1, Lcom/yunpan/appmanage/ui/ActivityDesktop;->G:I

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/yunpan/appmanage/ui/ActivityDesktop;->x()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityDesktop;->D:Lx9/k1;

    .line 15
    .line 16
    check-cast p1, Ljava/util/List;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lc6/g;->E(Ljava/util/List;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget v0, p0, Lua/j1;->b:I

    return-void
.end method
