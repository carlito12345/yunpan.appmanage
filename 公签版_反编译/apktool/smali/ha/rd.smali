.class public final synthetic Lha/rd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/ud;


# direct methods
.method public synthetic constructor <init>(Lha/ud;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/rd;->a:I

    iput-object p1, p0, Lha/rd;->b:Lha/ud;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    .line 1
    iget p1, p0, Lha/rd;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lha/rd;->b:Lha/ud;

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
    const/16 v0, 0x13

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
    iget-object p1, p0, Lha/rd;->b:Lha/ud;

    .line 43
    .line 44
    iget-object v0, p1, Lha/ud;->j:Lx9/g0;

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
    iget-object v1, p1, Lha/ud;->t:Lua/i8;

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
    const/4 v2, 0x0

    .line 62
    :goto_0
    iget-object v3, v1, Lua/i8;->c:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v3, Lua/q8;

    .line 65
    .line 66
    iget-object v4, v3, Lua/q8;->L:Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-ge v2, v4, :cond_0

    .line 73
    .line 74
    iget-object v4, v0, Lx9/w3;->b:Ljava/lang/String;

    .line 75
    .line 76
    iget-object v5, v3, Lua/q8;->L:Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    check-cast v5, Lx9/w3;

    .line 83
    .line 84
    iget-object v6, v1, Lua/i8;->b:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v6, Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v3, v6, v4, v5}, Lua/q8;->G(Ljava/lang/String;Ljava/lang/String;Lx9/w3;)V

    .line 89
    .line 90
    .line 91
    add-int/lit8 v2, v2, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :pswitch_1
    iget-object p1, p0, Lha/rd;->b:Lha/ud;

    .line 99
    .line 100
    invoke-virtual {p1}, Lha/ud;->a()V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    nop

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
