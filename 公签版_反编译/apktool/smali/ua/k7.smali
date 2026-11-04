.class public final synthetic Lua/k7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityTextHzh;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityTextHzh;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/k7;->a:I

    iput-object p1, p0, Lua/k7;->b:Lcom/yunpan/appmanage/ui/ActivityTextHzh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    const/4 p1, 0x2

    .line 2
    const/4 v0, 0x7

    .line 3
    iget-object v1, p0, Lua/k7;->b:Lcom/yunpan/appmanage/ui/ActivityTextHzh;

    .line 4
    .line 5
    iget v2, p0, Lua/k7;->a:I

    .line 6
    .line 7
    packed-switch v2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget v2, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->P:I

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    new-instance v2, Lha/q2;

    .line 16
    .line 17
    iget-object v3, v1, Lda/g;->A:Lda/g;

    .line 18
    .line 19
    new-instance v4, Lha/h2;

    .line 20
    .line 21
    const/4 v5, 0x0

    .line 22
    invoke-direct {v4, v1, v5, v0}, Lha/h2;-><init>(Ljava/lang/Object;ZI)V

    .line 23
    .line 24
    .line 25
    invoke-direct {v2, v1, v3, p1, v4}, Lha/q2;-><init>(Landroid/app/Activity;Landroid/content/Context;ILha/p2;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Lha/a4;->show()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_0
    sget v2, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->P:I

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    new-instance v2, Lha/q2;

    .line 38
    .line 39
    iget-object v3, v1, Lda/g;->A:Lda/g;

    .line 40
    .line 41
    new-instance v4, Lha/h2;

    .line 42
    .line 43
    const/4 v5, 0x1

    .line 44
    invoke-direct {v4, v1, v5, v0}, Lha/h2;-><init>(Ljava/lang/Object;ZI)V

    .line 45
    .line 46
    .line 47
    invoke-direct {v2, v1, v3, p1, v4}, Lha/q2;-><init>(Landroid/app/Activity;Landroid/content/Context;ILha/p2;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Lha/a4;->show()V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :pswitch_1
    sget p1, Lcom/yunpan/appmanage/ui/ActivityTextHzh;->P:I

    .line 55
    .line 56
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
