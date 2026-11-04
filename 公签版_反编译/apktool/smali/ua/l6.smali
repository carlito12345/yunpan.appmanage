.class public final Lua/l6;
.super Lha/l2;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Lcom/yunpan/appmanage/ui/ActivityShell;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityShell;II)V
    .locals 0

    .line 1
    iput p3, p0, Lua/l6;->b:I

    iput-object p1, p0, Lua/l6;->d:Lcom/yunpan/appmanage/ui/ActivityShell;

    iput p2, p0, Lua/l6;->c:I

    const/16 p1, 0x1c

    invoke-direct {p0, p1}, Lha/l2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public B(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget v0, p0, Lua/l6;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object v0, p0, Lua/l6;->d:Lcom/yunpan/appmanage/ui/ActivityShell;

    .line 8
    .line 9
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityShell;->D:Landroid/widget/TextView;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, v0, Lcom/yunpan/appmanage/ui/ActivityShell;->G:Lx9/v4;

    .line 19
    .line 20
    new-instance v0, Lx9/j1;

    .line 21
    .line 22
    const-string v1, "\u96eb\u6267\u884c"

    .line 23
    .line 24
    invoke-direct {v0, v1}, Lx9/j1;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget v1, p0, Lua/l6;->c:I

    .line 28
    .line 29
    invoke-virtual {p1, v1, v0}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final E(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lua/l6;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lcom/yunpan/appmanage/shizuku/CmdResult;

    .line 7
    .line 8
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/yunpan/appmanage/shizuku/CmdResult;->getAllStr()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lua/l6;->d:Lcom/yunpan/appmanage/ui/ActivityShell;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityShell;->D:Landroid/widget/TextView;

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/yunpan/appmanage/shizuku/CmdResult;->getAllStr()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v2, "\n\n\u6267\u884c\u7ed3\u679c\uff1a"

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget p1, p1, Lcom/yunpan/appmanage/shizuku/CmdResult;->code:I

    .line 38
    .line 39
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :pswitch_0
    iget-object v0, p0, Lua/l6;->d:Lcom/yunpan/appmanage/ui/ActivityShell;

    .line 51
    .line 52
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityShell;->D:Landroid/widget/TextView;

    .line 53
    .line 54
    check-cast p1, Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    .line 58
    .line 59
    iget-object p1, v0, Lcom/yunpan/appmanage/ui/ActivityShell;->G:Lx9/v4;

    .line 60
    .line 61
    new-instance v0, Lx9/j1;

    .line 62
    .line 63
    const-string v1, "adb\u6267\u884c"

    .line 64
    .line 65
    invoke-direct {v0, v1}, Lx9/j1;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget v1, p0, Lua/l6;->c:I

    .line 69
    .line 70
    invoke-virtual {p1, v1, v0}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :pswitch_1
    iget-object v0, p0, Lua/l6;->d:Lcom/yunpan/appmanage/ui/ActivityShell;

    .line 75
    .line 76
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityShell;->D:Landroid/widget/TextView;

    .line 77
    .line 78
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    nop

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onComplete()V
    .locals 3

    .line 1
    iget v0, p0, Lua/l6;->b:I

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
    iget-object v0, p0, Lua/l6;->d:Lcom/yunpan/appmanage/ui/ActivityShell;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityShell;->G:Lx9/v4;

    .line 10
    .line 11
    new-instance v1, Lx9/j1;

    .line 12
    .line 13
    const-string v2, "\u96eb\u6267\u884c"

    .line 14
    .line 15
    invoke-direct {v1, v2}, Lx9/j1;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget v2, p0, Lua/l6;->c:I

    .line 19
    .line 20
    invoke-virtual {v0, v2, v1}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_2
    iget-object v0, p0, Lua/l6;->d:Lcom/yunpan/appmanage/ui/ActivityShell;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityShell;->G:Lx9/v4;

    .line 27
    .line 28
    new-instance v1, Lx9/j1;

    .line 29
    .line 30
    const-string v2, "adb\u6267\u884c"

    .line 31
    .line 32
    invoke-direct {v1, v2}, Lx9/j1;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget v2, p0, Lua/l6;->c:I

    .line 36
    .line 37
    invoke-virtual {v0, v2, v1}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
