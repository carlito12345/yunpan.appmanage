.class public final synthetic Lua/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/l;->a:I

    iput-object p1, p0, Lua/l;->b:Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    const/4 p1, 0x0

    .line 2
    iget-object v0, p0, Lua/l;->b:Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;

    .line 3
    .line 4
    iget v1, p0, Lua/l;->a:I

    .line 5
    .line 6
    packed-switch v1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;->D:Lx9/n;

    .line 10
    .line 11
    invoke-virtual {v1}, Lc6/g;->b()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    const-string p1, "\u6ca1\u6709\u6570\u636e"

    .line 18
    .line 19
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v1, Lua/k;

    .line 24
    .line 25
    const/4 v2, 0x3

    .line 26
    invoke-direct {v1, v0, v2}, Lua/k;-><init>(Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;I)V

    .line 27
    .line 28
    .line 29
    new-instance v2, Lmc/c;

    .line 30
    .line 31
    invoke-direct {v2, p1, v1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 35
    .line 36
    invoke-virtual {v2, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v1, v2}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    new-instance v2, Lua/n;

    .line 49
    .line 50
    invoke-direct {v2, v0, p1}, Lua/n;-><init>(Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2}, Lec/b;->b(Lec/e;)V

    .line 54
    .line 55
    .line 56
    :goto_0
    return-void

    .line 57
    :pswitch_0
    sget p1, Lcom/yunpan/appmanage/ui/ActivityAppDetailHistoryLog;->L:I

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

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
