.class public final synthetic Lua/e6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/bean/PssBean;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/bean/PssBean;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/e6;->a:I

    iput-object p1, p0, Lua/e6;->b:Lcom/yunpan/appmanage/bean/PssBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    const-wide/16 v0, 0x7d0

    .line 2
    .line 3
    iget-object v2, p0, Lua/e6;->b:Lcom/yunpan/appmanage/bean/PssBean;

    .line 4
    .line 5
    iget v3, p0, Lua/e6;->a:I

    .line 6
    .line 7
    packed-switch v3, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget v3, Lcom/yunpan/appmanage/ui/ActivityRunMemory;->I:I

    .line 11
    .line 12
    sget-object v3, Lfa/b0;->a:La2/w0;

    .line 13
    .line 14
    new-instance v4, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v5, "am force-stop \'"

    .line 17
    .line 18
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v2, v2, Lcom/yunpan/appmanage/bean/PssBean;->pack:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, "\'"

    .line 27
    .line 28
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v1, v2}, La2/w0;->q(JLjava/lang/String;)Lfa/a0;

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :pswitch_0
    sget v3, Lcom/yunpan/appmanage/ui/ActivityRunMemory;->I:I

    .line 43
    .line 44
    iget-object v2, v2, Lcom/yunpan/appmanage/bean/PssBean;->pid:Ljava/lang/String;

    .line 45
    .line 46
    const-string v3, ","

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    array-length v3, v2

    .line 53
    const/4 v4, 0x0

    .line 54
    :goto_0
    if-ge v4, v3, :cond_1

    .line 55
    .line 56
    aget-object v5, v2, v4

    .line 57
    .line 58
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    if-eqz v6, :cond_0

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_0
    sget-object v6, Lfa/b0;->a:La2/w0;

    .line 66
    .line 67
    const-string v7, "kill -9 "

    .line 68
    .line 69
    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    invoke-static {v0, v1, v5}, La2/w0;->q(JLjava/lang/String;)Lfa/a0;

    .line 77
    .line 78
    .line 79
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    return-void

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
