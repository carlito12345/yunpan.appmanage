.class public final Lua/y5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/wd;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/bean/PssBean;

.field public final synthetic c:I

.field public final synthetic d:Lcom/yunpan/appmanage/ui/ActivityPss;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityPss;Lcom/yunpan/appmanage/bean/PssBean;II)V
    .locals 0

    .line 1
    iput p4, p0, Lua/y5;->a:I

    iput-object p1, p0, Lua/y5;->d:Lcom/yunpan/appmanage/ui/ActivityPss;

    iput-object p2, p0, Lua/y5;->b:Lcom/yunpan/appmanage/bean/PssBean;

    iput p3, p0, Lua/y5;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final D()V
    .locals 7

    .line 1
    iget v0, p0, Lua/y5;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lua/y5;->b:Lcom/yunpan/appmanage/bean/PssBean;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/yunpan/appmanage/bean/PssBean;->pid:Ljava/lang/String;

    .line 9
    .line 10
    const-string v1, ","

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    array-length v1, v0

    .line 17
    const/4 v2, 0x0

    .line 18
    :goto_0
    if-ge v2, v1, :cond_0

    .line 19
    .line 20
    aget-object v3, v0, v2

    .line 21
    .line 22
    sget-object v4, Lfa/b0;->a:La2/w0;

    .line 23
    .line 24
    new-instance v5, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v6, "kill "

    .line 27
    .line 28
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    const/4 v5, 0x0

    .line 39
    invoke-virtual {v4, v3, v5}, La2/w0;->g(Ljava/lang/String;Lfa/z;)V

    .line 40
    .line 41
    .line 42
    add-int/lit8 v2, v2, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p0, Lua/y5;->d:Lcom/yunpan/appmanage/ui/ActivityPss;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityPss;->F:Lx9/h4;

    .line 48
    .line 49
    iget v1, p0, Lua/y5;->c:I

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lc6/g;->C(I)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :pswitch_0
    iget-object v0, p0, Lua/y5;->b:Lcom/yunpan/appmanage/bean/PssBean;

    .line 56
    .line 57
    iget-object v0, v0, Lcom/yunpan/appmanage/bean/PssBean;->pid:Ljava/lang/String;

    .line 58
    .line 59
    const-string v1, ","

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    array-length v1, v0

    .line 66
    const/4 v2, 0x0

    .line 67
    :goto_1
    if-ge v2, v1, :cond_1

    .line 68
    .line 69
    aget-object v3, v0, v2

    .line 70
    .line 71
    sget-object v4, Lfa/b0;->a:La2/w0;

    .line 72
    .line 73
    new-instance v5, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v6, "kill "

    .line 76
    .line 77
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    const/4 v5, 0x0

    .line 88
    invoke-virtual {v4, v3, v5}, La2/w0;->g(Ljava/lang/String;Lfa/z;)V

    .line 89
    .line 90
    .line 91
    add-int/lit8 v2, v2, 0x1

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_1
    iget-object v0, p0, Lua/y5;->d:Lcom/yunpan/appmanage/ui/ActivityPss;

    .line 95
    .line 96
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityPss;->F:Lx9/h4;

    .line 97
    .line 98
    iget v1, p0, Lua/y5;->c:I

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Lc6/g;->C(I)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    nop

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final t()V
    .locals 5

    .line 1
    iget v0, p0, Lua/y5;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v2, "am force-stop \'"

    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Lua/y5;->b:Lcom/yunpan/appmanage/bean/PssBean;

    .line 17
    .line 18
    iget-object v2, v2, Lcom/yunpan/appmanage/bean/PssBean;->pack:Ljava/lang/String;

    .line 19
    .line 20
    const-string v3, "\'"

    .line 21
    .line 22
    invoke-static {v2, v3, v1}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    new-instance v2, Lha/o;

    .line 27
    .line 28
    iget v3, p0, Lua/y5;->c:I

    .line 29
    .line 30
    const/16 v4, 0x11

    .line 31
    .line 32
    invoke-direct {v2, v3, v4, p0}, Lha/o;-><init>(IILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, La2/w0;->g(Ljava/lang/String;Lfa/z;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
