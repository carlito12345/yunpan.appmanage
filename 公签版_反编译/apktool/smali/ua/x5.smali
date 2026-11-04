.class public final synthetic Lua/x5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityPss;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityPss;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/x5;->a:I

    iput-object p1, p0, Lua/x5;->b:Lcom/yunpan/appmanage/ui/ActivityPss;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    .line 1
    iget-object p1, p0, Lua/x5;->b:Lcom/yunpan/appmanage/ui/ActivityPss;

    .line 2
    .line 3
    iget v0, p0, Lua/x5;->a:I

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget p1, Lcom/yunpan/appmanage/ui/ActivityPss;->M:I

    .line 9
    .line 10
    iget-object v2, p0, Lua/x5;->b:Lcom/yunpan/appmanage/ui/ActivityPss;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    new-instance p1, Lha/z6;

    .line 16
    .line 17
    new-instance v7, Ls5/c;

    .line 18
    .line 19
    const/16 v0, 0xd

    .line 20
    .line 21
    invoke-direct {v7, v0}, Ls5/c;-><init>(I)V

    .line 22
    .line 23
    .line 24
    const-string v6, ""

    .line 25
    .line 26
    const/4 v8, 0x0

    .line 27
    const-string v3, "\u6bcf\u4e2a\u5e94\u7528\u771f\u5b9e\u5185\u5b58\u5360\u7528\u60c5\u51b5"

    .line 28
    .line 29
    const-string v4, ""

    .line 30
    .line 31
    const-string v5, "\u660e\u767d\u4e86"

    .line 32
    .line 33
    move-object v0, p1

    .line 34
    move-object v1, v2

    .line 35
    invoke-direct/range {v0 .. v8}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :pswitch_0
    sget v0, Lcom/yunpan/appmanage/ui/ActivityPss;->M:I

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/yunpan/appmanage/ui/ActivityPss;->x()V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :pswitch_1
    sget v0, Lcom/yunpan/appmanage/ui/ActivityPss;->M:I

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
