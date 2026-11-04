.class public final synthetic Lua/b1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lua/b1;->a:I

    iput-object p2, p0, Lua/b1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lua/b1;->b:Ljava/lang/Object;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget v2, p0, Lua/b1;->a:I

    .line 5
    .line 6
    packed-switch v2, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    const-string v2, "it"

    .line 10
    .line 11
    invoke-static {p1, v2}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    check-cast v0, Lte/a;

    .line 15
    .line 16
    invoke-interface {v0}, Lte/a;->b()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    return v1

    .line 20
    :pswitch_0
    sget v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->c1:I

    .line 21
    .line 22
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    xor-int/lit8 v3, v2, 0x1

    .line 32
    .line 33
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 34
    .line 35
    .line 36
    if-nez v2, :cond_0

    .line 37
    .line 38
    const-string v3, "\u6b63\u5219\u8868\u8fbe\u5f0f \u221a"

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const-string v3, "\u6b63\u5219\u8868\u8fbe\u5f0f \u00d7"

    .line 42
    .line 43
    :goto_0
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 44
    .line 45
    .line 46
    if-nez v2, :cond_1

    .line 47
    .line 48
    const/4 p1, 0x3

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    const/4 p1, 0x1

    .line 51
    :goto_1
    new-instance v2, Ltb/p;

    .line 52
    .line 53
    iget-object v3, v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->V:Ltb/p;

    .line 54
    .line 55
    iget-boolean v3, v3, Ltb/p;->a:Z

    .line 56
    .line 57
    invoke-direct {v2, p1, v3}, Ltb/p;-><init>(IZ)V

    .line 58
    .line 59
    .line 60
    iput-object v2, v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->V:Ltb/p;

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->z()V

    .line 63
    .line 64
    .line 65
    return v1

    .line 66
    :pswitch_1
    sget v2, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->c1:I

    .line 67
    .line 68
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;

    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    xor-int/2addr v2, v1

    .line 78
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 79
    .line 80
    .line 81
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-eqz v2, :cond_2

    .line 86
    .line 87
    const-string v2, "\u533a\u5206\u5927\u5c0f\u5199 \u00d7"

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_2
    const-string v2, "\u533a\u5206\u5927\u5c0f\u5199 \u221a"

    .line 91
    .line 92
    :goto_2
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 93
    .line 94
    .line 95
    new-instance v2, Ltb/p;

    .line 96
    .line 97
    iget-object v3, v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->V:Ltb/p;

    .line 98
    .line 99
    iget v3, v3, Ltb/p;->b:I

    .line 100
    .line 101
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    xor-int/2addr p1, v1

    .line 106
    invoke-direct {v2, v3, p1}, Ltb/p;-><init>(IZ)V

    .line 107
    .line 108
    .line 109
    iput-object v2, v0, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->V:Ltb/p;

    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->z()V

    .line 112
    .line 113
    .line 114
    return v1

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
