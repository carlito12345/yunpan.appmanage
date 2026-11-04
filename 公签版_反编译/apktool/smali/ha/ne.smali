.class public final Lha/ne;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lma/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lmc/b;


# direct methods
.method public synthetic constructor <init>(Lmc/b;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/ne;->a:I

    iput-object p1, p0, Lha/ne;->b:Lmc/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget v0, p0, Lha/ne;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string v0, "\u4e0b\u8f7d\u4e2d"

    .line 7
    .line 8
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Lha/ne;->b:Lmc/b;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    new-instance p2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v0, "\u4f20\u8f93\u5230\u591a\u5c4f\u4e92\u52a8\uff1a"

    .line 19
    .line 20
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p1, "%"

    .line 27
    .line 28
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {v1, p1}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {v1, p2}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void

    .line 43
    :pswitch_0
    const-string v0, "\u4e0b\u8f7d\u4e2d"

    .line 44
    .line 45
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    iget-object v1, p0, Lha/ne;->b:Lmc/b;

    .line 50
    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    new-instance p2, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v0, "\u4f20\u8f93\u4e2d\uff1a"

    .line 56
    .line 57
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string p1, "%"

    .line 64
    .line 65
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {v1, p1}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_1
    invoke-virtual {v1, p2}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    :goto_1
    return-void

    .line 80
    :pswitch_1
    const-string v0, "\u4e0b\u8f7d\u4e2d"

    .line 81
    .line 82
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    iget-object v1, p0, Lha/ne;->b:Lmc/b;

    .line 87
    .line 88
    if-eqz v0, :cond_2

    .line 89
    .line 90
    new-instance p2, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v0, "TCL\u4f20\u8f93\u4e2d\uff1a"

    .line 93
    .line 94
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string p1, "%"

    .line 101
    .line 102
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {v1, p1}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_2
    invoke-virtual {v1, p2}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    :goto_2
    return-void

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final j()V
    .locals 2

    .line 1
    iget v0, p0, Lha/ne;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lha/ne;->b:Lmc/b;

    .line 7
    .line 8
    const-string v1, "\u8bf7\u5728\u53f3\u4e0a\u89d2\u9009\u62e9\u3010\u540c\u610f\u3011"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    iget-object v0, p0, Lha/ne;->b:Lmc/b;

    .line 15
    .line 16
    const-string v1, "\u8bf7\u9009\u62e9\u3010\u540c\u610f\u3011"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_1
    iget-object v0, p0, Lha/ne;->b:Lmc/b;

    .line 23
    .line 24
    const-string v1, "\u8bf7\u5728\u9009\u62e9\u3010\u540c\u610f\u3011"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final r()V
    .locals 2

    .line 1
    iget v0, p0, Lha/ne;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lha/ne;->b:Lmc/b;

    .line 7
    .line 8
    const-string v1, "\u7cfb\u7edf\u6b63\u5728\u5b89\u88c5\u5176\u5b83\u5e94\u7528"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    iget-object v0, p0, Lha/ne;->b:Lmc/b;

    .line 15
    .line 16
    const-string v1, "\u7cfb\u7edf\u6b63\u5728\u5b89\u88c5\u5176\u5b83\u5e94\u7528"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_1
    iget-object v0, p0, Lha/ne;->b:Lmc/b;

    .line 23
    .line 24
    const-string v1, "\u7cfb\u7edf\u6b63\u5728\u5b89\u88c5\u5176\u5b83\u5e94\u7528"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
