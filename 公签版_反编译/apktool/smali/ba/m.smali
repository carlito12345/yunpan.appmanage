.class public final Lba/m;
.super Le9/a;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/yunpan/appmanage/bean/WpTaskBean;

.field public final synthetic c:Lcom/yunpan/appmanage/carsdk/u;


# direct methods
.method public constructor <init>(Lcom/yunpan/appmanage/bean/WpTaskBean;Lcom/yunpan/appmanage/carsdk/u;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lba/m;->b:Lcom/yunpan/appmanage/bean/WpTaskBean;

    .line 2
    .line 3
    iput-object p2, p0, Lba/m;->c:Lcom/yunpan/appmanage/carsdk/u;

    .line 4
    .line 5
    invoke-direct {p0}, Le9/a;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final f0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lba/m;->b:Lcom/yunpan/appmanage/bean/WpTaskBean;

    .line 2
    .line 3
    const-string v1, "\u4e0a\u4f20\u5931\u8d25"

    .line 4
    .line 5
    iput-object v1, v0, Lcom/yunpan/appmanage/bean/WpTaskBean;->str1:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput v1, v0, Lcom/yunpan/appmanage/bean/WpTaskBean;->upload_state:I

    .line 9
    .line 10
    return-void
.end method

.method public final g0(Lv3/f;)V
    .locals 5

    .line 1
    const-string v0, "\u5931\u8d25\uff1a"

    .line 2
    .line 3
    iget-object p1, p1, Lv3/f;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p1, Ljava/lang/String;

    .line 6
    .line 7
    const-string v1, "info"

    .line 8
    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x1

    .line 14
    iget-object v4, p0, Lba/m;->b:Lcom/yunpan/appmanage/bean/WpTaskBean;

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    const-string p1, "\u5931\u8d25\uff1a\u8bf7\u91cd\u65b0\u767b\u5f55"

    .line 19
    .line 20
    iput-object p1, v4, Lcom/yunpan/appmanage/bean/WpTaskBean;->str1:Ljava/lang/String;

    .line 21
    .line 22
    iput v3, v4, Lcom/yunpan/appmanage/bean/WpTaskBean;->upload_state:I

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    .line 26
    .line 27
    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string p1, "zt"

    .line 31
    .line 32
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eq p1, v3, :cond_1

    .line 37
    .line 38
    new-instance p1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iput-object p1, v4, Lcom/yunpan/appmanage/bean/WpTaskBean;->str1:Ljava/lang/String;

    .line 55
    .line 56
    iput v3, v4, Lcom/yunpan/appmanage/bean/WpTaskBean;->upload_state:I

    .line 57
    .line 58
    return-void

    .line 59
    :cond_1
    const-string p1, "\u4e0a\u4f20\u5b8c\u6210"

    .line 60
    .line 61
    iput-object p1, v4, Lcom/yunpan/appmanage/bean/WpTaskBean;->str1:Ljava/lang/String;

    .line 62
    .line 63
    const/4 p1, 0x0

    .line 64
    iput p1, v4, Lcom/yunpan/appmanage/bean/WpTaskBean;->upload_state:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catch_0
    const-string p1, "\u4e0a\u4f20\u5931\u8d25"

    .line 68
    .line 69
    iput-object p1, v4, Lcom/yunpan/appmanage/bean/WpTaskBean;->str1:Ljava/lang/String;

    .line 70
    .line 71
    iput v3, v4, Lcom/yunpan/appmanage/bean/WpTaskBean;->upload_state:I

    .line 72
    .line 73
    :goto_0
    return-void
.end method

.method public final r0(Lk9/d;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "\u4e0a\u4f20\u4e2d\uff1a"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 9
    .line 10
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 11
    .line 12
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 13
    .line 14
    iget p1, p1, Lk9/d;->a:F

    .line 15
    .line 16
    const/high16 v2, 0x42c80000    # 100.0f

    .line 17
    .line 18
    mul-float p1, p1, v2

    .line 19
    .line 20
    float-to-double v2, p1

    .line 21
    const-string p1, "%"

    .line 22
    .line 23
    invoke-static {v1, v2, v3, v0, p1}, Lta/q;->n(Ljava/text/DecimalFormat;DLjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-object v0, p0, Lba/m;->b:Lcom/yunpan/appmanage/bean/WpTaskBean;

    .line 28
    .line 29
    iput-object p1, v0, Lcom/yunpan/appmanage/bean/WpTaskBean;->str1:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const/16 v1, 0xa

    .line 36
    .line 37
    iput v1, p1, Landroid/os/Message;->what:I

    .line 38
    .line 39
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 40
    .line 41
    iget-object v0, p0, Lba/m;->c:Lcom/yunpan/appmanage/carsdk/u;

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 44
    .line 45
    .line 46
    return-void
.end method
