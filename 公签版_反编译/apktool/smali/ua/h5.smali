.class public final synthetic Lua/h5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityOuShangWhitelist;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityOuShangWhitelist;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/h5;->a:I

    iput-object p1, p0, Lua/h5;->b:Lcom/yunpan/appmanage/ui/ActivityOuShangWhitelist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lua/h5;->b:Lcom/yunpan/appmanage/ui/ActivityOuShangWhitelist;

    .line 2
    .line 3
    iget v0, p0, Lua/h5;->a:I

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p1, Lcom/yunpan/appmanage/ui/ActivityOuShangWhitelist;->E:Lx9/v3;

    .line 9
    .line 10
    invoke-virtual {v0}, Lc6/g;->b()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const-string p1, "\u6ca1\u6709\u6570\u636e\uff0c\u65e0\u9700\u6e05\u7406"

    .line 17
    .line 18
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v0, Lua/j5;

    .line 23
    .line 24
    invoke-direct {v0, p1}, Lua/j5;-><init>(Lcom/yunpan/appmanage/ui/ActivityOuShangWhitelist;)V

    .line 25
    .line 26
    .line 27
    new-instance v1, Lmc/c;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-direct {v1, v2, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    new-instance v1, Lua/k5;

    .line 48
    .line 49
    const/4 v2, 0x1

    .line 50
    invoke-direct {v1, p1, v2}, Lua/k5;-><init>(Lcom/yunpan/appmanage/ui/ActivityOuShangWhitelist;I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 54
    .line 55
    .line 56
    :goto_0
    return-void

    .line 57
    :pswitch_0
    sget v0, Lcom/yunpan/appmanage/ui/ActivityOuShangWhitelist;->G:I

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
