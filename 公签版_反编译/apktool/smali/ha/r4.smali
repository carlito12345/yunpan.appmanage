.class public final synthetic Lha/r4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/t4;


# direct methods
.method public synthetic constructor <init>(Lha/t4;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/r4;->a:I

    iput-object p1, p0, Lha/r4;->b:Lha/t4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget p1, p0, Lha/r4;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lha/r4;->b:Lha/t4;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 12
    .line 13
    iget v1, v0, Lcom/yunpan/appmanage/util/w;->Z:I

    .line 14
    .line 15
    const/4 v2, 0x4

    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    .line 18
    iget v1, p1, Lha/t4;->l:F

    .line 19
    .line 20
    const/high16 v2, 0x42200000    # 40.0f

    .line 21
    .line 22
    cmpg-float v1, v1, v2

    .line 23
    .line 24
    if-gez v1, :cond_1

    .line 25
    .line 26
    const-string p1, "\u5185\u5b58\u4f7f\u7528\u7387\u8fc7\u4f4e\uff0c\u4e0d\u5efa\u8bae\u4f7f\u7528\u66b4\u529b\u6a21\u5f0f"

    .line 27
    .line 28
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    sget-object v1, Lfa/b0;->a:La2/w0;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-static {}, La2/w0;->N()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_1

    .line 42
    .line 43
    const-string p1, "\u4f7f\u7528\u6b64\u6a21\u5f0f\u9700\u8fde\u63a5adb\u6216root\u6216\u516c\u7b7e"

    .line 44
    .line 45
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    iget-object v1, p1, Lha/t4;->i:Lua/u7;

    .line 50
    .line 51
    iget v0, v0, Lcom/yunpan/appmanage/util/w;->Z:I

    .line 52
    .line 53
    iget-object v1, v1, Lua/u7;->b:Lua/x7;

    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    new-instance v2, Lha/q4;

    .line 59
    .line 60
    iget-object v3, v1, Lda/h;->f:Landroid/app/Activity;

    .line 61
    .line 62
    iget-object v1, v1, Lda/h;->e:Landroid/content/Context;

    .line 63
    .line 64
    invoke-direct {v2, v3, v1, v0}, Lha/q4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Lha/q4;->show()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Lha/t4;->dismiss()V

    .line 71
    .line 72
    .line 73
    :goto_0
    return-void

    .line 74
    :pswitch_0
    iget-object p1, p0, Lha/r4;->b:Lha/t4;

    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    new-instance v0, Landroid/content/Intent;

    .line 80
    .line 81
    const-class v1, Lcom/yunpan/appmanage/ui/ActivityCleanMemoryWhitelist;

    .line 82
    .line 83
    iget-object p1, p1, Lha/a4;->b:Landroid/content/Context;

    .line 84
    .line 85
    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    nop

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
