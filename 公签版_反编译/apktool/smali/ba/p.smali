.class public final Lba/p;
.super Lnh/b;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/yunpan/appmanage/bean/WpTaskBean;

.field public final synthetic d:Lcom/yunpan/appmanage/carsdk/u;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/bean/WpTaskBean;Lcom/yunpan/appmanage/carsdk/u;I)V
    .locals 0

    .line 1
    iput p3, p0, Lba/p;->b:I

    iput-object p1, p0, Lba/p;->c:Lcom/yunpan/appmanage/bean/WpTaskBean;

    iput-object p2, p0, Lba/p;->d:Lcom/yunpan/appmanage/carsdk/u;

    invoke-direct {p0}, Lnh/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final f0()V
    .locals 2

    .line 1
    iget v0, p0, Lba/p;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lba/p;->c:Lcom/yunpan/appmanage/bean/WpTaskBean;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    iput v1, v0, Lcom/yunpan/appmanage/bean/WpTaskBean;->upload_state:I

    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    iget-object v0, p0, Lba/p;->c:Lcom/yunpan/appmanage/bean/WpTaskBean;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    iput v1, v0, Lcom/yunpan/appmanage/bean/WpTaskBean;->upload_state:I

    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final g0(Lv3/f;)V
    .locals 2

    .line 1
    iget v0, p0, Lba/p;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lba/p;->c:Lcom/yunpan/appmanage/bean/WpTaskBean;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput v1, v0, Lcom/yunpan/appmanage/bean/WpTaskBean;->upload_state:I

    .line 10
    .line 11
    iget-object p1, p1, Lv3/f;->d:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, Lokhttp3/Response;

    .line 14
    .line 15
    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v1, "ETag"

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, v0, Lcom/yunpan/appmanage/bean/WpTaskBean;->str_ETag:Ljava/lang/String;

    .line 26
    .line 27
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_0
    iget-object p1, p0, Lba/p;->c:Lcom/yunpan/appmanage/bean/WpTaskBean;

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    iput v0, p1, Lcom/yunpan/appmanage/bean/WpTaskBean;->upload_state:I

    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final r0(Lk9/d;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lba/p;->d:Lcom/yunpan/appmanage/carsdk/u;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    iget-object v2, p0, Lba/p;->c:Lcom/yunpan/appmanage/bean/WpTaskBean;

    .line 6
    .line 7
    const-string v3, "%"

    .line 8
    .line 9
    const/high16 v4, 0x42c80000    # 100.0f

    .line 10
    .line 11
    const-string v5, "\u4e0a\u4f20\u4e2d\uff1a"

    .line 12
    .line 13
    iget v6, p0, Lba/p;->b:I

    .line 14
    .line 15
    packed-switch v6, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    new-instance v6, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sget-object v5, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 24
    .line 25
    sget-object v5, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 26
    .line 27
    sget-object v5, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 28
    .line 29
    iget p1, p1, Lk9/d;->a:F

    .line 30
    .line 31
    mul-float p1, p1, v4

    .line 32
    .line 33
    float-to-double v7, p1

    .line 34
    invoke-static {v5, v7, v8, v6, v3}, Lta/q;->n(Ljava/text/DecimalFormat;DLjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, v2, Lcom/yunpan/appmanage/bean/WpTaskBean;->str1:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput v1, p1, Landroid/os/Message;->what:I

    .line 45
    .line 46
    iput-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 47
    .line 48
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :pswitch_0
    new-instance v6, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    sget-object v5, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 58
    .line 59
    sget-object v5, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 60
    .line 61
    sget-object v5, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 62
    .line 63
    iget p1, p1, Lk9/d;->a:F

    .line 64
    .line 65
    mul-float p1, p1, v4

    .line 66
    .line 67
    float-to-double v7, p1

    .line 68
    invoke-static {v5, v7, v8, v6, v3}, Lta/q;->n(Ljava/text/DecimalFormat;DLjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iput-object p1, v2, Lcom/yunpan/appmanage/bean/WpTaskBean;->str1:Ljava/lang/String;

    .line 73
    .line 74
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    iput v1, p1, Landroid/os/Message;->what:I

    .line 79
    .line 80
    iput-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 81
    .line 82
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    nop

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic t(Lokhttp3/Response;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget p1, p0, Lba/p;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string p1, ""

    .line 7
    .line 8
    return-object p1

    .line 9
    :pswitch_0
    const-string p1, ""

    .line 10
    .line 11
    return-object p1

    .line 12
    nop

    .line 13
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
