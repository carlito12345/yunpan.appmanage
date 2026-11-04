.class public final Lha/o0;
.super Lha/l2;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Lha/r0;


# direct methods
.method public synthetic constructor <init>(Lha/r0;II)V
    .locals 0

    .line 1
    iput p3, p0, Lha/o0;->b:I

    iput-object p1, p0, Lha/o0;->d:Lha/r0;

    iput p2, p0, Lha/o0;->c:I

    const/16 p1, 0x1c

    invoke-direct {p0, p1}, Lha/l2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final E(Ljava/lang/Object;)V
    .locals 13

    .line 1
    iget v0, p0, Lha/o0;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    move-object v5, p1

    .line 7
    check-cast v5, Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const-string p1, "\u6b64\u5e94\u7528\u6ca1\u6709\u53ef\u8c03\u7528\u7684\u670d\u52a1"

    .line 16
    .line 17
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance p1, Lha/r2;

    .line 22
    .line 23
    iget-object v0, p0, Lha/o0;->d:Lha/r0;

    .line 24
    .line 25
    iget-object v2, v0, Lha/a4;->a:Landroid/app/Activity;

    .line 26
    .line 27
    iget-object v3, v0, Lha/a4;->b:Landroid/content/Context;

    .line 28
    .line 29
    new-instance v6, Lha/o;

    .line 30
    .line 31
    iget v0, p0, Lha/o0;->c:I

    .line 32
    .line 33
    const/4 v1, 0x2

    .line 34
    invoke-direct {v6, v0, v1, p0}, Lha/o;-><init>(IILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    const-string v4, "\u8bf7\u9009\u62e9\u8981\u542f\u52a8\u7684\u670d\u52a1\uff0c\u67d0\u4e9b\u670d\u52a1\u65e0\u6cd5\u6253\u5f00\u7684"

    .line 38
    .line 39
    move-object v1, p1

    .line 40
    invoke-direct/range {v1 .. v6}, Lha/r2;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/o;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 44
    .line 45
    .line 46
    :goto_0
    return-void

    .line 47
    :pswitch_0
    move-object v11, p1

    .line 48
    check-cast v11, Ljava/util/List;

    .line 49
    .line 50
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_1

    .line 55
    .line 56
    const-string p1, "\u6b64\u5e94\u7528\u6ca1\u6709\u53ef\u8c03\u7528\u7684\u9875\u9762"

    .line 57
    .line 58
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    new-instance p1, Lha/r2;

    .line 63
    .line 64
    iget-object v0, p0, Lha/o0;->d:Lha/r0;

    .line 65
    .line 66
    iget-object v8, v0, Lha/a4;->a:Landroid/app/Activity;

    .line 67
    .line 68
    iget-object v9, v0, Lha/a4;->b:Landroid/content/Context;

    .line 69
    .line 70
    new-instance v12, Lha/o;

    .line 71
    .line 72
    iget v0, p0, Lha/o0;->c:I

    .line 73
    .line 74
    const/4 v1, 0x1

    .line 75
    invoke-direct {v12, v0, v1, p0}, Lha/o;-><init>(IILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    const-string v10, "\u8bf7\u9009\u62e9\u8981\u6253\u5f00\u7684\u9875\u9762\uff0c\u67d0\u4e9b\u9875\u9762\u65e0\u6cd5\u6253\u5f00\u7684"

    .line 79
    .line 80
    move-object v7, p1

    .line 81
    invoke-direct/range {v7 .. v12}, Lha/r2;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/o;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 85
    .line 86
    .line 87
    :goto_1
    return-void

    .line 88
    nop

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
