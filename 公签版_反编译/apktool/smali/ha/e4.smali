.class public final synthetic Lha/e4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/h4;


# direct methods
.method public synthetic constructor <init>(Lha/h4;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/e4;->a:I

    iput-object p1, p0, Lha/e4;->b:Lha/h4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    .line 1
    iget p1, p0, Lha/e4;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lha/e4;->b:Lha/h4;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance v9, Lha/z6;

    .line 12
    .line 13
    new-instance v8, Lh5/m;

    .line 14
    .line 15
    const/4 v0, 0x6

    .line 16
    invoke-direct {v8, v0, p1}, Lh5/m;-><init>(ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    const-string v4, ""

    .line 20
    .line 21
    const-string v5, "\u8bf7\u8f93\u5165\u6587\u4ef6\u5939\u540d\u79f0"

    .line 22
    .line 23
    iget-object v1, p1, Lha/a4;->a:Landroid/app/Activity;

    .line 24
    .line 25
    iget-object v2, p1, Lha/a4;->b:Landroid/content/Context;

    .line 26
    .line 27
    const-string v3, "\u65b0\u5efa\u6587\u4ef6\u5939"

    .line 28
    .line 29
    const-string v6, "\u786e\u5b9a"

    .line 30
    .line 31
    const-string v7, "\u53d6\u6d88"

    .line 32
    .line 33
    move-object v0, v9

    .line 34
    invoke-direct/range {v0 .. v8}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/y6;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v9}, Lha/a4;->show()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :pswitch_0
    iget-object p1, p0, Lha/e4;->b:Lha/h4;

    .line 42
    .line 43
    iget-object v0, p1, Lha/h4;->i:Lx9/g0;

    .line 44
    .line 45
    invoke-virtual {v0}, Lc6/g;->b()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-lez v1, :cond_0

    .line 50
    .line 51
    iget-object v1, p1, Lha/h4;->s:Lha/g4;

    .line 52
    .line 53
    const/4 v2, 0x1

    .line 54
    invoke-static {v0, v2}, Lg/b;->d(Lx9/g0;I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Lx9/w3;

    .line 59
    .line 60
    invoke-interface {v1, v0}, Lha/g4;->k(Lx9/w3;)V

    .line 61
    .line 62
    .line 63
    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :pswitch_1
    iget-object p1, p0, Lha/e4;->b:Lha/h4;

    .line 68
    .line 69
    invoke-virtual {p1}, Lha/h4;->a()V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
