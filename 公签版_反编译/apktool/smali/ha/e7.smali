.class public final synthetic Lha/e7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/i;

.field public final synthetic c:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lha/i;Landroid/widget/EditText;I)V
    .locals 0

    .line 1
    iput p3, p0, Lha/e7;->a:I

    iput-object p1, p0, Lha/e7;->b:Lha/i;

    iput-object p2, p0, Lha/e7;->c:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget p1, p0, Lha/e7;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lha/e7;->b:Lha/i;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance v0, Lha/yb;

    .line 12
    .line 13
    new-instance v1, Lha/d7;

    .line 14
    .line 15
    iget-object v2, p0, Lha/e7;->c:Landroid/widget/EditText;

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-direct {v1, v3, v2}, Lha/d7;-><init>(ILandroid/widget/EditText;)V

    .line 19
    .line 20
    .line 21
    iget-object v2, p1, Lha/a4;->a:Landroid/app/Activity;

    .line 22
    .line 23
    iget-object p1, p1, Lha/a4;->b:Landroid/content/Context;

    .line 24
    .line 25
    invoke-direct {v0, v2, p1, v1}, Lha/yb;-><init>(Landroid/app/Activity;Landroid/content/Context;Lha/xb;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_0
    iget-object p1, p0, Lha/e7;->b:Lha/i;

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lha/e7;->c:Landroid/widget/EditText;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_0

    .line 56
    .line 57
    const-string p1, "\u4e0d\u80fd\u4e3a\u7a7a"

    .line 58
    .line 59
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    iget-object v1, p1, Lha/i;->h:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v1, Lha/m8;

    .line 70
    .line 71
    iget-object v2, p1, Lha/i;->i:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v2, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 74
    .line 75
    invoke-virtual {v1, v0, v2}, Lha/m8;->c(ILcom/yunpan/appmanage/bean/KeyMapSelectBean;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catch_0
    const-string p1, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u952e\u7801"

    .line 83
    .line 84
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 85
    .line 86
    .line 87
    :goto_0
    return-void

    .line 88
    nop

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
