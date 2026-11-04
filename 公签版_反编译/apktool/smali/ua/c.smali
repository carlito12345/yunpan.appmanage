.class public final synthetic Lua/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityAdb;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityAdb;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/c;->a:I

    iput-object p1, p0, Lua/c;->b:Lcom/yunpan/appmanage/ui/ActivityAdb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    iget p1, p0, Lua/c;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget p1, Lcom/yunpan/appmanage/ui/ActivityAdb;->G:I

    .line 7
    .line 8
    iget-object v1, p0, Lua/c;->b:Lcom/yunpan/appmanage/ui/ActivityAdb;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    sget-object p1, Lfa/h;->a:Lfa/j;

    .line 14
    .line 15
    invoke-virtual {p1}, Lfa/j;->i()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    sget-object p1, Lfa/l;->a:Lfa/m;

    .line 22
    .line 23
    invoke-virtual {p1}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    const-string p1, "\u6ca1\u8fde\u63a5adb"

    .line 30
    .line 31
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance p1, Lha/z6;

    .line 36
    .line 37
    iget-object v2, v1, Lda/g;->A:Lda/g;

    .line 38
    .line 39
    new-instance v7, Ls9/a;

    .line 40
    .line 41
    const/4 v0, 0x2

    .line 42
    const/4 v3, 0x0

    .line 43
    invoke-direct {v7, v0, v3}, Ls9/a;-><init>(IZ)V

    .line 44
    .line 45
    .line 46
    const-string v3, "\u662f\u5426\u8981\u65ad\u5f00adb"

    .line 47
    .line 48
    const-string v4, ""

    .line 49
    .line 50
    const-string v5, "\u786e\u5b9a"

    .line 51
    .line 52
    const-string v6, "\u53d6\u6d88"

    .line 53
    .line 54
    move-object v0, p1

    .line 55
    invoke-direct/range {v0 .. v7}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 59
    .line 60
    .line 61
    :goto_0
    return-void

    .line 62
    :pswitch_0
    sget p1, Lcom/yunpan/appmanage/ui/ActivityAdb;->G:I

    .line 63
    .line 64
    iget-object p1, p0, Lua/c;->b:Lcom/yunpan/appmanage/ui/ActivityAdb;

    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    nop

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
