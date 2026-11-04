.class public final Lha/ra;
.super Lha/l2;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lha/sa;


# direct methods
.method public synthetic constructor <init>(Lha/sa;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/ra;->b:I

    iput-object p1, p0, Lha/ra;->c:Lha/sa;

    const/16 p1, 0x1c

    invoke-direct {p0, p1}, Lha/l2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public B(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget v0, p0, Lha/ra;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    return-void

    .line 7
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v1, ""

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-static {p1, v0}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_2
    const-string p1, "\u5931\u8d25\uff1a\u65e0\u6743\u9650"

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-static {p1, v0}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_3
    iget-object v0, p0, Lha/ra;->c:Lha/sa;

    .line 38
    .line 39
    iget-object v0, v0, Lha/sa;->i:Lha/u9;

    .line 40
    .line 41
    invoke-virtual {v0}, Lha/u9;->a()V

    .line 42
    .line 43
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string p1, ""

    .line 57
    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_0

    .line 74
    .line 75
    const-string p1, "\u5b89\u88c5\u5931\u8d25"

    .line 76
    .line 77
    :cond_0
    const/4 v0, 0x0

    .line 78
    invoke-static {p1, v0}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    nop

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public E(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lha/ra;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object v0, p0, Lha/ra;->c:Lha/sa;

    .line 8
    .line 9
    iget-object v0, v0, Lha/sa;->i:Lha/u9;

    .line 10
    .line 11
    check-cast p1, Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lha/u9;->b(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lgc/b;)V
    .locals 1

    .line 1
    iget p1, p0, Lha/ra;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string p1, "\u4fee\u6539\u4e2d"

    .line 7
    .line 8
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->showLong(Ljava/lang/CharSequence;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    const-string p1, "\u5c1d\u8bd5\u91cd\u542f\u4e2d"

    .line 13
    .line 14
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->showLong(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_1
    const-string p1, "\u4fee\u6539\u4e2d"

    .line 19
    .line 20
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->showLong(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_2
    const-string p1, "\u91cd\u542f\u4e2d"

    .line 25
    .line 26
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->showLong(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_3
    iget-object p1, p0, Lha/ra;->c:Lha/sa;

    .line 31
    .line 32
    iget-object p1, p1, Lha/sa;->i:Lha/u9;

    .line 33
    .line 34
    const-string v0, "\u5b89\u88c5\u4e2d"

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lha/u9;->c(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onComplete()V
    .locals 9

    .line 1
    iget v0, p0, Lha/ra;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget-object v0, Lfa/a;->b:Lfa/e0;

    .line 7
    .line 8
    invoke-virtual {v0}, Lfa/e0;->c()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lha/ra;->c:Lha/sa;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void

    .line 20
    :pswitch_0
    const-string v0, "\u5df2\u5c1d\u8bd5\u91cd\u542f"

    .line 21
    .line 22
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sget-object v0, Lfa/a;->b:Lfa/e0;

    .line 26
    .line 27
    invoke-virtual {v0}, Lfa/e0;->c()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lha/ra;->c:Lha/sa;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void

    .line 39
    :pswitch_1
    const-string v0, "\u4fee\u6539\u5b8c\u6210"

    .line 40
    .line 41
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    new-instance v0, Lha/z6;

    .line 45
    .line 46
    iget-object v1, p0, Lha/ra;->c:Lha/sa;

    .line 47
    .line 48
    iget-object v2, v1, Lha/a4;->a:Landroid/app/Activity;

    .line 49
    .line 50
    iget-object v3, v1, Lha/a4;->b:Landroid/content/Context;

    .line 51
    .line 52
    new-instance v8, Lh5/m;

    .line 53
    .line 54
    const/16 v1, 0xc

    .line 55
    .line 56
    invoke-direct {v8, v1, p0}, Lh5/m;-><init>(ILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    const-string v6, "\u91cd\u542f\u5bf9\u65b9adb\u670d\u52a1"

    .line 60
    .line 61
    const-string v7, "\u54b1\u4e0d"

    .line 62
    .line 63
    const-string v4, "\u662f\u5426\u91cd\u542f\u5bf9\u65b9\u8bbe\u5907\u7684adb\u670d\u52a1\uff0c\u8ba9\u8bbe\u7f6e\u751f\u6548"

    .line 64
    .line 65
    const-string v5, "\u6ce8\uff1a\u91cd\u542fadb\u670d\u52a1\u4f1a\u65ad\u5f00\u8fde\u63a5"

    .line 66
    .line 67
    move-object v1, v0

    .line 68
    invoke-direct/range {v1 .. v8}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :pswitch_2
    const-string v0, "\u5df2\u6267\u884c\u91cd\u542f\u547d\u4ee4"

    .line 76
    .line 77
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 78
    .line 79
    .line 80
    sget-object v0, Lfa/a;->b:Lfa/e0;

    .line 81
    .line 82
    invoke-virtual {v0}, Lfa/e0;->c()Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_2

    .line 87
    .line 88
    iget-object v0, p0, Lha/ra;->c:Lha/sa;

    .line 89
    .line 90
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 91
    .line 92
    .line 93
    :cond_2
    return-void

    .line 94
    :pswitch_3
    iget-object v0, p0, Lha/ra;->c:Lha/sa;

    .line 95
    .line 96
    iget-object v0, v0, Lha/sa;->i:Lha/u9;

    .line 97
    .line 98
    invoke-virtual {v0}, Lha/u9;->a()V

    .line 99
    .line 100
    .line 101
    const-string v0, "\u5b89\u88c5\u6210\u529f"

    .line 102
    .line 103
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
