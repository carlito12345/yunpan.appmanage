.class public final Lha/n2;
.super Lha/l2;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Lha/o2;


# direct methods
.method public synthetic constructor <init>(Lha/o2;II)V
    .locals 0

    .line 1
    iput p3, p0, Lha/n2;->b:I

    iput-object p1, p0, Lha/n2;->d:Lha/o2;

    iput p2, p0, Lha/n2;->c:I

    const/16 p1, 0x1c

    invoke-direct {p0, p1}, Lha/l2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final B(Ljava/lang/Throwable;)V
    .locals 9

    .line 1
    iget v0, p0, Lha/n2;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p1, Lha/z6;

    .line 7
    .line 8
    iget-object v0, p0, Lha/n2;->d:Lha/o2;

    .line 9
    .line 10
    iget-object v2, v0, Lha/a4;->a:Landroid/app/Activity;

    .line 11
    .line 12
    iget-object v3, v0, Lha/a4;->b:Landroid/content/Context;

    .line 13
    .line 14
    new-instance v8, Lh5/m;

    .line 15
    .line 16
    const/4 v0, 0x2

    .line 17
    invoke-direct {v8, v0, p0}, Lh5/m;-><init>(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    const-string v4, "\u6b64\u5e94\u7528\u4e0d\u662f\u5355\u72ec\u4e00\u4e2aapk\u6587\u4ef6\u7ec4\u6210\uff0c\u7531apk\u548codex\u6587\u4ef6\u7ec4\u6210\n\n\u5c31\u7b97\u63d0\u53d6\u4e86\u6b64\u5e94\u7528\uff0c\u4f60\u4e5f\u65e0\u6cd5\u5b89\u88c5\u6b64\u5e94\u7528\uff01"

    .line 21
    .line 22
    const-string v5, "\u662f\u5426\u8fd8\u8981\u7ee7\u7eed\u63d0\u53d6\uff1f"

    .line 23
    .line 24
    const-string v6, "\u7ee7\u7eed\u63d0\u53d6"

    .line 25
    .line 26
    const-string v7, "\u53d6\u6d88\u63d0\u53d6"

    .line 27
    .line 28
    move-object v1, p1

    .line 29
    invoke-direct/range {v1 .. v8}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v1, ""

    .line 39
    .line 40
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :try_start_0
    iget-object p1, p0, Lha/n2;->d:Lha/o2;

    .line 58
    .line 59
    iget-object v0, p1, Lha/o2;->m:Lx9/t;

    .line 60
    .line 61
    iget v1, p0, Lha/n2;->c:I

    .line 62
    .line 63
    new-instance v2, Lx9/l3;

    .line 64
    .line 65
    iget-object p1, p1, Lha/o2;->h:Lcom/yunpan/appmanage/db/AppBean;

    .line 66
    .line 67
    iget-boolean p1, p1, Lcom/yunpan/appmanage/db/AppBean;->isUnInstall:Z

    .line 68
    .line 69
    if-eqz p1, :cond_0

    .line 70
    .line 71
    const-string p1, "\u63d0\u53d6\u5e94\u7528"

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    const-string p1, "\u63d0\u53d6"

    .line 75
    .line 76
    :goto_0
    const v3, 0x7f08021e

    .line 77
    .line 78
    .line 79
    invoke-direct {v2, v3, p1}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1, v2}, Lc6/g;->D(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .line 84
    .line 85
    :catch_0
    return-void

    .line 86
    nop

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onComplete()V
    .locals 2

    .line 1
    iget v0, p0, Lha/n2;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lha/n2;->d:Lha/o2;

    .line 7
    .line 8
    iget v1, p0, Lha/n2;->c:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lha/o2;->b(I)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    const-string v0, "\u63d0\u53d6\u6210\u529f\n\u5df2\u5c06apk\u6587\u4ef6\u63d0\u53d6\u5230\u3010Download\u3011\u76ee\u5f55\u4e2d"

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-static {v0, v1}, Lcom/yunpan/appmanage/util/a0;->v(Ljava/lang/CharSequence;Z)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lha/n2;->d:Lha/o2;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
