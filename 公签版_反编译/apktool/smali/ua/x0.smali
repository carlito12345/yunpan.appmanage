.class public final synthetic Lua/x0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityClean;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityClean;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/x0;->a:I

    iput-object p1, p0, Lua/x0;->b:Lcom/yunpan/appmanage/ui/ActivityClean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lua/x0;->b:Lcom/yunpan/appmanage/ui/ActivityClean;

    .line 2
    .line 3
    iget v0, p0, Lua/x0;->a:I

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p1, Lcom/yunpan/appmanage/ui/ActivityClean;->C:Landroid/widget/TextView;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "\u5f00\u59cb\u6e05\u7406"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    new-instance v0, Lua/y0;

    .line 23
    .line 24
    const/4 v1, 0x3

    .line 25
    invoke-direct {v0, p1, v1}, Lua/y0;-><init>(Lcom/yunpan/appmanage/ui/ActivityClean;I)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Lmc/c;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-direct {v1, v2, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    new-instance v1, Lua/z0;

    .line 49
    .line 50
    const/4 v2, 0x1

    .line 51
    invoke-direct {v1, p1, v2}, Lua/z0;-><init>(Lcom/yunpan/appmanage/ui/ActivityClean;I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    iget-object v0, p1, Lcom/yunpan/appmanage/ui/ActivityClean;->C:Landroid/widget/TextView;

    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const-string v1, "\u6e05\u7406\u5b8c\u6210"

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_1

    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 73
    .line 74
    .line 75
    :cond_1
    :goto_0
    return-void

    .line 76
    :pswitch_0
    sget v0, Lcom/yunpan/appmanage/ui/ActivityClean;->M:I

    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    nop

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
