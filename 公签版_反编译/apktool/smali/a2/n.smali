.class public final synthetic La2/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, La2/n;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 1

    .line 1
    iget v0, p0, La2/n;->a:I

    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, La2/n;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Lrh/y;

    .line 7
    .line 8
    check-cast p1, Lrh/p;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Lrh/y;-><init>(Lrh/p;)V

    .line 11
    .line 12
    .line 13
    return-object v0

    .line 14
    :pswitch_0
    new-instance v0, Lrh/x;

    .line 15
    .line 16
    check-cast p1, Lrh/p;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-direct {v0, p1, v1}, Lrh/x;-><init>(Lrh/p;I)V

    .line 20
    .line 21
    .line 22
    return-object v0

    .line 23
    :pswitch_1
    check-cast p1, Lph/q;

    .line 24
    .line 25
    invoke-virtual {p1}, Lph/q;->r()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1

    .line 30
    :pswitch_2
    check-cast p1, Lph/l;

    .line 31
    .line 32
    invoke-virtual {p1}, Lph/l;->M()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    return-object p1

    .line 37
    :pswitch_3
    check-cast p1, Ljava/lang/String;

    .line 38
    .line 39
    new-instance p1, Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 42
    .line 43
    .line 44
    return-object p1

    .line 45
    :pswitch_4
    check-cast p1, Lph/q;

    .line 46
    .line 47
    instance-of v0, p1, Lph/x;

    .line 48
    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    check-cast p1, Lph/x;

    .line 52
    .line 53
    invoke-virtual {p1}, Lph/p;->A()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    const-string v0, "br"

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Lph/q;->l(Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_1

    .line 65
    .line 66
    const-string p1, "\n"

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    const-string p1, ""

    .line 70
    .line 71
    :goto_0
    return-object p1

    .line 72
    :pswitch_5
    check-cast p1, Ljava/util/List;

    .line 73
    .line 74
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    return-object p1

    .line 79
    :pswitch_6
    check-cast p1, Loh/e;

    .line 80
    .line 81
    iget-object v0, p1, Loh/e;->a:Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-static {v0}, Loh/f;->l(Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    const/4 v1, 0x0

    .line 88
    iput-object v1, p1, Loh/e;->a:Ljava/lang/StringBuilder;

    .line 89
    .line 90
    return-object v0

    .line 91
    :pswitch_7
    new-instance p1, Ljava/util/IdentityHashMap;

    .line 92
    .line 93
    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    .line 94
    .line 95
    .line 96
    return-object p1

    .line 97
    :pswitch_8
    check-cast p1, Ljava/lang/Integer;

    .line 98
    .line 99
    new-instance p1, Ljg/n;

    .line 100
    .line 101
    invoke-direct {p1}, Ljg/n;-><init>()V

    .line 102
    .line 103
    .line 104
    return-object p1

    .line 105
    :pswitch_9
    check-cast p1, Ljava/lang/String;

    .line 106
    .line 107
    invoke-static {p1}, Lcom/hierynomus/smbj/connection/LeaseManager;->r(Ljava/lang/String;)Lcom/hierynomus/mssmb2/LeaseKey;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    return-object p1

    .line 112
    :pswitch_a
    check-cast p1, Ljava/lang/Integer;

    .line 113
    .line 114
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    return-object p1

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic compose(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 1

    .line 1
    iget v0, p0, La2/n;->a:I

    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method
