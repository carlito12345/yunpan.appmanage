.class public final synthetic Lha/a5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/b5;


# direct methods
.method public synthetic constructor <init>(Lha/b5;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/a5;->a:I

    iput-object p1, p0, Lha/a5;->b:Lha/b5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    .line 1
    iget p1, p0, Lha/a5;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lha/a5;->b:Lha/b5;

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
    const/16 v0, 0x8

    .line 16
    .line 17
    invoke-direct {v8, v0, p1}, Lh5/m;-><init>(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    const-string v4, ""

    .line 21
    .line 22
    const-string v5, "\u8bf7\u8f93\u5165\u6587\u4ef6\u5939\u540d\u79f0"

    .line 23
    .line 24
    iget-object v1, p1, Lha/a4;->a:Landroid/app/Activity;

    .line 25
    .line 26
    iget-object v2, p1, Lha/a4;->b:Landroid/content/Context;

    .line 27
    .line 28
    const-string v3, "\u65b0\u5efa\u6587\u4ef6\u5939"

    .line 29
    .line 30
    const-string v6, "\u786e\u5b9a"

    .line 31
    .line 32
    const-string v7, "\u53d6\u6d88"

    .line 33
    .line 34
    move-object v0, v9

    .line 35
    invoke-direct/range {v0 .. v8}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/y6;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v9}, Lha/a4;->show()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :pswitch_0
    iget-object p1, p0, Lha/a5;->b:Lha/b5;

    .line 43
    .line 44
    iget-object v0, p1, Lha/b5;->k:Lx9/g0;

    .line 45
    .line 46
    invoke-virtual {v0}, Lc6/g;->b()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-lez v1, :cond_0

    .line 51
    .line 52
    iget-object v1, p1, Lha/b5;->v:Lua/g6;

    .line 53
    .line 54
    const/4 v2, 0x1

    .line 55
    invoke-static {v0, v2}, Lg/b;->d(Lx9/g0;I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Lx9/w3;

    .line 60
    .line 61
    iget-object v2, v1, Lua/g6;->c:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v2, Lua/q8;

    .line 64
    .line 65
    iget-object v3, v2, Lua/q8;->K:Landroid/widget/TextView;

    .line 66
    .line 67
    new-instance v4, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v5, "\u5df2"

    .line 70
    .line 71
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object v1, v1, Lua/g6;->b:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v1, Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    .line 87
    .line 88
    iget-object v0, v0, Lx9/w3;->b:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v2, v0}, Lua/q8;->r(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :pswitch_1
    iget-object p1, p0, Lha/a5;->b:Lha/b5;

    .line 98
    .line 99
    invoke-virtual {p1}, Lha/b5;->a()V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
