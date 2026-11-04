.class public final synthetic Lha/ib;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/p5;


# direct methods
.method public synthetic constructor <init>(Lha/p5;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/ib;->a:I

    iput-object p1, p0, Lha/ib;->b:Lha/p5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget p1, p0, Lha/ib;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lha/ib;->b:Lha/p5;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    iget-object p1, p0, Lha/ib;->b:Lha/p5;

    .line 13
    .line 14
    iget-object v0, p1, Lha/a4;->b:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "adb_wifi_enabled"

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    const-string v0, "\u60a8\u7cfb\u7edf\u6ca1\u95ee\u9898\u5440"

    .line 30
    .line 31
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 35
    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_0
    const/4 v1, 0x0

    .line 39
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 44
    .line 45
    .line 46
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    goto :goto_0

    .line 48
    :catch_0
    nop

    .line 49
    :goto_0
    if-eqz v1, :cond_1

    .line 50
    .line 51
    const-string v0, "\u5df2\u4fee\u590d"

    .line 52
    .line 53
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    const-string v0, "\u4fee\u590d\u5931\u8d25"

    .line 58
    .line 59
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :goto_1
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 63
    .line 64
    .line 65
    :goto_2
    return-void

    .line 66
    nop

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
